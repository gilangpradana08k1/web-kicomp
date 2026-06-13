<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login - Point of Sale</title>
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    body {
      background: #3b82f6;
    }
  </style>
</head>
<body class="flex items-center justify-center min-h-screen">
  <div class="bg-white rounded-lg shadow-xl p-8 max-w-md">
    <div class="text-center mb-6">
      <h1 class="text-4xl font-bold text-gray-800">KICOMP APP LOGIN</h1>
    </div>
    <form method="POST" action="{{ route('login') }}">
      @csrf
      <!-- Field Email -->
      <div class="mb-4">
        <label for="email" class="block text-gray-700 font-semibold mb-2">Email</label>
        <input id="email" type="email" name="email" value="{{ old('email') }}" required autofocus 
               class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        @if($errors->has('email'))
          <p class="text-red-500 text-sm mt-1">{{ $errors->first('email') }}</p>
        @endif
      </div>
      <!-- Field Password -->
      <div class="mb-6">
        <label for="password" class="block text-gray-700 font-semibold mb-2">Password</label>
        <input id="password" type="password" name="password" required 
               class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        @if($errors->has('password'))
          <p class="text-red-500 text-sm mt-1">{{ $errors->first('password') }}</p>
        @endif
      </div>
      <!-- Tombol Login -->
      <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 rounded-lg transition duration-200">
        Log In
      </button>
    </form>
  </div>
</body>
</html>
