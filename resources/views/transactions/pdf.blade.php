<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Laporan Transaksi</title>
    <style>
        body { font-family: sans-serif; font-size: 12px; }
        h2, h4, p { margin: 0; padding: 0; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { border: 1px solid #333; padding: 6px; text-align: center; }
        th { background-color: #f2f2f2; }
        .text-left { text-align: left; }
        .text-right { text-align: right; }
        .summary { margin-top: 15px; text-align: right; }
    </style>
</head>
<body>

    <h2>Kicomp Group</h2>
    <h4>Laporan Transaksi</h4>

    @php
        use Illuminate\Support\Carbon;

        $start = request('tanggal_awal') ? Carbon::parse(request('tanggal_awal'))->format('d M Y') : '-';
        $end = request('tanggal_akhir') ? Carbon::parse(request('tanggal_akhir'))->format('d M Y') : '-';
        $type = request('tipe') == 'in' ? 'Barang Masuk' : (request('tipe') == 'out' ? 'Barang Keluar' : 'Semua');
        $totalPendapatan = $transactions->where('type', 'out')->sum('total_price');
    @endphp

    <p><strong>Periode:</strong> {{ $start }} s/d {{ $end }}</p>
    <p><strong>Tipe Transaksi:</strong> {{ $type }}</p>

    <table>
        <thead>
            <tr>
                <th>No</th>
                <th class="text-left">Produk</th>
                <th>Tipe</th>
                <th>Jumlah</th>
                <th>Harga Satuan</th>
                <th>Total Harga</th>
                <th>Uang Tunai</th>
                <th>Kembalian</th>
                <th>Tanggal</th>
            </tr>
        </thead>
        <tbody>
            @foreach($transactions as $i => $trx)
            <tr>
                <td>{{ $i + 1 }}</td>
                <td class="text-left">{{ $trx->product->name }}</td>
                <td>{{ $trx->type == 'in' ? 'Masuk' : 'Keluar' }}</td>
                <td>{{ $trx->quantity }}</td>
                <td>Rp {{ number_format($trx->price, 0, ',', '.') }}</td>
                <td>Rp {{ number_format($trx->total_price, 0, ',', '.') }}</td>
                <td>Rp {{ number_format($trx->paid_amount, 0, ',', '.') }}</td>
                <td>
                    @php
                        $change = $trx->paid_amount - $trx->total_price;
                    @endphp
                    Rp {{ number_format(max($change, 0), 0, ',', '.') }}
                </td>
                <td>{{ \Carbon\Carbon::parse($trx->transaction_date)->format('d M Y H:i') }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <p class="summary">
        <strong>Total Transaksi (Tipe : Keluar):</strong> Rp {{ number_format($totalPendapatan, 0, ',', '.') }}
    </p>

</body>
</html>
