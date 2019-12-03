<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\Route;

Route::domain('adminapi', function(){
    //adminapi模块首页路由
    Route::get('/', 'adminapi/index/index');
    //验证码图片
    Route::get('captcha/[:id]', "\\think\\captcha\\CaptchaController@index");
    //验证码接口
    Route::get('captcha', 'adminapi/login/captcha');
    //登录
    Route::post('login', 'adminapi/login/login');
    //退出
    Route::get('logout', 'adminapi/login/logout');
    //权限菜单管理
    Route::resource('auths', 'adminapi/auth', [], ['id' => '\d+']);
    //菜单查询
    Route::get('nav', 'adminapi/auth/nav');
    //角色管理
    Route::resource('roles', 'adminapi/role', [], ['id' => '\d+']);
    //管理员列表
    Route::resource('admins', 'adminapi/admin', [], ['id' => '\d+']);
    //分类列表
    Route::resource('categorys', 'adminapi/category', [], ['id' => '\d+']);
    //单图片上传
    Route::post('logo', 'adminapi/upload/logo');
    //多图片上传
    Route::post('images', 'adminapi/upload/images');
    //品牌列表
    Route::resource('brands', 'adminapi/brand', [], ['id' => '\d+']);
    //商品模型(类型)
    Route::resource('types', 'adminapi/type', [], ['id' => '\d+']);
    //添加商品
    Route::resource('goods', 'adminapi/goods', [], ['id' => '\d+']);
    //删除图片
    Route::delete('delpics/:id', 'adminapi/goods/delpics', [], ['id'=>'\d+']);
});