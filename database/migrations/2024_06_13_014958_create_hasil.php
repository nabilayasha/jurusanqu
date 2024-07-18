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
        Schema::create('hasil', function (Blueprint $table) {
            $table->id();
            $table->string('nama', 255)->nullable();
            $table->string('sekolah', 500)->nullable();
            $table->unsignedInteger('id_kelas', 255)->nullable();
            $table->unsignedInteger('P', 255)->nullable();
            $table->unsignedInteger('I', 255)->nullable();
            $table->unsignedInteger('J', 255)->nullable();
            $table->unsignedInteger('J', 255)->nullable();
            $table->unsignedInteger('T', 255)->nullable();
            $table->unsignedInteger('E', 255)->nullable();
            $table->unsignedInteger('N', 255)->nullable();
            $table->unsignedInteger('S', 255)->nullable();
            $table->unsignedInteger('F', 255)->nullable();
            $table->string('hasil', 10)->nullable();
            $table->string('jurusan', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('hasil');
    }
};
