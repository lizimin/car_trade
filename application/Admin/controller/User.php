<?php

namespace app\Admin\controller;

use think\Controller;
use think\Request;

class User extends Controller {
	public function User() {
		if (Request::instance ()->isAjax ()) {
			$data = db ( 'admin_user' )->select ();
			echo json_encode ( [ 
					'code' => 0,
					'data' => $data 
			] );
		} else {
			return $this->fetch ( 'userManager/user' );
		}
	}
	public function distributeAuth() {
		if (Request::instance ()->isPost()) {
			if(db('admin_usergroup_relation')->insert($_POST)){
				$this->redirect('User/User');
			}
		}
	}
}