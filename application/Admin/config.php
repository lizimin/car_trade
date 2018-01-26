<?php
// 配置文件
return [ 
		'view_replace_str' => [ 
				'__PUBLIC__' => dirname ( $_SERVER ['SCRIPT_NAME'] ),
				'__STATIC__' => '/static',
				'__CSS__' => '/static/css',
				'__JS__' => '/static/js',
				'__IMG__' => '/static/images' 
		],
		'OSS_CONFIG' => array (
				'accessKeyId' => 'LTAItNkumvJgPWpD',
				'accessKeySecret' => 'yJ8P9b6CdNYKV8Ttg4Iy31RVnqrkS9',
				'endpoint' => 'http://oss-cn-shenzhen.aliyuncs.com',
				'bucket' => 'ynxarmall',
				'oss_domain' => 'http://opic.gotomore.cn/',
				'mimes' => array (
						'image/jpg',
						'image/gif',
						'image/png',
						'image/jpeg',
						'application/octet-stream'  // 阿里云好像都是通过二进制上传
								),
				'maxSize' => 4194304, // 上传的文件大小限制4M (0-不做限制)
				'exts' => array (
						'jpg',
						'gif',
						'png',
						'jpeg' 
				), // 允许上传的文件后缀
				'subName' => array (
						'date',
						'Ymd' 
				), // 子目录创建方式，[0]-函数名，[1]-参数，多个参数使用数组
				'savePath' => 'Uploads/', // 保存路径
				'saveName' => array (
						'uniqid',
						'' 
				), // 上传文件命名规则，[0]-函数名，[1]-参数，多个参数使用数组,
				'domain_dir' => array (
						'item' => 'car',
						'module' => 'admin',
						'type' => 'article',
						'xcxcgj' => 'xcxcgj' 
				) 
		),
		'session' => [ 
				'prefix' => 'car_admin_user',
				'type' => '',
				'auto_start' => true 
		] 
]
;