<?php
namespace app\adminapi\logic;

class AuthLogic{

    public static function check(){
        //获取控制器名称
        $contrpller = request()->controller();
        //获取方法名
        $action = request()->action();
        if($contrpller == 'Index' && $action == 'index'){
            return true;
        }
        $user_id = input('user_id');
        $role = \app\common\model\Admin::find($user_id);
        $role_id = $role['role_id'];
        if($role_id == 1){
            return true;
        }
        //查询该管理员可以访问的控制器和方法
        $list = \app\common\model\Role::find($role_id);
        $role_auth_ids = explode(',', $list['role_auth_ids']);
        //查询当前控制器和方法组合id
        $where =[
            'auth_c' => $contrpller,
            'auth_a' => $action
        ];
        $auth = \app\common\model\Auth::field('id')->where($where)->find();
        $auth_id = $auth['id'];
        if(in_array($auth_id, $role_auth_ids)){
            return true;
        }
        return false;
    }
}