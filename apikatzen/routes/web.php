<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\CategoriaController;

Route::get('/', function () {
    return view('welcome');
});

// Rutas para productos (solo si necesitas acceder a ellas desde la interfaz web)
Route::resource('productos', ProductoController::class);
