<?php
namespace App\Http\Controllers\v1\Plugin\Client;
use App\Models\v1\Columns;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
/**
 * Columns
 * 文章栏目
 * Class ColumnsController
 * @package App\Http\Controllers\v1\Plugin\Admin
 */
class ColumnsController extends Controller
{
    /**
     * ColumnsList
     * 文章栏目列表
     * @param $id
     * @param Request $request
     * @return \Illuminate\Http\Response
     * @queryParam  limit int 每页显示条数
     * @queryParam  page string 页码
     */
    public function list(Request $request)
    {
        $q = Columns::query();
        $q->orderBy('created_at', 'ASC');
        $limit = $request->limit;
        $paginate = $q->paginate($limit);
        return resReturn(1, $paginate);
    }
    /**
     * ColumnsDetail
     * 文章栏目详情
     * @param $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章栏目ID
     */
    public function detail($id)
    {
        $return = Columns::find($id);
        return resReturn(1, $return);
    }
}
