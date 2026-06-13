<?php

namespace App\Events;

use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\Models\Product;

class StockUpdated
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $product;
    public $quantity;
    public $type; // 'in' atau 'out'

    /**
     * Buat instance event baru.
     */
    public function __construct(Product $product, $quantity, $type)
    {
        $this->product = $product;
        $this->quantity = $quantity;
        $this->type = $type;
    }
}
