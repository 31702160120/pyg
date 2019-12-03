<?php

namespace app\adminapi\controller;

use think\Request;

class Role extends BaseApi
{
    /**
     * 显示角色信息
     *
     * @return \think\Response
     * 返回值
     * | 名称 | 备注 |
     *| ---------- | -------------------------------- |
     *| id | 角色id |
     *| role_name | 角色名称 |
     *| desc | 描述 |
     *| role_auths | 角色下的权限集合，父子级树状列表 |
     */
    public function index()
    {
        $role = \app\common\model\Role::select();

        foreach($role as &$v){
            $auth = \app\common\model\Auth::where('id', 'in', $v['role_auth_ids'])->select();
            $auth = (new \think\Collection($auth))->toArray();
            $auth = get_tree_list($auth);
            $v['role_auths'] = $auth;
        }
        unset($v); //使用完引用后销毁变量
        $this->ok($role);
    }


    /**
     * 创建新角色
     *
     * @param  \think\Request  $request
     * @return \think\Response
     *   返回值
     * | 名称 | 备注 |
     * | ------------- | ------------- |
     * | id | 角色id |
     * | role_name | 角色名称 |
     * | desc | 描述 |
     * | role_auth_ids | 拥有的权限ids |
     */
    public function save(Request $request)
    {
        $pamares = input();
        $validate = $this->validate($pamares,[
            'role_name|角色名' => 'require',
            // 'desc|描述' => 'require',
            'auth_ids|权限ids' => 'require',
        ]);
        if($validate !== true){
            $this->fail($validate, 401);
        }

        $pamares['role_auth_ids'] = $pamares['auth_ids'];
        $result = \app\common\model\Role::create($pamares, true);
        if(empty($request)){
            $this->fail('角色添加失败', 402);
        }
        $data = \app\common\model\Role::find($result['id']);
        $this->ok($data);
    }

    /**
     * 显示指定角色信息
     *
     * @param  int  $id 角色id
     * @return \think\Response
     * 返回值
     * | 名称 | 备注 |
     *| ------------- | ------------- |
     *| id | 角色id |
     *| role_name | 角色名称 |
     *| desc | 描述 |
     *| role_auth_ids | 拥有的权限ids |
     */
    public function read($id)
    {
        $data = \app\common\model\Role::field('id,role_name,desc,role_auth_ids')->find($id);
        $this->ok($data);
    }

  

    /**
     * 修改制定角色
     *
     * @param  \think\Request  $request
     * @param  int  $id 角色id
     * @return \think\Response
     * 返回值
     * | 名称 | 备注 |
     *| ------------- | ------------- |
     *| id | 角色id |
     *| role_name | 角色名称 |
     *| desc | 描述 |
     *| role_auth_ids | 拥有的权限ids |
     */
    public function update(Request $request, $id)
    {
        $pamares = input();
        $validate = $this->validate($pamares,[
            'role_name|角色名' => 'require',
            // 'desc|描述' => 'require',
            'auth_ids|权限ids' => 'require',
        ]);
        if($validate !== true){
            $this->fail($validate, 401);
        }

        $pamares['role_auth_ids'] = $pamares['auth_ids'];
        $result = \app\common\model\Role::update($pamares, ['id', $id], true);
        if(empty($request)){
            $this->fail('角色修改失败', 402);
        }
        $data = \app\common\model\Role::field('id,role_name,desc,role_auth_ids')->find($id);
        $this->ok($data);
    }

    /**
     * 删除指定角色
     *
     * @param  int  $id
     * @return \think\Response
     * 
     */
    public function delete($id)
    {
        if($id == 1){
            $this->fail('该角色无法删除', 401);
        }

        $list = \app\common\model\Admin::wherer('role_id', $id)->count();
        if($list > 0){
            $this->fail('角色使用中，无法删除');
        }
       $data = \app\common\model\Role::destroy($id);
       if(empty($data)){
            $this->fail('删除失败', 403);
       }
       $this->ok();
    }
}
