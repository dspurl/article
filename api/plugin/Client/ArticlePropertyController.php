<?php
namespace App\Http\Controllers\v1\Plugin\Client;
use App\Models\v1\ArticlePropertys;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
/**
 * ArticlePropertys
 * 文章属性
 * Class ArticlePropertysController
 * @package App\Http\Controllers\v1\Plugin\Admin
 */
class ArticlePropertysController extends Controller
{
    /**
     * ArticlePropertysList
     * 文章属性列表
     * @param $id
     * @param Request $request
     * @return \Illuminate\Http\Response
     * @queryParam  limit int 每页显示条数
     * @queryParam  page string 页码
     */
    public function list(Request $request)
    {
        $q = ArticlePropertys::query();
        $q->orderBy('created_at', 'ASC');
        $limit = $request->limit;
        $paginate = $q->paginate($limit);
        return resReturn(1, $paginate);
    }
    /**
     * ArticlePropertysDetail
     * 文章属性详情
     * @param $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章属性ID
     */
    public function detail($id)
    {
        $return = ArticlePropertys::find($id);
        return resReturn(1, $return);
    }
}
