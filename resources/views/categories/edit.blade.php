@extends('layouts.app')

@section('title', 'Edit Kategori')

@section('content')
<div class="max-w-3xl mx-auto">
  <div class="bg-white shadow rounded-lg p-6">
    <h1 class="text-2xl font-bold text-gray-800 mb-6">
      <i class="fa-solid fa-pen mr-2"></i> Edit Kategori
    </h1>
    <form action="{{ route('categories.update', $category) }}" method="POST">
      @csrf
      @method('PUT')
      <!-- Grid form: 1 kolom di mobile, 2 kolom di desktop -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        <!-- Nama Kategori -->
        <div class="md:col-span-2">
          <label for="name" class="block text-gray-700 font-semibold mb-1">Nama Kategori</label>
          <input type="text" name="name" id="name" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" value="{{ old('name', $category->name) }}" required>
        </div>
      </div>
      <!-- Tombol Submit -->
      <div class="mt-6">
        <button type="submit" class="w-full px-4 py-3 bg-green-600 text-white font-semibold rounded hover:bg-green-700 transition">
          Update Kategori
        </button>
      </div>
    </form>
  </div>
</div>
@endsection
