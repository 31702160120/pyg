<?php

namespace app\adminapi\controller;


use think\Request;

class Type extends BaseApi
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $data = \app\common\model\Type::select();
        $this->ok($data);
    }

    

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        $pareams = input();
        $validate = $this->validate($pareams,[
            'type_name|模型名' => 'require',
            'spec|规格' => 'require|array',
            'attr|属性' => 'require|array',
        ]);
        if($validate !== true){
            $this->fail($validate);
        }
        /**结构
         * 'spec' =>
         * [ 
         *   ['name' => '颜色', 'sort' => 50 'value'=>['黑色']]，
         * ]
         */
        \think\Db::startTrans();
        try{
            //添加模型获取type_id
            $type = \app\common\model\Type::create($pareams, true);
            //去除属性空值
            foreach ($pareams['spec'] as $key => $value) {
                //name 为空
                if(empty($value['name'])){
                    unset($pareams['spec'][$key]);
                    continue;
                }
                // value 里空值的去除
                foreach($value['value'] as $k => $v){
                    if(empty($v)){
                        unset($pareams['spec'][$key]['value'][$k]);
                    }
                }
                // value 为空
                if(empty($value['value'])){
                    unset($pareams['spec'][$key]);
                }
            }
            $specs = [];
            //组成批量添加数据
            foreach($pareams['spec'] as $k => $v){
                $row = [
                    'type_id'   => $type['id'],
                    'spec_name' => $v['name'],
                    'srot'      => $v['srot'],
                ];
                $specs[] = $row;
            }
            //批量添加
            $spec = \app\common\model\Spec();
            $spec_data = $spec->saveAll($specs);
            /** $spec_data =[
             *      ['id' => 1, name' => '颜色', 'sort' => 50 ],
             *      ['id' => 2, name' => '内存', 'sort' => 50 ],    
             * ];
             * 
             */
            $spec_value = [];
            //组成批量添加数据
            /**
             * $spec_value = [
             *  ['spec_id' => 1, 'spec_name' => '白色', 'type_id' => '72'],
             * ];
             */
            foreach($pareams['spec'] as $key => $value){
                foreach($value['value'] as $k => $v){
                    $row = [
                        'spec_id' => $spec_data[$key]['id'],
                        'spec_name' => $v,
                        'type_id'  => $type['id'],
                    ];
                    $spec_value[] = $row;    
                }
            }
            //批量添加
            $specValue = new \app\common\model\SpecValue();
            $specValue->saveAll($spec_value);
            //去除属性空值
            foreach ($pareams['attr'] as $key => $value) {
                //name 为空
                if(empty($value['name'])){
                    unset($pareams['attr'][$key]);
                    continue;
                }
                // value 里空值的去除
                foreach($value['value'] as $k => $v){
                    if(empty($v)){
                        unset($pareams['attr'][$key]['value'][$k]);
                    }
                }
            }
            $attrs = [];
            foreach($pareams['attr'] as $k => $v){
                $row = [
                    'attr_name' => $v['name'],
                    'attr_value' => implode(',', $v['value']),
                    'sort' => $v['sort'],
                    'type_id' => $type['id'],
                ];
                $attrs[] = $row;
            }
            $attr = new \app\common\model\Attribute();
            $attr->saveAll($attrs);
            \think\Db::commit();
        }catch(\Exception $e){
            \think\Db::rollback();
            $msg = $e->getMessage();
            $this->fail($msg);
        }
        $this->ok($type);
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        $data = \app\common\model\Type::with('specs,specs.specValue,attrs')
                ->find($id);
        $this->ok($data);
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
        $pareams = input();
        $validate = $this->validate($pareams,[
            'type_name|模型名' => 'require',
            'spec|规格' => 'require|array',
            'attr|属性' => 'require|array',
        ]);
        if($validate !== true){
            $this->fail($validate);
        }
        \think\Db::startTrans();
        try{
            //添加模型获取type_id
             \app\common\model\Type::update($pareams,['id' => $id], true);
            //去除属性空值
            foreach ($pareams['spec'] as $key => $value) {
                //name 为空
                if(empty($value['name'])){
                    unset($pareams['spec'][$key]);
                    continue;
                }
                // value 里空值的去除
                foreach($value['value'] as $k => $v){
                    if(empty($v)){
                        unset($pareams['spec'][$key]['value'][$k]);
                    }
                }
                // value 为空
                if(empty($value['value'])){
                    unset($pareams['spec'][$key]);
                }
            }
            \app\common\model\Spec::destroy(['type_id' => $id]);
            $specs = [];
            //组成批量添加数据
            foreach($pareams['spec'] as $k => $v){
                $row = [
                    'type_id'   => $id,
                    'spec_name' => $v['name'],
                    'srot'      => $v['srot'],
                ];
                $specs[] = $row;
            }
            //批量添加
            $spec = \app\common\model\Spec();
            $spec_data = $spec->saveAll($specs);
            /** $spec_data =[
             *      ['id' => 1, name' => '颜色', 'sort' => 50 ],
             *      ['id' => 2, name' => '内存', 'sort' => 50 ],    
             * ];
             * 
             */
             \app\common\model\SpecValue::destroy(['type_id' => $id]);   
            $spec_value = [];
            //组成批量添加数据
            /**
             * $spec_value = [
             *  ['spec_id' => 1, 'spec_name' => '白色', 'type_id' => '72'],
             * ];
             */
            foreach($pareams['spec'] as $key => $value){
                foreach($value['value'] as $k => $v){
                    $row = [
                        'spec_id' => $spec_data[$key]['id'],
                        'spec_name' => $v,
                        'type_id'  => $id,
                    ];
                    $spec_value[] = $row;    
                }
            }
            //批量添加
            $specValue = new \app\common\model\SpecValue();
            $specValue->saveAll($spec_value);
            //去除属性空值
            foreach ($pareams['attr'] as $key => $value) {
                //name 为空
                if(empty($value['name'])){
                    unset($pareams['attr'][$key]);
                    continue;
                }
                // value 里空值的去除
                foreach($value['value'] as $k => $v){
                    if(empty($v)){
                        unset($pareams['attr'][$key]['value'][$k]);
                    }
                }
            }
            \app\common\model\Attribute::destroy(['type_id' => $id]);
            $attrs = [];
            foreach($pareams['attr'] as $k => $v){
                $row = [
                    'attr_name' => $v['name'],
                    'attr_value' => implode(',', $v['value']),
                    'sort' => $v['sort'],
                    'type_id' => $id,
                ];
                $attrs[] = $row;
            }
            $attr = new \app\common\model\Attribute();
            $attr->saveAll($attrs);
            \think\Db::commit();
        }catch(\Exception $e){
            \think\Db::rollback();
            $msg = $e->getMessage();
            $this->fail($msg);
        }
        $type = \app\common\model\Type::find($id);
        $this->ok($type);
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        \think\Db::startTrans();
        try{
        
            \app\common\model\Type::destroy($id);
            \app\common\model\Spec::destroy(['type_id' => $id]);
            \app\common\model\SpecValue::destroy(['type_id' => $id]);
            \app\common\model\Attribute::destroy(['type_id' => $id]);

            \think\Db::commit();
            $this->ok();    
        } catch (\Exception $e) {
            // 回滚事务
            \think\Db::rollback();
            $this->fail('删除失败');
        }
    }
}
