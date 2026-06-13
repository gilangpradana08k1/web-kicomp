<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
      public function up()
    {
        Schema::table('transactions', function (Blueprint $table) {
            if (!Schema::hasColumn('transactions', 'price')) {
                $table->decimal('price', 15, 2)->after('quantity');
            }

            if (!Schema::hasColumn('transactions', 'total_price')) {
                $table->decimal('total_price', 15, 2)->after('price');
            }

            if (!Schema::hasColumn('transactions', 'paid_amount')) {
                $table->decimal('paid_amount', 15, 2)->nullable()->after('total_price');
            }
        });
    }

    public function down()
    {
        Schema::table('transactions', function (Blueprint $table) {
            if (Schema::hasColumn('transactions', 'price')) {
                $table->dropColumn('price');
            }

            if (Schema::hasColumn('transactions', 'total_price')) {
                $table->dropColumn('total_price');
            }

            if (Schema::hasColumn('transactions', 'paid_amount')) {
                $table->dropColumn('paid_amount');
            }
        });
    }
};
