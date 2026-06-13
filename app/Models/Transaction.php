<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'type',
        'quantity',
        'transaction_date',
        'price',
        'total_price',
        'paid_amount',
    ];

    // Relasi: Transaksi milik satu produk
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    // Accessor: Total Harga
    // public function getTotalHargaAttribute()
    // {
    //     if ($this->product && $this->product->sell_price) {
    //         return $this->product->sell_price * $this->quantity;
    //     }

    //     return 0;
    // }
}
