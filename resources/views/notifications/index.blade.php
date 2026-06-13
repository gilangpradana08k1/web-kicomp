@extends('layouts.app')

@section('title', 'Notifikasi')

@section('content')
<div class="container mx-auto px-4 py-6">
  <h1 class="text-3xl font-bold text-gray-800 mb-6">Inbox Notifikasi</h1>

  <!-- Tombol untuk tandai semua notifikasi telah dibaca -->
  <form action="{{ route('notifications.markAllRead') }}" method="POST" class="mb-6">
    @csrf
    <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded transition">
      <i class="fa-solid fa-check mr-2"></i> Tandai Semua Telah Dibaca
    </button>
  </form>

  @if($notifications->count())
    <ul class="divide-y divide-gray-200">
      @foreach($notifications as $notification)
      <li class="py-4 {{ $notification->read_at ? 'text-gray-600' : 'font-bold' }}">
        <a href="{{ route('notifications.show', $notification->id) }}" class="flex items-center space-x-3 hover:bg-gray-100 p-3 rounded transition">
          <!-- Icon Notifikasi -->
          <div>
            @if($notification->read_at)
              <i class="fa-solid fa-bell text-gray-400"></i>
            @else
              <i class="fa-solid fa-bell text-blue-600"></i>
            @endif
          </div>
          <!-- Isi Notifikasi -->
          <div class="flex-1">
            <p>{{ $notification->data['message'] }}</p>
            <small class="text-gray-500">{{ $notification->created_at->diffForHumans() }}</small>
          </div>
        </a>
      </li>
      @endforeach
    </ul>
  @else
    <p class="text-gray-600">Tidak ada notifikasi.</p>
  @endif
</div>
@endsection
