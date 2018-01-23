<?php

namespace app\Admin\controller;

use think\Controller;

class Admin extends Controller {
	

	public function index() {

		return $this->fetch ( 'index/login' );
	}
	
	public function index1() {
	
		return $this->fetch ( 'index/index' );
	}
	
	public function test(){
		$this->assign("test","ccvv");
		return $this->fetch ( 'index/404' );
	}
	
	public function test2(){
		$this->assign("test","ccvv");
		return $this->fetch ( 'index/login' );
	}
}
