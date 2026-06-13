@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
<div class="p-6">
  <h1 class="text-3xl font-bold mb-6">Dashboard</h1>
  <!-- Grid untuk kotak: 2 kolom di mobile dan 4 kolom di layar besar -->
  <div class="grid grid-cols-1 gap-6 lg:grid-cols-4">
    <!-- Total Produk -->
    <div class="bg-blue-600 text-white p-6 rounded-lg shadow-md">
      <h2 class="text-lg font-semibold"><i class="fa-solid fa-box mr-2"></i> Total Produk</h2>
      <p class="text-4xl font-bold mt-2">{{ $totalProducts }}</p>
    </div>
    <!-- Total Kategori -->
    <div class="bg-blue-600 text-white p-6 rounded-lg shadow-md">
      <h2 class="text-lg font-semibold"><i class="fa-solid fa-tags mr-2"></i> Total Kategori</h2>
      <p class="text-4xl font-bold mt-2">{{ $totalCategories }}</p>
    </div>
    <!-- Total Transaksi -->
    <div class="bg-blue-600 text-white p-6 rounded-lg shadow-md">
      <h2 class="text-lg font-semibold"><i class="fa-solid fa-shopping-cart mr-2"></i> Total Transaksi</h2>
      <p class="text-4xl font-bold mt-2">{{ $totalTransactions }}</p>
    </div>
    <!-- Total Stok Barang -->
    <div class="bg-blue-600 text-white p-6 rounded-lg shadow-md">
      <h2 class="text-lg font-semibold"><i class="fa-solid fa-warehouse mr-2"></i> Total Stok Barang</h2>
      <p class="text-4xl font-bold mt-2">{{ $stockSum }}</p>
    </div>
  </div>
</div>
@endsection
