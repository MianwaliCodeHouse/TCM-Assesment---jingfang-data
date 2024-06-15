<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddMoreColumnToClinicansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('clinicans', function (Blueprint $table) {
            $table->string('practice_address')->nullable();
            $table->string('mailing_address')->nullable();
            $table->integer('phone_number')->nullable();
            $table->integer('licence_number')->nullable();
            $table->string('country_licence_issued')->nullable();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('clinicans', function (Blueprint $table) {
            //
        });
    }
}
