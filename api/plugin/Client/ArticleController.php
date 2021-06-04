<?php
namespace App\Http\Controllers\v1\Plugin\Client;
use App\Models\v1\Articles;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
/**
 * Articles
 * 文章
 * Class ArticlesController
 * @package App\Http\Controllers\v1\Plugin\Admin
 */
class ArticlesController extends Controller
{
    /**
     * ArticlesList
     * 文章列表
     * @param $id
     * @param Request $request
     * @return \Illuminate\Http\Response
     * @queryParam  limit int 每页显示条数
     * @queryParam  page string 页码
     */
    public function list(Request $request)
    {
        $q = Articles::query();
        $q->orderBy('created_at', 'ASC');
        $limit = $request->limit;
        $paginate = $q->paginate($limit);
        return resReturn(1, $paginate);
    }
    /**
     * ArticlesDetail
     * 文章详情
     * @param $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章ID
     */
    public function detail($id)
    {
        $return = Articles::find($id);
        return resReturn(1, $return);
    }
}
