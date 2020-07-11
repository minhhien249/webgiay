<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAboutUsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('AboutUs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title')->collation('utf8mb4_unicode_ci');
            $table->text('description')->collation('utf8mb4_unicode_ci')->nullable();
            $table->integer('position')->default(0);
            $table->integer('is_active')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('AboutUs');
    }
}
