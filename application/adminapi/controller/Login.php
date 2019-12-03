<?php

namespace app\adminapi\controller;

use app\common\model\Admin;
use tools\jwt\Token;

class Login extends BaseApi
{
    /** 验证码接口
     *
     *  $uniqid 唯一标识
     *   $src  验证码地址
     * @return
     */
    public function captcha()
    {
        $uniqid = uniqid(mt_rand(100000, 999999));
        $src = captcha_src($uniqid);
        $this->ok(array(
            'src'    => $src,
            'uniqid' => $uniqid,
        ));
    }

    /** 登录接口
     * @return
     * token | token令牌 |
     *| user_id | 用户id |
     *| username | 用户名 |
     *| nickname | 用户昵称 |
     *  | email | 用户邮箱 |
     */
    public function login()
    {
        $params = input();
        $validate = $this->validate($params, [
            'username|用户名' => 'require',
            'password|密码'   => 'require',
            'uniqid|验证标识' => 'require',
            'code|验证码'     => 'require',
        ]);
        if ($validate !== true) {
            $this->fail($validate, 401);
        }

        $session_id = cache('session_id_' . $params['uniqid']);
        if(empty($session_id)){
            session_id($session_id);
        }
        
        if (!captcha_check($params['code'], $params['uniqid'])) {
            //验证码错误
            // $this->fail('验证码错误', 402);
        }
        $data = [
            'password' => encrypt_password($params['password']),
            'username' => $params['username'],
            'status'   => 1,
        ];
        $rel = Admin::where($data)->find();
        if (empty($rel)) {
            $this->fail('用户名或密码错误', 403);
        }

        $token = Token::getRequestToken($rel['id']); //写入用户id获得token
        $this->ok([
            'username' => $rel['username'],
            'token'    => $token,
            'user_id'  => $rel['id'],
            'nickname' => $rel['nickname'],
            'email'    => $rel['email'],
        ]);
    }

    /**
     * 注销登录
     *   $delete_token 注销的token数组缓存
     * @return void
     */
    public function logout(){
        $token = Token::getRequestToken();
        $delete_token = cache('delete_token') ?: [];
        $delete_token[] =  $token;
        cache('delete_token', $delete_token, (60*60*24));
        $this->ok();
    }

}
