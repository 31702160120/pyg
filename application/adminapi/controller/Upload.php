<?php

namespace app\adminapi\controller;



class Upload extends BaseApi
{
    /**
     * 单图片上传
     *
     * @return void
     * 
     */
    public function logo(){
        $type = input('type');
        if(empty($type)){
            $this->fail('参数错误');
        }
        $file = request()->file('logo');
        if(empty($file)){
            $this->fail('必须上传文件');
        }
        $info = $file->validate(['size' => 10*1024*1024, 'ext' => 'jpg,jpeg,png,gif'])
                ->move(ROOT_PATH . 'public'. DS . 'uploads'. DS . $type);
        if($info){
            $src = DS .'uploads'. DS .'category'. $info->getSaveName();
            $this->ok($src);
        }
        $error = $file->getError();
        $this->fail($error);
    }

    /**
     * 多图片上传
     *
     * @return void
     */
    public function images(){
        $type = input('type', 'goods');
        $files = request()->file('images');
        $data = ['success' => [], 'error' => []];
        foreach($files as $file){
            $dir = ROOT_PATH . 'public'. DS . 'uploads'. DS . $type;
            if(!is_dir($dir)){
                mk_dir($dir);
            }
            $info = $file->validate(['size' => 10*1024*1024, 'ext' => 'jpg,jpeg,png,gif'])->move($dir);
            if($info){
                $src = DS.'public'. DS . 'uploads'. DS . $type. $info->getSaveName(); 
                $data['success'][] = $src;
            }else{
               $data['error'][] = [
                    'name' => $file->getInfo('name'),
                    'msg' => $file->getError(),
               ];
            }
        }
        $this->ok($data);
    }
}
