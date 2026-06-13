@extends('layouts.app')

@section('title', 'Tambah Produk')

@section('content')
<div class="max-w-3xl mx-auto">
  <div class="bg-white shadow rounded-lg p-6">
    <h1 class="text-2xl font-bold text-gray-800 mb-6">
      <i class="fa-solid fa-plus mr-2"></i> Tambah Produk
    </h1>
    <form action="{{ route('products.store') }}" method="POST">
      @csrf
      <!-- Grid form: 1 kolom di mobile, 2 kolom di desktop -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        <!-- Nama Produk -->
        <div>
          <label for="name" class="block text-gray-700 font-semibold mb-1">Nama Produk</label>
          <input type="text" name="name" id="name" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" value="{{ old('name') }}" required>
        </div>
        <!-- Stok -->
        <div>
          <label for="stock" class="block text-gray-700 font-semibold mb-1">Stok</label>
          <input type="number" name="stock" id="stock" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" value="{{ old('stock') }}" required>
        </div>
        <!-- Kategori (sejajar dengan Harga) -->
        <div>
          <label for="category_id" class="block text-gray-700 font-semibold mb-1">Kategori</label>
          <select name="category_id" id="category_id" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" required>
            <option value="">Pilih Kategori</option>
            @foreach($categories as $category)
              <option value="{{ $category->id }}" {{ old('category_id') == $category->id ? 'selected' : '' }}>
                {{ $category->name }}
              </option>
            @endforeach
          </select>
        </div>
        <!-- Harga (sejajar dengan Kategori) -->
        <div>
          <label for="price" class="block text-gray-700 font-semibold mb-1">Harga</label>
          <input type="number" step="0.01" name="price" id="price" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" value="{{ old('price') }}" required>
        </div>
      </div>
      <!-- Tombol Submit -->
      <div class="mt-6">
        <button type="submit" class="w-full px-4 py-3 bg-blue-600 text-white font-semibold rounded hover:bg-blue-700 transition">
          Simpan Produk
        </button>
      </div>
    </form>
  </div>
</div>
@endsection
