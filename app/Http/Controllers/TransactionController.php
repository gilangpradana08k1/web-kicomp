<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Transaction;
use App\Models\Product;
use App\Events\StockUpdated;
use App\Models\User;
use App\Notifications\StockUpdatedNotification;
use Barryvdh\DomPDF\Facade\Pdf;

class TransactionController extends Controller
{
    public function index(Request $request)
    {
        $query = Transaction::with('product')->latest();

        if ($request->filled('tanggal_awal') && $request->filled('tanggal_akhir')) {
            // Tambahkan jam untuk mencakup seluruh hari
            $start = $request->tanggal_awal . ' 00:00:00';
            $end = $request->tanggal_akhir . ' 23:59:59';

            $query->whereBetween('transaction_date', [$start, $end]);
        }

        if ($request->filled('tipe')) {
            $query->where('type', $request->tipe);
        }

        $transactions = $query->paginate(10)->appends([
            'tanggal_awal' => $request->tanggal_awal,
            'tanggal_akhir' => $request->tanggal_akhir,
            'tipe' => $request->tipe,
        ]);

        return view('transactions.index', compact('transactions'));
    }


    public function create()
    {
        $products = Product::orderBy('name', 'asc')->get(); // urut A-Z
        return view('transactions.create', compact('products'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'product_id'       => 'required|exists:products,id',
            'type'             => 'required|in:in,out',
            'quantity'         => 'required|integer|min:1',
            'transaction_date' => 'nullable|date',
            'paid_amount'      => 'nullable|numeric|min:0',
        ]);

        $validated['paid_amount'] = $validated['paid_amount'] ?? 0;

        if (empty($validated['transaction_date'])) {
            $validated['transaction_date'] = now();
        }

        try {
            DB::transaction(function () use (&$validated) {
                $product = Product::lockForUpdate()->findOrFail($validated['product_id']);
                $quantity = (int) $validated['quantity'];

                // Ambil harga dari produk dan hitung total
                $price = $product->price;
                $total = $price * $quantity;

                $validated['price'] = $price;
                $validated['total_price'] = $total;
                
                $change = 0;
                if ($validated['type'] === 'out') {
                    $change = $validated['paid_amount'] - $total;
                }

                $validated['change'] = $change;

                // Validasi pembayaran hanya untuk transaksi keluar
                if ($validated['type'] === 'out') {
                    if ($product->stock < $quantity) {
                        throw new \Exception('Stok tidak mencukupi.');
                    }

                    if ($validated['paid_amount'] < $total) {
                        throw new \Exception('Transaksi gagal: uang yang dibayarkan kurang dari total harga.');
                    }
                }

                // Update stok
                if ($validated['type'] === 'in') {
                    $product->stock += $quantity;
                } else {
                    $product->stock -= $quantity;
                }

                $product->save();

                // Simpan transaksi
                Transaction::create($validated);

                event(new StockUpdated($product, $quantity, $validated['type']));
            });

            return redirect()->route('transactions.index')->with('success', 'Transaksi berhasil ditambahkan!');
        } catch (\Exception $e) {
            return redirect()->back()->withInput()->with('error', $e->getMessage());
        }
    }

    public function exportPdf(Request $request)
    {
        $startDate = $request->input('tanggal_awal');
        $endDate = $request->input('tanggal_akhir');
        $type = $request->input('tipe'); // 'in' atau 'out'

        $query = Transaction::with('product');

        if ($startDate && $endDate) {
            // Tambahkan waktu ke tanggal akhir agar mencakup seluruh hari
            $startDate = $startDate . ' 00:00:00';
            $endDate = $endDate . ' 23:59:59';

            $query->whereBetween('transaction_date', [$startDate, $endDate]);
        }

        if ($type && in_array($type, ['in', 'out'])) {
            $query->where('type', $type);
        }

        $transactions = $query->get();

        $pdf = Pdf::loadView('transactions.pdf', compact('transactions'));

        return $pdf->download('laporan_transaksi.pdf');
    }

 // ✅ Tambahan fungsi destroy
        public function destroy(Transaction $transaction)
    {
        $transaction->delete();

        return redirect()->route('transactions.index')->with('success', 'Transaksi berhasil dihapus.');
    }

}
