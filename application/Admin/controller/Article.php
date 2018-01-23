<?php

namespace app\Admin\controller;

use think\Controller;
use think\Request;
use app\Admin\model\ArticleCategory;

class Article extends Controller {
	public function articleCategory() {
		$articleCate=new ArticleCategory();
		if (Request::instance ()->isPost ()) {
		   $articleCate->data($_POST);
		   $articleCate->save();
		}
		$data=$articleCate::all();
		$data=ArticleCategory::_reSort($data);
		$this->assign('data',$data);
		return $this->fetch ( "articleManager/articleCategory" );
	}
	
	public function articleCateAjaxReturn(){
		$articleCate=new ArticleCategory();
		$data=$articleCate::all();
		$data=ArticleCategory::_reSort($data);
		echo json_encode(['code'=>0,'data'=>$data]);
	}
	


}