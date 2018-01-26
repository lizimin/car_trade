<?php

namespace app\Admin\model;

use think\Model;
use think\Db;

class Author extends Model {
	public static function isHasauth($userid) {
		$authid = self::authQuery ( $userid );
		$data = db ( 'admin_auth' )->where ( 'authid', 'in', $authid )->select ();
		$authGroup = array ();
		$controller = strtolower ( request ()->controller () );
		$action = strtolower ( request ()->action () );
		foreach ( $data as $k => $v ) {
			$authGroup ['controller'] [] = strtolower ( $v ['controller'] );
			$authGroup ['action'] [] = strtolower ( $v ['action'] );
		}
		
		if (! empty ( $authGroup ) && in_array ( $controller, $authGroup ['controller'] ) && in_array ( $action, $authGroup ['action'] )) {
			return true;
		} else {
			return false;
		}
	}
	private static function authQuery($userid) {
		$Sql = 'select *from car_admin_usergroup_relation u join car_admin_authgroup_relation g on u.groupid=g.groupid where u.userid=' . $userid;
		$data = Db::query ( $Sql );
		$authid = "";
		foreach ( $data as $k => $v ) {
			$authid .= $v ['authid'] . ",";
		}
		return implode ( ',', array_unique ( explode ( ',', rtrim ( $authid, ',' ) ) ) );
	}
}