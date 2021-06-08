<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
class CreateColumnsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('columns', function (Blueprint $table) {
            $table->id();
            $table->string('name')->comment('栏目名称');
            $table->unsignedInteger('pid')->default('0')->comment('上级栏目ID');
            $table->string('keyword')->comment('关键字');
            $table->string('describes')->comment('描述');
            $table->string('template')->default('defaultColumn')->comment('模板');
            $table->unsignedTinyInteger('is_show')->default('1')->comment('是否显示:1=是-yes,2=否-no');
            $table->unsignedTinyInteger('is_list')->default('0')->comment('是否列表:0=否-no,1=是-yes');
            $table->unsignedInteger('sort')->default('5')->comment('排序');
            $table->unsignedInteger('pv')->default('0')->comment('访问量');
            $table->timestamps();
            $table->charset = 'utf8';
            $table->engine = 'INNODB';
            $table->collation = 'utf8_general_ci';
        });
        DB::statement("ALTER TABLE `columns` COMMENT='栏目'");
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('columns');
    }
}
