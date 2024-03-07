<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductosTable extends Migration
{
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->id('idprod');
            $table->char('codpro', 14)->unique();
            $table->text('nomprd');
            $table->text('desprd');
            $table->string('foto', 255);
            $table->decimal('precio', 10, 2);
            $table->string('stock', 3);
            $table->string('idmar');
            $table->string('idcate');
            $table->string('state', 1);
            $table->timestamps();
            $table->foreign('idmar')->references('idmar')->on('marcas');
            $table->foreign('idcate')->references('idcate')->on('categorias');
        });
    }

    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
?>