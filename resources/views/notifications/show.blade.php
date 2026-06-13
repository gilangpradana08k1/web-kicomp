@extends('layouts.app')

@section('title', 'Detail Notifikasi')

@section('content')
    <h1 class="text-3xl font-bold text-gray-800 mb-6">Detail Notifikasi</h1>
    <!-- Konten pesan yang tampil seperti email -->
    <div class="bg-gray-50 border border-gray-200 p-6 rounded-lg">
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Dikirim Kepada:</span>
        <span class="text-gray-600">{{ $notification->data['role'] ?? 'Tidak tersedia' }}</span>
      </p>
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Pada:</span>
        <span class="text-gray-600">{{ $notification->created_at->format('d M Y, H:i') }}</span>
      </p>
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Pesan:</span>
        <span class="text-gray-600">{{ $notification->data['message'] }}</span>
      </p>
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Produk:</span>
        <span class="text-gray-600">{{ $notification->data['product_name'] }}</span>
      </p>
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Harga:</span>
        <span class="text-gray-600">
          @if(isset($notification->data['price']))
            Rp{{ number_format($notification->data['price'], 0, ',', '.') }}
          @else
            Tidak tersedia
          @endif
        </span>
      </p>
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Jumlah:</span>
        <span class="text-gray-600">{{ $notification->data['quantity'] }}</span>
      </p>
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Tipe:</span>
        <span class="text-gray-600">{{ $notification->data['type'] }}</span>
      </p>
      <p class="mb-3">
        <span class="font-semibold text-gray-700">Stok Saat Ini:</span>
        <span class="text-gray-600">{{ $notification->data['stock'] }}</span>
      </p>
    </div>

    <!-- Tombol Kembali -->
    <div class="mt-6">
      <a href="{{ route('notifications.index') }}" class="inline-block bg-blue-600 hover:bg-blue-700 text-white py-2 px-4 rounded transition">
        <i class="fa-solid fa-arrow-left mr-2"></i> Kembali ke Inbox
      </a>
    </div>
@endsection
