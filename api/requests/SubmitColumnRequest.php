<?php

namespace App\Http\Requests\v1;

use App\Http\Requests\Request;

class SubmitColumnRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        switch ($this->method()) {
            case 'POST':
                return true;
            case 'GET':
            default:
            {
                return false;
            }
        }
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $request = Request::all();
        switch ($this->method()) {
            case 'POST':    //create
                if (Request::has('id')) {   //更新
                    return [
                        'name' => 'required|unique:columns,name,' . $request['id'] . '|string|max:60',
                        'pid' => 'required|numeric',
                        'keyword' => 'nullable|string|max:255',
                        'describes' => 'nullable|string|max:255',
                        'show' => 'required|numeric',
                        'list' => 'required|numeric',
                        'sort' => 'required|numeric',
                    ];
                } else {
                    return [
                        'name' => 'required|unique:columns|string|max:60',
                        'pid' => 'required|numeric',
                        'keyword' => 'nullable|string|max:255',
                        'describes' => 'nullable|string|max:255',
                        'show' => 'required|numeric',
                        'list' => 'required|numeric',
                        'sort' => 'required|numeric',
                    ];
                }
            case 'GET':
            default:
            {
                return [];
            }
        }
    }

    public function messages()
    {
        return [
            'name.required' => '栏目名称不能为空',
            'name.unique' => '栏目名称已存在',
            'name.string' => '栏目名称格式有误',
            'name.max' => '栏目名称长度不能超过60位',
            'pid.required' => '上级类目不能为空',
            'pid.unique' => '上级类目格式有误',
            'keyword.max' => '关键字长度不能超过255位',
            'describes.max' => '描述长度不能超过255位',
            'show.required' => '是否显示不能为空',
            'show.numeric' => '是否显示格式有误',
            'list.required' => '是否列表不能为空',
            'list.numeric' => '是否列表格式有误',
            'sort.required' => '排序不能为空',
            'sort.numeric' => '排序格式有误',
        ];
    }
}
