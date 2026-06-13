<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Transaction;

class DashboardController extends Controller
{
    public function index()
    {
        // Menghitung statistik sederhana
        $totalProducts      = Product::count();
        $totalCategories    = Category::count();
        $totalTransactions  = Transaction::count();
        $stockSum           = Product::sum('stock');

        return view('dashboard.index', compact('totalProducts', 'totalCategories', 'totalTransactions', 'stockSum'));
    }
}
