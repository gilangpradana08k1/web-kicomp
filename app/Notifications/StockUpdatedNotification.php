<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\BroadcastMessage;

class StockUpdatedNotification extends Notification implements ShouldQueue
{
    use Queueable;

    protected $product;
    protected $quantity;
    protected $type; // 'in' atau 'out'

    /**
     * Buat instance notifikasi baru.
     */
    public function __construct($product, $quantity, $type)
    {
        $this->product  = $product;
        $this->quantity = $quantity;
        $this->type     = $type;
    }

    /**
     * Tentukan channel notifikasi.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        // Simpan ke database dan broadcast secara real-time
        return ['database', 'broadcast'];
    }

    /**
     * Representasi notifikasi untuk penyimpanan di database.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toDatabase($notifiable)
    {
        return [
            'product_id'   => $this->product->id,
            'product_name' => $this->product->name,
            'quantity'     => $this->quantity,
            'type'         => $this->type,
            'stock'        => $this->product->stock,
            'price'        => $this->product->price,
            'role'         => $notifiable->role,
            'message'      => $this->type == 'in'
                ? "Produk {$this->product->name} ditambahkan sebanyak {$this->quantity}."
                : "Produk {$this->product->name} dikurangi sebanyak {$this->quantity}.",
        ];
    }


    /**
     * Representasi notifikasi untuk broadcast real-time.
     *
     * @param  mixed  $notifiable
     * @return BroadcastMessage
     */
    public function toBroadcast($notifiable)
    {
        return new BroadcastMessage($this->toDatabase($notifiable));
    }

    // Opsional: jika Anda ingin notifikasi berbentuk mail atau channel lainnya, bisa ditambahkan metode toMail, dsb.
}
