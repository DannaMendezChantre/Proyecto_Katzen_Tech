<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;

class ProductoController extends Controller
{
    public function index()
    {
        $productos = Producto::all();
        return response()->json($productos);
    }

    public function show($id)
    {
        $producto = Producto::findOrFail($id);
        return response()->json($producto);
    }

    public function store(Request $request)
    {
        $request->validate([
            'codpro' => 'required|string',
            'nomprd' => 'required|string',
            'desprd' => 'required|string',
            'foto' => 'required|string',
            'precio' => 'required|numeric',
            'stock' => 'required|string',
            'idmar' => 'required|integer',
            'idcate' => 'required|integer',
            'state' => 'required|string',
        ]);

        $producto = Producto::create($request->all());

        return response()->json($producto, 201);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'codpro' => 'required|string',
            'nomprd' => 'required|string',
            'desprd' => 'required|string',
            'foto' => 'required|string',
            'precio' => 'required|numeric',
            'stock' => 'required|string',
            'idmar' => 'required|integer',
            'idcate' => 'required|integer',
            'state' => 'required|string',
        ]);

        $producto = Producto::findOrFail($id);
        $producto->update($request->all());

        return response()->json($producto);
    }

    public function destroy($id)
    {
        $producto = Producto::findOrFail($id);
        $producto->delete();

        return response()->json(null, 204);
    }
}
