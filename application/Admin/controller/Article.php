<?php

namespace app\Admin\controller;

use think\Controller;
use think\Request;
use app\Admin\model\ArticleCategory;
use app\Admin\model\Article;
use think\Db;
use think\Config;

class Article extends Controller {

	public function articleCategory() {
		$articleCate = new ArticleCategory ();
		$data = $articleCate->select();
		$data = ArticleCategory::_reSort ( $data );
		if (Request::instance ()->isAjax ()) {
			echo json_encode ( [ 
					'code' => 0,
					'data' => $data 
			] );
		} else {
			$this->assign ( 'data', $data );
			return $this->fetch ( "articleManager/articleCategory" );
		}
	}
	public function articleCategoryAdd() {
		if (Request::instance ()->isPost ()) {
			$articleCate = new ArticleCategory ();
			$articleCate->data ( $_POST );
			if ($articleCate->save ()) {
				$this->redirect ( 'Article/articleCategory' );
			}
		}
	}
	public function article() {
		if (Request::instance ()->isAjax ()) {
			$sql = 'select a.*,c.*,t.* from car_article a join car_article_content c on a.articleid=c.articleid join car_article_cate t on a.categoryid=t.categoryid';
			if (isset ( $_GET ['categoryid'] ) & ! empty ( $_GET ['categoryid'] )) {
				$sql .= ' where a.categoryid=' . $_GET ['categoryid'];
			}
			$category = Db::query ( $sql );
			echo json_encode ( [ 
					'code' => 0,
					'data' => $category 
			] );
			exit ();
		}
		if (isset ( $_GET ['categoryid'] )) {
			$this->assign ( 'categoryid', $_GET ['categoryid'] );
		}
		return $this->fetch ( "articleManager/article" );
	}
	public function articleAdd() {
		if (Request::instance ()->isPost ()) {
			Db::transaction ( function () {
				$article = new Article ( $_POST );
				if ($article->allowField ( true )->save ()) {
					$articleid = $article->getLastInsID ();
					$content ['articleid'] = $articleid;
					$content ['content'] = $_POST ['content'];
					Article::saveArticleImg($articleid,$_POST['img']);

				}
				db ( 'article_content' )->insert ( $content );
			} );
			$this->redirect ( 'Article/article' );
		}
		$articleCate = new ArticleCategory ();
		$data = $articleCate::all ();
		$data = ArticleCategory::_reSort ( $data );
		$this->assign ( 'cate', $data );
		return $this->fetch ( "articleManager/articleAdd" );
	}
	public function uploadFile() {
		if (isset ( $_FILES )) {
			$article=new Article();
			$url = $article->createImgUrl ( $_FILES ['file'] ['name'], $_FILES ['file'] ['tmp_name'] );
			echo json_encode ( [ 
					'code' => 0,
					'data' => $url,
			] );
		}
	}

}