<?php
namespace App\Models\v1;
use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;
/**
 * @property int id
 * @property int column_id
 * @property string details
 */
class ColumnProperty extends Model
{
    protected $table = 'column_propertys';
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
