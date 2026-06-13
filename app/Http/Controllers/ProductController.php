<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;

class ProductController extends Controller
{
    // Menampilkan daftar produk dengan fitur pencarian mendalam
    public function index(Request $request)
    {
        $query = Product::with('category');
        
        // Filter berdasarkan nama produk
        if ($request->filled('search_name')) {
            $query->where('name', 'like', '%' . $request->search_name . '%');
        }
        
        // Filter berdasarkan kategori
        if ($request->filled('search_category')) {
            $query->where('category_id', $request->search_category);
        }
        
        // Filter berdasarkan harga minimum
        if ($request->filled('search_price_min')) {
            $query->where('price', '>=', $request->search_price_min);
        }
        
        // Filter berdasarkan harga maksimum
        if ($request->filled('search_price_max')) {
            $query->where('price', '<=', $request->search_price_max);
        }
        
        $products = $query->latest()->paginate(50);
        $categories = Category::all();
        
        return view('products.index', compact('products', 'categories'));
    }

    // Menampilkan form tambah produk
    public function create()
    {
        $categories = Category::all();
        return view('products.create', compact('categories'));
    }

    // Menyimpan produk baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'        => 'required|string|max:255',
            'stock'       => 'required|integer|min:0',
            'category_id' => 'required|exists:categories,id',
            'price'       => 'required|numeric|min:0',
        ]);

        Product::create($validated);

        return redirect()->route('products.index')->with('success', 'Produk berhasil ditambahkan!');
    }

    // Menampilkan form edit produk
    public function edit(Product $product)
    {
        $categories = Category::all();
        return view('products.edit', compact('product', 'categories'));
    }

    // Memperbarui produk
    public function update(Request $request, Product $product)
    {
        $validated = $request->validate([
            'name'        => 'required|string|max:255',
            'stock'       => 'required|integer|min:0',
            'category_id' => 'required|exists:categories,id',
            'price'       => 'required|numeric|min:0',
        ]);

        $product->update($validated);
        return redirect()->route('products.index')->with('success', 'Produk berhasil diupdate!');
    }

    // Menghapus produk
    public function destroy(Product $product)
    {
        $product->delete();
        return redirect()->route('products.index')->with('success', 'Produk berhasil dihapus!');
    }
}
