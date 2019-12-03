<?php

namespace app\adminapi\controller;

use think\Request;
use think\Validate;

class Auth extends BaseApi
{
    /**
     * 显示菜单列表
     *
     * @return \think\Response  
     * id | 权限id |
     * | auth_name | 权限名称 |
     * | pid | 父id |
     * | pid_path | 家族图谱（祖先id_父id）,示例：0_1_2 |
     * | auth_c | 控制器名称 |
     * | auth_a | 方法名称 |
     * | is_nav | 是否菜单权限 1是 0否 |
     * | level | 级别 0 1 2 3 ， 0为最顶级 |
     */
    public function index()
    {
        $paream = input();
        $where = [];
        //是否搜索
        if(!empty($paream['keywors'])){
            $where['auth_name'] = ['like', "%".$paream['keyword'].'%'];
        }
        $list = \app\common\model\Auth::field('id,auth_name,pid,pid_path,auth_c,auth_a,is_nav,level')
                -> Where($where) -> select();
        //转换为二维数组
        $list = (new \think\Collection($list)) -> toArray();

        if(!empty($paream['type']) && $paream['type'] == 'tree'){
            //父子树结构
            $list = get_tree_list($list);
        }else{
            //无限极分类
            $list = get_cate_list($list);
        }

        $this->ok($list);
    }

    
    /**
     * 新建菜单
     *
     * @param  \think\Request  $request
     * @return \think\Response
     * | 名称 | 备注 |
     *| --------- | ----------------------------------- |
     *| id | 权限id |
     *| auth_name | 权限名称 |
     *| pid | 父id |
     *| pid_path | 家族图谱（祖先id_父id）,示例：0_1_2 |
     *| auth_c | 控制器名称 |
     *| auth_a | 方法名称 |
     *| is_nav | 是否菜单权限 1是 0否 |
     *| level | 级别 0 1 2 3 ， 0为最顶级 
     */
    public function save(Request $request)
    {
        $paream =input();

        if(empty($paream['pid'])){
            $paream['pid'] = 0;
        }
        if(empty($paream['is_nav'])){
            $paream['is_nav'] = $paream['radio'];
        }

        $validate = $this->validate($paream,[
            'auth_name|权限名' => 'require',
            'pid|父级权限'     => 'require',
            'is_nav|菜单权限'  => 'require',
        ]);
        if($validate !== true){
            $this->fail($validate, 401);
        }
        $authModel = new \app\common\model\Auth();
        if($paream['pid'] == 0){
            $paream['level']    = 0;
            $paream['pid_path'] = 0;
        }else{
            $parent = authModel::find($paream['pid']);
            if(empty($parent)){
                $this->fail('数据异常', 402);
            }

            $paream['level'] = $parent['level'] + 1;
            $paream['pid_path'] = $parent['pid_path'].'_'.$parent['id'];  
        }

        $result = authModel::create($paream, true);
        $list   = authModel::find($result['id']);
        $this -> ok($list);
    }

    /**
     * 显示指定菜单信息
     *
     * @param  int  $id
     * @return \think\Response
     *  名称 | 备注 |
     *| --------- | ----------------------------------- |
     *| id | 权限id |
     *| auth_name | 权限名称 |
     *| pid | 父id |
     *| pid_path | 家族图谱（祖先id_父id）,示例：0_1_2 |
     *| auth_c | 控制器名称 |
     *| auth_a | 方法名称 |
     *| is_nav | 是否菜单权限 1是 0否 |
     *| level | 级别 0 1 2 3 ， 0为最顶级 |
     */
    public function read($id)
    {
        $list = \app\common\model\Auth::field('id,auth_name,pid,pid_path,auth_c,auth_a,is_nav,level')
                 ->find($id);
        $this->ok($list);
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 修改菜单信息
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        $paream =input();

        if(empty($paream['pid'])){
            $paream['pid'] = 0;
        }
        if(empty($paream['is_nav'])){
            $paream['is_nav'] = $paream['radio'];
        }

        $validate = $this->validate($paream,[
            'auth_name|权限名' => 'require',
            'pid|父级权限'     => 'require',
            'is_nav|菜单权限'  => 'require',
        ]);
        if($validate !== true){
            $this->fail($validate, 401);
        }
        $authModel = new \app\common\model\Auth();
        $auth = $authModel::find($id); 
        if(empty($auth)){
            $this->fail('参数错误', 402);
        } 

        if ($paream['pid'] == 0) {
            $paream['level'] = 0;
            $paream['pid_path'] = 0;
        }else if($paream['pid'] != $auth['id']){
            $parent = $authModel::find($paream['pid']);
            if(empty($parent)){
                $this->fail('参数错误', 402);
            }
            $paream['level'] = $parent['level'] + 1;
            $paream['pid_path'] = $parent['pid_path'].'_'.$parent['id'];  
        }

        $list = $authModel::update($paream, true);
        if(empty($list)){
            $this->fail('修改失败', 403);
        }

        $data = $authModel::find($id);
        $this->ok($data);
    }

    /**
     * 删除指定菜单
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        $authModel = new \app\common\model\Auth();
       //判断是否有子权限
       $total =  $authModel::where('pid', $id)->count();
       if($total > 0){
           $this->fail('有子权限，无法删除');
       }
       //删除数据
       $authModel::destroy($id);
       //返回数据
       $this->ok();
    }

    /**
     * 查询权限菜单
     * 返回值
     * | 名称 | 备注 |
     *| --------- | ----------------------------------- |
     *| id | 权限id |
     *| auth_name | 权限名称 |
     *| pid | 父id |
     *| pid_path | 家族图谱（祖先id_父id）,示例：0_1_2 |
     *| auth_c | 控制器名称 |
     *| auth_a | 方法名称 |
     *| is_nav | 是否菜单权限 1是 0否 |
     *| level | 级别 0 1 2 3 ， 0为最顶级 |
     *| son | 子权限数据集 |
     *
     * @return void
     */
    public function nav()
    {
        $user_id = input('user_id');

        $info   = \app\common\model\Admin::find($user_id);
        $role_id = $info['role_id'];
        if($role_id == 1){
            $data = \app\common\model\Auth::where('is_nav', 1)->select();
        }else{
            $role = \app\common\model\Role::field('role_auth_ids')->find($role_id);
            $role_auth_ids = $role['role_auth_ids'];
            $data = \app\common\model\Auth::where('is_nav', 1) -> where('id','in', $role_auth_ids)->select();
        }

        $data = (new \think\Collection($data))->toArray();
        $data = get_tree_list($data);
        $this->ok($data);
    }
}
