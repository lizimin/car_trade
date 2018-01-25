<?php

namespace app\Admin\controller;

use think\Controller;
use think\Db;

class Admin extends Controller {
	

	public function index() {

		return $this->fetch ( 'index/login' );
	}
	
	
	
	public function index1() {
	
		return $this->fetch ( 'index/index' );
	}
	
	
	public function test(){
		$Sql='select *from car_admin_usergroup_relation u join car_admin_authgroup_relation g on u.groupid=g.groupid where u.userid=4';
		$data=Db::query($Sql);
		$authid="";
		foreach($data as $k=>$v){
			$authid.=$v['authid'].",";
		}
		$authid=implode(',', array_unique(explode(',', rtrim($authid, ','))));
	    $data=$this->isHasauth($authid);
	    
		
	}
	
	public function isHasauth($authid){
		$data=db('admin_auth')->where('authid','in',$authid)->select();
	}
}
