@extends('layouts.app')

@section('title', 'Riwayat Transaksi')

@section('content')
<div>
  <!-- Header dan Filter -->
  <div class="mb-6">
  <h1 class="text-2xl font-bold text-gray-800 mb-4">Riwayat Transaksi</h1>

  <div class="flex flex-col lg:flex-row lg:items-end lg:justify-between gap-4">
    
    <!-- Form Filter -->
    <form action="{{ route('transactions.index') }}" method="GET" class="flex flex-wrap items-end gap-4">
      <div>
        <label for="tanggal_awal" class="block text-sm text-black-600 mb-1 ">Dari Tanggal</label>
        <input type="date" name="tanggal_awal" id="tanggal_awal" value="{{ request('tanggal_awal') }}"
          class="border rounded px-3 py-2 focus:outline-none focus:ring focus:border-blue-300 w-[150px]">
      </div>
      <div>
        <label for="tanggal_akhir" class="block text-sm text-black-600 mb-1">Sampai Tanggal</label>
        <input type="date" name="tanggal_akhir" id="tanggal_akhir" value="{{ request('tanggal_akhir') }}"
          class="border rounded px-3 py-2 focus:outline-none focus:ring focus:border-blue-300 w-[150px]">
      </div>
      <div>
        <label for="tipe" class="block text-sm text-black-600 mb-1 ">Tipe Transaksi</label>
        <select name="tipe" id="tipe" class="border rounded px-2 py-2.5 focus:outline-none focus:ring focus:border-blue-300 w-[140px]">
          <option value="">Semua Tipe</option>
          <option value="in" {{ request('tipe') == 'in' ? 'selected' : '' }}>Barang Masuk</option>
          <option value="out" {{ request('tipe') == 'out' ? 'selected' : '' }}>Barang Keluar</option>
        </select>
      </div>
      <div class="mt-[26px]">
        <button type="submit" class="bg-gray-700 text-white px-4 py-2.5 rounded hover:bg-gray-800 flex items-center">
          <i class="fa-solid fa-filter mr-2"></i> Filter
        </button>
      </div>
    </form>

    <!-- Tombol Aksi -->
    <div class="flex gap-2">
      <!-- Cetak PDF -->
      <form action="{{ route('transactions.exportPdf') }}" method="GET" target="_blank">
        <input type="hidden" name="tanggal_awal" value="{{ request('tanggal_awal') }}">
        <input type="hidden" name="tanggal_akhir" value="{{ request('tanggal_akhir') }}">
        <input type="hidden" name="tipe" value="{{ request('tipe') }}">
        <button type="submit"
          class="bg-red-600 text-white px-4 py-2.5 rounded hover:bg-red-700 flex items-center">
          <i class="fa-solid fa-file-pdf mr-2"></i> Cetak PDF
        </button>
      </form>

      <!-- Tambah Transaksi -->
      <a href="{{ route('transactions.create') }}"
        class="bg-blue-600 text-white px-4 py-2.5 rounded hover:bg-blue-700 flex items-center">
        <i class="fa-solid fa-plus mr-2"></i> Tambah Transaksi
      </a>
    </div>
  </div>
</div>

  <!-- Tabel -->
  <div class="overflow-x-auto  w-full max-w-full">
    <table class="min-w-full bg-white shadow rounded-lg overflow-hidden">
      <thead class="bg-blue-600 text-white text-sm">
          <tr>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-box-open mr-2"></i> Produk</th>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-info-circle mr-2"></i> Tipe</th>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-sort-numeric-up mr-2"></i> Jumlah</th>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-money-bill-wave mr-2"></i> Harga/Pcs</th>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-calculator mr-2"></i> Total</th>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-wallet mr-2"></i> Tunai</th>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-hand-holding-dollar mr-2"></i> Kembalian</th>
            <th class="py-3 px-4 text-left font-semibold whitespace-nowrap"><i class="fa-solid fa-calendar-alt mr-2"></i> Tgl Transaksi</th>
            <th class="py-3 px-4 text-center font-semibold whitespace-nowrap"><i class="fa-solid fa-gear mr-2"></i> Aksi</th>
          </tr>
      </thead>
      <tbody class="text-gray-700">
        @forelse ($transactions as $transaction)
          <tr class="border-b hover:bg-gray-50">
            <td class="py-3 px-4">{{ $transaction->product->name }}</td>
            <td class="py-3 px-4">
              <span class="px-2 py-1 rounded text-white font-semibold
                {{ $transaction->type === 'in' ? 'bg-green-500 ' : 'bg-red-500 ' }}">
                {{ $transaction->type === 'in' ? 'Masuk' : 'Keluar' }}
              </span>
            </td>
            <td class="py-3 px-4 text-center">{{ $transaction->quantity }}</td>
            <td class="py-3 px-4">Rp {{ number_format($transaction->price, 0, ',', '.') }}</td>
            <td class="py-3 px-4">Rp {{ number_format($transaction->total_price, 0, ',', '.') }}</td>
            <td class="py-3 px-4">
              @if ($transaction->type === 'out')
                Rp {{ number_format($transaction->paid_amount, 0, ',', '.') }}
              @else
                -
              @endif
            </td>
            <td class="py-3 px-4">
              @if ($transaction->type === 'out')
                Rp {{ number_format($transaction->paid_amount - $transaction->total_price, 0, ',', '.') }}
              @else
                -
              @endif
            </td>
            <td class="py-3 px-4">{{ \Carbon\Carbon::parse($transaction->transaction_date)->format('d-m-Y H:i') }}</td>
            <td class="py-3 px-4 text-center">
              <form action="{{ route('transactions.destroy', $transaction) }}" method="POST" class="inline-block" onsubmit="return confirm('Yakin hapus transaksi ini?')">
                @csrf
                @method('DELETE')
                <button type="submit" class="text-red-500 hover:text-red-700">
                  <i class="fa-solid fa-trash"></i>
                </button>
              </form>
            </td>
          </tr>
        @empty
          <tr>
            <td colspan="9" class="text-center py-4 text-gray-500">Tidak ada data transaksi.</td>
          </tr>
        @endforelse
      </tbody>
    </table>
  </div>

  <!-- Pagination -->
  <div class="mt-6">
    {{ $transactions->links() }}
  </div>
</div>
@endsection
