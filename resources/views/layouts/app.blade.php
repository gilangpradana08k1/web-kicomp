<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KICOMP APP | @yield('title', 'Dashboard')</title>
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  @vite('resources/css/app.css')
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
  <script src="https://unpkg.com/alpinejs@3.13.5/dist/cdn.min.js" defer></script>
</head>
<body class="bg-gray-100 flex flex-col min-h-screen">
  <div class="flex flex-1 relative">
    <!-- Sidebar: full screen di mobile dan lebar 64 di desktop -->
    <aside id="sidebar" class="bg-blue-700 text-white p-6 fixed inset-0 z-50 transform -translate-x-full transition-transform duration-300 ease-in-out md:relative md:translate-x-0 md:w-64">
      <!-- Tombol Close, hanya tampil di mobile -->
      <button id="sidebarClose" class="text-white absolute top-4 right-4 md:hidden">
        <i class="fa-solid fa-xmark fa-lg"></i>
      </button>
      <div class="mb-6">
        <a href="#" class="text-2xl font-bold">Menu</a>
      </div>
      <nav>
        <ul>
          <li class="mb-4">
            <a href="{{ route('dashboard') }}" class="block p-2 hover:bg-blue-600 rounded">
              <i class="fa-solid fa-chart-line mr-2"></i> Dashboard
            </a>
          </li>
          <hr style="margin: -7px 0 15px 0; opacity: 50%;">
          <li class="mb-4">
            <a href="{{ route('categories.index') }}" class="block p-2 hover:bg-blue-600 rounded">
              <i class="fa-solid fa-tags mr-2"></i> Kategori
            </a>
          </li>
          <li class="mb-4">
            <a href="{{ route('products.index') }}" class="block p-2 hover:bg-blue-600 rounded">
              <i class="fa-solid fa-box mr-2"></i> Stok Barang
            </a>
          </li>
          <li class="mb-4">
            <a href="{{ route('transactions.index') }}" class="block p-2 hover:bg-blue-600 rounded">
              <i class="fa-solid fa-money-check-dollar mr-2"></i> Transaksi
            </a>
          </li>
          <hr style="margin: 15px 0 10px 0; opacity: 50%;">
          <li class="mb-4">
            <a href="{{ route('notifications.index') }}" class="block p-2 hover:bg-blue-600 rounded">
              <i class="fa-solid fa-envelope"></i> Notifikasi
            </a>
          </li>
          <li class="mb-4">
            <a href="{{ route('settings.index') }}" class="block p-2 hover:bg-blue-600 rounded">
              <i class="fa-solid fa-gear mr-2"></i> Settings
            </a>
          </li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col">
      <!-- Header / Navbar -->
      <header class="bg-gradient-to-r from-blue-500 to-blue-600 shadow-lg p-4 flex justify-between items-center">
        <div class="flex items-center">
          <!-- Tombol hamburger hanya muncul di mobile -->
          <button id="sidebarToggle" class="text-white mr-3 md:hidden">
            <i class="fa-solid fa-bars fa-lg"></i>
          </button>
          <a href="{{ route('dashboard') }}" class="text-2xl font-bold text-white">
            KICOMP APP
          </a>
        </div>
        <div class="flex items-center space-x-4">
          <!-- Tampilan user: gambar dan tombol logout -->
          <span class="hidden md:inline text-white font-medium">{{ auth()->user()->name }} ({{ auth()->user()->role }})</span>
          <img class="w-10 h-10 rounded-full" src="{{ url('user.png') }}" alt="Profile">
          <form method="POST" action="{{ route('logout') }}">
            @csrf
            <button type="submit" class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded transition">
              <i class="fa-solid fa-right-from-bracket"></i> Logout
            </button>
          </form>
        </div>
      </header>

      <!-- Konten Utama -->
      <main class="flex-1 bg-white rounded shadow m-4 p-6">
        @if (session('success'))
          <div class="mb-4 p-2 bg-green-200 text-green-800 rounded">
            {{ session('success') }}
          </div>
        @endif

        @yield('content')
      </main>
    </div>
  </div>

  <!-- Footer -->
  <footer class="bg-white shadow py-4">
    <div class="container mx-auto px-4 font-bold text-center text-gray-600">
      &copy; {{ date('Y') }} KICOMP APP | Made by Unisba Dev Team. All rights reserved.
    </div>
  </footer>

  <!-- Script untuk toggle sidebar di mobile -->
  <script>
    const sidebarToggle = document.getElementById('sidebarToggle');
    const sidebarClose = document.getElementById('sidebarClose');
    const sidebar = document.getElementById('sidebar');

    sidebarToggle.addEventListener('click', () => {
      // Tampilkan sidebar dengan menghilangkan kelas -translate-x-full
      sidebar.classList.remove('-translate-x-full');
    });

    sidebarClose.addEventListener('click', () => {
      // Sembunyikan sidebar dengan menambahkan kelas -translate-x-full
      sidebar.classList.add('-translate-x-full');
    });

    // FItur Notifikasi Real Time
    Pusher.logToConsole = true;
    var pusher = new Pusher("{{ env('PUSHER_APP_KEY') }}", {
        cluster: "{{ env('PUSHER_APP_CLUSTER') }}",
        encrypted: true
    });

    var channel = pusher.subscribe('stock-channel');
    channel.bind('stock.updated', function(data) {
        var message = data.type === "in" 
            ? `Barang Masuk: ${data.product.name} (${data.product.stock} tersedia)` 
            : `Barang Keluar: ${data.product.name} (${data.product.stock} tersisa)`;

        alert(message);
    });

    // Misal, setelah inisialisasi Echo:
    Echo.private('App.Models.User.{{ auth()->id() }}')
    .notification((notification) => {
        // Lakukan append notifikasi baru ke dalam list
        console.log('Notifikasi baru:', notification);
        // Anda bisa menambahkan kode untuk menampilkan notifikasi secara dinamis di halaman inbox
    });

  </script>
</body>
</html>
