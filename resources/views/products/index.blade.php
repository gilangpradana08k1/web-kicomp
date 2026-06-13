@extends('layouts.app')

@section('title', 'Stok Barang')

@section('content')
<div>
  <!-- Header Tabel -->
  <div class="flex justify-between items-center mb-6">
    <h1 class="text-2xl font-bold text-gray-800">Stok Barang</h1>
    <a href="{{ route('products.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700 transition">
      <i class="fa-solid fa-plus mr-2"></i> Tambah Produk
    </a>
  </div>

  <!-- Form Pencarian Mendalam -->
  <div class="mb-6">
    <form action="{{ route('products.index') }}" method="GET" class="flex flex-col md:flex-row md:items-end gap-4">
      <!-- Pencarian Nama Produk -->
      <div class="flex-1">
        <label for="search_name" class="block text-gray-700 font-semibold mb-1">Nama Produk:</label>
        <input type="text" name="search_name" id="search_name" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" placeholder="Cari nama produk..." value="{{ request('search_name') }}">
      </div>
      <!-- Pencarian Kategori -->
      <div class="flex-1">
        <label for="search_category" class="block text-gray-700 font-semibold mb-1">Kategori:</label>
        <select name="search_category" id="search_category" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300">
          <option value="">Semua Kategori</option>
          @foreach($categories as $category)
            <option value="{{ $category->id }}" {{ request('search_category') == $category->id ? 'selected' : '' }}>
              {{ $category->name }}
            </option>
          @endforeach
        </select>
      </div>
      <!-- Pencarian Harga Minimum -->
      <div class="flex-1">
        <label for="search_price_min" class="block text-gray-700 font-semibold mb-1">Harga Minimum:</label>
        <input type="number" step="0.01" name="search_price_min" id="search_price_min" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" placeholder="Rp xxx,-" value="{{ request('search_price_min') }}">
      </div>
      <!-- Pencarian Harga Maksimum -->
      <div class="flex-1">
        <label for="search_price_max" class="block text-gray-700 font-semibold mb-1">Harga Maksimum:</label>
        <input type="number" step="0.01" name="search_price_max" id="search_price_max" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" placeholder="Rp xxx,-" value="{{ request('search_price_max') }}">
      </div>
      <!-- Tombol Cari -->
      <div>
        <button type="submit" class="px-4 py-3 bg-blue-600 text-white font-semibold rounded hover:bg-blue-700 transition">
          Cari
        </button>
      </div>
    </form>
  </div>

  <!-- Tabel dengan overflow untuk mobile -->
  <div class="overflow-x-auto">
    <table class="min-w-full bg-white shadow rounded-lg overflow-hidden">
      <thead class="bg-blue-600 text-white">
        <tr>
          <th class="py-3 px-4 text-left font-semibold">
            <i class="fa-solid fa-box mr-2"></i> Nama Produk
          </th>
          <th class="py-3 px-4 text-left font-semibold">
            <i class="fa-solid fa-warehouse mr-2"></i> Stok
          </th>
          <th class="py-3 px-4 text-left font-semibold">
            <i class="fa-solid fa-tags mr-2"></i> Kategori
          </th>
          <th class="py-3 px-4 text-left font-semibold">
            <i class="fa-solid fa-money-bill-wave mr-2"></i> Harga
          </th>
          <th class="py-3 px-4 text-center font-semibold">
            <i class="fa-solid fa-gear mr-2"></i> Aksi
          </th>
        </tr>
      </thead>
      <tbody class="text-gray-700">
        @foreach ($products as $product)
        <tr class="border-b hover:bg-gray-50">
          <td class="py-3 px-4">{{ $product->name }}</td>
          <td class="py-3 px-4">{{ $product->stock }}</td>
          <td class="py-3 px-4">{{ $product->category->name ?? '-' }}</td>
          <td class="py-3 px-4">Rp. {{ number_format($product->price, 0, ',', '.') }}</td>
          <td class="py-3 px-4 text-center">
            <a href="{{ route('products.edit', $product) }}" class="inline-block text-blue-500 hover:text-blue-700 mr-2">
              <i class="fa-solid fa-edit"></i>
            </a>
            <form action="{{ route('products.destroy', $product) }}" method="POST" class="inline-block" onsubmit="return confirm('Yakin hapus produk ini?')">
              @csrf
              @method('DELETE')
              <button type="submit" class="text-red-500 hover:text-red-700">
                <i class="fa-solid fa-trash"></i>
              </button>
            </form>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>

  <!-- Pagination -->
  <div class="mt-6">
    {{ $products->links() }}
  </div>
</div>
@endsection
