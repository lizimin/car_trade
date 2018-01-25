<?php

namespace app\Admin\controller;

use think\Controller;
use app\Admin\model\Shop;
use think\Request;

class Shop extends Controller {
	private $shop;
	public function _initialize() {
		$this->shop = new Shop ();
	}
	public function shop() {
		if (Request::instance ()->isAjax ()) {
			$data = $this->shop->select ();
			echo json_encode ( [ 
					'code' => 0,
					'data' => $data 
			] );
		} else {
			return $this->fetch ( 'shopManager/shop' );
		}
	}
	public function shopAdd() {
		if (Request::instance ()->isPost ()) {
			$this->shop->data ( $_POST );
			if ($this->shop->allowField ( true )->save ()) {
				$this->redirect ( 'Shop/shop' );
			}
		}
	}
}