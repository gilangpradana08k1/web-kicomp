<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\SettingsController;
use App\Http\Controllers\NotificationController;

Route::get('/', function () {
    return redirect()->route('dashboard');
});

Route::middleware(['auth'])->group(function () {

    // Dashboard
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Manajemen Produk (Stok Barang)
    Route::resource('products', ProductController::class);

    // Manajemen Kategori
    Route::resource('categories', CategoryController::class);

    // Riwayat Transaksi
    Route::resource('transactions', TransactionController::class);
    Route::get('/transactions/export/pdf', [TransactionController::class, 'exportPdf'])->name('transactions.exportPdf');

    // Settings (Pengaturan Profil & Toko)
    Route::get('/settings', [SettingsController::class, 'index'])->name('settings.index');
    Route::post('/settings/update', [SettingsController::class, 'update'])->name('settings.update');
    Route::put('/settings/password', [SettingsController::class, 'updatePassword'])
    ->name('settings.password.update');

    // Tampilkan daftar notifikasi
    Route::get('/notifications', [\App\Http\Controllers\NotificationController::class, 'index'])->name('notifications.index');

    // Tampilkan detail notifikasi (opsional)
    Route::get('/notifications/{id}', [\App\Http\Controllers\NotificationController::class, 'show'])->name('notifications.show');

    // Tandai semua notifikasi sebagai telah dibaca
    Route::post('/notifications/mark-all-read', [\App\Http\Controllers\NotificationController::class, 'markAllRead'])->name('notifications.markAllRead');

});

require __DIR__.'/auth.php';
