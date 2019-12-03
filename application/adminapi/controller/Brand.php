<?php

namespace app\adminapi\controller;
use think\Request;

class Brand extends BaseApi
{
    /**
     * 显示品牌列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $params = input();
        $where =[];
        if(isset($params['cate_id']) && !empty($params['cate_id'])){
            $where['cate_id'] = $params['cate_id'];
            $list = \app\common\model\Brand::field('id, name')
            ->where($where)->select();
        }else{
            if(isset($params['keyword']) && !empty($params['keyword'])){
                $keyword = $params['keyword'];
                $where['t1.name'] = ['like', "%$keyword%"];
            }
            $list = \app\common\model\Brand::alias('t1')
            ->join('pyg_category t2', 't1.cate_id = t2.id', 'left')
            ->field('t1.*, t2.cate_name as name')
            ->where($where)->paginate(10);
        }
        $this->ok($list);
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
        $validate = $this->validate($params, [
        'name|品牌名'        => 'require',
        'cate_id|所属分类id' => 'require|integer|gt:0',
        'is_hot|是否热门'    => 'require|integer|in:0,1',
        'sort|排序'          => 'require|integer|between:0,9999',
        ]);
        if($validate !== true){
            $this->fail($validate);
        }
        //缩略图
        if(isset($params['logo']) && !empty($params['logo']) && is_file('.'. $params['logo'])){
            \think\Image::open('.'. $params['logo'])->thumb(200,100)->save('.'. $params['logo']);
        }
        $brand = \app\common\model\Brand::create($params, true);
        $data = \app\common\model\Brand::find($brand['id']);
        $this->ok($data);
    }

    /**
     * 显示指定品牌
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        $data = \app\common\model\Brand::find($id);
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
        $params = input();
        $validate = $this->validate($params, [
        'name|品牌名'        => 'require',
        'cate_id|所属分类id' => 'require|integer|gt:0',
        'is_hot|是否热门'    => 'require|integer|in:0,1',
        'sort|排序'          => 'require|integer|between:0,9999',
        ]);
        if($validate !== true){
            $this->fail($validate);
        }
        //缩略图
        if(isset($params['logo']) && !empty($params['logo']) && is_file('.'. $params['logo'])){
            \think\Image::open('.'. $params['logo'])->thumb(200,100)->save('.'. $params['logo']);
        }
        $rel = \app\common\model\Brand::update($params,['id' => $id],true);
        if(empty($rel)){
            $this->fail('修改失败');
        }
        $data = \app\common\model\Brand::find($id);
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
        $goods = \app\common\model\Goods::where('brand_id', $id)->count();
        if($goods > 0){
            $this->fail('不能删除原有商品的品牌');
        }
        $rel = \app\common\model\Brand::destroy($id);
        if(empty($rel)){
            $this->fail('删除失败');
        }
        $this->ok();
    }
}
