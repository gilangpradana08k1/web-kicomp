@extends('layouts.app')

@section('title', 'Kategori')

@section('content')
<div>
  <!-- Header Tabel -->
  <div class="flex justify-between items-center mb-6">
    <h1 class="text-2xl font-bold text-gray-800">Kategori</h1>
    <a href="{{ route('categories.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700 transition">
      <i class="fa-solid fa-plus mr-2"></i> Tambah Kategori
    </a>
  </div>

  <!-- Form Pencarian -->
  <div class="mb-6">
    <form action="{{ route('categories.index') }}" method="GET" class="flex flex-col md:flex-row md:items-end gap-4">
      <!-- Pencarian Nama Kategori -->
      <div class="flex-1">
        <label for="search_name" class="block text-gray-700 font-semibold mb-1">Nama Kategori</label>
        <input type="text" name="search_name" id="search_name" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" placeholder="Cari nama kategori..." value="{{ request('search_name') }}">
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
            <i class="fa-solid fa-tags mr-2"></i> Nama Kategori
          </th>
          <th class="py-3 px-4 text-center font-semibold">
            <i class="fa-solid fa-gear mr-2"></i> Aksi
          </th>
        </tr>
      </thead>
      <tbody class="text-gray-700">
        @foreach ($categories as $category)
        <tr class="border-b hover:bg-gray-50">
          <td class="py-3 px-4">{{ $category->name }}</td>
          <td class="py-3 px-4 text-center">
            <a href="{{ route('categories.edit', $category) }}" class="inline-block text-blue-500 hover:text-blue-700 mr-2">
              <i class="fa-solid fa-edit"></i>
            </a>
            <form action="{{ route('categories.destroy', $category) }}" method="POST" class="inline-block" onsubmit="return confirm('Yakin hapus kategori ini?')">
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
    {{ $categories->links() }}
  </div>
</div>
@endsection
