<?php
namespace app\adminapi\controller;
use tools\jwt\Token;

class Index extends BaseApi
{
    public function index()
    {
        // $rel = \think\Db::table('pyg_goods')->find();
        // return '路由api';

        // $this->ok(['id'=> '1', 'name' => '小桦桦', 'age' => 20]);
        //获取token
       /* $token = Token::getToken(100);
        var_dump($token);
        //获取用户id
        var_dump(Token::getUserId($token));*/
        // $this->fail('修改失败')
      
    }
}
