<?php

namespace App\Listeners;

use App\Events\StockUpdated;
use App\Notifications\StockUpdatedNotification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\User;

class SendStockNotification implements ShouldQueue
{
    use InteractsWithQueue;

    /**
     * Tangani event StockUpdated.
     *
     * @param  \App\Events\StockUpdated  $event
     * @return void
     */
    public function handle(StockUpdated $event)
    {
        $adminUsers = User::where('role', 'admin')->get();
        foreach ($adminUsers as $user) {
            $user->notify(new StockUpdatedNotification($event->product, $event->quantity, $event->type));
        }

    }
}
