<?php

namespace app\Admin\controller;

use think\Controller;
use think\Session;
use think\Request;

class Login extends Controller {
	public function login() {
		if (Request::instance ()->isAjax ()) {
			$userisset = db ( 'admin_user' )->where ( $_POST )->select ();
			if (isset ( $userisset [0] )) {
				Session::set ( 'userid', $userisset [0] ['userid'] );
				Session::set ( 'type', $userisset [0] ['type'] );
				if (Session::has ( 'userid' )) {
					echo json_encode ( [ 
							'code' => 0,
							'userid' => $userisset [0] ['userid'] 
					] );
				}
			} else {
				echo json_encode ( [ 
						'code' => 1,
						'userid' => '' 
				] );
			}
		}else{
			return $this->fetch('login/login');
		}
	}
	public function loginOut() {
		Session::delete ( 'userid' );
		if (! Session::has ( 'userid' )) {
			$this->redirect ( 'Admin/Login/login' );
		}
	}
}