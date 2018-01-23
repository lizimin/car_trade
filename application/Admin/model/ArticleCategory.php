<?php
namespace app\Admin\model;
use think\Model;
class ArticleCategory extends Model{
	protected $pk = 'categoryid';
	protected $table = 'car_article_cate';
	
	public static function _reSort($data, $level = 0, $parent_id = 0, $isClear = TRUE) {
		static $ret = array ();
		if ($isClear)
			$ret = array ();
		foreach ( $data as $k => $v ) {
			if ($v ['pid'] == $parent_id) {
				$v ['level'] = $level;
				$ret [] = $v;
				self::_reSort ( $data, $level + 1, $v ['categoryid'], $isClear = FALSE );
			}
		}
		return $ret;
	}
}