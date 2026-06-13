@extends('layouts.app')

@section('title', 'Tambah Transaksi')

@section('content')
<div class="max-w-3xl mx-auto">
  <div class="bg-white shadow rounded-lg p-6">
    <h1 class="text-2xl font-bold text-gray-800 mb-6">
      <i class="fa-solid fa-plus mr-2"></i> Tambah Transaksi
    </h1>

    {{-- Flash Messages --}}
    @if(session('success'))
      <div class="mb-4 p-4 rounded bg-green-100 text-green-800 border border-green-300">
        {{ session('success') }}
      </div>
    @endif

    @if(session('error'))
      <div class="mb-4 p-4 rounded bg-red-100 text-red-800 border border-red-300">
        {{ session('error') }}
      </div>
    @endif

    {{-- Validation Errors --}}
    @if($errors->any())
      <div class="mb-4 p-4 rounded bg-red-100 text-red-800 border border-red-300">
        <ul class="list-disc pl-5 space-y-1">
          @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div>
    @endif

    <form action="{{ route('transactions.store') }}" method="POST">
      @csrf
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        <!-- Produk -->
        <div>
          <label for="product_id" class="block text-gray-700 font-semibold mb-1">Produk</label>
          <select name="product_id" id="product_id" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" required>
             <option value="">Pilih Produk</option>
              @foreach ($products as $product)
                <option value="{{ $product->id }}">
                  {{ $product->name }} ( Stok : {{ $product->stock }} )
                </option>
              @endforeach
          </select>
        </div>

        <!-- Tipe Transaksi -->
        <div>
          <label for="type" class="block text-gray-700 font-semibold mb-1">Tipe Transaksi</label>
          <select name="type" id="type" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" required>
            <option value="">Pilih Tipe</option>
            <option value="in">Barang Masuk</option>
            <option value="out">Barang Keluar</option>
          </select>
        </div>

        <!-- Harga Satuan -->
        <div>
          <label class="block text-gray-700 font-semibold mb-1">Harga Satuan</label>
          <input type="text" id="price_display" class="w-full p-3 border rounded bg-gray-100 focus:outline-none focus:ring focus:border-blue-300" readonly>
          <input type="hidden" name="price" id="price">
        </div>

        <!-- Total Harga -->
        <div>
          <label class="block text-gray-700 font-semibold mb-1">Total Harga</label>
          <input type="text" id="total_price_display" class="w-full p-3 border rounded bg-gray-100 focus:outline-none focus:ring focus:border-blue-300" readonly>
          <input type="hidden" name="total_price" id="total_price">
        </div>

        <!-- Jumlah & Pembayaran -->
        <div class="col-span-2 grid grid-cols-2 gap-4" id="stock_payment_row">
          <div>
            <label for="quantity" class="block text-gray-700 font-semibold mb-1">Jumlah Stok</label>
            <input type="number" name="quantity" id="quantity" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300" required>
          </div>

          <div id="payment_section" style="display: none;">
            <label for="paid_amount" class="block text-gray-700 font-semibold mb-1">Jumlah Dibayar</label>
            <input type="number" name="paid_amount" id="paid_amount" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300">
          </div>
        </div>

        <!-- Kembalian + Tanggal Transaksi jika out -->
        <div class="col-span-2 grid grid-cols-2 gap-4" id="out_transaction_fields" style="display: none;">
          <div>
            <label for="transaction_date" class="block text-gray-700 font-semibold mb-1">Tanggal Transaksi</label>
            <input type="datetime-local" name="transaction_date" id="transaction_date_out" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300">
            <small class="text-gray-500">Kosongkan jika ingin menggunakan waktu saat ini</small>
          </div>

          <div>
            <label for="change" class="block text-gray-700 font-semibold mb-1">Kembalian</label>
            <input type="text" id="change" class="w-full p-3 border rounded bg-gray-100 focus:outline-none focus:ring focus:border-blue-300" readonly>
          </div>
        </div>

        <!-- Tanggal Transaksi default (non-out) -->
        <div class="col-span-2" id="default_transaction_date">
          <label for="transaction_date" class="block text-gray-700 font-semibold mb-1">Tanggal Transaksi</label>
          <input type="datetime-local" name="transaction_date" id="transaction_date_in" class="w-full p-3 border rounded focus:outline-none focus:ring focus:border-blue-300">
          <small class="text-gray-500">Kosongkan jika ingin menggunakan waktu saat ini</small>
        </div>
      </div>

      <!-- Tombol Simpan -->
      <div class="mt-6">
        <button type="submit" class="w-full px-4 py-3 bg-blue-600 text-white font-semibold rounded hover:bg-blue-700 transition">
          Simpan Transaksi
        </button>
      </div>
    </form>

    <script>
      const productSelect = document.getElementById('product_id');
      const priceDisplay = document.getElementById('price_display');
      const priceInput = document.getElementById('price');
      const quantityInput = document.getElementById('quantity');
      const totalDisplay = document.getElementById('total_price_display');
      const totalInput = document.getElementById('total_price');

      const transactionType = document.getElementById('type');
      const paymentSection = document.getElementById('payment_section');
      const paidAmountInput = document.getElementById('paid_amount');
      const changeDisplay = document.getElementById('change');

      const outFields = document.getElementById('out_transaction_fields');
      const inDateSection = document.getElementById('default_transaction_date');

      const productPrices = @json($products->pluck('price', 'id'));

      function formatRupiah(value) {
        return new Intl.NumberFormat('id-ID', {
          style: 'currency',
          currency: 'IDR'
        }).format(value);
      }

      function updatePrice() {
        const productId = productSelect.value;
        const price = parseFloat(productPrices[productId]) || 0;
        const quantity = parseInt(quantityInput.value) || 0;
        const total = price * quantity;

        priceDisplay.value = formatRupiah(price);
        priceInput.value = price;

        totalDisplay.value = formatRupiah(total);
        totalInput.value = total;

        updateChange();
      }

      function toggleFields() {
        const type = transactionType.value;
        const isOut = type === 'out';

        paymentSection.style.display = isOut ? 'block' : 'none';
        outFields.style.display = isOut ? 'grid' : 'none';
        inDateSection.style.display = isOut ? 'none' : 'block';

        if (!isOut) {
          paidAmountInput.value = '';
          changeDisplay.value = '';
        }

        updateChange();
      }

      function updateChange() {
        const total = parseFloat(totalInput.value) || 0;
        const paid = parseFloat(paidAmountInput.value) || 0;
        const change = paid - total;

        changeDisplay.value = (paid >= total && total > 0) ? formatRupiah(change) : '';
      }

      productSelect.addEventListener('change', updatePrice);
      quantityInput.addEventListener('input', updatePrice);
      transactionType.addEventListener('change', () => {
        toggleFields();
        updatePrice();
      });
      paidAmountInput.addEventListener('input', updateChange);

      window.addEventListener('DOMContentLoaded', () => {
        toggleFields();
        updatePrice();
      });
    </script>
  </div>
</div>
@endsection
