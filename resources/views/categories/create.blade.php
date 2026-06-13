@extends('layouts.app')

@section('title', 'Tambah Kategori')

@section('content')
<div class="max-w-3xl mx-auto">
  <div class="bg-white shadow rounded-lg p-6">
    <h1 class="text-2xl font-bold text-gray-800 mb-6">
      <i class="fa-solid fa-plus mr-2"></i> Tambah Kategori
    </h1>

    {{-- Alert Error --}}
    @if ($errors->any())
      <div 
        x-data="{ show: true }" 
        x-show="show" 
        x-init="setTimeout(() => show = false, 5000)" 
        class="mb-6 rounded border border-red-400 bg-red-100 px-4 py-3 text-red-700 relative"
        role="alert"
      >
        {{ $errors->first() }}
        <button @click="show = false" class="absolute top-0 bottom-0 right-0 px-4 py-3 text-red-500">
          <svg class="h-6 w-6 fill-current" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
            <title>Close</title>
            <path d="M14.348 5.652a1 1 0 00-1.414 0L10 8.586 7.066 5.652a1 1 0 00-1.414 1.414L8.586 10l-2.934 2.934a1 1 0 101.414 1.414L10 11.414l2.934 2.934a1 1 0 001.414-1.414L11.414 10l2.934-2.934a1 1 0 000-1.414z"/>
          </svg>
        </button>
      </div>
    @endif

    {{-- Alert Sukses --}}
    @if (session('success'))
      <div 
        x-data="{ show: true }" 
        x-show="show" 
        x-init="setTimeout(() => show = false, 4000)" 
        class="mb-6 rounded border border-green-400 bg-green-100 px-4 py-3 text-green-700 relative"
        role="alert"
      >
        {{ session('success') }}
        <button @click="show = false" class="absolute top-0 bottom-0 right-0 px-4 py-3 text-green-500">
          <svg class="h-6 w-6 fill-current" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
            <title>Close</title>
            <path d="M14.348 5.652a1 1 0 00-1.414 0L10 8.586 7.066 5.652a1 1 0 00-1.414 1.414L8.586 10l-2.934 2.934a1 1 0 101.414 1.414L10 11.414l2.934 2.934a1 1 0 001.414-1.414L11.414 10l2.934-2.934a1 1 0 000-1.414z"/>
          </svg>
        </button>
      </div>
    @endif

    <form action="{{ route('categories.store') }}" method="POST">
      @csrf
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        <div class="md:col-span-2">
          <label for="name" class="block text-gray-700 font-semibold mb-1">Nama Kategori</label>
          <input type="text" name="name" id="name" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" value="{{ old('name') }}" required>
        </div>
      </div>
      <div class="mt-6">
        <button type="submit" class="w-full px-4 py-3 bg-blue-600 text-white font-semibold rounded hover:bg-blue-700 transition">
          Simpan Kategori
        </button>
      </div>
    </form>
  </div>
</div>
@endsection
