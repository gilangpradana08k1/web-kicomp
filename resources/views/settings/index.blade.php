@extends('layouts.app')

@section('title', 'Settings')

@section('content')
<div class="max-w-5xl mx-auto py-10 px-4">
  <h1 class="text-3xl font-bold text-gray-800 mb-8 text-center">Pengaturan</h1>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
    <!-- Ubah Profil Card -->
    <div class="bg-white shadow-lg rounded-lg p-8">
      <h2 class="text-2xl font-bold text-gray-700 mb-4 flex items-center">
        <i class="fa-solid fa-user-edit mr-2 text-blue-600"></i> Ubah Profil
      </h2>
      <form action="{{ route('settings.update') }}" method="POST">
        @csrf
        <div class="mb-6">
          <label for="name" class="block text-gray-700 font-semibold mb-2">Nama Pengguna</label>
          <input type="text" id="name" name="name" value="{{ old('name', auth()->user()->name) }}" required
                 class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
          @if($errors->has('name'))
            <p class="text-red-500 text-sm mt-1">{{ $errors->first('name') }}</p>
          @endif
        </div>
        <!-- Tambahkan field lain jika diperlukan -->
        <button type="submit"
                class="w-full py-3 bg-green-600 hover:bg-green-700 text-white font-semibold rounded-lg transition duration-200">
          Simpan Perubahan
        </button>
      </form>
    </div>

    <!-- Ganti Password Card -->
    <div class="bg-white shadow-lg rounded-lg p-8">
      <h2 class="text-2xl font-bold text-gray-700 mb-4 flex items-center">
        <i class="fa-solid fa-lock mr-2 text-blue-600"></i> Ganti Password
      </h2>
      <form method="POST" action="{{ route('settings.password.update') }}">
        @csrf
        @method('PUT')
        <!-- Password Lama -->
        <div class="mb-6">
          <label for="current_password" class="block text-gray-700 font-semibold mb-2">Password Lama</label>
          <input id="current_password" type="password" name="current_password" required
                 class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
          @if ($errors->has('current_password'))
            <p class="text-red-500 text-sm mt-1">{{ $errors->first('current_password') }}</p>
          @endif
        </div>
        <!-- Password Baru -->
        <div class="mb-6">
          <label for="new_password" class="block text-gray-700 font-semibold mb-2">Password Baru</label>
          <input id="new_password" type="password" name="new_password" required
                 class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
          @if ($errors->has('new_password'))
            <p class="text-red-500 text-sm mt-1">{{ $errors->first('new_password') }}</p>
          @endif
        </div>
        <!-- Konfirmasi Password Baru -->
        <div class="mb-6">
          <label for="new_password_confirmation" class="block text-gray-700 font-semibold mb-2">Konfirmasi Password Baru</label>
          <input id="new_password_confirmation" type="password" name="new_password_confirmation" required
                 class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
          @if ($errors->has('new_password_confirmation'))
            <p class="text-red-500 text-sm mt-1">{{ $errors->first('new_password_confirmation') }}</p>
          @endif
        </div>
        <button type="submit"
                class="w-full py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg transition duration-200">
          Perbarui Password
        </button>
      </form>
    </div>
  </div>
</div>
@endsection
