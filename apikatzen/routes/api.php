<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductoController;

Route::middleware('auth:sanctum')->group(function () {
    // Rutas para productos
    Route::resource('productos', ProductoController::class);
    Route::resource('categoria', CategoriaController::class);
});
