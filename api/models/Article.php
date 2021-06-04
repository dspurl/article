<?php
namespace App\Models\v1;
use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;
/**
 * @property int id
 * @property int column_id
 * @property string name
 * @property string keyword
 * @property string describes
 * @property string template
 * @property int is_show
 * @property int sort
 * @property int pv
 */
class Article extends Model
{
    const ARTICLE_IS_SHOW_YES = 1; //是否显示:是
    const ARTICLE_IS_SHOW_NO = 2; //是否显示:否
    public static $withoutAppends = true;
    /**
     * Prepare a date for array / JSON serialization.
     *
     * @param \DateTimeInterface $date
     * @return string
     */
    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
}
