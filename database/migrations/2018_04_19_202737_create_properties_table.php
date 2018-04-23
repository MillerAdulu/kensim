<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropertiesTable extends Migration
{
    /**
     * zRun the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('properties', function (Blueprint $table) {
            $table->increments('id');
            $table->string('property_name',50);
            $table->string('location',50);
            $table->tinyInteger('mode');
            $table->mediumInteger('price');
            $table->tinyInteger('bedrooms');
            $table->tinyInteger('bathrooms');
            $table->tinyInteger('type');
            $table->smallInteger('size');    
            $table->text('description');   
            $table->text('pic')->nullable();       
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
        Schema::dropIfExists('properties');
    }
}
