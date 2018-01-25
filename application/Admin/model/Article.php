<?php

namespace app\Admin\model;

use think\Model;
use think\Config;

class Article extends Model {
	protected $pk = 'articleid';
	private static $oss;
	private static $ossClient;
	protected function initialize() {
		// 需要调用`Model`的`initialize`方法
		parent::initialize ();
		self::$oss = Config::get ( 'OSS_CONFIG' );
		self:: $ossClient= new \Oss\OssClient ( self::$oss ['accessKeyId'], self::$oss ['accessKeySecret'], self::$oss ['endpoint'] );
	}

	public function createImgUrl($name, $tmp_name) {
		$oss = self::$oss;
		$domain_dir = $oss ['domain_dir'] ['item'] . '/' . $oss ['domain_dir'] ['module'].'/' . $oss ['domain_dir'] ['type'];
		$url = 'upload/' . $domain_dir . '/' . date ( 'Y' ) . '/' . date ( 'm' ) . '/' . date ( 'd' ) . '/' . time () . '_' . self::createRandomStr ( 6 ) . '.' . pathinfo ( $name, PATHINFO_EXTENSION );
		$path=self::$ossClient->uploadFile($oss['bucket'],$url,$tmp_name)['info']['url'];
		return [ 
				$path,
				$name			
		];
	}
	private static function createRandomStr($length) {
		$str = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'; // 62个字符
		$strlen = 62;
		while ( $length > $strlen ) {
			$str .= $str;
			$strlen += 62;
		}
		$str = str_shuffle ( $str );
		return substr ( $str, 0, $length );
	}
	public static function saveArticleImg($articleid, $img) {
		foreach ( $img as $k => $v ) {
			$imgInfo = explode ( ',', $v );
			$data ['attachdomain'] = 'www.car.com';
			$data ['attachmodule'] = 'admin';
			$data ['attachtable'] = 'car_article';
			$data ['attachtype'] = 'img';
			$data ['attachsavename'] = $imgInfo [1];
			$data ['attachsavepath'] = $imgInfo[0];
			$data ['attachtableid'] = $articleid;
			db('attach')->insert($data);
		}
	}
}