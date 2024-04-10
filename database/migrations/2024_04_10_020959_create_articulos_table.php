<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('articulos', function (Blueprint $table) {
            $table->smallIncrements('id');
            $table->string('nombre',150)->require();
            $table->string('descripcion',255);
            $table->string('codigo_barras',64);
            $table->decimal('precio_compra', total:8,places:2);
            $table->decimal('precio_venta',total:8,places:2);
            $table->Integer('stock');
            $table->boolean('activo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('articulos');
    }
};
