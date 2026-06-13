<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        // Daftarkan event dan listener yang Anda gunakan, misalnya:
        \App\Events\StockUpdated::class => [
            \App\Listeners\SendStockNotification::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        // Anda dapat menambahkan logika tambahan di sini jika diperlukan.
    }
}
