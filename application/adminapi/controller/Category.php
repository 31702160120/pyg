<?php

namespace app\adminapi\controller;

use think\Request;

class Category extends BaseApi
{
    /**
     * 显示资源列表
     *  
     * @return \think\Response
     *  请求变量名    参 数   返  回  值
     *   type         list   无限极分类
     *                        普通列表
     */
    public function index()
    {
        $params = input();
        $where = [];
        if(isset($params['pid'])){
            $where['pid'] = $params['pid'];
        }
        $list = \app\common\model\Category::where($where)->select();
        $list = (new \think\Collection($list))->toArray();
        if(!isset($params['type']) || $params['type'] != 'list'){
            $list = get_cate_list($list);
        }
        $this->ok($list);
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        $params = input();
        $validate = $this->validate($params,[
           ' cate_name|分类名' => 'require|length:2,20', 
           ' pid|父级id'       => 'require|integer|egt:0',
           ' is_show|显示'     => 'require|in:0,1',
           ' is_hot|是否热门'  => 'require|in:0,1',
           ' sort|排序'        => 'require|between:0,9999', 
        ]);
        if($validate != true){
            $this->fail($validate);
        }
        $category = new \app\common\model\Category();
        if($params['pid'] == 0){ //顶级
            $params['pid_path_name'] = '';
            $params['pid_path']      = 0;
            $params['level']         = 0;
        }else{
            $list = $category::find($params['pid']);
            if(empty($list)){
                $this->fail('数据错误');
            }
            $params['pid_path'] = $list['pid_path']. '_' .$list['id'];
            $params['pid_path_name'] = $list['pid_path_name']. '.' .$list['cate_name'];
            $params['level'] = $list['level']+1;
        }
        $params['image_url'] = $params['logo'];
        if(isset($params['image_url']) && !empty($params['image_url']) && is_file('.'. $params['image_url'])){
            \think\Image::open('.'. $params['image_url'])->thumb(200,100)->save('.'. $params['image_url']);
        }
        $id = $category::create($params, true);
        $data = $category::find($id);
        $this->ok($data);
    }

    /**
     * 查询指定分类数据
     *
     * @param  int  $id
     * @return \think\Response
     * | 名称 | 备注 |
     *| id | 分类id |
     *| cate_name | 分类名称 |
     *| pid | 父id |
     *| pid_path_name | 家族图谱名称(祖先名/父级名) |
     *| level | 级别 0 1 2 ， 0为最顶级 |
     *| is_show | 是否显示 |
     *| is_hot | 是否热门 |
     *| image_url | 分类logo图片 |
     */
    public function read($id)
    {
        $list = \app\common\model\Category::find($id);
        $this->ok($list);
    }

    /**
     * 查询指定分类数据
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
       
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        $params = input();
        $validate = $this->validate($params,[
           ' cate_name|分类名' => 'require|length:2,20', 
           ' pid|父级id'       => 'require|integer|egt:0',
           ' is_show|显示'     => 'require|in:0,1',
           ' is_hot|是否热门'  => 'require|in:0,1',
           ' sort|排序'        => 'require|between:0,9999', 
        ]);
        if($validate != true){
            $this->fail($validate);
        }
        $category = new \app\common\model\Category();
        if($params['pid'] == 0){ //顶级
            $params['pid_path_name'] = '';
            $params['pid_path']      = 0;
            $params['level']         = 0;
        }else{
            $list = $category::find($params['pid']);
            if(empty($list)){
                $this->fail('数据错误');
            }
            $params['pid_path'] = $list['pid_path']. '_' .$list['id'];
            $params['pid_path_name'] = $list['pid_path_name']. '.' .$list['cate_name'];
            $params['level'] = $list['level']+1;
        }
        if(isset($params['image_url']) && !empty($params['image_url'])){
            $params['image_url'] = $params['logo'];
        }
        $rel = $category::update($params,['id' => $id], true);
        if(empty($rel)){
            $this->fail('修改失败');
        }
        $data = $category::find($id);
        $this->ok($data);
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        $num = \app\common\model\Category::where('pid', $id)->count();
        if($num > 0){
            $this->fail('无法删除父分类');
        }
        $rel = \app\common\model\Category::destroy($id);
        if(empty($rel)){
            $this->fail('删除失败');
        }
        $this->ok();
    }
}
