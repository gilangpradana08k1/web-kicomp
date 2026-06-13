@extends('layouts.app')

@section('title', 'Edit Transaksi')

@section('content')
<div class="max-w-3xl mx-auto">
  <div class="bg-white shadow rounded-lg p-6">
    <h1 class="text-2xl font-bold text-gray-800 mb-6">
      <i class="fa-solid fa-pen mr-2"></i> Edit Transaksi
    </h1>
    <form action="{{ route('transactions.update', $transaction) }}" method="POST">
      @csrf
      @method('PUT')
      <!-- Grid form: 1 kolom di mobile, 2 kolom di desktop -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        <!-- Produk -->
        <div>
          <label for="product_id" class="block text-gray-700 font-semibold mb-1">Produk</label>
          <select name="product_id" id="product_id" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" required>
            <option value="">Pilih Produk</option>
            @foreach($products as $product)
            <option value="{{ $product->id }}" {{ old('product_id', $transaction->product_id) == $product->id ? 'selected' : '' }}>
              {{ $product->name }}
            </option>
            @endforeach
          </select>
        </div>
        <!-- Tipe Transaksi -->
        <div>
          <label for="type" class="block text-gray-700 font-semibold mb-1">Tipe Transaksi</label>
          <select name="type" id="type" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" required>
            <option value="">Pilih Tipe</option>
            <option value="in" {{ old('type', $transaction->type) == 'in' ? 'selected' : '' }}>Barang Masuk</option>
            <option value="out" {{ old('type', $transaction->type) == 'out' ? 'selected' : '' }}>Barang Keluar</option>
          </select>
        </div>
        <!-- Jumlah -->
        <div>
          <label for="quantity" class="block text-gray-700 font-semibold mb-1">Jumlah</label>
          <input type="number" name="quantity" id="quantity" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" value="{{ old('quantity', $transaction->quantity) }}" required>
        </div>
        <!-- Tanggal Transaksi -->
        <div>
          <label for="transaction_date" class="block text-gray-700 font-semibold mb-1">Tanggal Transaksi</label>
          <input type="datetime-local" name="transaction_date" id="transaction_date" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" value="{{ old('transaction_date', date('Y-m-d\TH:i', strtotime($transaction->transaction_date))) }}">
        </div>
      </div>
      <!-- Tombol Submit -->
      <div class="mt-6">
        <button type="submit" class="w-full px-4 py-3 bg-green-600 text-white font-semibold rounded hover:bg-green-700 transition">
          Update Transaksi
        </button>
      </div>
    </form>
  </div>
</div>
@endsection
