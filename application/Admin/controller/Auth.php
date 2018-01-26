<?php

namespace app\Admin\controller;

use think\Controller;
use think\Request;
use think\Db;

class Auth extends Admin {
	public function auth() {
		if (Request::instance ()->isAjax ()) {
			$data = Db::table ( 'car_admin_auth' )->select ();
			echo json_encode ( [ 
					'code' => 0,
					'data' => $data 
			], JSON_UNESCAPED_UNICODE );
		} else {
			return $this->fetch ( 'authManager/auth' );
		}
	}
	public function authAdd() {
		if (Request::instance ()->isPost ()) {
			if (Db::table ( 'car_admin_auth' )->insert ( $_POST )) {
				return $this->fetch ( 'authManager/auth' );
			}
		}
	}
	public function authGroup() {
		if (Request::instance ()->isAjax ()) {
			$data = Db::table ( 'car_admin_Group' )->select ();
			echo json_encode ( [ 
					'code' => 0,
					'data' => $data 
			], JSON_UNESCAPED_UNICODE );
		} else {
			return $this->fetch ( 'authManager/authGroup' );
		}
	}
	public function authGroupAdd() {
		if (Request::instance ()->isPost ()) {
			Db::transaction ( function () {
				$authGroup ['groupname'] = $_POST ['groupname'];
				$authGroup ['groupinfo'] = $_POST ['groupinfo'];
				$authGroup ['status'] = $_POST ['status'];
				Db::table ( 'car_admin_group' )->insert ( $authGroup );
				$authGrouprelation ['groupid'] = Db::name ( 'car_admin_group' )->getLastInsID ();
				$authGrouprelation ['authid'] = implode ( ',', $_POST ['authid'] );
				Db::table ( 'car_admin_authgroup_relation' )->insert ( $authGrouprelation );
			} );
			return $this->fetch ( 'authManager/authGroup' );
		}
	}
	public function getGroupdetail() {
		if (Request::instance ()->isAjax ()) {
			$authData = Db ( 'admin_auth' )->where ( 'authid', 'in', $_GET ['authid'] )->select ();
			echo json_encode ( [ 
					'code' => 0,
					'data' => $authData 
			], JSON_UNESCAPED_UNICODE );
		} else {
			$sql = "select a.*,g.* from car_admin_authgroup_relation a join car_admin_group g on a.groupid=g.groupid where a.groupid=" . $_GET ['groupid'];
			$group = Db::query ( $sql );
			$this->assign ( 'group', $group [0] );
			return $this->fetch ( 'authManager/groupDetail' );
		}
	}
}
