<?php

namespace app\Admin\controller;

use think\Controller;
use think\Db;
use app\Admin\model\Author;
use think\Session;
use think\Request;

class Admin extends Controller {
	public function _initialize() {
		if (! $this->isLogin ()) {
			$this->redirect ( 'Login/login' );
		}
		if (Session::get ( 'type' ) == 0) {
			if (request ()->controller () != 'Admin' && request ()->action () != 'index') {
				if ($this->checkAuth ( Session::get ( 'userid' ) )) {
					return true;
				} else {
					$this->error ( '没有权限' );
				}
			}
		}
	}
	public function index() {
		return $this->fetch ( 'index/index' );
	}
	public function isLogin() {
		if (! Session::has ( 'userid' )) {
			return false;
		} else {
			return true;
		}
	}
	public function checkAuth($userid) {
		return Author::isHasauth ( $userid );
	}
}
