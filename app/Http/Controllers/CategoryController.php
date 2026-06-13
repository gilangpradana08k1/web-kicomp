<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
  
class CategoryController extends Controller
{
    // Menampilkan daftar kategori dengan fitur pencarian
    public function index(Request $request)
    {
        $query = Category::query();

        // Filter berdasarkan nama kategori
        if ($request->filled('search_name')) {
            $query->where('name', 'like', '%' . $request->search_name . '%');
        }

        $categories = $query->latest()->paginate(50);
        return view('categories.index', compact('categories'));
    }

    public function create()
    {
        return view('categories.create');
    }
  
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'        => 'required|string|max:255|unique:categories,name',
            'description' => 'nullable|string',
        ], [
            'name.unique' => 'Kategori dengan nama ini sudah ada.', // ← Pesan custom
            'name.required' => 'Nama kategori wajib diisi.',
        ]);

        Category::create($validated);
        return redirect()->route('categories.index')->with('success', 'Kategori berhasil ditambahkan!');
    }

    public function edit(Category $category)
    {
        return view('categories.edit', compact('category'));
    }
  
    public function update(Request $request, Category $category)
    {
        $validated = $request->validate([
            'name'        => 'required|string|max:255|unique:categories,name,'.$category->id,
        ]);
  
        $category->update($validated);
        return redirect()->route('categories.index')->with('success', 'Kategori berhasil diupdate!');
    }
  
    public function destroy(Category $category)
    {
        $category->delete();
        return redirect()->route('categories.index')->with('success', 'Kategori berhasil dihapus!');
    }
}