<?php

namespace App\Http\Controllers\v1\Plugin\Client;

use App\Code;
use App\Models\v1\Article;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

/**
 * article
 * 文章管理
 * Class ArticleController
 * @package App\Http\Controllers\v1\Plugin\Admin
 */
class ArticleController extends Controller
{
    /**
     * ArticleList
     * 文章列表
     * @param $id
     * @param Request $request
     * @return \Illuminate\Http\Response
     * @queryParam  id int 栏目ID
     * @queryParam  limit int 每页显示条数
     * @queryParam  page string 页码
     */
    public function list($id, Request $request)
    {
        if (!$id) {
            return resReturn(0, '非法操作', Code::CODE_MISUSE);
        }
        $q = Article::query();
        $q->orderBy('sort', 'ASC')->orderBy('created_at', 'ASC');
        $limit = $request->limit;
        $q->where('column_id', $id);
        $paginate = $q->with(['resources'])->paginate($limit);
        return resReturn(1, $paginate);
    }

    /**
     * ArticleDetail
     * 文章详情
     * @param $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章ID
     */
    public function detail($id)
    {
        $return = Article::with(['ArticleProperty', 'resources'])->find($id);
        return resReturn(1, $return);
    }

    /**
     * ArticlePv
     * 增加文章访问量
     * @param $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章ID
     */
    public function pv($id)
    {
        Article::where('id', $id)->increment('pv');
        return resReturn(1, '成功');
    }
}
