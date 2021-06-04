<?php
namespace App\Http\Controllers\v1\Plugin\Admin;
use App\Http\Requests\v1\SubmitColumnPropertyRequest;
use App\Models\v1\ColumnProperty;
use App\Models\v1\Resource;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
/**
 * ColumnProperty
 * 栏目属性
 * Class ColumnPropertyController
 * @package App\Http\Controllers\v1\Plugin\Admin
 */
class ColumnPropertyController extends Controller
{
    /**
     * ColumnPropertyList
     * 栏目属性列表
     * @param Request $request
     * @return \Illuminate\Http\Response
     * @queryParam  limit int 每页显示条数
     * @queryParam  sort string 排序
     * @queryParam  page string 页码
     */
    public function list(Request $request)
    {
        $q = ColumnProperty::query();
        $limit = $request->limit;
        if ($request->has('sort')) {
            $sortFormatConversion = sortFormatConversion($request->sort);
            $q->orderBy($sortFormatConversion[0], $sortFormatConversion[1]);
        }
        $paginate = $q->paginate($limit);
        return resReturn(1, $paginate);
    }
    /**
     * ColumnPropertyCreate
     * 栏目属性添加
     * @param SubmitColumnPropertyRequest $request
     * @return \Illuminate\Http\Response
            * @queryParam  id int 
            * @queryParam  column_id int 栏目ID
            * @queryParam  details string 详情
     */
    public function create(SubmitColumnPropertyRequest $request)
    {
        $return = DB::transaction(function () use ($request) {
            $ColumnProperty = new ColumnProperty();
            $ColumnPropertys->id = $request->id;
            $ColumnPropertys->column_id = $request->column_id;
            $ColumnPropertys->details = $request->details;
            $ColumnProperty->save();
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '添加成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
    /**
     * ColumnPropertyDetail
     * 栏目属性详情
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 栏目属性ID
     */
    public function detail($id)
    {
        ColumnProperty::$withoutAppends = false;
        $ColumnProperty = ColumnProperty::find($id);
        return resReturn(1, $ColumnProperty);
    }
    /**
     * ColumnPropertyEdit
     * 栏目属性更新
     * @param SubmitColumnPropertyRequest $request
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 栏目属性ID
            * @queryParam  id int 
            * @queryParam  column_id int 栏目ID
            * @queryParam  details string 详情
     */
    public function edit(SubmitColumnPropertyRequest $request, $id)
    {
        $return = DB::transaction(function () use ($request, $id) {
            $ColumnProperty = ColumnProperty::find($id);
            $ColumnPropertys->id = $request->id;
            $ColumnPropertys->column_id = $request->column_id;
            $ColumnPropertys->details = $request->details;
            $ColumnProperty->save();
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '更新成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
    /**
     * ColumnPropertyDestroy
     * 栏目属性删除
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 栏目属性ID
     */
    public function destroy($id)
    {
        $return = DB::transaction(function () use ($id) {
            ColumnProperty::destroy($id);
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '删除成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
}
