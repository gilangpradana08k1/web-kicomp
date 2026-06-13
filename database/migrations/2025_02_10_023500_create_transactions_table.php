<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionsTable extends Migration
{
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            // Mengacu ke produk yang bersangkutan
            $table->foreignId('product_id')->constrained('products')->onDelete('cascade');
            // Tipe transaksi: 'in' untuk barang masuk, 'out' untuk barang keluar
            $table->enum('type', ['in', 'out']);
            $table->integer('quantity');
            $table->timestamp('transaction_date')->useCurrent();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('transactions');
    }
}
