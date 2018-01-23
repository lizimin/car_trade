<?php
// 配置文件
return [ 
		'view_replace_str' => [ 
				'__PUBLIC__' => dirname ( $_SERVER ['SCRIPT_NAME'] ),
				'__STATIC__' =>'/static',
				'__CSS__' => '/static/css',
				'__JS__' => '/static/js',
				'__IMG__' =>'/static/images' 
		],
		
];