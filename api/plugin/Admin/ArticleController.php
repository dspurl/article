<?php
namespace App\Http\Controllers\v1\Plugin\Admin;
use App\Http\Requests\v1\SubmitArticleRequest;
use App\Models\v1\Article;
use App\Models\v1\Resource;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
/**
 * Article
 * 文章
 * Class ArticleController
 * @package App\Http\Controllers\v1\Plugin\Admin
 */
class ArticleController extends Controller
{
    /**
     * ArticleList
     * 文章列表
     * @param Request $request
     * @return \Illuminate\Http\Response
     * @queryParam  limit int 每页显示条数
     * @queryParam  sort string 排序
     * @queryParam  page string 页码
     */
    public function list(Request $request)
    {
        $q = Article::query();
        $limit = $request->limit;
        if ($request->has('sort')) {
            $sortFormatConversion = sortFormatConversion($request->sort);
            $q->orderBy($sortFormatConversion[0], $sortFormatConversion[1]);
        }
        $paginate = $q->paginate($limit);
        return resReturn(1, $paginate);
    }
    /**
     * ArticleCreate
     * 文章添加
     * @param SubmitArticleRequest $request
     * @return \Illuminate\Http\Response
            * @queryParam  id int 
            * @queryParam  column_id int 栏目ID
            * @queryParam  name string 文章名称
            * @queryParam  keyword string 关键字
            * @queryParam  describes string 描述
            * @queryParam  template string 模板
            * @queryParam  is_show int 是否显示:1=是-yes,2=否-no
            * @queryParam  sort int 排序
            * @queryParam  pv int 访问量
     */
    public function create(SubmitArticleRequest $request)
    {
        $return = DB::transaction(function () use ($request) {
            $Article = new Article();
            $Articles->id = $request->id;
            $Articles->column_id = $request->column_id;
            $Articles->name = $request->name;
            $Articles->keyword = $request->keyword;
            $Articles->describes = $request->describes;
            $Articles->template = $request->template;
            $Articles->is_show = $request->is_show;
            $Articles->sort = $request->sort;
            $Articles->pv = $request->pv;
            $Article->save();
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '添加成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
    /**
     * ArticleDetail
     * 文章详情
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章ID
     */
    public function detail($id)
    {
        Article::$withoutAppends = false;
        $Article = Article::find($id);
        return resReturn(1, $Article);
    }
    /**
     * ArticleEdit
     * 文章更新
     * @param SubmitArticleRequest $request
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章ID
            * @queryParam  id int 
            * @queryParam  column_id int 栏目ID
            * @queryParam  name string 文章名称
            * @queryParam  keyword string 关键字
            * @queryParam  describes string 描述
            * @queryParam  template string 模板
            * @queryParam  is_show int 是否显示:1=是-yes,2=否-no
            * @queryParam  sort int 排序
            * @queryParam  pv int 访问量
     */
    public function edit(SubmitArticleRequest $request, $id)
    {
        $return = DB::transaction(function () use ($request, $id) {
            $Article = Article::find($id);
            $Articles->id = $request->id;
            $Articles->column_id = $request->column_id;
            $Articles->name = $request->name;
            $Articles->keyword = $request->keyword;
            $Articles->describes = $request->describes;
            $Articles->template = $request->template;
            $Articles->is_show = $request->is_show;
            $Articles->sort = $request->sort;
            $Articles->pv = $request->pv;
            $Article->save();
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '更新成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
    /**
     * ArticleDestroy
     * 文章删除
     * @param int $id
     * @return \Illuminate\Http\Response
     * @queryParam  id int 文章ID
     */
    public function destroy($id)
    {
        $return = DB::transaction(function () use ($id) {
            Article::destroy($id);
            return 1;
        }, 5);
        if ($return == 1) {
            return resReturn(1, '删除成功');
        } else {
            return resReturn(0, $return[0], $return[1]);
        }
    }
}
