<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NotificationController extends Controller
{
    /**
     * Menampilkan daftar notifikasi untuk user yang sedang login.
     */
    public function index()
    {
        // Dapatkan semua notifikasi (bisa diurutkan berdasarkan waktu)
        $notifications = auth()->user()->notifications()->orderBy('created_at', 'desc')->get();
        return view('notifications.index', compact('notifications'));
    }

    /**
     * Menampilkan detail notifikasi tertentu.
     */
    public function show($id)
    {
        // Ambil satu notifikasi berdasarkan id
        $notification = auth()->user()->notifications()->findOrFail($id);

        // Tandai notifikasi tersebut sebagai sudah dibaca
        if ($notification->read_at === null) {
            $notification->markAsRead();
        }

        return view('notifications.show', compact('notification'));
    }

    /**
     * Tandai semua notifikasi sebagai telah dibaca.
     */
    public function markAllRead()
    {
        auth()->user()->unreadNotifications->each(function ($notification) {
            $notification->markAsRead();
        });

        return redirect()->route('notifications.index')
                         ->with('success', 'Semua notifikasi telah dibaca.');
    }
}
