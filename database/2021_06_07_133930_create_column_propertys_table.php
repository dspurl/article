<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
class CreateColumnPropertysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('column_propertys', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('column_id')->default('0')->comment('栏目ID');
            $table->text('details')->comment('详情');
            $table->timestamps();
            $table->charset = 'utf8';
            $table->engine = 'INNODB';
            $table->collation = 'utf8_general_ci';
        });
        DB::statement("ALTER TABLE `column_propertys` COMMENT='栏目属性'");
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('column_propertys');
    }
}
