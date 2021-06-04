<?php
namespace App\Http\Controllers\v1\Plugin\Admin;
use App\Http\Requests\v1\SubmitColumnRequest;
use App\Models\v1\Column;
use App\Models\v1\Resource;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
/**
 * Column
 * 文章栏目
 * Class ColumnController
 * @package App\Http\Controllers\v1\Plugin\Admin
 */
class ColumnController extends Controller
{
    /**
     * ColumnList
     * 文章栏目列表
     * @param Request $request
     * @return \Illuminate\Http\Response
     * @queryParam  limit int 每页显示条数
     * @queryParam  sort string 排序
     * @queryParam  page string 页码
     */
    public function list(Request $request)
    {
        $q = Column::query();
        $limit = $request->limit;
        if ($request->has('sort')) {
            $sortFormatConversion = sortFormatConversion($request->sort);
            $q->orderBy($sortFormatConversion[0], $sortFormatConversion[1]);
        }
        $paginate = $q->paginate($limit);
        return resReturn(1, $paginate);
    }
    /**
     * ColumnCreate
     * 文章栏目添加
     * @param SubmitColumnRequest $request
     * @return \Illuminate\Http\Response
            * @queryParam  id int 
            * @queryParam  name string 栏目名称
            * @queryParam  pid int 上级栏目ID
            * @queryParam  keyword string 关键字
            * @queryParam  describes string 描述
            * @queryParam  template string 模板
            * @queryParam  is_show int 是否显示:1=是-yes,2=否-no
            * @queryParam  is_list int 是否列表:0=否-no,1=是-yes
            * @queryParam  sort int 排序
            * @queryParam  pv int 访问量
     */
    public function create(SubmitColumnRequest $request)
    {
        $return = DB::transaction(function () use ($request) {
            $Column = new Column();
            $Columns->id = $request->id;
            $Columns->name = $request->name;
            $Columns->pid = $request->pid;
            $Columns->keyword = $request->keyword;
            $Columns->describes = $request->describes;
            $Columns->template = $request->template;
            $Columns->is_show = $request->is_show;
            $Columns->is_list = $request->is_list;
            $Columns->sort = $request->sort;
            $Columns->pv = $request->pv;
            $Column->save();
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '添加成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
    /**
     * ColumnDetail
     * 文章栏目详情
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章栏目ID
     */
    public function detail($id)
    {
        Column::$withoutAppends = false;
        $Column = Column::find($id);
        return resReturn(1, $Column);
    }
    /**
     * ColumnEdit
     * 文章栏目更新
     * @param SubmitColumnRequest $request
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章栏目ID
            * @queryParam  id int 
            * @queryParam  name string 栏目名称
            * @queryParam  pid int 上级栏目ID
            * @queryParam  keyword string 关键字
            * @queryParam  describes string 描述
            * @queryParam  template string 模板
            * @queryParam  is_show int 是否显示:1=是-yes,2=否-no
            * @queryParam  is_list int 是否列表:0=否-no,1=是-yes
            * @queryParam  sort int 排序
            * @queryParam  pv int 访问量
     */
    public function edit(SubmitColumnRequest $request, $id)
    {
        $return = DB::transaction(function () use ($request, $id) {
            $Column = Column::find($id);
            $Columns->id = $request->id;
            $Columns->name = $request->name;
            $Columns->pid = $request->pid;
            $Columns->keyword = $request->keyword;
            $Columns->describes = $request->describes;
            $Columns->template = $request->template;
            $Columns->is_show = $request->is_show;
            $Columns->is_list = $request->is_list;
            $Columns->sort = $request->sort;
            $Columns->pv = $request->pv;
            $Column->save();
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '更新成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
    /**
     * ColumnDestroy
     * 文章栏目删除
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章栏目ID
     */
    public function destroy($id)
    {
        $return = DB::transaction(function () use ($id) {
            Column::destroy($id);
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '删除成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
}
