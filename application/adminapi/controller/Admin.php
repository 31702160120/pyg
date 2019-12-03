<?php

namespace app\adminapi\controller;


use think\Request;

class Admin extends BaseApi
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     * | 名称 | 备注 |
     *| --------------- | ----------------------- |
     *| id | 用户id |
     *| username | 用户名 |
     *| email | 邮箱 |
     *| nickname | 昵称 |
     *| last_login_time | 上次登录时间 |
     *| status | 是否可用 1 可用；2 禁用 |
     *| role_name | 所属角色名称 |
     */
    public function index()
    {
        $pareams = input();
        $where =[];
        if(!empty($pareams['keyword'])){
            $keyword = $pareams['keyword'];
            $where['t1.username'] = ['like', "%$keyword%"];
        }
        $list = \app\common\model\Admin::alias('t1')
                ->join('pyg_role t2', 't1.role_id=t2.id', 'left')
                ->field('t1.id id, username, email,nickname,last_login_time,status, t2.role_name')
                ->where($where)->paginate(10);
        $this->ok($list);
    }

    
    /**
     * 
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        $pareams = input();
        $vaildate = $this->validate($pareams,[
         "username|用户名" => 'require|unique:admin',
         "email|邮箱" => 'require|email|unique:admin',
         "role_id|所属角色id" =>'require',
         "password|密码" =>'length:6,20',
        ]);
         if($vaildate !== true){
             $this->fail($vaildate, 401);
         }
 
        if(empty($pareams['password'])){
             $pareams['password'] = '123456';
        }
        $pareams['password'] = encrypt_password($pareams['password']);
        $pareams['nickname'] = $pareams['username'];
 
        $user = \app\common\model\Admin::create($pareams, true);
        $data = \app\common\model\Admin::field('id,username,email,nickname,last_login_time,status,role_id')->find($user['id']);
 
        $this->ok($data);
    }

    /**
     * 查询指定管理员信息
     *
     * @param  int  $id
     * @return \think\Response
     * | id | 用户id |
     *| username | 用户名 |
     *| email | 邮箱 |
     *| nickname | 昵称 |
     *| last_login_time | 上次登录时间 |
     *| status | 是否可用 1 可用；2 禁用 |
     *| role_id | 所属角色id 
     */
    public function read($id)
    {
        $data = \app\common\model\Admin::field('id,username,email,nickname,last_login_time,status,role_id')
                ->find($id);
        $this->ok($data);
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
     * 修改管理员信息
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     * | 名称 | 备注 |
     *| --------------- | ----------------------- |
     *| id | 用户id |
     *| username | 用户名 |
     *| email | 邮箱 |
     *| nickname | 昵称 |
     *| last_login_time | 上次登录时间 |
     *| status | 是否可用 1 可用；2 禁用 |
     *| role_id | 所属角色id |
     */
    public function update(Request $request, $id)
    {
        if($id == 1){
            $this->fail('无法修改超级管理员的信息', 401);
        }
        $pareams = input();
        if(!empty($pareams['type']) && $pareams['type'] == 'reset_pwd'){
            $password = encrypt_password('123456');
            $rel = \app\common\model\Admin::update(['password'=> $password], ['id' => $id], true);
            if(empty($rel)){
                $this->fail('重置失败', 402);
            } 
        }else{
            $validate = $this->validate($pareams, [
                'email|邮箱' => 'email',
                'role_id|所属角色' => 'integer|gt:0',
                'nickname|昵称' => 'max:50',
            ]);
            if($validate !== true){
                $this->fail($validate, 401);
            }
            unset($pareams['username']);
            unset($pareams['password']);
            $resule = \app\common\model\Admin::update($pareams, ['id' => $id ], true);
            if(empty($resule)){
                $this->fail('修改失败', 402);
            } 
        }
        $data = \app\common\model\Admin::field('id,username,email,nickname,last_login_time,status,role_id')->find($id);
        $this->ok($data);
    }

    /**
     * 删除指定管理员
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        /*if($id == 1){
            $this->fail('不能删除超级管理员', 401);
        }
        if($id == input('id')){
            $this->fail('不能删除自己', 401);
        }
        $rel = \app\common\model\Admin::destroy($id);
        if(empty($rel)){
            $this->fail('删除失败', 401);
        }*/
        $data = input();
        $this->ok($data);
    }
}
