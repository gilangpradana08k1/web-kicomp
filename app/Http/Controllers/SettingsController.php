<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class SettingsController extends Controller
{
    public function index()
    {
        // Misalnya, hanya mengubah data profil user
        return view('settings.index');
    }

    public function update(Request $request)
    {
        // Validasi data yang diubah
        $validated = $request->validate([
            'name'  => 'required|string|max:255',
            // Tambahkan field lain jika diperlukan
        ]);

        // Update data user yang sedang login
        $user = $request->user();
        $user->update($validated);

        return redirect()->route('settings.index')->with('success', 'Pengaturan berhasil disimpan!');
    }

    public function updatePassword(Request $request)
    {
        // Validasi input
        $request->validate([
            'current_password'      => 'required',
            'new_password'          => 'required|min:8|confirmed', // Pastikan field confirmation ada dengan nama new_password_confirmation
        ]);

        // Cek apakah password lama cocok dengan yang tersimpan di database
        if (!Hash::check($request->current_password, auth()->user()->password)) {
            return back()->withErrors(['current_password' => 'Password lama tidak cocok.']);
        }

        // Update password
        auth()->user()->update([
            'password' => Hash::make($request->new_password)
        ]);

        return back()->with('status', 'Password berhasil diperbarui.');
    }
}
