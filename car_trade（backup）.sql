/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : car_trade

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2018-01-23 17:04:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_admin_auth
-- ----------------------------
DROP TABLE IF EXISTS `car_admin_auth`;
CREATE TABLE `car_admin_auth` (
  `authid` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `authname` varchar(45) NOT NULL,
  `controller` varchar(45) DEFAULT NULL COMMENT '控制器名称',
  `action` varchar(45) DEFAULT NULL COMMENT '方法',
  `status` int(1) DEFAULT NULL COMMENT '是否可见',
  `authcolumnid` int(11) DEFAULT NULL COMMENT '所属动作分栏',
  PRIMARY KEY (`authid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_admin_auth
-- ----------------------------
INSERT INTO `car_admin_auth` VALUES ('1', '1231', '213', '123', '0', null);
INSERT INTO `car_admin_auth` VALUES ('2', '删除', '添加', 'add', '0', null);
INSERT INTO `car_admin_auth` VALUES ('18', 'ads', 'asd', 'asd', '0', null);
INSERT INTO `car_admin_auth` VALUES ('19', 'asd', 'sad', 'asd', '0', null);
INSERT INTO `car_admin_auth` VALUES ('20', 'das', 'ads', 'asd', '0', null);
INSERT INTO `car_admin_auth` VALUES ('21', 'dasd', 'asd', 'asd', '0', null);
INSERT INTO `car_admin_auth` VALUES ('22', 'asd', 'asd', 'asd', '0', null);
INSERT INTO `car_admin_auth` VALUES ('23', 'asd', 'asd', 'asd', '0', null);
INSERT INTO `car_admin_auth` VALUES ('24', '123', '123', '123', '0', null);
INSERT INTO `car_admin_auth` VALUES ('25', 'qwe', 'qwe', 'qwe', '0', null);
INSERT INTO `car_admin_auth` VALUES ('26', 'qwewqe', 'qweqw', 'qweqe', '1', null);

-- ----------------------------
-- Table structure for car_admin_authcolumn
-- ----------------------------
DROP TABLE IF EXISTS `car_admin_authcolumn`;
CREATE TABLE `car_admin_authcolumn` (
  `authcolumnid` int(11) NOT NULL,
  `authcolumnname` varchar(45) CHARACTER SET latin1 DEFAULT NULL COMMENT '动作分栏名称',
  `pid` int(11) DEFAULT '0',
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`authcolumnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_admin_authcolumn
-- ----------------------------

-- ----------------------------
-- Table structure for car_admin_authgroup_relation
-- ----------------------------
DROP TABLE IF EXISTS `car_admin_authgroup_relation`;
CREATE TABLE `car_admin_authgroup_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `authid` varchar(255) DEFAULT NULL,
  `createrid` varchar(45) DEFAULT NULL COMMENT '创建者id',
  `createdate` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_admin_authgroup_relation
-- ----------------------------
INSERT INTO `car_admin_authgroup_relation` VALUES ('1', '1', '1,2,20,21', null, null);
INSERT INTO `car_admin_authgroup_relation` VALUES ('2', '2', '1,20,21,24', null, null);
INSERT INTO `car_admin_authgroup_relation` VALUES ('3', '3', '1,20,22,24', null, null);
INSERT INTO `car_admin_authgroup_relation` VALUES ('4', '4', '1,20,21,24', null, null);
INSERT INTO `car_admin_authgroup_relation` VALUES ('6', '6', '2,25,26', null, null);

-- ----------------------------
-- Table structure for car_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `car_admin_group`;
CREATE TABLE `car_admin_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户管理组ID',
  `groupname` varchar(45) DEFAULT NULL COMMENT '分组名称',
  `groupinfo` varchar(45) DEFAULT NULL COMMENT '分组信息',
  `createrid` int(11) DEFAULT NULL COMMENT '创建者ID',
  `createdate` int(11) DEFAULT NULL COMMENT '创建时间',
  `status` int(1) DEFAULT NULL COMMENT '0是启用 1是禁用',
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_admin_group
-- ----------------------------
INSERT INTO `car_admin_group` VALUES ('1', '超级管理员', 'this is a testing', null, null, '0');
INSERT INTO `car_admin_group` VALUES ('2', '高级管理员', 'this is a testing', null, null, '0');
INSERT INTO `car_admin_group` VALUES ('3', '普通管理员', 'this is a testing', null, null, '0');
INSERT INTO `car_admin_group` VALUES ('4', '特殊管理员', 'this is a testing cc', null, null, '0');
INSERT INTO `car_admin_group` VALUES ('6', 'testing', 'testing', null, null, '0');

-- ----------------------------
-- Table structure for car_admin_usergroup_relation
-- ----------------------------
DROP TABLE IF EXISTS `car_admin_usergroup_relation`;
CREATE TABLE `car_admin_usergroup_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL COMMENT '权限组ID',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `createrid` int(11) DEFAULT NULL COMMENT '创建者ID',
  `createdate` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_admin_usergroup_relation
-- ----------------------------

-- ----------------------------
-- Table structure for car_article
-- ----------------------------
DROP TABLE IF EXISTS `car_article`;
CREATE TABLE `car_article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `title` varchar(45) DEFAULT NULL COMMENT '文章标题',
  `abstract` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `subhead` varchar(45) DEFAULT NULL COMMENT '副标题',
  `shopid` int(11) NOT NULL COMMENT '所属商户',
  `status` int(1) DEFAULT NULL COMMENT '文章状态',
  `createdate` int(11) DEFAULT NULL COMMENT '创建时间',
  `categoryid` int(11) NOT NULL COMMENT '分类ID',
  `articleheadimg` int(11) DEFAULT NULL COMMENT '头部图像。',
  `articalimg` varchar(100) DEFAULT NULL COMMENT '文章图片 管理到attach附件表',
  `editid` int(11) DEFAULT NULL COMMENT '修改人ID',
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_article
-- ----------------------------

-- ----------------------------
-- Table structure for car_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `car_article_cate`;
CREATE TABLE `car_article_cate` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(45) DEFAULT NULL COMMENT '分类名称',
  `describe` varchar(255) DEFAULT NULL,
  `pid` int(1) DEFAULT '0' COMMENT '分类父ID',
  `depth` int(1) DEFAULT '1' COMMENT '深度',
  `status` int(1) DEFAULT '0' COMMENT '0启用 1禁用',
  `priority` int(11) DEFAULT '0' COMMENT '同级优先级',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_article_cate
-- ----------------------------
INSERT INTO `car_article_cate` VALUES ('1', 'testing', 'hello world', '0', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('2', 'child', 'ewe', '1', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('3', 'testtwo', '12323', '0', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('4', 'child-child', null, '2', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('5', 'child2', null, '1', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('6', 'child oof 4', null, '4', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('7', 'asd', 'asd', '1', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('8', 'child of 4 =', null, '4', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('9', 'asd123123', null, '5', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('10', 'asdasda2313', null, '5', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('11', 'zyx', null, '6', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('12', 'lzm', null, '6', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('13', 'zyxlovelzm', null, '4', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('14', 'testfour', 'four', '0', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('15', 'zyx', 'lzm', '0', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('18', 'zyxlzm', 'love', '11', '1', '0', '0', null);
INSERT INTO `car_article_cate` VALUES ('19', 'lzmzyx', 'love', '12', '1', '0', '0', null);

-- ----------------------------
-- Table structure for car_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `car_article_comment`;
CREATE TABLE `car_article_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `replymsg` varchar(500) DEFAULT NULL COMMENT '回复内容',
  `userid` int(11) DEFAULT NULL COMMENT '评论人ID',
  `createdate` int(11) DEFAULT NULL COMMENT '回复时间',
  `pid` int(11) DEFAULT '0' COMMENT '评论父ID',
  `articleid` int(11) NOT NULL COMMENT '所属文章',
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for car_article_content
-- ----------------------------
DROP TABLE IF EXISTS `car_article_content`;
CREATE TABLE `car_article_content` (
  `contentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章内容ID',
  `content` text COMMENT '文章内容',
  `articleid` int(11) NOT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_article_content
-- ----------------------------

-- ----------------------------
-- Table structure for car_attach
-- ----------------------------
DROP TABLE IF EXISTS `car_attach`;
CREATE TABLE `car_attach` (
  `attachid` int(11) NOT NULL COMMENT '附件表自增ID',
  `attachdomain` varchar(45) DEFAULT NULL COMMENT '附件所属域',
  `attachmodule` varchar(45) DEFAULT NULL COMMENT '附件所属模块',
  `attachtable` varchar(45) NOT NULL COMMENT '附件所属表',
  `attachtype` varchar(45) DEFAULT NULL COMMENT '附件类型',
  `attachsavename` varchar(45) DEFAULT NULL COMMENT '附件保存名字',
  `attachsavepath` varchar(45) DEFAULT NULL COMMENT '附件路径',
  `attachextension` varchar(100) DEFAULT NULL COMMENT '附件扩展',
  PRIMARY KEY (`attachid`,`attachtable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_attach
-- ----------------------------

-- ----------------------------
-- Table structure for car_brand
-- ----------------------------
DROP TABLE IF EXISTS `car_brand`;
CREATE TABLE `car_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) DEFAULT NULL COMMENT '品牌名称',
  `brand_engname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `brand_cnname` varchar(255) DEFAULT NULL COMMENT '中文名称',
  `brand_order` int(11) DEFAULT NULL COMMENT '排序',
  `letter` varchar(10) DEFAULT NULL COMMENT '首写字母',
  `brand_hot` int(11) DEFAULT NULL COMMENT '热度',
  `brand_status` int(11) DEFAULT NULL COMMENT '状态',
  `brand_logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `pid` int(11) DEFAULT '0' COMMENT '分类ID',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_brand
-- ----------------------------

-- ----------------------------
-- Table structure for car_customer
-- ----------------------------
DROP TABLE IF EXISTS `car_customer`;
CREATE TABLE `car_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT '' COMMENT '昵称 - 自己取 微信等第三方读取 ',
  `cpassword` varchar(255) DEFAULT '' COMMENT '密码',
  `cavatar` varchar(255) DEFAULT '' COMMENT '头像',
  `crealname` varchar(255) DEFAULT '' COMMENT '真实姓名',
  `ccity` int(11) DEFAULT NULL COMMENT '城市',
  `cusername` varchar(255) DEFAULT NULL COMMENT '登陆网站用户名',
  `csex` int(10) DEFAULT '0' COMMENT '性别 0-女 1-男',
  `ccardno` varchar(255) DEFAULT '' COMMENT '身份证号码',
  `cbirth` int(10) DEFAULT '0' COMMENT '生日，时间戳格式',
  `ctel` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  `caddress` varchar(255) DEFAULT '' COMMENT '地址',
  `cemail` varchar(255) DEFAULT '' COMMENT 'email',
  `cremarks` varchar(255) DEFAULT '' COMMENT '备注',
  `openid` varchar(255) DEFAULT '',
  `unionid` varchar(255) DEFAULT '',
  `otherstr` varchar(255) DEFAULT NULL,
  `shop_group_id` int(11) DEFAULT '0' COMMENT '所属集团id',
  `shop_id` int(11) DEFAULT '0' COMMENT '店铺id',
  `is_status` int(10) DEFAULT '1',
  `add_time` int(10) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `cprovince` varchar(255) DEFAULT '' COMMENT '省份',
  `ccountry` varchar(100) DEFAULT NULL COMMENT '国家',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表 - 客户表 wx用户 店铺的客户 均在此表';

-- ----------------------------
-- Records of car_customer
-- ----------------------------

-- ----------------------------
-- Table structure for car_info
-- ----------------------------
DROP TABLE IF EXISTS `car_info`;
CREATE TABLE `car_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `gearbox` varchar(100) DEFAULT NULL COMMENT '变数箱',
  `mileage` varchar(100) DEFAULT NULL COMMENT '里程',
  `output` varchar(45) DEFAULT NULL COMMENT '排量',
  `output_standard` varchar(45) DEFAULT NULL COMMENT '排放标准',
  `seats` int(11) DEFAULT NULL COMMENT '座位数',
  `fuel_type` varchar(45) DEFAULT NULL COMMENT '燃油类型',
  `color` varchar(45) DEFAULT NULL COMMENT '颜色',
  `plateNumber_belong` varchar(45) DEFAULT NULL COMMENT '车牌归属',
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_info
-- ----------------------------

-- ----------------------------
-- Table structure for car_product
-- ----------------------------
DROP TABLE IF EXISTS `car_product`;
CREATE TABLE `car_product` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(50) DEFAULT NULL,
  `car_price` int(11) DEFAULT NULL COMMENT '价格',
  `down_payment` varchar(45) DEFAULT NULL COMMENT '首付比例',
  `maxprice` int(11) DEFAULT NULL COMMENT '最大价格',
  `minprice` int(11) DEFAULT NULL COMMENT '最低价格',
  `buy_time` int(11) DEFAULT NULL COMMENT '购买时间',
  `add_time` int(11) DEFAULT NULL COMMENT '发布时间',
  `service_life` int(11) DEFAULT NULL COMMENT '使用年限',
  `is_sale` int(1) DEFAULT '0' COMMENT '是否售出',
  `transaction_price` int(11) DEFAULT NULL COMMENT '成交价',
  `car_pic` varchar(255) DEFAULT NULL COMMENT '车辆图片',
  `car_hot` int(11) DEFAULT NULL COMMENT '汽车热度',
  `brand_id` int(11) NOT NULL COMMENT '品牌ID',
  `info_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_product
-- ----------------------------

-- ----------------------------
-- Table structure for car_property
-- ----------------------------
DROP TABLE IF EXISTS `car_property`;
CREATE TABLE `car_property` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `car_id` int(11) NOT NULL COMMENT '所属车ID',
  `property_name` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `car_power` varchar(100) DEFAULT NULL COMMENT '马力',
  `car_date` varchar(100) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_property
-- ----------------------------

-- ----------------------------
-- Table structure for car_shop
-- ----------------------------
DROP TABLE IF EXISTS `car_shop`;
CREATE TABLE `car_shop` (
  `shopid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商户ID',
  `shopname` varchar(45) DEFAULT NULL COMMENT '商户名称',
  `username` varchar(45) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '商户密码',
  `contact` varchar(45) DEFAULT NULL COMMENT '联系方式',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` int(1) DEFAULT NULL COMMENT '商户状态 是否禁用',
  `createdate` int(11) DEFAULT NULL COMMENT '创建时间',
  `userid` int(11) NOT NULL COMMENT '创建者ID',
  PRIMARY KEY (`shopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_shop
-- ----------------------------

-- ----------------------------
-- Table structure for car_shop_temp
-- ----------------------------
DROP TABLE IF EXISTS `car_shop_temp`;
CREATE TABLE `car_shop_temp` (
  `tempid` int(11) NOT NULL COMMENT '临时表自增ID',
  `shopname` varchar(45) DEFAULT NULL COMMENT '店铺名称',
  `contact` varchar(45) DEFAULT NULL COMMENT '联系方式',
  `address` varchar(45) DEFAULT NULL COMMENT '联系地址',
  `createdate` int(11) DEFAULT NULL COMMENT '审计时间',
  `status` int(11) DEFAULT NULL COMMENT '状态 0 未审核 1 审核通过 2审核拒绝',
  `userid` int(11) NOT NULL COMMENT '审计人',
  PRIMARY KEY (`tempid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_shop_temp
-- ----------------------------

-- ----------------------------
-- Table structure for car_type
-- ----------------------------
DROP TABLE IF EXISTS `car_type`;
CREATE TABLE `car_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车型ID',
  `type_name` varchar(45) DEFAULT NULL COMMENT '车型',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_type
-- ----------------------------

-- ----------------------------
-- Table structure for car_user
-- ----------------------------
DROP TABLE IF EXISTS `car_user`;
CREATE TABLE `car_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `username` varchar(45) DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(45) DEFAULT NULL COMMENT '登录密码',
  `cavatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(45) DEFAULT NULL COMMENT '取自微信昵称',
  `realname` varchar(45) DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `address` varchar(45) DEFAULT NULL COMMENT '地址',
  `openid` varchar(45) DEFAULT NULL COMMENT '微信openid',
  `unionid` varchar(45) DEFAULT NULL COMMENT '微信组id',
  `country` varchar(45) DEFAULT NULL COMMENT '国家',
  `province` varchar(45) DEFAULT NULL COMMENT '省份',
  `city` varchar(45) DEFAULT NULL COMMENT '城市',
  `createdate` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_user
-- ----------------------------

-- ----------------------------
-- Table structure for cys_car_brand
-- ----------------------------
DROP TABLE IF EXISTS `cys_car_brand`;
CREATE TABLE `cys_car_brand` (
  `brand_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0' COMMENT '父级ID',
  `autohome_id` int(10) DEFAULT '0' COMMENT '汽车之家id',
  `brand_name` varchar(100) DEFAULT '' COMMENT '品牌名 - 奥迪',
  `brand_engname` varchar(255) DEFAULT '' COMMENT '英文品牌名 - AUDI',
  `brand_hyname` varchar(255) DEFAULT '' COMMENT '汉语拼音品牌名 - aodi',
  `brand_logo` varchar(255) DEFAULT '' COMMENT 'logo图片',
  `brand_order` int(10) DEFAULT '999' COMMENT '排序',
  `is_hot` int(10) DEFAULT '0' COMMENT '热门推荐',
  `status` int(10) DEFAULT '1' COMMENT '是否可用',
  `letter` varchar(10) DEFAULT '',
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cys_car_brand
-- ----------------------------
INSERT INTO `cys_car_brand` VALUES ('1', '0', '33', '奥迪', '', '', 'uploads/brand/33.jpg', '999', '0', '1', 'A');
INSERT INTO `cys_car_brand` VALUES ('2', '0', '34', '阿尔法·罗密欧', '', '', 'uploads/brand/34.jpg', '999', '0', '1', 'A');
INSERT INTO `cys_car_brand` VALUES ('3', '0', '272', 'ARCFOX', '', '', 'uploads/brand/272.jpg', '999', '0', '1', 'A');
INSERT INTO `cys_car_brand` VALUES ('4', '0', '35', '阿斯顿·马丁', '', '', 'uploads/brand/35.jpg', '999', '0', '1', 'A');
INSERT INTO `cys_car_brand` VALUES ('5', '0', '276', 'ALPINA', '', '', 'uploads/brand/276.jpg', '999', '0', '1', 'A');
INSERT INTO `cys_car_brand` VALUES ('6', '0', '117', 'AC Schnitzer', '', '', 'uploads/brand/117.jpg', '999', '0', '1', 'A');
INSERT INTO `cys_car_brand` VALUES ('7', '0', '221', '安凯客车', '', '', 'uploads/brand/221.jpg', '999', '0', '1', 'A');
INSERT INTO `cys_car_brand` VALUES ('8', '0', '14', '本田', '', '', 'uploads/brand/14.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('9', '0', '38', '别克', '', '', 'uploads/brand/38.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('10', '0', '36', '奔驰', '', '', 'uploads/brand/36.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('11', '0', '15', '宝马', '', '', 'uploads/brand/15.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('12', '0', '120', '宝骏', '', '', 'uploads/brand/120.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('13', '0', '75', '比亚迪', '', '', 'uploads/brand/75.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('14', '0', '13', '标致', '', '', 'uploads/brand/13.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('15', '0', '40', '保时捷', '', '', 'uploads/brand/40.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('16', '0', '27', '北京', '', '', 'uploads/brand/27.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('17', '0', '203', '北汽幻速', '', '', 'uploads/brand/203.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('18', '0', '95', '奔腾', '', '', 'uploads/brand/95.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('19', '0', '231', '宝沃', '', '', 'uploads/brand/231.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('20', '0', '173', '北汽绅宝', '', '', 'uploads/brand/173.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('21', '0', '39', '宾利', '', '', 'uploads/brand/39.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('22', '0', '271', '比速汽车', '', '', 'uploads/brand/271.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('23', '0', '208', '北汽新能源', '', '', 'uploads/brand/208.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('24', '0', '154', '北汽制造', '', '', 'uploads/brand/154.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('25', '0', '143', '北汽威旺', '', '', 'uploads/brand/143.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('26', '0', '140', '巴博斯', '', '', 'uploads/brand/140.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('27', '0', '37', '布加迪', '', '', 'uploads/brand/37.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('28', '0', '301', '北汽道达', '', '', 'uploads/brand/301.jpg', '999', '0', '1', 'B');
INSERT INTO `cys_car_brand` VALUES ('29', '0', '76', '长安', '', '', 'uploads/brand/76.jpg', '999', '0', '1', 'C');
INSERT INTO `cys_car_brand` VALUES ('30', '0', '163', '长安欧尚', '', '', 'uploads/brand/163.jpg', '999', '0', '1', 'C');
INSERT INTO `cys_car_brand` VALUES ('31', '0', '77', '长城', '', '', 'uploads/brand/77.jpg', '999', '0', '1', 'C');
INSERT INTO `cys_car_brand` VALUES ('32', '0', '79', '昌河', '', '', 'uploads/brand/79.jpg', '999', '0', '1', 'C');
INSERT INTO `cys_car_brand` VALUES ('33', '0', '294', '长安轻型车', '', '', 'uploads/brand/294.jpg', '999', '0', '1', 'C');
INSERT INTO `cys_car_brand` VALUES ('34', '0', '299', '长安跨越', '', '', 'uploads/brand/299.jpg', '999', '0', '1', 'C');
INSERT INTO `cys_car_brand` VALUES ('35', '0', '196', '成功汽车', '', '', 'uploads/brand/196.jpg', '999', '0', '1', 'C');
INSERT INTO `cys_car_brand` VALUES ('36', '0', '1', '大众', '', '', 'uploads/brand/1.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('37', '0', '81', '东南', '', '', 'uploads/brand/81.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('38', '0', '259', '东风风光', '', '', 'uploads/brand/259.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('39', '0', '165', '东风风行', '', '', 'uploads/brand/165.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('40', '0', '113', '东风风神', '', '', 'uploads/brand/113.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('41', '0', '169', 'DS', '', '', 'uploads/brand/169.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('42', '0', '41', '道奇', '', '', 'uploads/brand/41.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('43', '0', '32', '东风', '', '', 'uploads/brand/32.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('44', '0', '142', '东风小康', '', '', 'uploads/brand/142.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('45', '0', '187', '东风风度', '', '', 'uploads/brand/187.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('46', '0', '280', '电咖', '', '', 'uploads/brand/280.jpg', '999', '0', '1', 'D');
INSERT INTO `cys_car_brand` VALUES ('47', '0', '3', '丰田', '', '', 'uploads/brand/3.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('48', '0', '8', '福特', '', '', 'uploads/brand/8.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('49', '0', '42', '法拉利', '', '', 'uploads/brand/42.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('50', '0', '11', '菲亚特', '', '', 'uploads/brand/11.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('51', '0', '96', '福田', '', '', 'uploads/brand/96.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('52', '0', '282', '福田乘用车', '', '', 'uploads/brand/282.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('53', '0', '141', '福迪', '', '', 'uploads/brand/141.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('54', '0', '197', '福汽启腾', '', '', 'uploads/brand/197.jpg', '999', '0', '1', 'F');
INSERT INTO `cys_car_brand` VALUES ('55', '0', '82', '广汽传祺', '', '', 'uploads/brand/82.jpg', '999', '0', '1', 'G');
INSERT INTO `cys_car_brand` VALUES ('56', '0', '152', '观致', '', '', 'uploads/brand/152.jpg', '999', '0', '1', 'G');
INSERT INTO `cys_car_brand` VALUES ('57', '0', '112', 'GMC', '', '', 'uploads/brand/112.jpg', '999', '0', '1', 'G');
INSERT INTO `cys_car_brand` VALUES ('58', '0', '304', '国金汽车', '', '', 'uploads/brand/304.jpg', '999', '0', '1', 'G');
INSERT INTO `cys_car_brand` VALUES ('59', '0', '108', '广汽吉奥', '', '', 'uploads/brand/108.jpg', '999', '0', '1', 'G');
INSERT INTO `cys_car_brand` VALUES ('60', '0', '116', '光冈', '', '', 'uploads/brand/116.jpg', '999', '0', '1', 'G');
INSERT INTO `cys_car_brand` VALUES ('61', '0', '181', '哈弗', '', '', 'uploads/brand/181.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('62', '0', '86', '海马', '', '', 'uploads/brand/86.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('63', '0', '267', '汉腾汽车', '', '', 'uploads/brand/267.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('64', '0', '91', '红旗', '', '', 'uploads/brand/91.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('65', '0', '87', '华泰', '', '', 'uploads/brand/87.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('66', '0', '97', '黄海', '', '', 'uploads/brand/97.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('67', '0', '43', '悍马', '', '', 'uploads/brand/43.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('68', '0', '260', '华泰新能源', '', '', 'uploads/brand/260.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('69', '0', '24', '哈飞', '', '', 'uploads/brand/24.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('70', '0', '220', '华颂', '', '', 'uploads/brand/220.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('71', '0', '150', '海格', '', '', 'uploads/brand/150.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('72', '0', '85', '华普', '', '', 'uploads/brand/85.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('73', '0', '164', '恒天', '', '', 'uploads/brand/164.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('74', '0', '184', '华骐', '', '', 'uploads/brand/184.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('75', '0', '237', '华利', '', '', 'uploads/brand/237.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('76', '0', '245', '华凯', '', '', 'uploads/brand/245.jpg', '999', '0', '1', 'H');
INSERT INTO `cys_car_brand` VALUES ('77', '0', '25', '吉利汽车', '', '', 'uploads/brand/25.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('78', '0', '46', 'Jeep', '', '', 'uploads/brand/46.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('79', '0', '44', '捷豹', '', '', 'uploads/brand/44.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('80', '0', '84', '江淮', '', '', 'uploads/brand/84.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('81', '0', '83', '金杯', '', '', 'uploads/brand/83.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('82', '0', '119', '江铃', '', '', 'uploads/brand/119.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('83', '0', '210', '江铃集团轻汽', '', '', 'uploads/brand/210.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('84', '0', '151', '九龙', '', '', 'uploads/brand/151.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('85', '0', '270', '江铃集团新能源', '', '', 'uploads/brand/270.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('86', '0', '145', '金龙', '', '', 'uploads/brand/145.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('87', '0', '175', '金旅', '', '', 'uploads/brand/175.jpg', '999', '0', '1', 'J');
INSERT INTO `cys_car_brand` VALUES ('88', '0', '47', '凯迪拉克', '', '', 'uploads/brand/47.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('89', '0', '214', '凯翼', '', '', 'uploads/brand/214.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('90', '0', '101', '开瑞', '', '', 'uploads/brand/101.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('91', '0', '9', '克莱斯勒', '', '', 'uploads/brand/9.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('92', '0', '199', '卡威', '', '', 'uploads/brand/199.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('93', '0', '100', '科尼赛克', '', '', 'uploads/brand/100.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('94', '0', '219', '康迪全球鹰', '', '', 'uploads/brand/219.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('95', '0', '109', 'KTM', '', '', 'uploads/brand/109.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('96', '0', '224', '卡升', '', '', 'uploads/brand/224.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('97', '0', '156', '卡尔森', '', '', 'uploads/brand/156.jpg', '999', '0', '1', 'K');
INSERT INTO `cys_car_brand` VALUES ('98', '0', '279', '领克', '', '', 'uploads/brand/279.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('99', '0', '49', '路虎', '', '', 'uploads/brand/49.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('100', '0', '52', '雷克萨斯', '', '', 'uploads/brand/52.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('101', '0', '53', '铃木', '', '', 'uploads/brand/53.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('102', '0', '78', '猎豹汽车', '', '', 'uploads/brand/78.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('103', '0', '51', '林肯', '', '', 'uploads/brand/51.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('104', '0', '10', '雷诺', '', '', 'uploads/brand/10.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('105', '0', '88', '陆风', '', '', 'uploads/brand/88.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('106', '0', '48', '兰博基尼', '', '', 'uploads/brand/48.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('107', '0', '80', '力帆汽车', '', '', 'uploads/brand/80.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('108', '0', '54', '劳斯莱斯', '', '', 'uploads/brand/54.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('109', '0', '50', '路特斯', '', '', 'uploads/brand/50.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('110', '0', '118', 'Lorinser', '', '', 'uploads/brand/118.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('111', '0', '89', '莲花汽车', '', '', 'uploads/brand/89.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('112', '0', '124', '理念', '', '', 'uploads/brand/124.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('113', '0', '241', 'LOCAL MOTORS', '', '', 'uploads/brand/241.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('114', '0', '204', '陆地方舟', '', '', 'uploads/brand/204.jpg', '999', '0', '1', 'L');
INSERT INTO `cys_car_brand` VALUES ('115', '0', '58', '马自达', '', '', 'uploads/brand/58.jpg', '999', '0', '1', 'M');
INSERT INTO `cys_car_brand` VALUES ('116', '0', '20', '名爵', '', '', 'uploads/brand/20.jpg', '999', '0', '1', 'M');
INSERT INTO `cys_car_brand` VALUES ('117', '0', '57', '玛莎拉蒂', '', '', 'uploads/brand/57.jpg', '999', '0', '1', 'M');
INSERT INTO `cys_car_brand` VALUES ('118', '0', '56', 'MINI', '', '', 'uploads/brand/56.jpg', '999', '0', '1', 'M');
INSERT INTO `cys_car_brand` VALUES ('119', '0', '129', '迈凯伦', '', '', 'uploads/brand/129.jpg', '999', '0', '1', 'M');
INSERT INTO `cys_car_brand` VALUES ('120', '0', '55', '迈巴赫', '', '', 'uploads/brand/55.jpg', '999', '0', '1', 'M');
INSERT INTO `cys_car_brand` VALUES ('121', '0', '168', '摩根', '', '', 'uploads/brand/168.jpg', '999', '0', '1', 'M');
INSERT INTO `cys_car_brand` VALUES ('122', '0', '130', '纳智捷', '', '', 'uploads/brand/130.jpg', '999', '0', '1', 'N');
INSERT INTO `cys_car_brand` VALUES ('123', '0', '213', '南京金龙', '', '', 'uploads/brand/213.jpg', '999', '0', '1', 'N');
INSERT INTO `cys_car_brand` VALUES ('124', '0', '60', '讴歌', '', '', 'uploads/brand/60.jpg', '999', '0', '1', 'O');
INSERT INTO `cys_car_brand` VALUES ('125', '0', '59', '欧宝', '', '', 'uploads/brand/59.jpg', '999', '0', '1', 'O');
INSERT INTO `cys_car_brand` VALUES ('126', '0', '146', '欧朗', '', '', 'uploads/brand/146.jpg', '999', '0', '1', 'O');
INSERT INTO `cys_car_brand` VALUES ('127', '0', '61', '帕加尼', '', '', 'uploads/brand/61.jpg', '999', '0', '1', 'P');
INSERT INTO `cys_car_brand` VALUES ('128', '0', '62', '起亚', '', '', 'uploads/brand/62.jpg', '999', '0', '1', 'Q');
INSERT INTO `cys_car_brand` VALUES ('129', '0', '26', '奇瑞', '', '', 'uploads/brand/26.jpg', '999', '0', '1', 'Q');
INSERT INTO `cys_car_brand` VALUES ('130', '0', '122', '启辰', '', '', 'uploads/brand/122.jpg', '999', '0', '1', 'Q');
INSERT INTO `cys_car_brand` VALUES ('131', '0', '235', '前途', '', '', 'uploads/brand/235.jpg', '999', '0', '1', 'Q');
INSERT INTO `cys_car_brand` VALUES ('132', '0', '63', '日产', '', '', 'uploads/brand/63.jpg', '999', '0', '1', 'R');
INSERT INTO `cys_car_brand` VALUES ('133', '0', '19', '荣威', '', '', 'uploads/brand/19.jpg', '999', '0', '1', 'R');
INSERT INTO `cys_car_brand` VALUES ('134', '0', '296', '瑞驰新能源', '', '', 'uploads/brand/296.jpg', '999', '0', '1', 'R');
INSERT INTO `cys_car_brand` VALUES ('135', '0', '174', '如虎', '', '', 'uploads/brand/174.jpg', '999', '0', '1', 'R');
INSERT INTO `cys_car_brand` VALUES ('136', '0', '103', '瑞麒', '', '', 'uploads/brand/103.jpg', '999', '0', '1', 'R');
INSERT INTO `cys_car_brand` VALUES ('137', '0', '67', '斯柯达', '', '', 'uploads/brand/67.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('138', '0', '68', '三菱', '', '', 'uploads/brand/68.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('139', '0', '65', '斯巴鲁', '', '', 'uploads/brand/65.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('140', '0', '155', '上汽大通', '', '', 'uploads/brand/155.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('141', '0', '45', 'smart', '', '', 'uploads/brand/45.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('142', '0', '269', 'SWM斯威汽车', '', '', 'uploads/brand/269.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('143', '0', '69', '双龙', '', '', 'uploads/brand/69.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('144', '0', '162', '思铭', '', '', 'uploads/brand/162.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('145', '0', '205', '赛麟', '', '', 'uploads/brand/205.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('146', '0', '238', '斯达泰克', '', '', 'uploads/brand/238.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('147', '0', '66', '世爵', '', '', 'uploads/brand/66.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('148', '0', '149', '陕汽通家', '', '', 'uploads/brand/149.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('149', '0', '90', '双环', '', '', 'uploads/brand/90.jpg', '999', '0', '1', 'S');
INSERT INTO `cys_car_brand` VALUES ('150', '0', '133', '特斯拉', '', '', 'uploads/brand/133.jpg', '999', '0', '1', 'T');
INSERT INTO `cys_car_brand` VALUES ('151', '0', '161', '腾势', '', '', 'uploads/brand/161.jpg', '999', '0', '1', 'T');
INSERT INTO `cys_car_brand` VALUES ('152', '0', '202', '泰卡特', '', '', 'uploads/brand/202.jpg', '999', '0', '1', 'T');
INSERT INTO `cys_car_brand` VALUES ('153', '0', '283', 'WEY', '', '', 'uploads/brand/283.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('154', '0', '114', '五菱汽车', '', '', 'uploads/brand/114.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('155', '0', '70', '沃尔沃', '', '', 'uploads/brand/70.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('156', '0', '167', '五十铃', '', '', 'uploads/brand/167.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('157', '0', '284', '蔚来', '', '', 'uploads/brand/284.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('158', '0', '192', '潍柴英致', '', '', 'uploads/brand/192.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('159', '0', '99', '威兹曼', '', '', 'uploads/brand/99.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('160', '0', '102', '威麟', '', '', 'uploads/brand/102.jpg', '999', '0', '1', 'W');
INSERT INTO `cys_car_brand` VALUES ('161', '0', '12', '现代', '', '', 'uploads/brand/12.jpg', '999', '0', '1', 'X');
INSERT INTO `cys_car_brand` VALUES ('162', '0', '71', '雪佛兰', '', '', 'uploads/brand/71.jpg', '999', '0', '1', 'X');
INSERT INTO `cys_car_brand` VALUES ('163', '0', '72', '雪铁龙', '', '', 'uploads/brand/72.jpg', '999', '0', '1', 'X');
INSERT INTO `cys_car_brand` VALUES ('164', '0', '185', '新凯', '', '', 'uploads/brand/185.jpg', '999', '0', '1', 'X');
INSERT INTO `cys_car_brand` VALUES ('165', '0', '306', '鑫源', '', '', 'uploads/brand/306.jpg', '999', '0', '1', 'X');
INSERT INTO `cys_car_brand` VALUES ('166', '0', '98', '西雅特', '', '', 'uploads/brand/98.jpg', '999', '0', '1', 'X');
INSERT INTO `cys_car_brand` VALUES ('167', '0', '73', '英菲尼迪', '', '', 'uploads/brand/73.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('168', '0', '110', '一汽', '', '', 'uploads/brand/110.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('169', '0', '263', '驭胜', '', '', 'uploads/brand/263.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('170', '0', '111', '野马汽车', '', '', 'uploads/brand/111.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('171', '0', '286', '云度', '', '', 'uploads/brand/286.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('172', '0', '144', '依维柯', '', '', 'uploads/brand/144.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('173', '0', '232', '御捷', '', '', 'uploads/brand/232.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('174', '0', '298', '宇通客车', '', '', 'uploads/brand/298.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('175', '0', '307', '裕路', '', '', 'uploads/brand/307.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('176', '0', '93', '永源', '', '', 'uploads/brand/93.jpg', '999', '0', '1', 'Y');
INSERT INTO `cys_car_brand` VALUES ('177', '0', '94', '众泰', '', '', 'uploads/brand/94.jpg', '999', '0', '1', 'Z');
INSERT INTO `cys_car_brand` VALUES ('178', '0', '22', '中华', '', '', 'uploads/brand/22.jpg', '999', '0', '1', 'Z');
INSERT INTO `cys_car_brand` VALUES ('179', '0', '74', '中兴', '', '', 'uploads/brand/74.jpg', '999', '0', '1', 'Z');
INSERT INTO `cys_car_brand` VALUES ('180', '0', '206', '知豆', '', '', 'uploads/brand/206.jpg', '999', '0', '1', 'Z');
INSERT INTO `cys_car_brand` VALUES ('181', '0', '182', '之诺', '', '', 'uploads/brand/182.jpg', '999', '0', '1', 'Z');
INSERT INTO `cys_car_brand` VALUES ('182', '1', '9', '一汽-大众奥迪', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('183', '1', '346', 'Audi Sport', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('184', '1', '79', '奥迪(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('185', '8', '151', '东风本田', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('186', '8', '32', '广汽本田', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('187', '8', '75', '本田(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('188', '9', '93', '上汽通用别克', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('189', '9', '182', '别克(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('190', '10', '152', '北京奔驰', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('191', '10', '301', '福建奔驰', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('192', '10', '47', '奔驰(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('193', '10', '344', '梅赛德斯-AMG', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('194', '10', '407', '梅赛德斯-迈巴赫', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('195', '11', '29', '华晨宝马', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('196', '11', '80', '宝马(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('197', '11', '345', '宝马M', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('198', '12', '59', '上汽通用五菱', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('199', '14', '38', '东风标致', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('200', '14', '88', '标致(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('201', '16', '312', '北京汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('202', '17', '383', '北汽银翔', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('203', '18', '10', '一汽奔腾', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('204', '19', '415', '宝沃汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('205', '19', '448', '宝沃(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('206', '24', '185', '北京汽车制造厂', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('207', '28', '482', '北汽瑞丽', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('208', '29', '160', '长安汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('209', '31', '4', '长城汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('210', '32', '177', '昌河汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('211', '36', '58', '上汽大众', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('212', '36', '8', '一汽-大众', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('213', '36', '50', '大众(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('214', '37', '51', '东南汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('215', '40', '210', '东风乘用车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('216', '40', '375', '东风雷诺', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('217', '41', '357', '长安标致雪铁龙', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('218', '41', '82', '雪铁龙(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('219', '42', '175', '道奇(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('220', '42', '363', 'SRT', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('221', '43', '172', '东风汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('222', '43', '173', '郑州日产', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('223', '46', '488', '电咖汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('224', '47', '155', '广汽丰田', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('225', '47', '40', '一汽丰田', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('226', '47', '63', '丰田(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('227', '48', '43', '长安福特', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('228', '48', '447', '江铃福特', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('229', '48', '61', '福特(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('230', '50', '427', '广汽菲克菲亚特', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('231', '50', '34', '南京菲亚特', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('232', '50', '165', '菲亚特(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('233', '51', '188', '福田汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('234', '53', '328', '福迪汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('235', '54', '378', '福汽新龙马', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('236', '55', '186', '广汽乘用车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('237', '56', '336', '观致汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('238', '58', '490', '陕西通家', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('239', '60', '304', '光冈自动车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('240', '62', '341', '海马汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('241', '62', '26', '一汽海马', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('242', '64', '190', '一汽红旗', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('243', '65', '117', '华泰汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('244', '66', '191', '曙光汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('245', '69', '30', '哈飞汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('246', '70', '400', '华晨华颂', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('247', '71', '334', '苏州金龙', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('248', '72', '90', '华普汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('249', '73', '349', '恒天汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('250', '74', '57', '东风悦达起亚', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('251', '75', '422', '天津汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('252', '76', '431', '明君汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('253', '78', '12', '北京吉普', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('254', '78', '319', '广汽菲克Jeep', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('255', '78', '71', 'Jeep(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('256', '79', '376', '奇瑞捷豹路虎', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('257', '80', '170', '江淮汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('258', '81', '169', '华晨金杯', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('259', '81', '409', '华晨鑫源', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('260', '81', '417', '绵阳金杯', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('261', '82', '307', '江铃汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('262', '84', '335', '九龙汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('263', '86', '330', '厦门金龙', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('264', '87', '359', '厦门金旅', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('265', '88', '122', '上汽通用凯迪拉克', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('266', '88', '44', '凯迪拉克(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('267', '89', '398', '凯翼汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('268', '90', '208', '开瑞汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('269', '91', '180', '北京克莱斯勒', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('270', '91', '69', '克莱斯勒(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('271', '92', '380', '卡威汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('272', '94', '399', '康迪全球鹰电动汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('273', '96', '406', '浙江卡尔森', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('274', '99', '49', '路虎(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('275', '100', '414', '雷克萨斯F', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('276', '101', '31', '昌河铃木', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('277', '101', '35', '长安铃木', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('278', '101', '161', '铃木(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('279', '104', '89', '雷诺(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('280', '105', '158', '陆风汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('281', '110', '472', '罗伦士', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('282', '115', '176', '长安马自达', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('283', '115', '11', '一汽马自达', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('284', '115', '119', '马自达(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('285', '116', '159', '上汽集团', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('286', '118', '369', 'MINI JCW', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('287', '122', '315', '东风裕隆', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('288', '122', '316', '裕隆汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('289', '124', '450', '广汽讴歌', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('290', '124', '157', '讴歌(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('291', '126', '332', '一汽欧朗', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('292', '128', '111', '起亚(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('293', '129', '33', '奇瑞汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('294', '129', '405', '奇瑞新能源', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('295', '130', '467', '东风启辰', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('296', '131', '420', '前途汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('297', '132', '92', '东风日产', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('298', '132', '73', '日产(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('299', '137', '162', '上汽斯柯达', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('300', '137', '138', '斯柯达(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('301', '138', '355', '广汽三菱', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('302', '138', '468', '中华三菱', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('303', '138', '128', '三菱(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('304', '143', '76', '双龙汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('305', '145', '387', '威蒙积泰', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('306', '149', '7', '双环汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('307', '151', '347', '腾势汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('308', '155', '181', '长安沃尔沃', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('309', '155', '367', '沃尔沃亚太', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('310', '155', '84', '沃尔沃(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('311', '156', '394', '江西五十铃', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('312', '156', '350', '庆铃汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('313', '158', '372', '潍柴汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('314', '161', '27', '北京现代', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('315', '161', '402', '四川现代', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('316', '161', '74', '现代(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('317', '162', '139', '上汽通用雪佛兰', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('318', '162', '142', '雪佛兰(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('319', '163', '37', '东风雪铁龙', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('320', '164', '364', '新凯汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('321', '167', '392', '东风英菲尼迪', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('322', '167', '72', '英菲尼迪(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('323', '168', '39', '天津一汽', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('324', '168', '166', '一汽吉林', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('325', '168', '338', '一汽通用', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('326', '171', '469', '云度新能源', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('327', '172', '329', '南京依维柯', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('328', '172', '331', '依维柯(进口)', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('329', '173', '416', '御捷新能源', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('330', '175', '486', '裕路汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('331', '176', '150', '永源汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('332', '177', '171', '众泰汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('333', '178', '53', '华晨中华', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('334', '179', '433', '广汽中兴', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('335', '179', '189', '中兴汽车', '', '', '', '999', '0', '1', '');
INSERT INTO `cys_car_brand` VALUES ('336', '180', '388', '知豆电动车', '', '', '', '999', '0', '1', '');

-- ----------------------------
-- Table structure for cys_car_category
-- ----------------------------
DROP TABLE IF EXISTS `cys_car_category`;
CREATE TABLE `cys_car_category` (
  `cate_id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT '0' COMMENT '所属品牌',
  `car_name` varchar(255) DEFAULT '',
  `car_price` varchar(255) DEFAULT '',
  `status` int(10) DEFAULT '0',
  `cate_order` int(11) DEFAULT '0',
  `add_time` int(10) DEFAULT '0',
  `maxprice` varchar(10) DEFAULT NULL,
  `minprice` varchar(10) DEFAULT NULL,
  `autohome_id` int(10) DEFAULT '0',
  `seriesPicUrl` varchar(255) DEFAULT '',
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2989 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cys_car_category
-- ----------------------------
INSERT INTO `cys_car_category` VALUES ('1', '182', '奥迪A3', '', '1', '0', '1514128908', '258000', '188000', '3170', 'uploads/car/3170.jpg');
INSERT INTO `cys_car_category` VALUES ('2', '182', '奥迪A4L', '', '1', '0', '1514128908', '409800', '292800', '692', 'uploads/car/692.jpg');
INSERT INTO `cys_car_category` VALUES ('3', '182', '奥迪A6L', '', '1', '0', '1514128908', '746000', '406000', '18', 'uploads/car/18.jpg');
INSERT INTO `cys_car_category` VALUES ('4', '182', '奥迪A6L新能源', '', '1', '0', '1514128909', '539800', '539800', '4526', 'uploads/car/4526.jpg');
INSERT INTO `cys_car_category` VALUES ('5', '182', '奥迪Q3', '', '1', '0', '1514128909', '342800', '234200', '2951', 'uploads/car/2951.jpg');
INSERT INTO `cys_car_category` VALUES ('6', '182', '奥迪Q5', '', '1', '0', '1514128909', '519200', '399600', '812', 'uploads/car/812.jpg');
INSERT INTO `cys_car_category` VALUES ('7', '182', '奥迪Q4', '', '1', '0', '1514128910', '0', '0', '3304', 'uploads/car/3304.jpg');
INSERT INTO `cys_car_category` VALUES ('8', '182', '奥迪A4', '', '1', '0', '1514128910', '0', '0', '19', 'uploads/car/19.jpg');
INSERT INTO `cys_car_category` VALUES ('9', '182', '奥迪A6', '', '1', '0', '1514128910', '0', '0', '509', 'uploads/car/509.jpg');
INSERT INTO `cys_car_category` VALUES ('10', '183', '奥迪RS 3', '', '1', '0', '1514128910', '565000', '565000', '2731', 'uploads/car/2731.jpg');
INSERT INTO `cys_car_category` VALUES ('11', '183', '奥迪RS 6', '', '1', '0', '1514128911', '1598000', '1598000', '2737', 'uploads/car/2737.jpg');
INSERT INTO `cys_car_category` VALUES ('12', '183', '奥迪RS 7', '', '1', '0', '1514128911', '1898000', '1698800', '2994', 'uploads/car/2994.jpg');
INSERT INTO `cys_car_category` VALUES ('13', '183', '奥迪R8', '', '1', '0', '1514128911', '2538000', '2158000', '511', 'uploads/car/511.jpg');
INSERT INTO `cys_car_category` VALUES ('14', '183', '奥迪TT RS', '', '1', '0', '1514128912', '848000', '848000', '2741', 'uploads/car/2741.jpg');
INSERT INTO `cys_car_category` VALUES ('15', '183', '奥迪RS 4', '', '1', '0', '1514128914', '0', '0', '2733', 'uploads/car/2733.jpg');
INSERT INTO `cys_car_category` VALUES ('16', '183', '奥迪RS 5', '', '1', '0', '1514128914', '0', '0', '2735', 'uploads/car/2735.jpg');
INSERT INTO `cys_car_category` VALUES ('17', '183', '奥迪RS Q3', '', '1', '0', '1514128915', '0', '0', '2760', 'uploads/car/2760.jpg');
INSERT INTO `cys_car_category` VALUES ('18', '184', '奥迪A1', '', '1', '0', '1514128915', '234800', '204800', '650', 'uploads/car/650.jpg');
INSERT INTO `cys_car_category` VALUES ('19', '184', '奥迪A3(进口)', '', '1', '0', '1514128915', '369800', '369800', '370', 'uploads/car/370.jpg');
INSERT INTO `cys_car_category` VALUES ('20', '184', '奥迪A3新能源(进口)', '', '1', '0', '1514128916', '399800', '399800', '4325', 'uploads/car/4325.jpg');
INSERT INTO `cys_car_category` VALUES ('21', '184', '奥迪S3', '', '1', '0', '1514128916', '399800', '399800', '2730', 'uploads/car/2730.jpg');
INSERT INTO `cys_car_category` VALUES ('22', '184', '奥迪A4(进口)', '', '1', '0', '1514128916', '468800', '423800', '471', 'uploads/car/471.jpg');
INSERT INTO `cys_car_category` VALUES ('23', '184', '奥迪A5', '', '1', '0', '1514128916', '642800', '398000', '538', 'uploads/car/538.jpg');
INSERT INTO `cys_car_category` VALUES ('24', '184', '奥迪S5', '', '1', '0', '1514128917', '858000', '678800', '2734', 'uploads/car/2734.jpg');
INSERT INTO `cys_car_category` VALUES ('25', '184', '奥迪A6(进口)', '', '1', '0', '1514128917', '599800', '459800', '472', 'uploads/car/472.jpg');
INSERT INTO `cys_car_category` VALUES ('26', '184', '奥迪S6', '', '1', '0', '1514128917', '999800', '999800', '2736', 'uploads/car/2736.jpg');
INSERT INTO `cys_car_category` VALUES ('27', '184', '奥迪A7', '', '1', '0', '1514128918', '898000', '598000', '740', 'uploads/car/740.jpg');
INSERT INTO `cys_car_category` VALUES ('28', '184', '奥迪S7', '', '1', '0', '1514128918', '1358000', '1358000', '2738', 'uploads/car/2738.jpg');
INSERT INTO `cys_car_category` VALUES ('29', '184', '奥迪A8', '', '1', '0', '1514128918', '2568000', '879800', '146', 'uploads/car/146.jpg');
INSERT INTO `cys_car_category` VALUES ('30', '184', '奥迪S8', '', '1', '0', '1514128918', '1988000', '1988000', '2739', 'uploads/car/2739.jpg');
INSERT INTO `cys_car_category` VALUES ('31', '184', '奥迪Q5(进口)', '', '1', '0', '1514128919', '618000', '588000', '593', 'uploads/car/593.jpg');
INSERT INTO `cys_car_category` VALUES ('32', '184', '奥迪SQ5', '', '1', '0', '1514128919', '668000', '668000', '2841', 'uploads/car/2841.jpg');
INSERT INTO `cys_car_category` VALUES ('33', '184', '奥迪Q7', '', '1', '0', '1514128919', '1048800', '753800', '412', 'uploads/car/412.jpg');
INSERT INTO `cys_car_category` VALUES ('34', '184', '奥迪Q7新能源', '', '1', '0', '1514128919', '928800', '928800', '4460', 'uploads/car/4460.jpg');
INSERT INTO `cys_car_category` VALUES ('35', '184', '奥迪TT', '', '1', '0', '1514128920', '586800', '499800', '148', 'uploads/car/148.jpg');
INSERT INTO `cys_car_category` VALUES ('36', '184', '奥迪TTS', '', '1', '0', '1514128920', '698800', '658800', '2740', 'uploads/car/2740.jpg');
INSERT INTO `cys_car_category` VALUES ('37', '184', '奥迪A0', '', '1', '0', '1514128920', '0', '0', '3325', 'uploads/car/3325.jpg');
INSERT INTO `cys_car_category` VALUES ('38', '184', '奥迪A2', '', '1', '0', '1514128921', '0', '0', '2415', 'uploads/car/2415.jpg');
INSERT INTO `cys_car_category` VALUES ('39', '184', '奥迪S1', '', '1', '0', '1514128921', '0', '0', '3276', 'uploads/car/3276.jpg');
INSERT INTO `cys_car_category` VALUES ('40', '184', '奥迪e-tron', '', '1', '0', '1514128921', '0', '0', '926', 'uploads/car/926.jpg');
INSERT INTO `cys_car_category` VALUES ('41', '184', '奥迪S4', '', '1', '0', '1514128921', '0', '0', '2732', 'uploads/car/2732.jpg');
INSERT INTO `cys_car_category` VALUES ('42', '184', '奥迪Aicon', '', '1', '0', '1514128922', '0', '0', '4543', 'uploads/car/4543.jpg');
INSERT INTO `cys_car_category` VALUES ('43', '184', 'Prologue', '', '1', '0', '1514128922', '0', '0', '3669', 'uploads/car/3669.jpg');
INSERT INTO `cys_car_category` VALUES ('44', '184', '奥迪A9', '', '1', '0', '1514128922', '0', '0', '3313', 'uploads/car/3313.jpg');
INSERT INTO `cys_car_category` VALUES ('45', '184', 'allroad', '', '1', '0', '1514128923', '0', '0', '3350', 'uploads/car/3350.jpg');
INSERT INTO `cys_car_category` VALUES ('46', '184', 'Crosslane Coupe', '', '1', '0', '1514128923', '0', '0', '2908', 'uploads/car/2908.jpg');
INSERT INTO `cys_car_category` VALUES ('47', '184', '奥迪Q2', '', '1', '0', '1514128923', '0', '0', '3287', 'uploads/car/3287.jpg');
INSERT INTO `cys_car_category` VALUES ('48', '184', '奥迪Q3(进口)', '', '1', '0', '1514128923', '0', '0', '2264', 'uploads/car/2264.jpg');
INSERT INTO `cys_car_category` VALUES ('49', '184', '奥迪TT offroad', '', '1', '0', '1514128924', '0', '0', '3479', 'uploads/car/3479.jpg');
INSERT INTO `cys_car_category` VALUES ('50', '184', 'e-tron quattro', '', '1', '0', '1514128924', '0', '0', '3894', 'uploads/car/3894.jpg');
INSERT INTO `cys_car_category` VALUES ('51', '184', 'h-tron quattro', '', '1', '0', '1514128924', '0', '0', '4003', 'uploads/car/4003.jpg');
INSERT INTO `cys_car_category` VALUES ('52', '184', '奥迪Elaine', '', '1', '0', '1514128924', '0', '0', '4544', 'uploads/car/4544.jpg');
INSERT INTO `cys_car_category` VALUES ('53', '184', '奥迪Q4(进口)', '', '1', '0', '1514128925', '0', '0', '3305', 'uploads/car/3305.jpg');
INSERT INTO `cys_car_category` VALUES ('54', '184', '奥迪Q8', '', '1', '0', '1514128925', '0', '0', '4288', 'uploads/car/4288.jpg');
INSERT INTO `cys_car_category` VALUES ('55', '184', '奥迪SQ7', '', '1', '0', '1514128925', '0', '0', '3822', 'uploads/car/3822.jpg');
INSERT INTO `cys_car_category` VALUES ('56', '184', '奥迪Q9', '', '1', '0', '1514128925', '0', '0', '3334', 'uploads/car/3334.jpg');
INSERT INTO `cys_car_category` VALUES ('57', '184', 'Nanuk', '', '1', '0', '1514128926', '0', '0', '3210', 'uploads/car/3210.jpg');
INSERT INTO `cys_car_category` VALUES ('58', '184', 'quattro', '', '1', '0', '1514128926', '0', '0', '2218', 'uploads/car/2218.jpg');
INSERT INTO `cys_car_category` VALUES ('59', '184', '奥迪R18', '', '1', '0', '1514128929', '0', '0', '2832', 'uploads/car/2832.jpg');
INSERT INTO `cys_car_category` VALUES ('60', '184', '奥迪Urban', '', '1', '0', '1514128929', '0', '0', '2403', 'uploads/car/2403.jpg');
INSERT INTO `cys_car_category` VALUES ('61', '184', '奥迪80', '', '1', '0', '1514128929', '0', '0', '3910', 'uploads/car/3910.jpg');
INSERT INTO `cys_car_category` VALUES ('62', '184', '奥迪Coupe', '', '1', '0', '1514128929', '0', '0', '3909', 'uploads/car/3909.jpg');
INSERT INTO `cys_car_category` VALUES ('63', '184', '奥迪100', '', '1', '0', '1514128930', '0', '0', '3680', 'uploads/car/3680.jpg');
INSERT INTO `cys_car_category` VALUES ('64', '184', '奥迪Cross', '', '1', '0', '1514128930', '0', '0', '787', 'uploads/car/787.jpg');
INSERT INTO `cys_car_category` VALUES ('65', '2', 'Giulia', '', '1', '0', '1514128931', '1028000', '330800', '3825', 'uploads/car/3825.jpg');
INSERT INTO `cys_car_category` VALUES ('66', '2', 'Stelvio', '', '1', '0', '1514128931', '478000', '418000', '4196', 'uploads/car/4196.jpg');
INSERT INTO `cys_car_category` VALUES ('67', '2', 'MiTo', '', '1', '0', '1514128931', '0', '0', '715', 'uploads/car/715.jpg');
INSERT INTO `cys_car_category` VALUES ('68', '2', 'Giulietta', '', '1', '0', '1514128931', '0', '0', '1021', 'uploads/car/1021.jpg');
INSERT INTO `cys_car_category` VALUES ('69', '2', 'ALFA 4C', '', '1', '0', '1514128932', '0', '0', '2288', 'uploads/car/2288.jpg');
INSERT INTO `cys_car_category` VALUES ('70', '2', 'Disco Volante', '', '1', '0', '1514128932', '0', '0', '2715', 'uploads/car/2715.jpg');
INSERT INTO `cys_car_category` VALUES ('71', '2', 'Gloria', '', '1', '0', '1514128932', '0', '0', '3030', 'uploads/car/3030.jpg');
INSERT INTO `cys_car_category` VALUES ('72', '2', 'ALFA 147', '', '1', '0', '1514128933', '0', '0', '399', 'uploads/car/399.jpg');
INSERT INTO `cys_car_category` VALUES ('73', '2', 'ALFA 156', '', '1', '0', '1514128933', '0', '0', '179', 'uploads/car/179.jpg');
INSERT INTO `cys_car_category` VALUES ('74', '2', 'ALFA 159', '', '1', '0', '1514128933', '0', '0', '778', 'uploads/car/778.jpg');
INSERT INTO `cys_car_category` VALUES ('75', '2', 'ALFA 166', '', '1', '0', '1514128933', '0', '0', '400', 'uploads/car/400.jpg');
INSERT INTO `cys_car_category` VALUES ('76', '2', 'ALFA 2uettottanta', '', '1', '0', '1514128934', '0', '0', '2076', 'uploads/car/2076.jpg');
INSERT INTO `cys_car_category` VALUES ('77', '2', 'ALFA 8C', '', '1', '0', '1514128934', '0', '0', '781', 'uploads/car/781.jpg');
INSERT INTO `cys_car_category` VALUES ('78', '2', 'ALFA GT', '', '1', '0', '1514128934', '0', '0', '401', 'uploads/car/401.jpg');
INSERT INTO `cys_car_category` VALUES ('79', '2', 'ALFA S.Z.', '', '1', '0', '1514128936', '0', '0', '3883', 'uploads/car/3883.jpg');
INSERT INTO `cys_car_category` VALUES ('80', '2', 'ALFA TZ3', '', '1', '0', '1514128936', '0', '0', '2170', 'uploads/car/2170.jpg');
INSERT INTO `cys_car_category` VALUES ('81', '23', 'LITE', '', '1', '0', '1514128936', '160800', '140800', '4522', 'uploads/car/4522.jpg');
INSERT INTO `cys_car_category` VALUES ('82', '23', 'ARCFOX-1', '', '1', '0', '1514128937', '0', '0', '4109', 'uploads/car/4109.jpg');
INSERT INTO `cys_car_category` VALUES ('83', '23', 'ARCFOX-7', '', '1', '0', '1514128937', '0', '0', '4106', 'uploads/car/4106.jpg');
INSERT INTO `cys_car_category` VALUES ('84', '4', 'Rapide', '', '1', '0', '1514128937', '3645000', '2988000', '923', 'uploads/car/923.jpg');
INSERT INTO `cys_car_category` VALUES ('85', '4', '拉共达Taraf', '', '1', '0', '1514128938', '8100000', '8100000', '884', 'uploads/car/884.jpg');
INSERT INTO `cys_car_category` VALUES ('86', '4', 'V8 Vantage', '', '1', '0', '1514128938', '2188000', '1988000', '385', 'uploads/car/385.jpg');
INSERT INTO `cys_car_category` VALUES ('87', '4', 'V12 Vantage', '', '1', '0', '1514128938', '3098000', '2898000', '822', 'uploads/car/822.jpg');
INSERT INTO `cys_car_category` VALUES ('88', '4', '阿斯顿·马丁DB9', '', '1', '0', '1514128939', '3888000', '3418000', '266', 'uploads/car/266.jpg');
INSERT INTO `cys_car_category` VALUES ('89', '4', 'Vanquish', '', '1', '0', '1514128939', '5372000', '3988000', '386', 'uploads/car/386.jpg');
INSERT INTO `cys_car_category` VALUES ('90', '4', '阿斯顿·马丁DB11', '', '1', '0', '1514128939', '3259000', '2368000', '3891', 'uploads/car/3891.jpg');
INSERT INTO `cys_car_category` VALUES ('91', '4', 'Cygnet', '', '1', '0', '1514128939', '0', '0', '2075', 'uploads/car/2075.jpg');
INSERT INTO `cys_car_category` VALUES ('92', '4', 'Valkyrie', '', '1', '0', '1514128940', '0', '0', '4159', 'uploads/car/4159.jpg');
INSERT INTO `cys_car_category` VALUES ('93', '4', 'Virage', '', '1', '0', '1514128940', '0', '0', '2275', 'uploads/car/2275.jpg');
INSERT INTO `cys_car_category` VALUES ('94', '4', 'Vulcan', '', '1', '0', '1514128940', '0', '0', '3730', 'uploads/car/3730.jpg');
INSERT INTO `cys_car_category` VALUES ('95', '4', '阿斯顿·马丁CC100', '', '1', '0', '1514128941', '0', '0', '3144', 'uploads/car/3144.jpg');
INSERT INTO `cys_car_category` VALUES ('96', '4', '阿斯顿·马丁DB10', '', '1', '0', '1514128943', '0', '0', '3678', 'uploads/car/3678.jpg');
INSERT INTO `cys_car_category` VALUES ('97', '4', '阿斯顿·马丁DB5', '', '1', '0', '1514128944', '0', '0', '3004', 'uploads/car/3004.jpg');
INSERT INTO `cys_car_category` VALUES ('98', '4', '阿斯顿·马丁DBX', '', '1', '0', '1514128944', '0', '0', '3742', 'uploads/car/3742.jpg');
INSERT INTO `cys_car_category` VALUES ('99', '4', '阿斯顿·马丁DP-100', '', '1', '0', '1514128944', '0', '0', '3550', 'uploads/car/3550.jpg');
INSERT INTO `cys_car_category` VALUES ('100', '4', 'Ulster', '', '1', '0', '1514128944', '0', '0', '3329', 'uploads/car/3329.jpg');
INSERT INTO `cys_car_category` VALUES ('101', '4', 'V12 Zagato', '', '1', '0', '1514128945', '0', '0', '2846', 'uploads/car/2846.jpg');
INSERT INTO `cys_car_category` VALUES ('102', '4', '阿斯顿·马丁DB6', '', '1', '0', '1514128945', '0', '0', '3937', 'uploads/car/3937.jpg');
INSERT INTO `cys_car_category` VALUES ('103', '4', '阿斯顿·马丁DBS', '', '1', '0', '1514128945', '0', '0', '582', 'uploads/car/582.jpg');
INSERT INTO `cys_car_category` VALUES ('104', '4', '阿斯顿·马丁One-77', '', '1', '0', '1514128945', '0', '0', '729', 'uploads/car/729.jpg');
INSERT INTO `cys_car_category` VALUES ('105', '5', 'ALPINA B4', '', '1', '0', '1514128946', '1098000', '1098000', '4212', 'uploads/car/4212.jpg');
INSERT INTO `cys_car_category` VALUES ('106', '5', 'ALPINA B3', '', '1', '0', '1514128946', '0', '0', '4352', 'uploads/car/4352.jpg');
INSERT INTO `cys_car_category` VALUES ('107', '5', 'ALPINA B5', '', '1', '0', '1514128947', '0', '0', '4369', 'uploads/car/4369.jpg');
INSERT INTO `cys_car_category` VALUES ('108', '5', 'ALPINA D5', '', '1', '0', '1514128947', '0', '0', '4534', 'uploads/car/4534.jpg');
INSERT INTO `cys_car_category` VALUES ('109', '5', 'ALPINA B7', '', '1', '0', '1514128947', '0', '0', '4258', 'uploads/car/4258.jpg');
INSERT INTO `cys_car_category` VALUES ('110', '5', 'ALPINA XD3', '', '1', '0', '1514128947', '0', '0', '4583', 'uploads/car/4583.jpg');
INSERT INTO `cys_car_category` VALUES ('111', '6', 'AC Schnitzer M3', '', '1', '0', '1514128948', '1090000', '1090000', '3895', 'uploads/car/3895.jpg');
INSERT INTO `cys_car_category` VALUES ('112', '6', 'AC Schnitzer X5', '', '1', '0', '1514128948', '1100000', '1100000', '2097', 'uploads/car/2097.jpg');
INSERT INTO `cys_car_category` VALUES ('113', '6', 'AC Schnitzer Eagle', '', '1', '0', '1514128948', '0', '0', '2365', 'uploads/car/2365.jpg');
INSERT INTO `cys_car_category` VALUES ('114', '6', 'AC Schnitzer 1系', '', '1', '0', '1514128949', '0', '0', '2513', 'uploads/car/2513.jpg');
INSERT INTO `cys_car_category` VALUES ('115', '6', 'AC Schnitzer 3系', '', '1', '0', '1514128949', '0', '0', '2100', 'uploads/car/2100.jpg');
INSERT INTO `cys_car_category` VALUES ('116', '6', 'AC Schnitzer 5系', '', '1', '0', '1514128949', '0', '0', '2282', 'uploads/car/2282.jpg');
INSERT INTO `cys_car_category` VALUES ('117', '6', 'AC Schnitzer 6系', '', '1', '0', '1514128949', '0', '0', '2666', 'uploads/car/2666.jpg');
INSERT INTO `cys_car_category` VALUES ('118', '6', 'AC Schnitzer 7系', '', '1', '0', '1514128950', '0', '0', '2148', 'uploads/car/2148.jpg');
INSERT INTO `cys_car_category` VALUES ('119', '6', 'AC Schnitzer X3', '', '1', '0', '1514128950', '0', '0', '2371', 'uploads/car/2371.jpg');
INSERT INTO `cys_car_category` VALUES ('120', '6', 'AC Schnitzer X4', '', '1', '0', '1514128950', '0', '0', '3667', 'uploads/car/3667.jpg');
INSERT INTO `cys_car_category` VALUES ('121', '6', 'AC Schnitzer X6', '', '1', '0', '1514128950', '0', '0', '2098', 'uploads/car/2098.jpg');
INSERT INTO `cys_car_category` VALUES ('122', '6', 'AC Schnitzer i8', '', '1', '0', '1514128951', '0', '0', '4362', 'uploads/car/4362.jpg');
INSERT INTO `cys_car_category` VALUES ('123', '6', 'AC Schnitzer M4', '', '1', '0', '1514128951', '0', '0', '3750', 'uploads/car/3750.jpg');
INSERT INTO `cys_car_category` VALUES ('124', '6', 'AC Schnitzer X1', '', '1', '0', '1514128951', '0', '0', '2096', 'uploads/car/2096.jpg');
INSERT INTO `cys_car_category` VALUES ('125', '7', '宝斯通', '', '1', '0', '1514128952', '0', '0', '2745', 'uploads/car/2745.jpg');
INSERT INTO `cys_car_category` VALUES ('126', '185', '杰德', '', '1', '0', '1514128953', '179900', '129900', '3104', 'uploads/car/3104.jpg');
INSERT INTO `cys_car_category` VALUES ('127', '185', '思域', '', '1', '0', '1514128953', '169900', '115900', '135', 'uploads/car/135.jpg');
INSERT INTO `cys_car_category` VALUES ('128', '185', '哥瑞', '', '1', '0', '1514128953', '119800', '79800', '3859', 'uploads/car/3859.jpg');
INSERT INTO `cys_car_category` VALUES ('129', '185', '竞瑞', '', '1', '0', '1514128954', '127900', '89900', '4179', 'uploads/car/4179.jpg');
INSERT INTO `cys_car_category` VALUES ('130', '185', '思铂睿', '', '1', '0', '1514128954', '267900', '179900', '859', 'uploads/car/859.jpg');
INSERT INTO `cys_car_category` VALUES ('131', '185', '本田XR-V', '', '1', '0', '1514128954', '162800', '127800', '3582', 'uploads/car/3582.jpg');
INSERT INTO `cys_car_category` VALUES ('132', '185', '本田CR-V', '', '1', '0', '1514128954', '259800', '169800', '314', 'uploads/car/314.jpg');
INSERT INTO `cys_car_category` VALUES ('133', '185', '本田UR-V', '', '1', '0', '1514128955', '329800', '246800', '4304', 'uploads/car/4304.jpg');
INSERT INTO `cys_car_category` VALUES ('134', '185', '艾力绅', '', '1', '0', '1514128955', '309800', '249800', '2565', 'uploads/car/2565.jpg');
INSERT INTO `cys_car_category` VALUES ('135', '185', '本田S', '', '1', '0', '1514128955', '0', '0', '2784', 'uploads/car/2784.jpg');
INSERT INTO `cys_car_category` VALUES ('136', '186', '飞度', '', '1', '0', '1514128957', '112800', '73800', '81', 'uploads/car/81.jpg');
INSERT INTO `cys_car_category` VALUES ('137', '186', '锋范', '', '1', '0', '1514128958', '119800', '79800', '3876', 'uploads/car/3876.jpg');
INSERT INTO `cys_car_category` VALUES ('138', '186', '凌派', '', '1', '0', '1514128958', '149800', '109800', '3085', 'uploads/car/3085.jpg');
INSERT INTO `cys_car_category` VALUES ('139', '186', '雅阁', '', '1', '0', '1514128958', '279800', '169800', '78', 'uploads/car/78.jpg');
INSERT INTO `cys_car_category` VALUES ('140', '186', '缤智', '', '1', '0', '1514128959', '189800', '128800', '3460', 'uploads/car/3460.jpg');
INSERT INTO `cys_car_category` VALUES ('141', '186', '冠道', '', '1', '0', '1514128959', '329800', '220000', '4102', 'uploads/car/4102.jpg');
INSERT INTO `cys_car_category` VALUES ('142', '186', '奥德赛', '', '1', '0', '1514128959', '354800', '229800', '880', 'uploads/car/880.jpg');
INSERT INTO `cys_car_category` VALUES ('143', '186', '本田C', '', '1', '0', '1514128960', '0', '0', '2786', 'uploads/car/2786.jpg');
INSERT INTO `cys_car_category` VALUES ('144', '186', '锋范经典', '', '1', '0', '1514128960', '0', '0', '694', 'uploads/car/694.jpg');
INSERT INTO `cys_car_category` VALUES ('145', '186', '思迪', '', '1', '0', '1514128960', '0', '0', '449', 'uploads/car/449.jpg');
INSERT INTO `cys_car_category` VALUES ('146', '186', '歌诗图', '', '1', '0', '1514128960', '0', '0', '2168', 'uploads/car/2168.jpg');
INSERT INTO `cys_car_category` VALUES ('147', '187', '本田CR-Z', '', '1', '0', '1514128961', '288800', '288800', '897', 'uploads/car/897.jpg');
INSERT INTO `cys_car_category` VALUES ('148', '187', 'INSIGHT', '', '1', '0', '1514128961', '209800', '209800', '723', 'uploads/car/723.jpg');
INSERT INTO `cys_car_category` VALUES ('149', '187', 'Brio', '', '1', '0', '1514128961', '0', '0', '2238', 'uploads/car/2238.jpg');
INSERT INTO `cys_car_category` VALUES ('150', '187', 'Gear', '', '1', '0', '1514128962', '0', '0', '3001', 'uploads/car/3001.jpg');
INSERT INTO `cys_car_category` VALUES ('151', '187', 'N BOX', '', '1', '0', '1514128962', '0', '0', '2856', 'uploads/car/2856.jpg');
INSERT INTO `cys_car_category` VALUES ('152', '187', 'N ONE', '', '1', '0', '1514128962', '0', '0', '2926', 'uploads/car/2926.jpg');
INSERT INTO `cys_car_category` VALUES ('153', '187', '本田Urban EV', '', '1', '0', '1514128962', '0', '0', '4546', 'uploads/car/4546.jpg');
INSERT INTO `cys_car_category` VALUES ('154', '187', 'NeuV', '', '1', '0', '1514128963', '0', '0', '4360', 'uploads/car/4360.jpg');
INSERT INTO `cys_car_category` VALUES ('155', '187', 'N-WGN', '', '1', '0', '1514128963', '0', '0', '3233', 'uploads/car/3233.jpg');
INSERT INTO `cys_car_category` VALUES ('156', '187', 'Step Bus', '', '1', '0', '1514128963', '0', '0', '2932', 'uploads/car/2932.jpg');
INSERT INTO `cys_car_category` VALUES ('157', '187', '飞度(进口)', '', '1', '0', '1514128963', '0', '0', '900', 'uploads/car/900.jpg');
INSERT INTO `cys_car_category` VALUES ('158', '187', '锋范(海外)', '', '1', '0', '1514128964', '0', '0', '3275', 'uploads/car/3275.jpg');
INSERT INTO `cys_car_category` VALUES ('159', '187', 'CLARITY', '', '1', '0', '1514128964', '0', '0', '3266', 'uploads/car/3266.jpg');
INSERT INTO `cys_car_category` VALUES ('160', '187', 'CONCEPT B', '', '1', '0', '1514128964', '0', '0', '3478', 'uploads/car/3478.jpg');
INSERT INTO `cys_car_category` VALUES ('161', '187', 'Vision XS-1', '', '1', '0', '1514128964', '0', '0', '3367', 'uploads/car/3367.jpg');
INSERT INTO `cys_car_category` VALUES ('162', '187', '杰德(海外)', '', '1', '0', '1514128965', '0', '0', '3705', 'uploads/car/3705.jpg');
INSERT INTO `cys_car_category` VALUES ('163', '187', '思域(海外)', '', '1', '0', '1514128965', '0', '0', '896', 'uploads/car/896.jpg');
INSERT INTO `cys_car_category` VALUES ('164', '187', 'Honda Design C 001', '', '1', '0', '1514128965', '0', '0', '4558', 'uploads/car/4558.jpg');
INSERT INTO `cys_car_category` VALUES ('165', '187', '本田AC-X', '', '1', '0', '1514128966', '0', '0', '2552', 'uploads/car/2552.jpg');
INSERT INTO `cys_car_category` VALUES ('166', '187', '歌诗图(海外)', '', '1', '0', '1514128966', '0', '0', '2948', 'uploads/car/2948.jpg');
INSERT INTO `cys_car_category` VALUES ('167', '187', '雅阁(海外)', '', '1', '0', '1514128966', '0', '0', '559', 'uploads/car/559.jpg');
INSERT INTO `cys_car_category` VALUES ('168', '187', '里程', '', '1', '0', '1514128966', '0', '0', '231', 'uploads/car/231.jpg');
INSERT INTO `cys_car_category` VALUES ('169', '187', 'VEZEL', '', '1', '0', '1514128967', '0', '0', '3257', 'uploads/car/3257.jpg');
INSERT INTO `cys_car_category` VALUES ('170', '187', '本田HR-V', '', '1', '0', '1514128967', '0', '0', '3605', 'uploads/car/3605.jpg');
INSERT INTO `cys_car_category` VALUES ('171', '187', '本田Urban', '', '1', '0', '1514128967', '0', '0', '2995', 'uploads/car/2995.jpg');
INSERT INTO `cys_car_category` VALUES ('172', '187', '本田WR-V', '', '1', '0', '1514128967', '0', '0', '4248', 'uploads/car/4248.jpg');
INSERT INTO `cys_car_category` VALUES ('173', '187', 'CONCEPT V', '', '1', '0', '1514128968', '0', '0', '3268', 'uploads/car/3268.jpg');
INSERT INTO `cys_car_category` VALUES ('174', '187', '本田BR-V', '', '1', '0', '1514128968', '0', '0', '3869', 'uploads/car/3869.jpg');
INSERT INTO `cys_car_category` VALUES ('175', '187', '本田CR-V(海外)', '', '1', '0', '1514128968', '0', '0', '918', 'uploads/car/918.jpg');
INSERT INTO `cys_car_category` VALUES ('176', '187', 'CONCEPT D', '', '1', '0', '1514128969', '0', '0', '3813', 'uploads/car/3813.jpg');
INSERT INTO `cys_car_category` VALUES ('177', '187', 'Pilot', '', '1', '0', '1514128969', '0', '0', '810', 'uploads/car/810.jpg');
INSERT INTO `cys_car_category` VALUES ('178', '187', 'CONCEPT M', '', '1', '0', '1514128969', '0', '0', '3111', 'uploads/car/3111.jpg');
INSERT INTO `cys_car_category` VALUES ('179', '187', 'Freed', '', '1', '0', '1514128972', '0', '0', '4163', 'uploads/car/4163.jpg');
INSERT INTO `cys_car_category` VALUES ('180', '187', 'STEP WGN', '', '1', '0', '1514128973', '0', '0', '4127', 'uploads/car/4127.jpg');
INSERT INTO `cys_car_category` VALUES ('181', '187', '奥德赛(海外)', '', '1', '0', '1514128973', '0', '0', '733', 'uploads/car/733.jpg');
INSERT INTO `cys_car_category` VALUES ('182', '187', 'EV-Ster', '', '1', '0', '1514128973', '0', '0', '2587', 'uploads/car/2587.jpg');
INSERT INTO `cys_car_category` VALUES ('183', '187', 'Sports EV Concept', '', '1', '0', '1514128974', '0', '0', '4565', 'uploads/car/4565.jpg');
INSERT INTO `cys_car_category` VALUES ('184', '187', '本田NSX', '', '1', '0', '1514128974', '0', '0', '2700', 'uploads/car/2700.jpg');
INSERT INTO `cys_car_category` VALUES ('185', '187', '本田S660', '', '1', '0', '1514128974', '0', '0', '3232', 'uploads/car/3232.jpg');
INSERT INTO `cys_car_category` VALUES ('186', '187', 'Ridgeline', '', '1', '0', '1514128974', '0', '0', '2551', 'uploads/car/2551.jpg');
INSERT INTO `cys_car_category` VALUES ('187', '187', 'P-NUT', '', '1', '0', '1514128975', '0', '0', '1020', 'uploads/car/1020.jpg');
INSERT INTO `cys_car_category` VALUES ('188', '187', '本田FCV', '', '1', '0', '1514128975', '0', '0', '3692', 'uploads/car/3692.jpg');
INSERT INTO `cys_car_category` VALUES ('189', '187', '本田FCX', '', '1', '0', '1514128975', '0', '0', '935', 'uploads/car/935.jpg');
INSERT INTO `cys_car_category` VALUES ('190', '187', 'Legend', '', '1', '0', '1514128976', '0', '0', '667', 'uploads/car/667.jpg');
INSERT INTO `cys_car_category` VALUES ('191', '187', '元素', '', '1', '0', '1514128976', '0', '0', '956', 'uploads/car/956.jpg');
INSERT INTO `cys_car_category` VALUES ('192', '187', '时韵', '', '1', '0', '1514128976', '0', '0', '233', 'uploads/car/233.jpg');
INSERT INTO `cys_car_category` VALUES ('193', '187', '本田HSV-010 GT', '', '1', '0', '1514128976', '0', '0', '2042', 'uploads/car/2042.jpg');
INSERT INTO `cys_car_category` VALUES ('194', '187', '本田S2000', '', '1', '0', '1514128977', '0', '0', '746', 'uploads/car/746.jpg');
INSERT INTO `cys_car_category` VALUES ('195', '187', '本田SUT', '', '1', '0', '1514128977', '0', '0', '2818', 'uploads/car/2818.jpg');
INSERT INTO `cys_car_category` VALUES ('196', '188', 'VELITE 5', '', '1', '0', '1514128977', '295800', '265800', '4239', 'uploads/car/4239.jpg');
INSERT INTO `cys_car_category` VALUES ('197', '188', '威朗', '', '1', '0', '1514128978', '205900', '135900', '3751', 'uploads/car/3751.jpg');
INSERT INTO `cys_car_category` VALUES ('198', '188', '英朗', '', '1', '0', '1514128978', '150900', '109900', '982', 'uploads/car/982.jpg');
INSERT INTO `cys_car_category` VALUES ('199', '188', '阅朗', '', '1', '0', '1514128978', '146900', '119900', '4552', 'uploads/car/4552.jpg');
INSERT INTO `cys_car_category` VALUES ('200', '188', '君威', '', '1', '0', '1514128978', '269800', '175800', '164', 'uploads/car/164.jpg');
INSERT INTO `cys_car_category` VALUES ('201', '188', '君越', '', '1', '0', '1514128979', '339800', '229800', '834', 'uploads/car/834.jpg');
INSERT INTO `cys_car_category` VALUES ('202', '188', '昂科拉', '', '1', '0', '1514128979', '189900', '139900', '2896', 'uploads/car/2896.jpg');
INSERT INTO `cys_car_category` VALUES ('203', '188', '昂科威', '', '1', '0', '1514128979', '349900', '209900', '3554', 'uploads/car/3554.jpg');
INSERT INTO `cys_car_category` VALUES ('204', '188', '别克GL6', '', '1', '0', '1514128980', '166900', '144900', '4487', 'uploads/car/4487.jpg');
INSERT INTO `cys_car_category` VALUES ('205', '188', '别克GL8', '', '1', '0', '1514128980', '449900', '229900', '166', 'uploads/car/166.jpg');
INSERT INTO `cys_car_category` VALUES ('206', '188', '凯越', '', '1', '0', '1514128980', '0', '0', '875', 'uploads/car/875.jpg');
INSERT INTO `cys_car_category` VALUES ('207', '188', '新世纪', '', '1', '0', '1514128980', '0', '0', '4570', 'uploads/car/4570.jpg');
INSERT INTO `cys_car_category` VALUES ('208', '188', '林荫大道', '', '1', '0', '1514128981', '0', '0', '525', 'uploads/car/525.jpg');
INSERT INTO `cys_car_category` VALUES ('209', '188', '荣御', '', '1', '0', '1514128981', '0', '0', '344', 'uploads/car/344.jpg');
INSERT INTO `cys_car_category` VALUES ('210', '189', '昂科雷', '', '1', '0', '1514128981', '649000', '509000', '592', 'uploads/car/592.jpg');
INSERT INTO `cys_car_category` VALUES ('211', '189', 'VERANO(海外)', '', '1', '0', '1514128982', '0', '0', '2511', 'uploads/car/2511.jpg');
INSERT INTO `cys_car_category` VALUES ('212', '189', '君威(海外)', '', '1', '0', '1514128982', '0', '0', '985', 'uploads/car/985.jpg');
INSERT INTO `cys_car_category` VALUES ('213', '189', '君越(海外)', '', '1', '0', '1514128982', '0', '0', '719', 'uploads/car/719.jpg');
INSERT INTO `cys_car_category` VALUES ('214', '189', 'Avenir', '', '1', '0', '1514128983', '0', '0', '3708', 'uploads/car/3708.jpg');
INSERT INTO `cys_car_category` VALUES ('215', '189', '昂科拉(海外)', '', '1', '0', '1514128983', '0', '0', '2644', 'uploads/car/2644.jpg');
INSERT INTO `cys_car_category` VALUES ('216', '189', 'Anthem', '', '1', '0', '1514128983', '0', '0', '3332', 'uploads/car/3332.jpg');
INSERT INTO `cys_car_category` VALUES ('217', '189', '昂科威(海外)', '', '1', '0', '1514128983', '0', '0', '2317', 'uploads/car/2317.jpg');
INSERT INTO `cys_car_category` VALUES ('218', '189', 'Avista', '', '1', '0', '1514128984', '0', '0', '4000', 'uploads/car/4000.jpg');
INSERT INTO `cys_car_category` VALUES ('219', '189', 'Riviera', '', '1', '0', '1514128984', '0', '0', '3078', 'uploads/car/3078.jpg');
INSERT INTO `cys_car_category` VALUES ('220', '189', '别克Cascada', '', '1', '0', '1514128984', '0', '0', '3707', 'uploads/car/3707.jpg');
INSERT INTO `cys_car_category` VALUES ('221', '189', 'Roadmaster', '', '1', '0', '1514128984', '0', '0', '3067', 'uploads/car/3067.jpg');
INSERT INTO `cys_car_category` VALUES ('222', '189', 'Special', '', '1', '0', '1514128985', '0', '0', '3076', 'uploads/car/3076.jpg');
INSERT INTO `cys_car_category` VALUES ('223', '189', 'Business', '', '1', '0', '1514128987', '0', '0', '849', 'uploads/car/849.jpg');
INSERT INTO `cys_car_category` VALUES ('224', '190', '奔驰C级', '', '1', '0', '1514128988', '489000', '312800', '588', 'uploads/car/588.jpg');
INSERT INTO `cys_car_category` VALUES ('225', '190', '奔驰E级', '', '1', '0', '1514128988', '629800', '422800', '197', 'uploads/car/197.jpg');
INSERT INTO `cys_car_category` VALUES ('226', '190', '奔驰GLA', '', '1', '0', '1514128988', '399000', '271800', '3248', 'uploads/car/3248.jpg');
INSERT INTO `cys_car_category` VALUES ('227', '190', '奔驰GLC', '', '1', '0', '1514128989', '579000', '396000', '3862', 'uploads/car/3862.jpg');
INSERT INTO `cys_car_category` VALUES ('228', '190', '奔驰C级新能源', '', '1', '0', '1514128989', '0', '0', '4349', 'uploads/car/4349.jpg');
INSERT INTO `cys_car_category` VALUES ('229', '190', '奔驰GLK级', '', '1', '0', '1514128989', '0', '0', '2562', 'uploads/car/2562.jpg');
INSERT INTO `cys_car_category` VALUES ('230', '191', '奔驰V级', '', '1', '0', '1514128990', '646000', '489000', '3823', 'uploads/car/3823.jpg');
INSERT INTO `cys_car_category` VALUES ('231', '191', '威霆', '', '1', '0', '1514128990', '339000', '299000', '2084', 'uploads/car/2084.jpg');
INSERT INTO `cys_car_category` VALUES ('232', '191', '凌特', '', '1', '0', '1514128990', '499000', '318000', '2564', 'uploads/car/2564.jpg');
INSERT INTO `cys_car_category` VALUES ('233', '191', '唯雅诺', '', '1', '0', '1514128990', '0', '0', '2034', 'uploads/car/2034.jpg');
INSERT INTO `cys_car_category` VALUES ('234', '192', '奔驰A级', '', '1', '0', '1514128991', '360000', '236000', '52', 'uploads/car/52.jpg');
INSERT INTO `cys_car_category` VALUES ('235', '192', '奔驰B级', '', '1', '0', '1514128991', '368000', '242000', '398', 'uploads/car/398.jpg');
INSERT INTO `cys_car_category` VALUES ('236', '192', '奔驰CLA级', '', '1', '0', '1514128991', '379000', '247000', '2966', 'uploads/car/2966.jpg');
INSERT INTO `cys_car_category` VALUES ('237', '192', '奔驰C级(进口)', '', '1', '0', '1514129060', '570000', '382800', '56', 'uploads/car/56.jpg');
INSERT INTO `cys_car_category` VALUES ('238', '192', '奔驰E级(进口)', '', '1', '0', '1514129060', '853000', '558000', '450', 'uploads/car/450.jpg');
INSERT INTO `cys_car_category` VALUES ('239', '192', '奔驰CLS级', '', '1', '0', '1514129061', '988000', '698000', '365', 'uploads/car/365.jpg');
INSERT INTO `cys_car_category` VALUES ('240', '192', '奔驰S级', '', '1', '0', '1514129061', '1998000', '938000', '59', 'uploads/car/59.jpg');
INSERT INTO `cys_car_category` VALUES ('241', '192', '奔驰S级新能源', '', '1', '0', '1514129061', '1758000', '1758000', '4344', 'uploads/car/4344.jpg');
INSERT INTO `cys_car_category` VALUES ('242', '192', '奔驰GLC(进口)', '', '1', '0', '1514129062', '638000', '496000', '3339', 'uploads/car/3339.jpg');
INSERT INTO `cys_car_category` VALUES ('243', '192', '奔驰GLE', '', '1', '0', '1514129062', '1498000', '768000', '3683', 'uploads/car/3683.jpg');
INSERT INTO `cys_car_category` VALUES ('244', '192', '奔驰GLE新能源', '', '1', '0', '1514129062', '1198000', '1198000', '4346', 'uploads/car/4346.jpg');
INSERT INTO `cys_car_category` VALUES ('245', '192', '奔驰G级', '', '1', '0', '1514129062', '1838000', '1329000', '60', 'uploads/car/60.jpg');
INSERT INTO `cys_car_category` VALUES ('246', '192', '奔驰GLS', '', '1', '0', '1514129063', '1598000', '1028000', '3688', 'uploads/car/3688.jpg');
INSERT INTO `cys_car_category` VALUES ('247', '192', '奔驰R级', '', '1', '0', '1514129063', '788000', '598000', '469', 'uploads/car/469.jpg');
INSERT INTO `cys_car_category` VALUES ('248', '192', '奔驰SLC', '', '1', '0', '1514129063', '688000', '559600', '3278', 'uploads/car/3278.jpg');
INSERT INTO `cys_car_category` VALUES ('249', '192', '奔驰SL级', '', '1', '0', '1514129063', '1208000', '1098000', '237', 'uploads/car/237.jpg');
INSERT INTO `cys_car_category` VALUES ('250', '192', 'Concept A Sedan', '', '1', '0', '1514129064', '0', '0', '4411', 'uploads/car/4411.jpg');
INSERT INTO `cys_car_category` VALUES ('251', '192', '奔驰EQ A', '', '1', '0', '1514129064', '0', '0', '4537', 'uploads/car/4537.jpg');
INSERT INTO `cys_car_category` VALUES ('252', '192', 'Concept IAA', '', '1', '0', '1514129064', '0', '0', '3918', 'uploads/car/3918.jpg');
INSERT INTO `cys_car_category` VALUES ('253', '192', '奔驰F800', '', '1', '0', '1514129064', '0', '0', '2065', 'uploads/car/2065.jpg');
INSERT INTO `cys_car_category` VALUES ('254', '192', '奔驰F 015', '', '1', '0', '1514129065', '0', '0', '3700', 'uploads/car/3700.jpg');
INSERT INTO `cys_car_category` VALUES ('255', '192', '奔驰U级', '', '1', '0', '1514129065', '0', '0', '3492', 'uploads/car/3492.jpg');
INSERT INTO `cys_car_category` VALUES ('256', '192', 'G-Code', '', '1', '0', '1514129065', '0', '0', '3650', 'uploads/car/3650.jpg');
INSERT INTO `cys_car_category` VALUES ('257', '192', 'Generation EQ', '', '1', '0', '1514129065', '0', '0', '4213', 'uploads/car/4213.jpg');
INSERT INTO `cys_car_category` VALUES ('258', '192', '奔驰GLA(进口)', '', '1', '0', '1514129066', '0', '0', '3079', 'uploads/car/3079.jpg');
INSERT INTO `cys_car_category` VALUES ('259', '192', 'Ener-G-Force', '', '1', '0', '1514129066', '0', '0', '2950', 'uploads/car/2950.jpg');
INSERT INTO `cys_car_category` VALUES ('260', '192', 'Coupe SUV', '', '1', '0', '1514129066', '0', '0', '3441', 'uploads/car/3441.jpg');
INSERT INTO `cys_car_category` VALUES ('261', '192', '乌尼莫克U5000 SUV', '', '1', '0', '1514129067', '0', '0', '3494', 'uploads/car/3494.jpg');
INSERT INTO `cys_car_category` VALUES ('262', '192', 'Sprinter', '', '1', '0', '1514129067', '0', '0', '2005', 'uploads/car/2005.jpg');
INSERT INTO `cys_car_category` VALUES ('263', '192', 'Vision Tokyo', '', '1', '0', '1514129067', '0', '0', '3945', 'uploads/car/3945.jpg');
INSERT INTO `cys_car_category` VALUES ('264', '192', '奔驰Citan', '', '1', '0', '1514129067', '0', '0', '2756', 'uploads/car/2756.jpg');
INSERT INTO `cys_car_category` VALUES ('265', '192', '奔驰V级(进口)', '', '1', '0', '1514129068', '0', '0', '3364', 'uploads/car/3364.jpg');
INSERT INTO `cys_car_category` VALUES ('266', '192', '威霆(进口)', '', '1', '0', '1514129068', '0', '0', '192', 'uploads/car/192.jpg');
INSERT INTO `cys_car_category` VALUES ('267', '192', 'Silver Arrow', '', '1', '0', '1514129068', '0', '0', '2618', 'uploads/car/2618.jpg');
INSERT INTO `cys_car_category` VALUES ('268', '192', '奔驰CSC级', '', '1', '0', '1514129069', '0', '0', '2762', 'uploads/car/2762.jpg');
INSERT INTO `cys_car_category` VALUES ('269', '192', '奔驰F125', '', '1', '0', '1514129069', '0', '0', '2424', 'uploads/car/2424.jpg');
INSERT INTO `cys_car_category` VALUES ('270', '192', '奔驰SLA级', '', '1', '0', '1514129069', '0', '0', '2412', 'uploads/car/2412.jpg');
INSERT INTO `cys_car_category` VALUES ('271', '192', 'Vision Van', '', '1', '0', '1514129069', '0', '0', '4195', 'uploads/car/4195.jpg');
INSERT INTO `cys_car_category` VALUES ('272', '192', '奔驰X级', '', '1', '0', '1514129070', '0', '0', '4231', 'uploads/car/4231.jpg');
INSERT INTO `cys_car_category` VALUES ('273', '192', 'BlueZero', '', '1', '0', '1514129070', '0', '0', '910', 'uploads/car/910.jpg');
INSERT INTO `cys_car_category` VALUES ('274', '192', '奔驰GLK级(进口)', '', '1', '0', '1514129070', '0', '0', '595', 'uploads/car/595.jpg');
INSERT INTO `cys_car_category` VALUES ('275', '192', '奔驰M级', '', '1', '0', '1514129070', '0', '0', '57', 'uploads/car/57.jpg');
INSERT INTO `cys_car_category` VALUES ('276', '192', '奔驰GL级', '', '1', '0', '1514129071', '0', '0', '467', 'uploads/car/467.jpg');
INSERT INTO `cys_car_category` VALUES ('277', '192', '唯雅诺(进口)', '', '1', '0', '1514129071', '0', '0', '300', 'uploads/car/300.jpg');
INSERT INTO `cys_car_category` VALUES ('278', '192', 'Biome', '', '1', '0', '1514129071', '0', '0', '2233', 'uploads/car/2233.jpg');
INSERT INTO `cys_car_category` VALUES ('279', '192', '奔驰CLK级', '', '1', '0', '1514129071', '0', '0', '235', 'uploads/car/235.jpg');
INSERT INTO `cys_car_category` VALUES ('280', '192', '奔驰CL级', '', '1', '0', '1514129072', '0', '0', '683', 'uploads/car/683.jpg');
INSERT INTO `cys_car_category` VALUES ('281', '192', '奔驰SLK级', '', '1', '0', '1514129072', '0', '0', '267', 'uploads/car/267.jpg');
INSERT INTO `cys_car_category` VALUES ('282', '192', '奔驰SLR级', '', '1', '0', '1514129072', '0', '0', '685', 'uploads/car/685.jpg');
INSERT INTO `cys_car_category` VALUES ('283', '193', '奔驰A级AMG', '', '1', '0', '1514129075', '558000', '498000', '2842', 'uploads/car/2842.jpg');
INSERT INTO `cys_car_category` VALUES ('284', '193', '奔驰CLA级AMG', '', '1', '0', '1514129076', '632000', '599000', '2967', 'uploads/car/2967.jpg');
INSERT INTO `cys_car_category` VALUES ('285', '193', '奔驰C级AMG', '', '1', '0', '1514129076', '1348000', '688000', '2717', 'uploads/car/2717.jpg');
INSERT INTO `cys_car_category` VALUES ('286', '193', '奔驰CLS级AMG', '', '1', '0', '1514129076', '1868000', '1778000', '2719', 'uploads/car/2719.jpg');
INSERT INTO `cys_car_category` VALUES ('287', '193', '奔驰E级AMG', '', '1', '0', '1514129077', '1788000', '979800', '2718', 'uploads/car/2718.jpg');
INSERT INTO `cys_car_category` VALUES ('288', '193', '奔驰S级AMG', '', '1', '0', '1514129077', '2998000', '2478000', '2197', 'uploads/car/2197.jpg');
INSERT INTO `cys_car_category` VALUES ('289', '193', '奔驰GLA AMG', '', '1', '0', '1514129077', '634000', '579000', '3264', 'uploads/car/3264.jpg');
INSERT INTO `cys_car_category` VALUES ('290', '193', '奔驰GLC AMG', '', '1', '0', '1514129077', '805000', '698000', '4074', 'uploads/car/4074.jpg');
INSERT INTO `cys_car_category` VALUES ('291', '193', '奔驰GLE AMG', '', '1', '0', '1514129078', '1988000', '1038000', '3704', 'uploads/car/3704.jpg');
INSERT INTO `cys_car_category` VALUES ('292', '193', '奔驰G级AMG', '', '1', '0', '1514129078', '3818000', '2318000', '2723', 'uploads/car/2723.jpg');
INSERT INTO `cys_car_category` VALUES ('293', '193', '奔驰GLS AMG', '', '1', '0', '1514129078', '1998000', '1998000', '3901', 'uploads/car/3901.jpg');
INSERT INTO `cys_car_category` VALUES ('294', '193', 'AMG GT', '', '1', '0', '1514129078', '2288000', '1418000', '3451', 'uploads/car/3451.jpg');
INSERT INTO `cys_car_category` VALUES ('295', '193', 'GT Concept', '', '1', '0', '1514129079', '0', '0', '4364', 'uploads/car/4364.jpg');
INSERT INTO `cys_car_category` VALUES ('296', '193', '奔驰SLK级AMG', '', '1', '0', '1514129079', '0', '0', '2721', 'uploads/car/2721.jpg');
INSERT INTO `cys_car_category` VALUES ('297', '193', '奔驰SL级AMG', '', '1', '0', '1514129079', '0', '0', '2720', 'uploads/car/2720.jpg');
INSERT INTO `cys_car_category` VALUES ('298', '193', 'Project ONE', '', '1', '0', '1514129080', '0', '0', '4542', 'uploads/car/4542.jpg');
INSERT INTO `cys_car_category` VALUES ('299', '193', 'Vision', '', '1', '0', '1514129080', '0', '0', '3246', 'uploads/car/3246.jpg');
INSERT INTO `cys_car_category` VALUES ('300', '193', '奔驰SLC AMG', '', '1', '0', '1514129080', '0', '0', '3985', 'uploads/car/3985.jpg');
INSERT INTO `cys_car_category` VALUES ('301', '193', '奔驰M级AMG', '', '1', '0', '1514129080', '0', '0', '2722', 'uploads/car/2722.jpg');
INSERT INTO `cys_car_category` VALUES ('302', '193', '奔驰GL级AMG', '', '1', '0', '1514129081', '0', '0', '2833', 'uploads/car/2833.jpg');
INSERT INTO `cys_car_category` VALUES ('303', '193', '奔驰CL级AMG', '', '1', '0', '1514129081', '0', '0', '2724', 'uploads/car/2724.jpg');
INSERT INTO `cys_car_category` VALUES ('304', '193', '奔驰SLS级AMG', '', '1', '0', '1514129081', '0', '0', '914', 'uploads/car/914.jpg');
INSERT INTO `cys_car_category` VALUES ('305', '194', '迈巴赫S级', '', '1', '0', '1514129082', '3098000', '1468000', '3665', 'uploads/car/3665.jpg');
INSERT INTO `cys_car_category` VALUES ('306', '194', '迈巴赫G级', '', '1', '0', '1514129082', '0', '0', '4300', 'uploads/car/4300.jpg');
INSERT INTO `cys_car_category` VALUES ('307', '194', 'Vision Mercedes-Maybach 6', '', '1', '0', '1514129082', '0', '0', '4183', 'uploads/car/4183.jpg');
INSERT INTO `cys_car_category` VALUES ('308', '195', '宝马1系', '', '1', '0', '1514129083', '319800', '204800', '4171', 'uploads/car/4171.jpg');
INSERT INTO `cys_car_category` VALUES ('309', '195', '宝马2系旅行车', '', '1', '0', '1514129083', '331900', '236900', '3941', 'uploads/car/3941.jpg');
INSERT INTO `cys_car_category` VALUES ('310', '195', '宝马3系', '', '1', '0', '1514129083', '486900', '288000', '66', 'uploads/car/66.jpg');
INSERT INTO `cys_car_category` VALUES ('311', '195', '宝马5系', '', '1', '0', '1514129083', '663900', '449900', '65', 'uploads/car/65.jpg');
INSERT INTO `cys_car_category` VALUES ('312', '195', '宝马5系新能源', '', '1', '0', '1514129084', '698600', '698600', '4350', 'uploads/car/4350.jpg');
INSERT INTO `cys_car_category` VALUES ('313', '195', '宝马X1', '', '1', '0', '1514129084', '439000', '286000', '2561', 'uploads/car/2561.jpg');
INSERT INTO `cys_car_category` VALUES ('314', '195', '宝马X1新能源', '', '1', '0', '1514129084', '398800', '398800', '4356', 'uploads/car/4356.jpg');
INSERT INTO `cys_car_category` VALUES ('315', '196', '宝马i3', '', '1', '0', '1514129085', '522800', '422800', '2388', 'uploads/car/2388.jpg');
INSERT INTO `cys_car_category` VALUES ('316', '196', '宝马1系(进口)', '', '1', '0', '1514129085', '469000', '256000', '373', 'uploads/car/373.jpg');
INSERT INTO `cys_car_category` VALUES ('317', '196', '宝马3系(进口)', '', '1', '0', '1514129085', '684000', '399600', '317', 'uploads/car/317.jpg');
INSERT INTO `cys_car_category` VALUES ('318', '196', '宝马3系GT', '', '1', '0', '1514129085', '519000', '398000', '2963', 'uploads/car/2963.jpg');
INSERT INTO `cys_car_category` VALUES ('319', '196', '宝马4系', '', '1', '0', '1514129086', '689000', '420000', '2968', 'uploads/car/2968.jpg');
INSERT INTO `cys_car_category` VALUES ('320', '196', '宝马5系(进口)', '', '1', '0', '1514129086', '727000', '465800', '202', 'uploads/car/202.jpg');
INSERT INTO `cys_car_category` VALUES ('321', '196', '宝马5系GT', '', '1', '0', '1514129086', '1688000', '701000', '2847', 'uploads/car/2847.jpg');
INSERT INTO `cys_car_category` VALUES ('322', '196', '宝马6系', '', '1', '0', '1514129087', '1882000', '952000', '270', 'uploads/car/270.jpg');
INSERT INTO `cys_car_category` VALUES ('323', '196', '宝马6系GT', '', '1', '0', '1514129089', '873800', '710800', '4472', 'uploads/car/4472.jpg');
INSERT INTO `cys_car_category` VALUES ('324', '196', '宝马7系', '', '1', '0', '1514129089', '2658000', '898000', '153', 'uploads/car/153.jpg');
INSERT INTO `cys_car_category` VALUES ('325', '196', '宝马7系新能源', '', '1', '0', '1514129090', '1158000', '1128000', '4345', 'uploads/car/4345.jpg');
INSERT INTO `cys_car_category` VALUES ('326', '196', '宝马X3', '', '1', '0', '1514129090', '750000', '421000', '271', 'uploads/car/271.jpg');
INSERT INTO `cys_car_category` VALUES ('327', '196', '宝马X4', '', '1', '0', '1514129090', '774000', '530000', '3053', 'uploads/car/3053.jpg');
INSERT INTO `cys_car_category` VALUES ('328', '196', '宝马X5', '', '1', '0', '1514129090', '1728000', '758000', '159', 'uploads/car/159.jpg');
INSERT INTO `cys_car_category` VALUES ('329', '196', '宝马X5新能源', '', '1', '0', '1514129091', '928000', '928000', '4348', 'uploads/car/4348.jpg');
INSERT INTO `cys_car_category` VALUES ('330', '196', '宝马X6', '', '1', '0', '1514129091', '1138000', '838000', '587', 'uploads/car/587.jpg');
INSERT INTO `cys_car_category` VALUES ('331', '196', '宝马2系多功能旅行车', '', '1', '0', '1514129091', '329900', '289900', '3726', 'uploads/car/3726.jpg');
INSERT INTO `cys_car_category` VALUES ('332', '196', '宝马2系', '', '1', '0', '1514129091', '538000', '276000', '3230', 'uploads/car/3230.jpg');
INSERT INTO `cys_car_category` VALUES ('333', '196', '宝马i8', '', '1', '0', '1514129092', '1988000', '1988000', '2387', 'uploads/car/2387.jpg');
INSERT INTO `cys_car_category` VALUES ('334', '196', '宝马Z4', '', '1', '0', '1514129092', '909000', '583000', '161', 'uploads/car/161.jpg');
INSERT INTO `cys_car_category` VALUES ('335', '196', 'Compact Sedan', '', '1', '0', '1514129092', '0', '0', '3965', 'uploads/car/3965.jpg');
INSERT INTO `cys_car_category` VALUES ('336', '196', 'i Vision Dynamics', '', '1', '0', '1514129092', '0', '0', '4547', 'uploads/car/4547.jpg');
INSERT INTO `cys_car_category` VALUES ('337', '196', '宝马2系旅行车(进口)', '', '1', '0', '1514129093', '0', '0', '3302', 'uploads/car/3302.jpg');
INSERT INTO `cys_car_category` VALUES ('338', '196', 'VISION NEXT 100', '', '1', '0', '1514129093', '0', '0', '4067', 'uploads/car/4067.jpg');
INSERT INTO `cys_car_category` VALUES ('339', '196', 'Vision Future Luxury', '', '1', '0', '1514129093', '0', '0', '3471', 'uploads/car/3471.jpg');
INSERT INTO `cys_car_category` VALUES ('340', '196', '宝马X1(进口)', '', '1', '0', '1514129094', '0', '0', '675', 'uploads/car/675.jpg');
INSERT INTO `cys_car_category` VALUES ('341', '196', '宝马X2', '', '1', '0', '1514129094', '0', '0', '3386', 'uploads/car/3386.jpg');
INSERT INTO `cys_car_category` VALUES ('342', '196', '宝马X7', '', '1', '0', '1514129094', '0', '0', '3362', 'uploads/car/3362.jpg');
INSERT INTO `cys_car_category` VALUES ('343', '196', '宝马X7新能源', '', '1', '0', '1514129094', '0', '0', '4539', 'uploads/car/4539.jpg');
INSERT INTO `cys_car_category` VALUES ('344', '196', '2002 Hommage', '', '1', '0', '1514129095', '0', '0', '4136', 'uploads/car/4136.jpg');
INSERT INTO `cys_car_category` VALUES ('345', '196', '3.0 CSL Hommage', '', '1', '0', '1514129095', '0', '0', '3843', 'uploads/car/3843.jpg');
INSERT INTO `cys_car_category` VALUES ('346', '196', 'Gran Lusso', '', '1', '0', '1514129095', '0', '0', '3146', 'uploads/car/3146.jpg');
INSERT INTO `cys_car_category` VALUES ('347', '196', 'i Vision Future Interaction', '', '1', '0', '1514129096', '0', '0', '3996', 'uploads/car/3996.jpg');
INSERT INTO `cys_car_category` VALUES ('348', '196', 'Zagato Coupe', '', '1', '0', '1514129096', '0', '0', '2831', 'uploads/car/2831.jpg');
INSERT INTO `cys_car_category` VALUES ('349', '196', '宝马8系', '', '1', '0', '1514129096', '0', '0', '3464', 'uploads/car/3464.jpg');
INSERT INTO `cys_car_category` VALUES ('350', '196', '宝马Z2', '', '1', '0', '1514129096', '0', '0', '3496', 'uploads/car/3496.jpg');
INSERT INTO `cys_car_category` VALUES ('351', '196', 'Isetta', '', '1', '0', '1514129097', '0', '0', '2438', 'uploads/car/2438.jpg');
INSERT INTO `cys_car_category` VALUES ('352', '196', 'Active Tourer', '', '1', '0', '1514129097', '0', '0', '2897', 'uploads/car/2897.jpg');
INSERT INTO `cys_car_category` VALUES ('353', '196', 'Gran Coupe', '', '1', '0', '1514129097', '0', '0', '2167', 'uploads/car/2167.jpg');
INSERT INTO `cys_car_category` VALUES ('354', '196', 'ConnectedDrive', '', '1', '0', '1514129097', '0', '0', '2267', 'uploads/car/2267.jpg');
INSERT INTO `cys_car_category` VALUES ('355', '196', 'EfficientDynamics', '', '1', '0', '1514129098', '0', '0', '907', 'uploads/car/907.jpg');
INSERT INTO `cys_car_category` VALUES ('356', '196', '宝马GINA', '', '1', '0', '1514129098', '0', '0', '2848', 'uploads/car/2848.jpg');
INSERT INTO `cys_car_category` VALUES ('357', '196', '宝马Z8', '', '1', '0', '1514129098', '0', '0', '847', 'uploads/car/847.jpg');
INSERT INTO `cys_car_category` VALUES ('358', '197', '宝马M3', '', '1', '0', '1514129099', '1068000', '968000', '2196', 'uploads/car/2196.jpg');
INSERT INTO `cys_car_category` VALUES ('359', '197', '宝马M4', '', '1', '0', '1514129099', '1990000', '927000', '3189', 'uploads/car/3189.jpg');
INSERT INTO `cys_car_category` VALUES ('360', '197', '宝马M5', '', '1', '0', '1514129099', '1597000', '1597000', '2726', 'uploads/car/2726.jpg');
INSERT INTO `cys_car_category` VALUES ('361', '197', '宝马M6', '', '1', '0', '1514129100', '1988000', '1988000', '2727', 'uploads/car/2727.jpg');
INSERT INTO `cys_car_category` VALUES ('362', '197', '宝马X5 M', '', '1', '0', '1514129101', '1858000', '1858000', '2728', 'uploads/car/2728.jpg');
INSERT INTO `cys_car_category` VALUES ('363', '197', '宝马X6 M', '', '1', '0', '1514129101', '1928000', '1928000', '2729', 'uploads/car/2729.jpg');
INSERT INTO `cys_car_category` VALUES ('364', '197', '宝马M2', '', '1', '0', '1514129101', '649800', '640500', '3357', 'uploads/car/3357.jpg');
INSERT INTO `cys_car_category` VALUES ('365', '197', '宝马M8', '', '1', '0', '1514129104', '0', '0', '3291', 'uploads/car/3291.jpg');
INSERT INTO `cys_car_category` VALUES ('366', '197', '宝马1系M', '', '1', '0', '1514129104', '0', '0', '2725', 'uploads/car/2725.jpg');
INSERT INTO `cys_car_category` VALUES ('367', '197', '宝马M1', '', '1', '0', '1514129105', '0', '0', '2845', 'uploads/car/2845.jpg');
INSERT INTO `cys_car_category` VALUES ('368', '198', '宝骏E100', '', '1', '0', '1514129105', '109900', '93900', '3993', 'uploads/car/3993.jpg');
INSERT INTO `cys_car_category` VALUES ('369', '198', '宝骏310', '', '1', '0', '1514129105', '60800', '36800', '4077', 'uploads/car/4077.jpg');
INSERT INTO `cys_car_category` VALUES ('370', '198', '宝骏310W', '', '1', '0', '1514129106', '65800', '42800', '4392', 'uploads/car/4392.jpg');
INSERT INTO `cys_car_category` VALUES ('371', '198', '宝骏610', '', '1', '0', '1514129106', '80800', '59800', '3343', 'uploads/car/3343.jpg');
INSERT INTO `cys_car_category` VALUES ('372', '198', '宝骏630', '', '1', '0', '1514129106', '74800', '59800', '2236', 'uploads/car/2236.jpg');
INSERT INTO `cys_car_category` VALUES ('373', '198', '宝骏510', '', '1', '0', '1514129106', '75800', '54800', '4166', 'uploads/car/4166.jpg');
INSERT INTO `cys_car_category` VALUES ('374', '198', '宝骏560', '', '1', '0', '1514129107', '117800', '69800', '3677', 'uploads/car/3677.jpg');
INSERT INTO `cys_car_category` VALUES ('375', '198', '宝骏730', '', '1', '0', '1514129107', '108800', '60800', '3412', 'uploads/car/3412.jpg');
INSERT INTO `cys_car_category` VALUES ('376', '198', 'City Car', '', '1', '0', '1514129107', '0', '0', '3595', 'uploads/car/3595.jpg');
INSERT INTO `cys_car_category` VALUES ('377', '198', '宝骏530', '', '1', '0', '1514129107', '0', '0', '4587', 'uploads/car/4587.jpg');
INSERT INTO `cys_car_category` VALUES ('378', '198', '宝骏360', '', '1', '0', '1514129108', '0', '0', '4606', 'uploads/car/4606.jpg');
INSERT INTO `cys_car_category` VALUES ('379', '198', '乐驰', '', '1', '0', '1514129108', '0', '0', '155', 'uploads/car/155.jpg');
INSERT INTO `cys_car_category` VALUES ('380', '198', '宝骏330', '', '1', '0', '1514129108', '0', '0', '3774', 'uploads/car/3774.jpg');
INSERT INTO `cys_car_category` VALUES ('381', '13', '比亚迪F0', '', '1', '0', '1514129109', '47900', '37900', '579', 'uploads/car/579.jpg');
INSERT INTO `cys_car_category` VALUES ('382', '13', '比亚迪e5', '', '1', '0', '1514129109', '215900', '195900', '4073', 'uploads/car/4073.jpg');
INSERT INTO `cys_car_category` VALUES ('383', '13', '比亚迪F3', '', '1', '0', '1514129109', '77900', '43900', '407', 'uploads/car/407.jpg');
INSERT INTO `cys_car_category` VALUES ('384', '13', '比亚迪G5', '', '1', '0', '1514129109', '102900', '75900', '3283', 'uploads/car/3283.jpg');
INSERT INTO `cys_car_category` VALUES ('385', '13', '秦', '', '1', '0', '1514129110', '255900', '185900', '2761', 'uploads/car/2761.jpg');
INSERT INTO `cys_car_category` VALUES ('386', '13', '速锐', '', '1', '0', '1514129110', '95900', '69900', '2806', 'uploads/car/2806.jpg');
INSERT INTO `cys_car_category` VALUES ('387', '13', '元', '', '1', '0', '1514129110', '99900', '59900', '3781', 'uploads/car/3781.jpg');
INSERT INTO `cys_car_category` VALUES ('388', '13', '元新能源', '', '1', '0', '1514129111', '249800', '209800', '4353', 'uploads/car/4353.jpg');
INSERT INTO `cys_car_category` VALUES ('389', '13', '宋', '', '1', '0', '1514129111', '139900', '89900', '3780', 'uploads/car/3780.jpg');
INSERT INTO `cys_car_category` VALUES ('390', '13', '宋新能源', '', '1', '0', '1514129111', '275900', '215900', '4394', 'uploads/car/4394.jpg');
INSERT INTO `cys_car_category` VALUES ('391', '13', '比亚迪S7', '', '1', '0', '1514129111', '139900', '99900', '3059', 'uploads/car/3059.jpg');
INSERT INTO `cys_car_category` VALUES ('392', '13', '唐', '', '1', '0', '1514129112', '299900', '265900', '3430', 'uploads/car/3430.jpg');
INSERT INTO `cys_car_category` VALUES ('393', '13', '比亚迪e6', '', '1', '0', '1514129112', '369800', '309800', '831', 'uploads/car/831.jpg');
INSERT INTO `cys_car_category` VALUES ('394', '13', '比亚迪M6', '', '1', '0', '1514129112', '153900', '103900', '798', 'uploads/car/798.jpg');
INSERT INTO `cys_car_category` VALUES ('395', '13', '宋MAX', '', '1', '0', '1514129112', '119900', '79900', '4279', 'uploads/car/4279.jpg');
INSERT INTO `cys_car_category` VALUES ('396', '13', '比亚迪S6', '', '1', '0', '1514129113', '123900', '79900', '2088', 'uploads/car/2088.jpg');
INSERT INTO `cys_car_category` VALUES ('397', '13', '王朝概念车', '', '1', '0', '1514129113', '0', '0', '4393', 'uploads/car/4393.jpg');
INSERT INTO `cys_car_category` VALUES ('398', '13', '比亚迪C6', '', '1', '0', '1514129113', '0', '0', '3376', 'uploads/car/3376.jpg');
INSERT INTO `cys_car_category` VALUES ('399', '13', '商', '', '1', '0', '1514129114', '0', '0', '3474', 'uploads/car/3474.jpg');
INSERT INTO `cys_car_category` VALUES ('400', '13', '比亚迪T3', '', '1', '0', '1514129114', '0', '0', '4108', 'uploads/car/4108.jpg');
INSERT INTO `cys_car_category` VALUES ('401', '13', '福莱尔', '', '1', '0', '1514129114', '0', '0', '417', 'uploads/car/417.jpg');
INSERT INTO `cys_car_category` VALUES ('402', '13', '比亚迪F3R', '', '1', '0', '1514129114', '0', '0', '940', 'uploads/car/940.jpg');
INSERT INTO `cys_car_category` VALUES ('403', '13', '比亚迪F3新能源', '', '1', '0', '1514129115', '0', '0', '4333', 'uploads/car/4333.jpg');
INSERT INTO `cys_car_category` VALUES ('404', '13', '比亚迪G3', '', '1', '0', '1514129115', '0', '0', '927', 'uploads/car/927.jpg');
INSERT INTO `cys_car_category` VALUES ('405', '13', '比亚迪G3R', '', '1', '0', '1514129115', '0', '0', '997', 'uploads/car/997.jpg');
INSERT INTO `cys_car_category` VALUES ('406', '13', '比亚迪L3', '', '1', '0', '1514129115', '0', '0', '2085', 'uploads/car/2085.jpg');
INSERT INTO `cys_car_category` VALUES ('407', '13', '比亚迪F6', '', '1', '0', '1514129116', '0', '0', '540', 'uploads/car/540.jpg');
INSERT INTO `cys_car_category` VALUES ('408', '13', '比亚迪G6', '', '1', '0', '1514129116', '0', '0', '2091', 'uploads/car/2091.jpg');
INSERT INTO `cys_car_category` VALUES ('409', '13', '思锐', '', '1', '0', '1514129118', '0', '0', '2944', 'uploads/car/2944.jpg');
INSERT INTO `cys_car_category` VALUES ('410', '13', '比亚迪S8', '', '1', '0', '1514129119', '0', '0', '489', 'uploads/car/489.jpg');
INSERT INTO `cys_car_category` VALUES ('411', '199', '标致301', '', '1', '0', '1514129119', '107700', '84700', '3068', 'uploads/car/3068.jpg');
INSERT INTO `cys_car_category` VALUES ('412', '199', '标致308', '', '1', '0', '1514129119', '159700', '99700', '877', 'uploads/car/877.jpg');
INSERT INTO `cys_car_category` VALUES ('413', '199', '标致308S', '', '1', '0', '1514129120', '179700', '112700', '3632', 'uploads/car/3632.jpg');
INSERT INTO `cys_car_category` VALUES ('414', '199', '标致408', '', '1', '0', '1514129120', '189700', '129700', '987', 'uploads/car/987.jpg');
INSERT INTO `cys_car_category` VALUES ('415', '199', '标致508', '', '1', '0', '1514129120', '269700', '173700', '2299', 'uploads/car/2299.jpg');
INSERT INTO `cys_car_category` VALUES ('416', '199', '标致2008', '', '1', '0', '1514129120', '151700', '99700', '3234', 'uploads/car/3234.jpg');
INSERT INTO `cys_car_category` VALUES ('417', '199', '标致3008', '', '1', '0', '1514129121', '207700', '140700', '2619', 'uploads/car/2619.jpg');
INSERT INTO `cys_car_category` VALUES ('418', '199', '标致4008', '', '1', '0', '1514129121', '273700', '185700', '4167', 'uploads/car/4167.jpg');
INSERT INTO `cys_car_category` VALUES ('419', '199', '标致5008', '', '1', '0', '1514129121', '279700', '187700', '4271', 'uploads/car/4271.jpg');
INSERT INTO `cys_car_category` VALUES ('420', '199', '标致206', '', '1', '0', '1514129121', '0', '0', '437', 'uploads/car/437.jpg');
INSERT INTO `cys_car_category` VALUES ('421', '199', '标致207', '', '1', '0', '1514129122', '0', '0', '688', 'uploads/car/688.jpg');
INSERT INTO `cys_car_category` VALUES ('422', '199', '标致307', '', '1', '0', '1514129122', '0', '0', '99', 'uploads/car/99.jpg');
INSERT INTO `cys_car_category` VALUES ('423', '200', '标致107', '', '1', '0', '1514129122', '0', '0', '726', 'uploads/car/726.jpg');
INSERT INTO `cys_car_category` VALUES ('424', '200', '标致108', '', '1', '0', '1514129123', '0', '0', '3381', 'uploads/car/3381.jpg');
INSERT INTO `cys_car_category` VALUES ('425', '200', 'Fractal', '', '1', '0', '1514129123', '0', '0', '3903', 'uploads/car/3903.jpg');
INSERT INTO `cys_car_category` VALUES ('426', '200', '标致208', '', '1', '0', '1514129123', '0', '0', '2544', 'uploads/car/2544.jpg');
INSERT INTO `cys_car_category` VALUES ('427', '200', 'EXALT', '', '1', '0', '1514129123', '0', '0', '3434', 'uploads/car/3434.jpg');
INSERT INTO `cys_car_category` VALUES ('428', '200', 'Instinct', '', '1', '0', '1514129124', '0', '0', '4331', 'uploads/car/4331.jpg');
INSERT INTO `cys_car_category` VALUES ('429', '200', '标致301(海外)', '', '1', '0', '1514129124', '0', '0', '2829', 'uploads/car/2829.jpg');
INSERT INTO `cys_car_category` VALUES ('430', '200', '标致308(进口)', '', '1', '0', '1514129124', '0', '0', '689', 'uploads/car/689.jpg');
INSERT INTO `cys_car_category` VALUES ('431', '200', '标致408 GT', '', '1', '0', '1514129125', '0', '0', '3331', 'uploads/car/3331.jpg');
INSERT INTO `cys_car_category` VALUES ('432', '200', '标致508(进口)', '', '1', '0', '1514129125', '0', '0', '2191', 'uploads/car/2191.jpg');
INSERT INTO `cys_car_category` VALUES ('433', '200', '标致608', '', '1', '0', '1514129125', '0', '0', '3338', 'uploads/car/3338.jpg');
INSERT INTO `cys_car_category` VALUES ('434', '200', '标致HX1', '', '1', '0', '1514129125', '0', '0', '2404', 'uploads/car/2404.jpg');
INSERT INTO `cys_car_category` VALUES ('435', '200', 'Urban Crossover', '', '1', '0', '1514129126', '0', '0', '2801', 'uploads/car/2801.jpg');
INSERT INTO `cys_car_category` VALUES ('436', '200', '标致2008(海外)', '', '1', '0', '1514129126', '0', '0', '2891', 'uploads/car/2891.jpg');
INSERT INTO `cys_car_category` VALUES ('437', '200', 'Quartz', '', '1', '0', '1514129126', '0', '0', '3614', 'uploads/car/3614.jpg');
INSERT INTO `cys_car_category` VALUES ('438', '200', '标致3008(进口)', '', '1', '0', '1514129126', '0', '0', '724', 'uploads/car/724.jpg');
INSERT INTO `cys_car_category` VALUES ('439', '200', '标致5008(海外)', '', '1', '0', '1514129127', '0', '0', '4193', 'uploads/car/4193.jpg');
INSERT INTO `cys_car_category` VALUES ('440', '200', '标致6008', '', '1', '0', '1514129127', '0', '0', '3319', 'uploads/car/3319.jpg');
INSERT INTO `cys_car_category` VALUES ('441', '200', '标致SXC', '', '1', '0', '1514129127', '0', '0', '2315', 'uploads/car/2315.jpg');
INSERT INTO `cys_car_category` VALUES ('442', '200', 'Partner', '', '1', '0', '1514129127', '0', '0', '3734', 'uploads/car/3734.jpg');
INSERT INTO `cys_car_category` VALUES ('443', '200', '标致5008经典', '', '1', '0', '1514129128', '0', '0', '861', 'uploads/car/861.jpg');
INSERT INTO `cys_car_category` VALUES ('444', '200', 'L500 R HYBRID', '', '1', '0', '1514129128', '0', '0', '4140', 'uploads/car/4140.jpg');
INSERT INTO `cys_car_category` VALUES ('445', '200', 'ONYX', '', '1', '0', '1514129128', '0', '0', '2892', 'uploads/car/2892.jpg');
INSERT INTO `cys_car_category` VALUES ('446', '200', 'Vision Gran Turismo', '', '1', '0', '1514129128', '0', '0', '3831', 'uploads/car/3831.jpg');
INSERT INTO `cys_car_category` VALUES ('447', '200', '标致RCZ', '', '1', '0', '1514129129', '0', '0', '2047', 'uploads/car/2047.jpg');
INSERT INTO `cys_car_category` VALUES ('448', '200', 'TRAVELLER', '', '1', '0', '1514129129', '0', '0', '3974', 'uploads/car/3974.jpg');
INSERT INTO `cys_car_category` VALUES ('449', '200', 'Pick Up', '', '1', '0', '1514129129', '0', '0', '4476', 'uploads/car/4476.jpg');
INSERT INTO `cys_car_category` VALUES ('450', '200', '标致BB1', '', '1', '0', '1514129129', '0', '0', '924', 'uploads/car/924.jpg');
INSERT INTO `cys_car_category` VALUES ('451', '200', '标致iOn', '', '1', '0', '1514129130', '0', '0', '2204', 'uploads/car/2204.jpg');
INSERT INTO `cys_car_category` VALUES ('452', '200', '标致206(进口)', '', '1', '0', '1514129130', '0', '0', '184', 'uploads/car/184.jpg');
INSERT INTO `cys_car_category` VALUES ('453', '200', '标致207(进口)', '', '1', '0', '1514129130', '0', '0', '640', 'uploads/car/640.jpg');
INSERT INTO `cys_car_category` VALUES ('454', '200', '标致307(进口)', '', '1', '0', '1514129132', '0', '0', '277', 'uploads/car/277.jpg');
INSERT INTO `cys_car_category` VALUES ('455', '200', '5 by Peugeot', '', '1', '0', '1514129133', '0', '0', '2064', 'uploads/car/2064.jpg');
INSERT INTO `cys_car_category` VALUES ('456', '200', '标致407', '', '1', '0', '1514129133', '0', '0', '185', 'uploads/car/185.jpg');
INSERT INTO `cys_car_category` VALUES ('457', '200', '标致607', '', '1', '0', '1514129134', '0', '0', '186', 'uploads/car/186.jpg');
INSERT INTO `cys_car_category` VALUES ('458', '200', '标致HR1', '', '1', '0', '1514129134', '0', '0', '2216', 'uploads/car/2216.jpg');
INSERT INTO `cys_car_category` VALUES ('459', '200', '标致4007', '', '1', '0', '1514129134', '0', '0', '949', 'uploads/car/949.jpg');
INSERT INTO `cys_car_category` VALUES ('460', '200', '标致4008(进口)', '', '1', '0', '1514129134', '0', '0', '2472', 'uploads/car/2472.jpg');
INSERT INTO `cys_car_category` VALUES ('461', '200', '标致807', '', '1', '0', '1514129135', '0', '0', '2030', 'uploads/car/2030.jpg');
INSERT INTO `cys_car_category` VALUES ('462', '200', '标致EX1', '', '1', '0', '1514129135', '0', '0', '2210', 'uploads/car/2210.jpg');
INSERT INTO `cys_car_category` VALUES ('463', '200', '标致SR1', '', '1', '0', '1514129135', '0', '0', '2038', 'uploads/car/2038.jpg');
INSERT INTO `cys_car_category` VALUES ('464', '15', 'Panamera', '', '1', '0', '1514129135', '2338000', '1088000', '703', 'uploads/car/703.jpg');
INSERT INTO `cys_car_category` VALUES ('465', '15', 'Panamera新能源', '', '1', '0', '1514129136', '2738000', '1408000', '4322', 'uploads/car/4322.jpg');
INSERT INTO `cys_car_category` VALUES ('466', '15', 'Macan', '', '1', '0', '1514129136', '1124100', '588000', '2838', 'uploads/car/2838.jpg');
INSERT INTO `cys_car_category` VALUES ('467', '15', 'Cayenne', '', '1', '0', '1514129136', '2839000', '888000', '172', 'uploads/car/172.jpg');
INSERT INTO `cys_car_category` VALUES ('468', '15', 'Cayenne新能源', '', '1', '0', '1514129140', '1088000', '1088000', '4324', 'uploads/car/4324.jpg');
INSERT INTO `cys_car_category` VALUES ('469', '15', '保时捷718', '', '1', '0', '1514129140', '858000', '588000', '4175', 'uploads/car/4175.jpg');
INSERT INTO `cys_car_category` VALUES ('470', '15', '保时捷911', '', '1', '0', '1514129140', '3358000', '1318000', '162', 'uploads/car/162.jpg');
INSERT INTO `cys_car_category` VALUES ('471', '15', 'Cayman', '', '1', '0', '1514129140', '1118000', '727000', '415', 'uploads/car/415.jpg');
INSERT INTO `cys_car_category` VALUES ('472', '15', 'Mission E', '', '1', '0', '1514129141', '0', '0', '3917', 'uploads/car/3917.jpg');
INSERT INTO `cys_car_category` VALUES ('473', '15', 'Pajun', '', '1', '0', '1514129141', '0', '0', '3380', 'uploads/car/3380.jpg');
INSERT INTO `cys_car_category` VALUES ('474', '15', '919 Hybrid', '', '1', '0', '1514129141', '0', '0', '3401', 'uploads/car/3401.jpg');
INSERT INTO `cys_car_category` VALUES ('475', '15', '918 Spyder', '', '1', '0', '1514129142', '0', '0', '2073', 'uploads/car/2073.jpg');
INSERT INTO `cys_car_category` VALUES ('476', '15', 'Boxster', '', '1', '0', '1514129142', '0', '0', '168', 'uploads/car/168.jpg');
INSERT INTO `cys_car_category` VALUES ('477', '15', 'Carrera GT', '', '1', '0', '1514129142', '0', '0', '393', 'uploads/car/393.jpg');
INSERT INTO `cys_car_category` VALUES ('478', '15', '保时捷356', '', '1', '0', '1514129143', '0', '0', '3423', 'uploads/car/3423.jpg');
INSERT INTO `cys_car_category` VALUES ('479', '15', '保时捷968', '', '1', '0', '1514129143', '0', '0', '3572', 'uploads/car/3572.jpg');
INSERT INTO `cys_car_category` VALUES ('480', '201', '北京(BJ)20', '', '1', '0', '1514129143', '139800', '96800', '3800', 'uploads/car/3800.jpg');
INSERT INTO `cys_car_category` VALUES ('481', '201', '北京BJ40', '', '1', '0', '1514129144', '179800', '129800', '623', 'uploads/car/623.jpg');
INSERT INTO `cys_car_category` VALUES ('482', '201', '北京BJ80', '', '1', '0', '1514129144', '318000', '283000', '2852', 'uploads/car/2852.jpg');
INSERT INTO `cys_car_category` VALUES ('483', '201', 'concept500', '', '1', '0', '1514129144', '0', '0', '3129', 'uploads/car/3129.jpg');
INSERT INTO `cys_car_category` VALUES ('484', '201', '北京BJ100', '', '1', '0', '1514129144', '0', '0', '3473', 'uploads/car/3473.jpg');
INSERT INTO `cys_car_category` VALUES ('485', '201', '北京BJ90', '', '1', '0', '1514129145', '0', '0', '3972', 'uploads/car/3972.jpg');
INSERT INTO `cys_car_category` VALUES ('486', '201', 'concept900', '', '1', '0', '1514129145', '0', '0', '3130', 'uploads/car/3130.jpg');
INSERT INTO `cys_car_category` VALUES ('487', '201', '北京汽车E系列', '', '1', '0', '1514129145', '0', '0', '2252', 'uploads/car/2252.jpg');
INSERT INTO `cys_car_category` VALUES ('488', '201', '北京汽车C70', '', '1', '0', '1514129148', '0', '0', '2169', 'uploads/car/2169.jpg');
INSERT INTO `cys_car_category` VALUES ('489', '201', '北京汽车C60F', '', '1', '0', '1514129148', '0', '0', '2790', 'uploads/car/2790.jpg');
INSERT INTO `cys_car_category` VALUES ('490', '201', '北京汽车T60', '', '1', '0', '1514129148', '0', '0', '2346', 'uploads/car/2346.jpg');
INSERT INTO `cys_car_category` VALUES ('491', '201', '北京汽车C90L', '', '1', '0', '1514129149', '0', '0', '2798', 'uploads/car/2798.jpg');
INSERT INTO `cys_car_category` VALUES ('492', '201', '北京汽车B61', '', '1', '0', '1514129149', '0', '0', '2127', 'uploads/car/2127.jpg');
INSERT INTO `cys_car_category` VALUES ('493', '201', '北京汽车B70', '', '1', '0', '1514129149', '0', '0', '2327', 'uploads/car/2327.jpg');
INSERT INTO `cys_car_category` VALUES ('494', '201', '北京汽车B90', '', '1', '0', '1514129149', '0', '0', '2132', 'uploads/car/2132.jpg');
INSERT INTO `cys_car_category` VALUES ('495', '23', '北汽幻速S5-EV', '', '1', '0', '1514129150', '0', '0', '4494', 'uploads/car/4494.jpg');
INSERT INTO `cys_car_category` VALUES ('496', '23', '北汽幻速H6-EV', '', '1', '0', '1514129150', '0', '0', '4019', 'uploads/car/4019.jpg');
INSERT INTO `cys_car_category` VALUES ('497', '202', '北汽幻速S2', '', '1', '0', '1514129151', '60800', '51800', '3284', 'uploads/car/3284.jpg');
INSERT INTO `cys_car_category` VALUES ('498', '202', '北汽幻速S3', '', '1', '0', '1514129151', '69800', '53800', '3361', 'uploads/car/3361.jpg');
INSERT INTO `cys_car_category` VALUES ('499', '202', '北汽幻速S5', '', '1', '0', '1514129151', '85800', '59800', '4276', 'uploads/car/4276.jpg');
INSERT INTO `cys_car_category` VALUES ('500', '202', '北汽幻速S6', '', '1', '0', '1514129151', '116800', '88800', '3426', 'uploads/car/3426.jpg');
INSERT INTO `cys_car_category` VALUES ('501', '202', '北汽幻速S7', '', '1', '0', '1514129152', '115800', '78800', '4502', 'uploads/car/4502.jpg');
INSERT INTO `cys_car_category` VALUES ('502', '202', '北汽幻速H3', '', '1', '0', '1514129152', '67800', '55800', '3874', 'uploads/car/3874.jpg');
INSERT INTO `cys_car_category` VALUES ('503', '202', '北汽幻速H2', '', '1', '0', '1514129152', '66800', '39800', '3661', 'uploads/car/3661.jpg');
INSERT INTO `cys_car_category` VALUES ('504', '202', '北汽幻速H2V', '', '1', '0', '1514129152', '39800', '35800', '4137', 'uploads/car/4137.jpg');
INSERT INTO `cys_car_category` VALUES ('505', '202', '北汽幻速H6', '', '1', '0', '1514129153', '75800', '59800', '3714', 'uploads/car/3714.jpg');
INSERT INTO `cys_car_category` VALUES ('506', '202', '北汽幻速H5', '', '1', '0', '1514129153', '0', '0', '4310', 'uploads/car/4310.jpg');
INSERT INTO `cys_car_category` VALUES ('507', '203', '奔腾B30', '', '1', '0', '1514129153', '92800', '65800', '3695', 'uploads/car/3695.jpg');
INSERT INTO `cys_car_category` VALUES ('508', '203', '奔腾B50', '', '1', '0', '1514129154', '117800', '81800', '632', 'uploads/car/632.jpg');
INSERT INTO `cys_car_category` VALUES ('509', '203', '奔腾B70', '', '1', '0', '1514129154', '149800', '99800', '466', 'uploads/car/466.jpg');
INSERT INTO `cys_car_category` VALUES ('510', '203', '奔腾B90', '', '1', '0', '1514129154', '199800', '145800', '2310', 'uploads/car/2310.jpg');
INSERT INTO `cys_car_category` VALUES ('511', '203', '奔腾X40', '', '1', '0', '1514129154', '101800', '66800', '4069', 'uploads/car/4069.jpg');
INSERT INTO `cys_car_category` VALUES ('512', '203', '奔腾X80', '', '1', '0', '1514129155', '147800', '99800', '3000', 'uploads/car/3000.jpg');
INSERT INTO `cys_car_category` VALUES ('513', '203', '奔腾B30EV', '', '1', '0', '1514129155', '0', '0', '4584', 'uploads/car/4584.jpg');
INSERT INTO `cys_car_category` VALUES ('514', '203', '奔腾X4', '', '1', '0', '1514129155', '0', '0', '4117', 'uploads/car/4117.jpg');
INSERT INTO `cys_car_category` VALUES ('515', '203', '奔腾X6', '', '1', '0', '1514129156', '0', '0', '4114', 'uploads/car/4114.jpg');
INSERT INTO `cys_car_category` VALUES ('516', '203', '奔腾X70', '', '1', '0', '1514129156', '0', '0', '3579', 'uploads/car/3579.jpg');
INSERT INTO `cys_car_category` VALUES ('517', '204', '宝沃BX5', '', '1', '0', '1514129156', '219800', '123800', '4046', 'uploads/car/4046.jpg');
INSERT INTO `cys_car_category` VALUES ('518', '204', '宝沃BX7', '', '1', '0', '1514129157', '326800', '169800', '3913', 'uploads/car/3913.jpg');
INSERT INTO `cys_car_category` VALUES ('519', '204', '宝沃BX6', '', '1', '0', '1514129157', '0', '0', '4520', 'uploads/car/4520.jpg');
INSERT INTO `cys_car_category` VALUES ('520', '204', '宝沃BX6 TS', '', '1', '0', '1514129157', '0', '0', '4047', 'uploads/car/4047.jpg');
INSERT INTO `cys_car_category` VALUES ('521', '204', '宝沃BXi7', '', '1', '0', '1514129157', '0', '0', '4403', 'uploads/car/4403.jpg');
INSERT INTO `cys_car_category` VALUES ('522', '205', 'Isabella', '', '1', '0', '1514129158', '0', '0', '3757', 'uploads/car/3757.jpg');
INSERT INTO `cys_car_category` VALUES ('523', '201', '绅宝D20', '', '1', '0', '1514129158', '82800', '48800', '3557', 'uploads/car/3557.jpg');
INSERT INTO `cys_car_category` VALUES ('524', '201', '绅宝D50', '', '1', '0', '1514129159', '113800', '67900', '2791', 'uploads/car/2791.jpg');
INSERT INTO `cys_car_category` VALUES ('525', '201', '绅宝X25', '', '1', '0', '1514129159', '75800', '55800', '3839', 'uploads/car/3839.jpg');
INSERT INTO `cys_car_category` VALUES ('526', '201', '绅宝X35', '', '1', '0', '1514129159', '88800', '65800', '3928', 'uploads/car/3928.jpg');
INSERT INTO `cys_car_category` VALUES ('527', '201', '绅宝X55', '', '1', '0', '1514129160', '119800', '76800', '3795', 'uploads/car/3795.jpg');
INSERT INTO `cys_car_category` VALUES ('528', '201', '绅宝X65', '', '1', '0', '1514129160', '149800', '98800', '3417', 'uploads/car/3417.jpg');
INSERT INTO `cys_car_category` VALUES ('529', '201', '绅宝CC', '', '1', '0', '1514129162', '149800', '99800', '3794', 'uploads/car/3794.jpg');
INSERT INTO `cys_car_category` VALUES ('530', '201', '绅宝D80', '', '1', '0', '1514129163', '268800', '204800', '3673', 'uploads/car/3673.jpg');
INSERT INTO `cys_car_category` VALUES ('531', '201', '绅宝OffSpace', '', '1', '0', '1514129163', '0', '0', '4110', 'uploads/car/4110.jpg');
INSERT INTO `cys_car_category` VALUES ('532', '201', '绅宝D60', '', '1', '0', '1514129163', '0', '0', '3427', 'uploads/car/3427.jpg');
INSERT INTO `cys_car_category` VALUES ('533', '201', '绅宝D70', '', '1', '0', '1514129163', '0', '0', '2787', 'uploads/car/2787.jpg');
INSERT INTO `cys_car_category` VALUES ('534', '21', '慕尚', '', '1', '0', '1514129164', '5558000', '4950000', '901', 'uploads/car/901.jpg');
INSERT INTO `cys_car_category` VALUES ('535', '21', '飞驰', '', '1', '0', '1514129164', '4358000', '2780000', '3014', 'uploads/car/3014.jpg');
INSERT INTO `cys_car_category` VALUES ('536', '21', '添越', '', '1', '0', '1514129164', '4800000', '3980000', '2685', 'uploads/car/2685.jpg');
INSERT INTO `cys_car_category` VALUES ('537', '21', '欧陆', '', '1', '0', '1514129165', '4598000', '2880000', '305', 'uploads/car/305.jpg');
INSERT INTO `cys_car_category` VALUES ('538', '21', 'EXP 10 Speed 6', '', '1', '0', '1514129165', '0', '0', '3739', 'uploads/car/3739.jpg');
INSERT INTO `cys_car_category` VALUES ('539', '21', 'EXP 12 Speed 6e', '', '1', '0', '1514129165', '0', '0', '4363', 'uploads/car/4363.jpg');
INSERT INTO `cys_car_category` VALUES ('540', '21', 'Grand Convertible', '', '1', '0', '1514129165', '0', '0', '3668', 'uploads/car/3668.jpg');
INSERT INTO `cys_car_category` VALUES ('541', '21', 'Brooklands', '', '1', '0', '1514129166', '0', '0', '1013', 'uploads/car/1013.jpg');
INSERT INTO `cys_car_category` VALUES ('542', '21', '雅骏', '', '1', '0', '1514129166', '0', '0', '1012', 'uploads/car/1012.jpg');
INSERT INTO `cys_car_category` VALUES ('543', '21', '雅致', '', '1', '0', '1514129166', '0', '0', '306', 'uploads/car/306.jpg');
INSERT INTO `cys_car_category` VALUES ('544', '21', 'Hunaudières', '', '1', '0', '1514129167', '0', '0', '3569', 'uploads/car/3569.jpg');
INSERT INTO `cys_car_category` VALUES ('545', '22', '比速T3', '', '1', '0', '1514129168', '89900', '74900', '4164', 'uploads/car/4164.jpg');
INSERT INTO `cys_car_category` VALUES ('546', '22', '比速T5', '', '1', '0', '1514129168', '104900', '72900', '4298', 'uploads/car/4298.jpg');
INSERT INTO `cys_car_category` VALUES ('547', '22', '比速M3', '', '1', '0', '1514129168', '83900', '61900', '4173', 'uploads/car/4173.jpg');
INSERT INTO `cys_car_category` VALUES ('548', '23', 'EC系列', '', '1', '0', '1514129169', '164800', '151800', '4264', 'uploads/car/4264.jpg');
INSERT INTO `cys_car_category` VALUES ('549', '23', 'EV系列', '', '1', '0', '1514129169', '189900', '158900', '3533', 'uploads/car/3533.jpg');
INSERT INTO `cys_car_category` VALUES ('550', '23', 'EU系列', '', '1', '0', '1514129169', '224900', '205900', '3884', 'uploads/car/3884.jpg');
INSERT INTO `cys_car_category` VALUES ('551', '23', 'EH系列', '', '1', '0', '1514129170', '355800', '345800', '4104', 'uploads/car/4104.jpg');
INSERT INTO `cys_car_category` VALUES ('552', '23', 'EX系列', '', '1', '0', '1514129170', '202900', '192900', '4015', 'uploads/car/4015.jpg');
INSERT INTO `cys_car_category` VALUES ('553', '23', '北汽新能源C90EV', '', '1', '0', '1514129170', '0', '0', '3630', 'uploads/car/3630.jpg');
INSERT INTO `cys_car_category` VALUES ('554', '23', '北汽新能源D80EV', '', '1', '0', '1514129170', '0', '0', '4018', 'uploads/car/4018.jpg');
INSERT INTO `cys_car_category` VALUES ('555', '23', '北汽新能源ET400', '', '1', '0', '1514129171', '0', '0', '4620', 'uploads/car/4620.jpg');
INSERT INTO `cys_car_category` VALUES ('556', '23', '北汽新能源EX400L', '', '1', '0', '1514129171', '0', '0', '4426', 'uploads/car/4426.jpg');
INSERT INTO `cys_car_category` VALUES ('557', '23', '北汽新能源EX300L', '', '1', '0', '1514129171', '0', '0', '4103', 'uploads/car/4103.jpg');
INSERT INTO `cys_car_category` VALUES ('558', '23', '北汽新能源EX', '', '1', '0', '1514129171', '0', '0', '3810', 'uploads/car/3810.jpg');
INSERT INTO `cys_car_category` VALUES ('559', '23', '北汽新能源ES210', '', '1', '0', '1514129172', '0', '0', '3537', 'uploads/car/3537.jpg');
INSERT INTO `cys_car_category` VALUES ('560', '206', '战旗', '', '1', '0', '1514129172', '80800', '73600', '965', 'uploads/car/965.jpg');
INSERT INTO `cys_car_category` VALUES ('561', '206', 'BJ 212', '', '1', '0', '1514129173', '70300', '68400', '3035', 'uploads/car/3035.jpg');
INSERT INTO `cys_car_category` VALUES ('562', '206', '北京BW007', '', '1', '0', '1514129173', '107800', '82800', '2126', 'uploads/car/2126.jpg');
INSERT INTO `cys_car_category` VALUES ('563', '206', '勇士', '', '1', '0', '1514129173', '149600', '130900', '622', 'uploads/car/622.jpg');
INSERT INTO `cys_car_category` VALUES ('564', '206', '陆霸', '', '1', '0', '1514129173', '172800', '152800', '966', 'uploads/car/966.jpg');
INSERT INTO `cys_car_category` VALUES ('565', '206', '越铃', '', '1', '0', '1514129174', '75800', '51700', '2960', 'uploads/car/2960.jpg');
INSERT INTO `cys_car_category` VALUES ('566', '206', '锐铃', '', '1', '0', '1514129174', '122800', '71600', '2915', 'uploads/car/2915.jpg');
INSERT INTO `cys_car_category` VALUES ('567', '206', '战旗皮卡', '', '1', '0', '1514129174', '77700', '57800', '3221', 'uploads/car/3221.jpg');
INSERT INTO `cys_car_category` VALUES ('568', '206', '勇士皮卡', '', '1', '0', '1514129175', '0', '0', '4586', 'uploads/car/4586.jpg');
INSERT INTO `cys_car_category` VALUES ('569', '206', '骑士S12', '', '1', '0', '1514129177', '0', '0', '852', 'uploads/car/852.jpg');
INSERT INTO `cys_car_category` VALUES ('570', '206', '陆铃', '', '1', '0', '1514129177', '64800', '64800', '2959', 'uploads/car/2959.jpg');
INSERT INTO `cys_car_category` VALUES ('571', '201', '北汽威旺S50', '', '1', '0', '1514129178', '120800', '79800', '4009', 'uploads/car/4009.jpg');
INSERT INTO `cys_car_category` VALUES ('572', '201', '北汽威旺M50F', '', '1', '0', '1514129178', '86800', '55800', '4154', 'uploads/car/4154.jpg');
INSERT INTO `cys_car_category` VALUES ('573', '201', '北汽威旺M60', '', '1', '0', '1514129178', '98800', '66800', '4553', 'uploads/car/4553.jpg');
INSERT INTO `cys_car_category` VALUES ('574', '201', '北汽威旺306', '', '1', '0', '1514129178', '190000', '31800', '2482', 'uploads/car/2482.jpg');
INSERT INTO `cys_car_category` VALUES ('575', '201', '北汽威旺M20', '', '1', '0', '1514129179', '63800', '36800', '3191', 'uploads/car/3191.jpg');
INSERT INTO `cys_car_category` VALUES ('576', '201', '北汽威旺M30', '', '1', '0', '1514129179', '55800', '44300', '3916', 'uploads/car/3916.jpg');
INSERT INTO `cys_car_category` VALUES ('577', '201', '北汽威旺M35', '', '1', '0', '1514129179', '60800', '53300', '4061', 'uploads/car/4061.jpg');
INSERT INTO `cys_car_category` VALUES ('578', '201', '北汽威旺T205-D', '', '1', '0', '1514129179', '34000', '29800', '3428', 'uploads/car/3428.jpg');
INSERT INTO `cys_car_category` VALUES ('579', '201', '北汽威旺307', '', '1', '0', '1514129180', '51800', '43800', '3231', 'uploads/car/3231.jpg');
INSERT INTO `cys_car_category` VALUES ('580', '201', '北汽威旺BQ5', '', '1', '0', '1514129180', '0', '0', '4492', 'uploads/car/4492.jpg');
INSERT INTO `cys_car_category` VALUES ('581', '201', '北汽威旺205', '', '1', '0', '1514129180', '40800', '29800', '2943', 'uploads/car/2943.jpg');
INSERT INTO `cys_car_category` VALUES ('582', '206', '北汽007', '', '1', '0', '1514129180', '107800', '82800', '3712', 'uploads/car/3712.jpg');
INSERT INTO `cys_car_category` VALUES ('583', '23', '北汽威旺307EV', '', '1', '0', '1514129181', '0', '0', '4016', 'uploads/car/4016.jpg');
INSERT INTO `cys_car_category` VALUES ('584', '23', '北汽威旺608EV', '', '1', '0', '1514129181', '0', '0', '4017', 'uploads/car/4017.jpg');
INSERT INTO `cys_car_category` VALUES ('585', '26', '巴博斯 smart forfour', '', '1', '0', '1514129181', '238000', '238000', '4261', 'uploads/car/4261.jpg');
INSERT INTO `cys_car_category` VALUES ('586', '26', '巴博斯 smart fortwo', '', '1', '0', '1514129182', '329900', '228000', '2683', 'uploads/car/2683.jpg');
INSERT INTO `cys_car_category` VALUES ('587', '26', '巴博斯 SLK级', '', '1', '0', '1514129182', '620000', '620000', '2446', 'uploads/car/2446.jpg');
INSERT INTO `cys_car_category` VALUES ('588', '26', '巴博斯 A级', '', '1', '0', '1514129182', '0', '0', '2928', 'uploads/car/2928.jpg');
INSERT INTO `cys_car_category` VALUES ('589', '26', '巴博斯 B级', '', '1', '0', '1514129182', '0', '0', '2657', 'uploads/car/2657.jpg');
INSERT INTO `cys_car_category` VALUES ('590', '26', '巴博斯 C级', '', '1', '0', '1514129183', '0', '0', '3804', 'uploads/car/3804.jpg');
INSERT INTO `cys_car_category` VALUES ('591', '26', '巴博斯 CLS级', '', '1', '0', '1514129183', '0', '0', '2447', 'uploads/car/2447.jpg');
INSERT INTO `cys_car_category` VALUES ('592', '26', '巴博斯 E级', '', '1', '0', '1514129183', '0', '0', '2461', 'uploads/car/2461.jpg');
INSERT INTO `cys_car_category` VALUES ('593', '26', '巴博斯 S级', '', '1', '0', '1514129183', '0', '0', '2444', 'uploads/car/2444.jpg');
INSERT INTO `cys_car_category` VALUES ('594', '26', '巴博斯 GLA级', '', '1', '0', '1514129184', '0', '0', '3519', 'uploads/car/3519.jpg');
INSERT INTO `cys_car_category` VALUES ('595', '26', '巴博斯 G级', '', '1', '0', '1514129184', '0', '0', '2809', 'uploads/car/2809.jpg');
INSERT INTO `cys_car_category` VALUES ('596', '26', '巴博斯 M级', '', '1', '0', '1514129221', '0', '0', '2575', 'uploads/car/2575.jpg');
INSERT INTO `cys_car_category` VALUES ('597', '26', '巴博斯 GL级', '', '1', '0', '1514129221', '0', '0', '2947', 'uploads/car/2947.jpg');
INSERT INTO `cys_car_category` VALUES ('598', '26', '巴博斯 CL级', '', '1', '0', '1514129221', '0', '0', '2554', 'uploads/car/2554.jpg');
INSERT INTO `cys_car_category` VALUES ('599', '26', '巴博斯 SLS级', '', '1', '0', '1514129221', '0', '0', '2448', 'uploads/car/2448.jpg');
INSERT INTO `cys_car_category` VALUES ('600', '26', '巴博斯 SL级', '', '1', '0', '1514129222', '0', '0', '2460', 'uploads/car/2460.jpg');
INSERT INTO `cys_car_category` VALUES ('601', '27', 'Chiron', '', '1', '0', '1514129222', '0', '0', '3889', 'uploads/car/3889.jpg');
INSERT INTO `cys_car_category` VALUES ('602', '27', 'Vision GT', '', '1', '0', '1514129222', '0', '0', '3919', 'uploads/car/3919.jpg');
INSERT INTO `cys_car_category` VALUES ('603', '27', '威航', '', '1', '0', '1514129223', '0', '0', '390', 'uploads/car/390.jpg');
INSERT INTO `cys_car_category` VALUES ('604', '27', 'Galibier', '', '1', '0', '1514129223', '0', '0', '920', 'uploads/car/920.jpg');
INSERT INTO `cys_car_category` VALUES ('605', '207', '道达V8', '', '1', '0', '1514129223', '0', '0', '4511', 'uploads/car/4511.jpg');
INSERT INTO `cys_car_category` VALUES ('606', '208', '奔奔', '', '1', '0', '1514129224', '56900', '44900', '3217', 'uploads/car/3217.jpg');
INSERT INTO `cys_car_category` VALUES ('607', '208', '奔奔EV', '', '1', '0', '1514129224', '171800', '154800', '4380', 'uploads/car/4380.jpg');
INSERT INTO `cys_car_category` VALUES ('608', '208', '长安CX20', '', '1', '0', '1514129225', '65900', '56900', '2119', 'uploads/car/2119.jpg');
INSERT INTO `cys_car_category` VALUES ('609', '208', '悦翔V5', '', '1', '0', '1514129225', '75900', '61900', '2788', 'uploads/car/2788.jpg');
INSERT INTO `cys_car_category` VALUES ('610', '208', '悦翔V3', '', '1', '0', '1514129225', '49900', '43900', '2567', 'uploads/car/2567.jpg');
INSERT INTO `cys_car_category` VALUES ('611', '208', '逸动', '', '1', '0', '1514129225', '96900', '69900', '2429', 'uploads/car/2429.jpg');
INSERT INTO `cys_car_category` VALUES ('612', '208', '逸动新能源', '', '1', '0', '1514129226', '249900', '160900', '4343', 'uploads/car/4343.jpg');
INSERT INTO `cys_car_category` VALUES ('613', '208', '悦翔V7', '', '1', '0', '1514129226', '79900', '52900', '3422', 'uploads/car/3422.jpg');
INSERT INTO `cys_car_category` VALUES ('614', '208', '睿骋', '', '1', '0', '1514129226', '201800', '108800', '2785', 'uploads/car/2785.jpg');
INSERT INTO `cys_car_category` VALUES ('615', '208', '睿骋CC', '', '1', '0', '1514129226', '138900', '89900', '3811', 'uploads/car/3811.jpg');
INSERT INTO `cys_car_category` VALUES ('616', '208', '长安CS15', '', '1', '0', '1514129227', '75400', '53900', '3924', 'uploads/car/3924.jpg');
INSERT INTO `cys_car_category` VALUES ('617', '208', '长安CS15EV', '', '1', '0', '1514129227', '196400', '189400', '4445', 'uploads/car/4445.jpg');
INSERT INTO `cys_car_category` VALUES ('618', '208', '长安CS35', '', '1', '0', '1514129227', '92900', '68900', '2778', 'uploads/car/2778.jpg');
INSERT INTO `cys_car_category` VALUES ('619', '208', '长安CS55', '', '1', '0', '1514129227', '132900', '83900', '4269', 'uploads/car/4269.jpg');
INSERT INTO `cys_car_category` VALUES ('620', '208', '长安CS75', '', '1', '0', '1514129228', '184800', '79800', '3204', 'uploads/car/3204.jpg');
INSERT INTO `cys_car_category` VALUES ('621', '208', '长安CS95', '', '1', '0', '1514129228', '229800', '159800', '3121', 'uploads/car/3121.jpg');
INSERT INTO `cys_car_category` VALUES ('622', '208', '凌轩', '', '1', '0', '1514129228', '110900', '67900', '4242', 'uploads/car/4242.jpg');
INSERT INTO `cys_car_category` VALUES ('623', '208', 'CINTURX', '', '1', '0', '1514129229', '0', '0', '2965', 'uploads/car/2965.jpg');
INSERT INTO `cys_car_category` VALUES ('624', '208', '长安E30', '', '1', '0', '1514129229', '0', '0', '3120', 'uploads/car/3120.jpg');
INSERT INTO `cys_car_category` VALUES ('625', '208', '逸动DT', '', '1', '0', '1514129229', '0', '0', '4588', 'uploads/car/4588.jpg');
INSERT INTO `cys_car_category` VALUES ('626', '208', '极流', '', '1', '0', '1514129229', '0', '0', '4390', 'uploads/car/4390.jpg');
INSERT INTO `cys_car_category` VALUES ('627', '208', '御岳', '', '1', '0', '1514129230', '0', '0', '4391', 'uploads/car/4391.jpg');
INSERT INTO `cys_car_category` VALUES ('628', '208', '长安VOSS', '', '1', '0', '1514129230', '0', '0', '2316', 'uploads/car/2316.jpg');
INSERT INTO `cys_car_category` VALUES ('629', '208', '奔奔i', '', '1', '0', '1514129230', '0', '0', '484', 'uploads/car/484.jpg');
INSERT INTO `cys_car_category` VALUES ('630', '208', '奔奔LOVE', '', '1', '0', '1514129230', '0', '0', '2046', 'uploads/car/2046.jpg');
INSERT INTO `cys_car_category` VALUES ('631', '208', '奔奔MINI', '', '1', '0', '1514129231', '0', '0', '2045', 'uploads/car/2045.jpg');
INSERT INTO `cys_car_category` VALUES ('632', '208', '悦翔', '', '1', '0', '1514129231', '0', '0', '705', 'uploads/car/705.jpg');
INSERT INTO `cys_car_category` VALUES ('633', '208', '长安CX30', '', '1', '0', '1514129231', '0', '0', '1008', 'uploads/car/1008.jpg');
INSERT INTO `cys_car_category` VALUES ('634', '208', '长安V802', '', '1', '0', '1514129232', '0', '0', '619', 'uploads/car/619.jpg');
INSERT INTO `cys_car_category` VALUES ('635', '208', '志翔', '', '1', '0', '1514129232', '0', '0', '590', 'uploads/car/590.jpg');
INSERT INTO `cys_car_category` VALUES ('636', '208', '杰勋', '', '1', '0', '1514129232', '0', '0', '520', 'uploads/car/520.jpg');
INSERT INTO `cys_car_category` VALUES ('637', '208', '欧尚X70A', '', '1', '0', '1514129232', '0', '0', '4517', 'uploads/car/4517.jpg');
INSERT INTO `cys_car_category` VALUES ('638', '208', '奔奔mini-e', '', '1', '0', '1514129233', '85800', '82800', '4480', 'uploads/car/4480.jpg');
INSERT INTO `cys_car_category` VALUES ('639', '208', '欧力威', '', '1', '0', '1514129233', '65900', '39800', '2954', 'uploads/car/2954.jpg');
INSERT INTO `cys_car_category` VALUES ('640', '208', '欧力威EV', '', '1', '0', '1514129236', '158000', '158000', '4499', 'uploads/car/4499.jpg');
INSERT INTO `cys_car_category` VALUES ('641', '208', '长安CX70', '', '1', '0', '1514129236', '109900', '59900', '3893', 'uploads/car/3893.jpg');
INSERT INTO `cys_car_category` VALUES ('642', '208', '欧尚', '', '1', '0', '1514129236', '70900', '56900', '3783', 'uploads/car/3783.jpg');
INSERT INTO `cys_car_category` VALUES ('643', '208', '欧尚A800', '', '1', '0', '1514129236', '119900', '59900', '4376', 'uploads/car/4376.jpg');
INSERT INTO `cys_car_category` VALUES ('644', '208', '长安之星', '', '1', '0', '1514129237', '50900', '25000', '2600', 'uploads/car/2600.jpg');
INSERT INTO `cys_car_category` VALUES ('645', '208', '长安之星2', '', '1', '0', '1514129237', '46800', '31900', '2605', 'uploads/car/2605.jpg');
INSERT INTO `cys_car_category` VALUES ('646', '208', '长安之星3', '', '1', '0', '1514129237', '39900', '29900', '3526', 'uploads/car/3526.jpg');
INSERT INTO `cys_car_category` VALUES ('647', '208', '长安之星7', '', '1', '0', '1514129237', '40900', '36900', '3514', 'uploads/car/3514.jpg');
INSERT INTO `cys_car_category` VALUES ('648', '208', '长安之星9', '', '1', '0', '1514129238', '56000', '47800', '3685', 'uploads/car/3685.jpg');
INSERT INTO `cys_car_category` VALUES ('649', '208', '欧诺', '', '1', '0', '1514129238', '60900', '35900', '2566', 'uploads/car/2566.jpg');
INSERT INTO `cys_car_category` VALUES ('650', '208', '长安星卡', '', '1', '0', '1514129238', '44800', '35900', '3155', 'uploads/car/3155.jpg');
INSERT INTO `cys_car_category` VALUES ('651', '208', '金牛星', '', '1', '0', '1514129239', '58900', '45900', '2505', 'uploads/car/2505.jpg');
INSERT INTO `cys_car_category` VALUES ('652', '208', '长安星光', '', '1', '0', '1514129239', '36800', '28900', '2504', 'uploads/car/2504.jpg');
INSERT INTO `cys_car_category` VALUES ('653', '208', '长安之星S460', '', '1', '0', '1514129239', '47900', '35500', '2604', 'uploads/car/2604.jpg');
INSERT INTO `cys_car_category` VALUES ('654', '209', '长城C30', '', '1', '0', '1514129240', '74900', '54900', '2090', 'uploads/car/2090.jpg');
INSERT INTO `cys_car_category` VALUES ('655', '209', '长城C30新能源', '', '1', '0', '1514129240', '149800', '139800', '4341', 'uploads/car/4341.jpg');
INSERT INTO `cys_car_category` VALUES ('656', '209', '风骏5', '', '1', '0', '1514129240', '125800', '68800', '2462', 'uploads/car/2462.jpg');
INSERT INTO `cys_car_category` VALUES ('657', '209', '风骏6', '', '1', '0', '1514129240', '124800', '86800', '3101', 'uploads/car/3101.jpg');
INSERT INTO `cys_car_category` VALUES ('658', '209', '欧拉', '', '1', '0', '1514129241', '0', '0', '625', 'uploads/car/625.jpg');
INSERT INTO `cys_car_category` VALUES ('659', '209', '长城C70', '', '1', '0', '1514129241', '0', '0', '2121', 'uploads/car/2121.jpg');
INSERT INTO `cys_car_category` VALUES ('660', '209', '风骏3', '', '1', '0', '1514129241', '120800', '70800', '2459', 'uploads/car/2459.jpg');
INSERT INTO `cys_car_category` VALUES ('661', '209', '长城精灵', '', '1', '0', '1514129241', '0', '0', '491', 'uploads/car/491.jpg');
INSERT INTO `cys_car_category` VALUES ('662', '209', '长城C20R', '', '1', '0', '1514129242', '0', '0', '2122', 'uploads/car/2122.jpg');
INSERT INTO `cys_car_category` VALUES ('663', '209', '长城M2', '', '1', '0', '1514129242', '0', '0', '2001', 'uploads/car/2001.jpg');
INSERT INTO `cys_car_category` VALUES ('664', '209', '酷熊', '', '1', '0', '1514129242', '0', '0', '493', 'uploads/car/493.jpg');
INSERT INTO `cys_car_category` VALUES ('665', '209', '凌傲', '', '1', '0', '1514129242', '0', '0', '624', 'uploads/car/624.jpg');
INSERT INTO `cys_car_category` VALUES ('666', '209', '炫丽', '', '1', '0', '1514129243', '0', '0', '492', 'uploads/car/492.jpg');
INSERT INTO `cys_car_category` VALUES ('667', '209', '长城C50', '', '1', '0', '1514129243', '0', '0', '2120', 'uploads/car/2120.jpg');
INSERT INTO `cys_car_category` VALUES ('668', '209', '长城M1', '', '1', '0', '1514129243', '0', '0', '535', 'uploads/car/535.jpg');
INSERT INTO `cys_car_category` VALUES ('669', '209', '长城M4', '', '1', '0', '1514129243', '0', '0', '2304', 'uploads/car/2304.jpg');
INSERT INTO `cys_car_category` VALUES ('670', '209', '赛弗', '', '1', '0', '1514129244', '0', '0', '6', 'uploads/car/6.jpg');
INSERT INTO `cys_car_category` VALUES ('671', '209', '赛骏', '', '1', '0', '1514129244', '0', '0', '979', 'uploads/car/979.jpg');
INSERT INTO `cys_car_category` VALUES ('672', '209', '赛影', '', '1', '0', '1514129244', '0', '0', '552', 'uploads/car/552.jpg');
INSERT INTO `cys_car_category` VALUES ('673', '209', '长城V80', '', '1', '0', '1514129244', '0', '0', '2200', 'uploads/car/2200.jpg');
INSERT INTO `cys_car_category` VALUES ('674', '209', '嘉誉', '', '1', '0', '1514129245', '0', '0', '536', 'uploads/car/536.jpg');
INSERT INTO `cys_car_category` VALUES ('675', '209', '金迪尔', '', '1', '0', '1514129245', '74800', '61800', '2653', 'uploads/car/2653.jpg');
INSERT INTO `cys_car_category` VALUES ('676', '210', '北斗星X5E', '', '1', '0', '1514129246', '143000', '115000', '4488', 'uploads/car/4488.jpg');
INSERT INTO `cys_car_category` VALUES ('677', '210', '昌河Q25', '', '1', '0', '1514129246', '75900', '55900', '3922', 'uploads/car/3922.jpg');
INSERT INTO `cys_car_category` VALUES ('678', '210', '昌河Q35', '', '1', '0', '1514129246', '86900', '65900', '3980', 'uploads/car/3980.jpg');
INSERT INTO `cys_car_category` VALUES ('679', '210', '昌河M70', '', '1', '0', '1514129246', '64900', '54900', '4208', 'uploads/car/4208.jpg');
INSERT INTO `cys_car_category` VALUES ('680', '210', '福瑞达', '', '1', '0', '1514129247', '47800', '28800', '2478', 'uploads/car/2478.jpg');
INSERT INTO `cys_car_category` VALUES ('681', '210', '昌河M50', '', '1', '0', '1514129247', '57800', '39800', '3640', 'uploads/car/3640.jpg');
INSERT INTO `cys_car_category` VALUES ('682', '210', '福运', '', '1', '0', '1514129247', '41800', '39800', '3058', 'uploads/car/3058.jpg');
INSERT INTO `cys_car_category` VALUES ('683', '210', '福瑞达K21', '', '1', '0', '1514129247', '43300', '36900', '4141', 'uploads/car/4141.jpg');
INSERT INTO `cys_car_category` VALUES ('684', '210', '福瑞达K22', '', '1', '0', '1514129248', '45800', '39900', '4142', 'uploads/car/4142.jpg');
INSERT INTO `cys_car_category` VALUES ('685', '210', '北斗星E', '', '1', '0', '1514129248', '0', '0', '4409', 'uploads/car/4409.jpg');
INSERT INTO `cys_car_category` VALUES ('686', '210', '北汽昌河A6', '', '1', '0', '1514129250', '0', '0', '4506', 'uploads/car/4506.jpg');
INSERT INTO `cys_car_category` VALUES ('687', '210', '昌河Q7', '', '1', '0', '1514129251', '0', '0', '4599', 'uploads/car/4599.jpg');
INSERT INTO `cys_car_category` VALUES ('688', '210', '爱迪尔', '', '1', '0', '1514129251', '0', '0', '76', 'uploads/car/76.jpg');
INSERT INTO `cys_car_category` VALUES ('689', '33', '睿行S50', '', '1', '0', '1514129251', '81900', '48900', '4132', 'uploads/car/4132.jpg');
INSERT INTO `cys_car_category` VALUES ('690', '33', '睿行S50T', '', '1', '0', '1514129252', '86900', '69900', '4292', 'uploads/car/4292.jpg');
INSERT INTO `cys_car_category` VALUES ('691', '33', '神骐T20', '', '1', '0', '1514129252', '55500', '34000', '2923', 'uploads/car/2923.jpg');
INSERT INTO `cys_car_category` VALUES ('692', '33', '睿行M70', '', '1', '0', '1514129252', '67400', '60500', '4372', 'uploads/car/4372.jpg');
INSERT INTO `cys_car_category` VALUES ('693', '33', '睿行M80', '', '1', '0', '1514129252', '71900', '58300', '3227', 'uploads/car/3227.jpg');
INSERT INTO `cys_car_category` VALUES ('694', '33', '睿行M90', '', '1', '0', '1514129253', '89900', '69200', '4011', 'uploads/car/4011.jpg');
INSERT INTO `cys_car_category` VALUES ('695', '33', '神骐F30', '', '1', '0', '1514129253', '58000', '49900', '4012', 'uploads/car/4012.jpg');
INSERT INTO `cys_car_category` VALUES ('696', '33', '长安星光4500', '', '1', '0', '1514129253', '58800', '50900', '2606', 'uploads/car/2606.jpg');
INSERT INTO `cys_car_category` VALUES ('697', '33', '尊行', '', '1', '0', '1514129254', '219800', '155800', '3091', 'uploads/car/3091.jpg');
INSERT INTO `cys_car_category` VALUES ('698', '33', '神骐F50', '', '1', '0', '1514129254', '70900', '62900', '4013', 'uploads/car/4013.jpg');
INSERT INTO `cys_car_category` VALUES ('699', '34', '长安V3', '', '1', '0', '1514129254', '33800', '33800', '4181', 'uploads/car/4181.jpg');
INSERT INTO `cys_car_category` VALUES ('700', '34', '长安V5', '', '1', '0', '1514129254', '46600', '42800', '3311', 'uploads/car/3311.jpg');
INSERT INTO `cys_car_category` VALUES ('701', '34', '跨越王', '', '1', '0', '1514129255', '53500', '48500', '4319', 'uploads/car/4319.jpg');
INSERT INTO `cys_car_category` VALUES ('702', '34', '新豹MINI', '', '1', '0', '1514129255', '41400', '35400', '4182', 'uploads/car/4182.jpg');
INSERT INTO `cys_car_category` VALUES ('703', '35', '成功V1', '', '1', '0', '1514129255', '40000', '30800', '3504', 'uploads/car/3504.jpg');
INSERT INTO `cys_car_category` VALUES ('704', '35', '成功V2', '', '1', '0', '1514129256', '41800', '36800', '3505', 'uploads/car/3505.jpg');
INSERT INTO `cys_car_category` VALUES ('705', '35', '成功V2E', '', '1', '0', '1514129256', '171000', '168000', '4533', 'uploads/car/4533.jpg');
INSERT INTO `cys_car_category` VALUES ('706', '35', '成功K1', '', '1', '0', '1514129256', '43800', '35300', '3506', 'uploads/car/3506.jpg');
INSERT INTO `cys_car_category` VALUES ('707', '35', '成功K2', '', '1', '0', '1514129256', '45800', '37300', '3507', 'uploads/car/3507.jpg');
INSERT INTO `cys_car_category` VALUES ('708', '35', '成功X1', '', '1', '0', '1514129257', '68000', '68000', '3508', 'uploads/car/3508.jpg');
INSERT INTO `cys_car_category` VALUES ('709', '35', '成功S10', '', '1', '0', '1514129257', '0', '0', '3875', 'uploads/car/3875.jpg');
INSERT INTO `cys_car_category` VALUES ('710', '35', '劲驰X1', '', '1', '0', '1514129257', '0', '0', '3330', 'uploads/car/3330.jpg');
INSERT INTO `cys_car_category` VALUES ('711', '211', 'POLO', '', '1', '0', '1514129258', '146900', '75900', '145', 'uploads/car/145.jpg');
INSERT INTO `cys_car_category` VALUES ('712', '211', '桑塔纳', '', '1', '0', '1514129258', '138900', '84900', '2922', 'uploads/car/2922.jpg');
INSERT INTO `cys_car_category` VALUES ('713', '211', '朗行', '', '1', '0', '1514129258', '162900', '112900', '3103', 'uploads/car/3103.jpg');
INSERT INTO `cys_car_category` VALUES ('714', '211', '朗逸', '', '1', '0', '1514129259', '159900', '109900', '614', 'uploads/car/614.jpg');
INSERT INTO `cys_car_category` VALUES ('715', '211', '朗境', '', '1', '0', '1514129259', '171900', '148900', '3197', 'uploads/car/3197.jpg');
INSERT INTO `cys_car_category` VALUES ('716', '211', '凌渡', '', '1', '0', '1514129259', '228900', '145900', '3457', 'uploads/car/3457.jpg');
INSERT INTO `cys_car_category` VALUES ('717', '211', '帕萨特', '', '1', '0', '1514129260', '303900', '189900', '528', 'uploads/car/528.jpg');
INSERT INTO `cys_car_category` VALUES ('718', '211', '辉昂', '', '1', '0', '1514129260', '659000', '349000', '4045', 'uploads/car/4045.jpg');
INSERT INTO `cys_car_category` VALUES ('719', '211', '途观', '', '1', '0', '1514129260', '237800', '199800', '874', 'uploads/car/874.jpg');
INSERT INTO `cys_car_category` VALUES ('720', '211', '途观L', '', '1', '0', '1514129260', '359800', '223800', '4274', 'uploads/car/4274.jpg');
INSERT INTO `cys_car_category` VALUES ('721', '211', '途昂', '', '1', '0', '1514129261', '518900', '308900', '4232', 'uploads/car/4232.jpg');
INSERT INTO `cys_car_category` VALUES ('722', '211', '途安', '', '1', '0', '1514129261', '230800', '145800', '333', 'uploads/car/333.jpg');
INSERT INTO `cys_car_category` VALUES ('723', '211', '辉昂新能源', '', '1', '0', '1514129261', '0', '0', '4430', 'uploads/car/4430.jpg');
INSERT INTO `cys_car_category` VALUES ('724', '211', '高尔', '', '1', '0', '1514129261', '0', '0', '144', 'uploads/car/144.jpg');
INSERT INTO `cys_car_category` VALUES ('725', '211', 'Passat领驭', '', '1', '0', '1514129262', '0', '0', '826', 'uploads/car/826.jpg');
INSERT INTO `cys_car_category` VALUES ('726', '211', '桑塔纳经典', '', '1', '0', '1514129262', '0', '0', '149', 'uploads/car/149.jpg');
INSERT INTO `cys_car_category` VALUES ('727', '211', '桑塔纳志俊', '', '1', '0', '1514129262', '0', '0', '207', 'uploads/car/207.jpg');
INSERT INTO `cys_car_category` VALUES ('728', '212', '捷达', '', '1', '0', '1514129263', '134900', '79900', '16', 'uploads/car/16.jpg');
INSERT INTO `cys_car_category` VALUES ('729', '212', '宝来', '', '1', '0', '1514129264', '153800', '107800', '633', 'uploads/car/633.jpg');
INSERT INTO `cys_car_category` VALUES ('730', '212', '高尔夫', '', '1', '0', '1514129265', '239900', '121900', '871', 'uploads/car/871.jpg');
INSERT INTO `cys_car_category` VALUES ('731', '212', '速腾', '', '1', '0', '1514129266', '218800', '131800', '442', 'uploads/car/442.jpg');
INSERT INTO `cys_car_category` VALUES ('732', '212', '高尔夫·嘉旅', '', '1', '0', '1514129266', '197900', '131900', '3964', 'uploads/car/3964.jpg');
INSERT INTO `cys_car_category` VALUES ('733', '212', '蔚领', '', '1', '0', '1514129266', '162900', '125900', '4204', 'uploads/car/4204.jpg');
INSERT INTO `cys_car_category` VALUES ('734', '212', '迈腾', '', '1', '0', '1514129266', '316900', '189900', '496', 'uploads/car/496.jpg');
INSERT INTO `cys_car_category` VALUES ('735', '212', '一汽-大众CC', '', '1', '0', '1514129267', '342800', '252800', '905', 'uploads/car/905.jpg');
INSERT INTO `cys_car_category` VALUES ('736', '212', '宝来/宝来经典', '', '1', '0', '1514129267', '0', '0', '15', 'uploads/car/15.jpg');
INSERT INTO `cys_car_category` VALUES ('737', '212', '开迪', '', '1', '0', '1514129267', '0', '0', '360', 'uploads/car/360.jpg');
INSERT INTO `cys_car_category` VALUES ('738', '213', '甲壳虫', '', '1', '0', '1514129268', '274600', '195800', '210', 'uploads/car/210.jpg');
INSERT INTO `cys_car_category` VALUES ('739', '213', '高尔夫(进口)', '', '1', '0', '1514129268', '413800', '407800', '372', 'uploads/car/372.jpg');
INSERT INTO `cys_car_category` VALUES ('740', '213', '高尔夫新能源(进口)', '', '1', '0', '1514129268', '288800', '288800', '4355', 'uploads/car/4355.jpg');
INSERT INTO `cys_car_category` VALUES ('741', '213', '蔚揽', '', '1', '0', '1514129268', '430800', '266800', '3999', 'uploads/car/3999.jpg');
INSERT INTO `cys_car_category` VALUES ('742', '213', 'Tiguan', '', '1', '0', '1514129269', '391800', '262800', '557', 'uploads/car/557.jpg');
INSERT INTO `cys_car_category` VALUES ('743', '213', '途锐', '', '1', '0', '1514129269', '908800', '658800', '82', 'uploads/car/82.jpg');
INSERT INTO `cys_car_category` VALUES ('744', '213', '夏朗', '', '1', '0', '1514129269', '376800', '269800', '86', 'uploads/car/86.jpg');
INSERT INTO `cys_car_category` VALUES ('745', '213', '迈特威', '', '1', '0', '1514129270', '562800', '418800', '631', 'uploads/car/631.jpg');
INSERT INTO `cys_car_category` VALUES ('746', '213', '凯路威', '', '1', '0', '1514129270', '418800', '351800', '3416', 'uploads/car/3416.jpg');
INSERT INTO `cys_car_category` VALUES ('747', '213', '尚酷', '', '1', '0', '1514129270', '390800', '222800', '669', 'uploads/car/669.jpg');
INSERT INTO `cys_car_category` VALUES ('748', '213', '辉腾', '', '1', '0', '1514129270', '1499800', '795800', '224', 'uploads/car/224.jpg');
INSERT INTO `cys_car_category` VALUES ('749', '213', '大众Fox', '', '1', '0', '1514129271', '0', '0', '422', 'uploads/car/422.jpg');
INSERT INTO `cys_car_category` VALUES ('750', '213', '大众up!', '', '1', '0', '1514129271', '0', '0', '780', 'uploads/car/780.jpg');
INSERT INTO `cys_car_category` VALUES ('751', '213', 'Ameo', '', '1', '0', '1514129271', '0', '0', '4022', 'uploads/car/4022.jpg');
INSERT INTO `cys_car_category` VALUES ('752', '213', 'Nils', '', '1', '0', '1514129271', '0', '0', '2435', 'uploads/car/2435.jpg');
INSERT INTO `cys_car_category` VALUES ('753', '213', 'POLO(海外)', '', '1', '0', '1514129272', '0', '0', '782', 'uploads/car/782.jpg');
INSERT INTO `cys_car_category` VALUES ('754', '213', '大众XL1', '', '1', '0', '1514129272', '0', '0', '925', 'uploads/car/925.jpg');
INSERT INTO `cys_car_category` VALUES ('755', '213', '高尔(海外)', '', '1', '0', '1514129272', '0', '0', '680', 'uploads/car/680.jpg');
INSERT INTO `cys_car_category` VALUES ('756', '213', 'Jetta', '', '1', '0', '1514129273', '0', '0', '906', 'uploads/car/906.jpg');
INSERT INTO `cys_car_category` VALUES ('757', '213', '大众I.D.', '', '1', '0', '1514129273', '0', '0', '4211', 'uploads/car/4211.jpg');
INSERT INTO `cys_car_category` VALUES ('758', '213', 'Arteon', '', '1', '0', '1514129273', '0', '0', '4268', 'uploads/car/4268.jpg');
INSERT INTO `cys_car_category` VALUES ('759', '213', 'Passat', '', '1', '0', '1514129273', '0', '0', '368', 'uploads/car/368.jpg');
INSERT INTO `cys_car_category` VALUES ('760', '213', 'Sport Coupe', '', '1', '0', '1514129274', '0', '0', '3732', 'uploads/car/3732.jpg');
INSERT INTO `cys_car_category` VALUES ('761', '213', '大众CC', '', '1', '0', '1514129274', '0', '0', '700', 'uploads/car/700.jpg');
INSERT INTO `cys_car_category` VALUES ('762', '213', 'C Coupe', '', '1', '0', '1514129274', '0', '0', '3801', 'uploads/car/3801.jpg');
INSERT INTO `cys_car_category` VALUES ('763', '213', 'Buggy Up', '', '1', '0', '1514129274', '0', '0', '2427', 'uploads/car/2427.jpg');
INSERT INTO `cys_car_category` VALUES ('764', '213', 'Taigun', '', '1', '0', '1514129275', '0', '0', '2917', 'uploads/car/2917.jpg');
INSERT INTO `cys_car_category` VALUES ('765', '213', 'T-Cross', '', '1', '0', '1514129275', '0', '0', '4048', 'uploads/car/4048.jpg');
INSERT INTO `cys_car_category` VALUES ('766', '213', 'T-Roc', '', '1', '0', '1514129275', '0', '0', '3398', 'uploads/car/3398.jpg');
INSERT INTO `cys_car_category` VALUES ('767', '213', 'I.D. Crozz', '', '1', '0', '1514129276', '0', '0', '4412', 'uploads/car/4412.jpg');
INSERT INTO `cys_car_category` VALUES ('768', '213', 'CrossBlue', '', '1', '0', '1514129276', '0', '0', '2993', 'uploads/car/2993.jpg');
INSERT INTO `cys_car_category` VALUES ('769', '213', 'Tiguan Allspace', '', '1', '0', '1514129276', '0', '0', '4275', 'uploads/car/4275.jpg');
INSERT INTO `cys_car_category` VALUES ('770', '213', 'Cross Coupe', '', '1', '0', '1514129276', '0', '0', '2584', 'uploads/car/2584.jpg');
INSERT INTO `cys_car_category` VALUES ('771', '213', 'T-Prime', '', '1', '0', '1514129277', '0', '0', '4113', 'uploads/car/4113.jpg');
INSERT INTO `cys_car_category` VALUES ('772', '213', '大众Atlas', '', '1', '0', '1514129277', '0', '0', '4186', 'uploads/car/4186.jpg');
INSERT INTO `cys_car_category` VALUES ('773', '213', 'BUDD-e', '', '1', '0', '1514129277', '0', '0', '3998', 'uploads/car/3998.jpg');
INSERT INTO `cys_car_category` VALUES ('774', '213', 'Bulli', '', '1', '0', '1514129278', '0', '0', '2279', 'uploads/car/2279.jpg');
INSERT INTO `cys_car_category` VALUES ('775', '213', 'California XXL', '', '1', '0', '1514129280', '0', '0', '4515', 'uploads/car/4515.jpg');
INSERT INTO `cys_car_category` VALUES ('776', '213', 'e-Co-Motion', '', '1', '0', '1514129280', '0', '0', '3027', 'uploads/car/3027.jpg');
INSERT INTO `cys_car_category` VALUES ('777', '213', 'Sedric Concept', '', '1', '0', '1514129281', '0', '0', '4358', 'uploads/car/4358.jpg');
INSERT INTO `cys_car_category` VALUES ('778', '213', 'Space Up', '', '1', '0', '1514129281', '0', '0', '2938', 'uploads/car/2938.jpg');
INSERT INTO `cys_car_category` VALUES ('779', '213', '大众I.D. Buzz', '', '1', '0', '1514129281', '0', '0', '4287', 'uploads/car/4287.jpg');
INSERT INTO `cys_car_category` VALUES ('780', '213', '开迪(海外)', '', '1', '0', '1514129281', '0', '0', '2185', 'uploads/car/2185.jpg');
INSERT INTO `cys_car_category` VALUES ('781', '213', '途安(海外)', '', '1', '0', '1514129282', '0', '0', '512', 'uploads/car/512.jpg');
INSERT INTO `cys_car_category` VALUES ('782', '213', '大众Eos', '', '1', '0', '1514129282', '0', '0', '430', 'uploads/car/430.jpg');
INSERT INTO `cys_car_category` VALUES ('783', '213', '大众XL', '', '1', '0', '1514129282', '0', '0', '3622', 'uploads/car/3622.jpg');
INSERT INTO `cys_car_category` VALUES ('784', '213', 'Crafter', '', '1', '0', '1514129283', '0', '0', '4157', 'uploads/car/4157.jpg');
INSERT INTO `cys_car_category` VALUES ('785', '213', 'Transporter', '', '1', '0', '1514129283', '0', '0', '3790', 'uploads/car/3790.jpg');
INSERT INTO `cys_car_category` VALUES ('786', '213', 'Amarok', '', '1', '0', '1514129283', '0', '0', '2380', 'uploads/car/2380.jpg');
INSERT INTO `cys_car_category` VALUES ('787', '213', 'Saveiro', '', '1', '0', '1514129283', '0', '0', '4075', 'uploads/car/4075.jpg');
INSERT INTO `cys_car_category` VALUES ('788', '213', 'Tristar', '', '1', '0', '1514129284', '0', '0', '3616', 'uploads/car/3616.jpg');
INSERT INTO `cys_car_category` VALUES ('789', '213', '大众e-up!', '', '1', '0', '1514129284', '0', '0', '4330', 'uploads/car/4330.jpg');
INSERT INTO `cys_car_category` VALUES ('790', '213', '大众Up!Lite', '', '1', '0', '1514129284', '0', '0', '1019', 'uploads/car/1019.jpg');
INSERT INTO `cys_car_category` VALUES ('791', '213', 'New Compact', '', '1', '0', '1514129284', '0', '0', '2039', 'uploads/car/2039.jpg');
INSERT INTO `cys_car_category` VALUES ('792', '213', '迈腾(进口)', '', '1', '0', '1514129285', '0', '0', '539', 'uploads/car/539.jpg');
INSERT INTO `cys_car_category` VALUES ('793', '213', 'Milano', '', '1', '0', '1514129285', '0', '0', '2106', 'uploads/car/2106.jpg');
INSERT INTO `cys_car_category` VALUES ('794', '213', 'Routan', '', '1', '0', '1514129285', '0', '0', '2187', 'uploads/car/2187.jpg');
INSERT INTO `cys_car_category` VALUES ('795', '213', 'BlueSport', '', '1', '0', '1514129285', '0', '0', '737', 'uploads/car/737.jpg');
INSERT INTO `cys_car_category` VALUES ('796', '213', 'Pickup', '', '1', '0', '1514129286', '0', '0', '2825', 'uploads/car/2825.jpg');
INSERT INTO `cys_car_category` VALUES ('797', '214', 'V3菱悦', '', '1', '0', '1514129286', '67900', '56900', '606', 'uploads/car/606.jpg');
INSERT INTO `cys_car_category` VALUES ('798', '214', 'V5菱致', '', '1', '0', '1514129286', '80900', '65900', '2769', 'uploads/car/2769.jpg');
INSERT INTO `cys_car_category` VALUES ('799', '214', 'V6菱仕', '', '1', '0', '1514129287', '97900', '73900', '2776', 'uploads/car/2776.jpg');
INSERT INTO `cys_car_category` VALUES ('800', '214', '东南DX3', '', '1', '0', '1514129287', '105900', '67900', '4086', 'uploads/car/4086.jpg');
INSERT INTO `cys_car_category` VALUES ('801', '214', '东南DX7', '', '1', '0', '1514129287', '139900', '89900', '3634', 'uploads/car/3634.jpg');
INSERT INTO `cys_car_category` VALUES ('802', '214', '东南V7', '', '1', '0', '1514129287', '0', '0', '3088', 'uploads/car/3088.jpg');
INSERT INTO `cys_car_category` VALUES ('803', '214', '东南戈蓝', '', '1', '0', '1514129288', '0', '0', '3375', 'uploads/car/3375.jpg');
INSERT INTO `cys_car_category` VALUES ('804', '214', '东南DX3新能源', '', '1', '0', '1514129288', '0', '0', '4632', 'uploads/car/4632.jpg');
INSERT INTO `cys_car_category` VALUES ('805', '214', 'DX概念车', '', '1', '0', '1514129288', '0', '0', '4101', 'uploads/car/4101.jpg');
INSERT INTO `cys_car_category` VALUES ('806', '214', '东南R7', '', '1', '0', '1514129289', '0', '0', '3482', 'uploads/car/3482.jpg');
INSERT INTO `cys_car_category` VALUES ('807', '214', '东南V4', '', '1', '0', '1514129289', '0', '0', '988', 'uploads/car/988.jpg');
INSERT INTO `cys_car_category` VALUES ('808', '214', '菱帅', '', '1', '0', '1514129289', '0', '0', '126', 'uploads/car/126.jpg');
INSERT INTO `cys_car_category` VALUES ('809', '214', '希旺', '', '1', '0', '1514129289', '49800', '36800', '2477', 'uploads/car/2477.jpg');
INSERT INTO `cys_car_category` VALUES ('810', '214', '得利卡', '', '1', '0', '1514129290', '109800', '67800', '2530', 'uploads/car/2530.jpg');
INSERT INTO `cys_car_category` VALUES ('811', '44', '东风风光S560', '', '1', '0', '1514129290', '96900', '69900', '4468', 'uploads/car/4468.jpg');
INSERT INTO `cys_car_category` VALUES ('812', '44', '东风风光580', '', '1', '0', '1514129290', '123000', '72900', '4023', 'uploads/car/4023.jpg');
INSERT INTO `cys_car_category` VALUES ('813', '44', '东风风光370', '', '1', '0', '1514129290', '69900', '49900', '3925', 'uploads/car/3925.jpg');
INSERT INTO `cys_car_category` VALUES ('814', '44', '东风风光330', '', '1', '0', '1514129291', '53900', '34900', '3829', 'uploads/car/3829.jpg');
INSERT INTO `cys_car_category` VALUES ('815', '44', '东风风光360', '', '1', '0', '1514129291', '74900', '57900', '3828', 'uploads/car/3828.jpg');
INSERT INTO `cys_car_category` VALUES ('816', '44', '东风风光', '', '1', '0', '1514129291', '59900', '51800', '3086', 'uploads/car/3086.jpg');
INSERT INTO `cys_car_category` VALUES ('817', '44', '东风风光350', '', '1', '0', '1514129292', '62900', '62900', '3830', 'uploads/car/3830.jpg');
INSERT INTO `cys_car_category` VALUES ('818', '39', '景逸S50', '', '1', '0', '1514129292', '102900', '65900', '3301', 'uploads/car/3301.jpg');
INSERT INTO `cys_car_category` VALUES ('819', '39', '景逸S50EV', '', '1', '0', '1514129292', '202500', '188500', '4614', 'uploads/car/4614.jpg');
INSERT INTO `cys_car_category` VALUES ('820', '39', '风行SX6', '', '1', '0', '1514129292', '102900', '69900', '3970', 'uploads/car/3970.jpg');
INSERT INTO `cys_car_category` VALUES ('821', '39', '景逸X3', '', '1', '0', '1514129295', '86900', '66900', '3414', 'uploads/car/3414.jpg');
INSERT INTO `cys_car_category` VALUES ('822', '39', '景逸X5', '', '1', '0', '1514129295', '122900', '79900', '3128', 'uploads/car/3128.jpg');
INSERT INTO `cys_car_category` VALUES ('823', '39', '景逸X6', '', '1', '0', '1514129296', '109900', '84900', '4423', 'uploads/car/4423.jpg');
INSERT INTO `cys_car_category` VALUES ('824', '39', '景逸XV', '', '1', '0', '1514129296', '86900', '79900', '3785', 'uploads/car/3785.jpg');
INSERT INTO `cys_car_category` VALUES ('825', '39', '风行CM7', '', '1', '0', '1514129296', '229900', '126900', '2990', 'uploads/car/2990.jpg');
INSERT INTO `cys_car_category` VALUES ('826', '39', '风行F600', '', '1', '0', '1514129296', '112900', '93900', '3792', 'uploads/car/3792.jpg');
INSERT INTO `cys_car_category` VALUES ('827', '39', '风行S500', '', '1', '0', '1514129297', '99900', '59900', '3789', 'uploads/car/3789.jpg');
INSERT INTO `cys_car_category` VALUES ('828', '39', '菱智', '', '1', '0', '1514129297', '98900', '55900', '2540', 'uploads/car/2540.jpg');
INSERT INTO `cys_car_category` VALUES ('829', '39', '菱智M5EV', '', '1', '0', '1514129297', '169900', '169900', '4418', 'uploads/car/4418.jpg');
INSERT INTO `cys_car_category` VALUES ('830', '39', '景逸X7', '', '1', '0', '1514129298', '0', '0', '4592', 'uploads/car/4592.jpg');
INSERT INTO `cys_car_category` VALUES ('831', '39', '景逸', '', '1', '0', '1514129298', '0', '0', '554', 'uploads/car/554.jpg');
INSERT INTO `cys_car_category` VALUES ('832', '39', '景逸SUV', '', '1', '0', '1514129298', '0', '0', '2742', 'uploads/car/2742.jpg');
INSERT INTO `cys_car_category` VALUES ('833', '215', '东风风神E30', '', '1', '0', '1514129299', '164800', '164800', '3119', 'uploads/car/3119.jpg');
INSERT INTO `cys_car_category` VALUES ('834', '215', '东风风神A60', '', '1', '0', '1514129299', '83700', '69700', '2556', 'uploads/car/2556.jpg');
INSERT INTO `cys_car_category` VALUES ('835', '215', '东风风神A30', '', '1', '0', '1514129299', '85700', '59700', '3493', 'uploads/car/3493.jpg');
INSERT INTO `cys_car_category` VALUES ('836', '215', '东风风神E70', '', '1', '0', '1514129300', '222800', '212800', '4421', 'uploads/car/4421.jpg');
INSERT INTO `cys_car_category` VALUES ('837', '215', '东风风神L60', '', '1', '0', '1514129300', '129700', '89700', '3461', 'uploads/car/3461.jpg');
INSERT INTO `cys_car_category` VALUES ('838', '215', '东风A9', '', '1', '0', '1514129300', '219700', '179700', '3463', 'uploads/car/3463.jpg');
INSERT INTO `cys_car_category` VALUES ('839', '215', '东风风神AX3', '', '1', '0', '1514129301', '87900', '69700', '3786', 'uploads/car/3786.jpg');
INSERT INTO `cys_car_category` VALUES ('840', '215', '东风风神AX4', '', '1', '0', '1514129301', '101800', '66800', '4383', 'uploads/car/4383.jpg');
INSERT INTO `cys_car_category` VALUES ('841', '215', '东风风神AX5', '', '1', '0', '1514129301', '128700', '89700', '4097', 'uploads/car/4097.jpg');
INSERT INTO `cys_car_category` VALUES ('842', '215', '东风风神AX7', '', '1', '0', '1514129301', '141700', '99700', '3341', 'uploads/car/3341.jpg');
INSERT INTO `cys_car_category` VALUES ('843', '215', '东风风神AX1', '', '1', '0', '1514129302', '0', '0', '4283', 'uploads/car/4283.jpg');
INSERT INTO `cys_car_category` VALUES ('844', '215', '东风风神AX5新能源', '', '1', '0', '1514129302', '0', '0', '4422', 'uploads/car/4422.jpg');
INSERT INTO `cys_car_category` VALUES ('845', '215', '东风风神AX7新能源', '', '1', '0', '1514129302', '0', '0', '4420', 'uploads/car/4420.jpg');
INSERT INTO `cys_car_category` VALUES ('846', '215', '东风风神H30', '', '1', '0', '1514129302', '0', '0', '1006', 'uploads/car/1006.jpg');
INSERT INTO `cys_car_category` VALUES ('847', '215', '东风风神S30', '', '1', '0', '1514129303', '0', '0', '790', 'uploads/car/790.jpg');
INSERT INTO `cys_car_category` VALUES ('848', '216', '风诺', '', '1', '0', '1514129303', '0', '0', '4119', 'uploads/car/4119.jpg');
INSERT INTO `cys_car_category` VALUES ('849', '217', 'DS 4S', '', '1', '0', '1514129304', '229900', '149900', '3963', 'uploads/car/3963.jpg');
INSERT INTO `cys_car_category` VALUES ('850', '217', 'DS 5LS', '', '1', '0', '1514129304', '246800', '149800', '3309', 'uploads/car/3309.jpg');
INSERT INTO `cys_car_category` VALUES ('851', '217', 'DS 5', '', '1', '0', '1514129304', '345900', '219900', '2952', 'uploads/car/2952.jpg');
INSERT INTO `cys_car_category` VALUES ('852', '217', 'DS 6', '', '1', '0', '1514129304', '301900', '193900', '3324', 'uploads/car/3324.jpg');
INSERT INTO `cys_car_category` VALUES ('853', '217', 'DS 7', '', '1', '0', '1514129305', '0', '0', '4610', 'uploads/car/4610.jpg');
INSERT INTO `cys_car_category` VALUES ('854', '218', 'DS 3', '', '1', '0', '1514129305', '0', '0', '898', 'uploads/car/898.jpg');
INSERT INTO `cys_car_category` VALUES ('855', '218', 'DS 4', '', '1', '0', '1514129305', '0', '0', '2078', 'uploads/car/2078.jpg');
INSERT INTO `cys_car_category` VALUES ('856', '218', 'DS 5LS(海外)', '', '1', '0', '1514129306', '0', '0', '3323', 'uploads/car/3323.jpg');
INSERT INTO `cys_car_category` VALUES ('857', '218', '神韵', '', '1', '0', '1514129306', '0', '0', '3594', 'uploads/car/3594.jpg');
INSERT INTO `cys_car_category` VALUES ('858', '218', 'DS 5(进口)', '', '1', '0', '1514129306', '0', '0', '2314', 'uploads/car/2314.jpg');
INSERT INTO `cys_car_category` VALUES ('859', '218', 'DS 7(海外)', '', '1', '0', '1514129306', '0', '0', '4347', 'uploads/car/4347.jpg');
INSERT INTO `cys_car_category` VALUES ('860', '218', 'DS Wild Rubis', '', '1', '0', '1514129307', '0', '0', '3063', 'uploads/car/3063.jpg');
INSERT INTO `cys_car_category` VALUES ('861', '218', 'E-Tense', '', '1', '0', '1514129307', '0', '0', '4041', 'uploads/car/4041.jpg');
INSERT INTO `cys_car_category` VALUES ('862', '218', 'DS23', '', '1', '0', '1514129307', '0', '0', '3054', 'uploads/car/3054.jpg');
INSERT INTO `cys_car_category` VALUES ('863', '214', '凯领', '', '1', '0', '1514129311', '0', '0', '574', 'uploads/car/574.jpg');
INSERT INTO `cys_car_category` VALUES ('864', '219', '酷威', '', '1', '0', '1514129311', '372900', '274900', '602', 'uploads/car/602.jpg');
INSERT INTO `cys_car_category` VALUES ('865', '219', 'Dart', '', '1', '0', '1514129311', '0', '0', '2628', 'uploads/car/2628.jpg');
INSERT INTO `cys_car_category` VALUES ('866', '219', '锋哲', '', '1', '0', '1514129312', '0', '0', '576', 'uploads/car/576.jpg');
INSERT INTO `cys_car_category` VALUES ('867', '219', 'Charger', '', '1', '0', '1514129312', '0', '0', '2089', 'uploads/car/2089.jpg');
INSERT INTO `cys_car_category` VALUES ('868', '219', 'Durango', '', '1', '0', '1514129312', '0', '0', '2201', 'uploads/car/2201.jpg');
INSERT INTO `cys_car_category` VALUES ('869', '219', '凯领(海外)', '', '1', '0', '1514129312', '0', '0', '2226', 'uploads/car/2226.jpg');
INSERT INTO `cys_car_category` VALUES ('870', '219', '挑战者', '', '1', '0', '1514129313', '0', '0', '738', 'uploads/car/738.jpg');
INSERT INTO `cys_car_category` VALUES ('871', '219', '道奇Ram', '', '1', '0', '1514129313', '0', '0', '2198', 'uploads/car/2198.jpg');
INSERT INTO `cys_car_category` VALUES ('872', '219', '酷搏', '', '1', '0', '1514129313', '0', '0', '575', 'uploads/car/575.jpg');
INSERT INTO `cys_car_category` VALUES ('873', '219', '翼龙', '', '1', '0', '1514129314', '0', '0', '957', 'uploads/car/957.jpg');
INSERT INTO `cys_car_category` VALUES ('874', '219', 'Circuit EV', '', '1', '0', '1514129314', '0', '0', '883', 'uploads/car/883.jpg');
INSERT INTO `cys_car_category` VALUES ('875', '219', 'Rampage', '', '1', '0', '1514129314', '0', '0', '2814', 'uploads/car/2814.jpg');
INSERT INTO `cys_car_category` VALUES ('876', '219', '道奇D100', '', '1', '0', '1514129315', '0', '0', '3173', 'uploads/car/3173.jpg');
INSERT INTO `cys_car_category` VALUES ('877', '219', '道奇M80', '', '1', '0', '1514129315', '0', '0', '2816', 'uploads/car/2816.jpg');
INSERT INTO `cys_car_category` VALUES ('878', '220', 'Charger SRT', '', '1', '0', '1514129316', '0', '0', '3049', 'uploads/car/3049.jpg');
INSERT INTO `cys_car_category` VALUES ('879', '220', 'Durango SRT', '', '1', '0', '1514129316', '0', '0', '4303', 'uploads/car/4303.jpg');
INSERT INTO `cys_car_category` VALUES ('880', '220', '蝰蛇', '', '1', '0', '1514129316', '0', '0', '573', 'uploads/car/573.jpg');
INSERT INTO `cys_car_category` VALUES ('881', '220', '挑战者 SRT', '', '1', '0', '1514129317', '0', '0', '3050', 'uploads/car/3050.jpg');
INSERT INTO `cys_car_category` VALUES ('882', '221', '御风S16', '', '1', '0', '1514129317', '142800', '117800', '4560', 'uploads/car/4560.jpg');
INSERT INTO `cys_car_category` VALUES ('883', '221', '御风', '', '1', '0', '1514129317', '247800', '123800', '2839', 'uploads/car/2839.jpg');
INSERT INTO `cys_car_category` VALUES ('884', '221', '御风EV', '', '1', '0', '1514129318', '480000', '480000', '4278', 'uploads/car/4278.jpg');
INSERT INTO `cys_car_category` VALUES ('885', '221', '东风皮卡', '', '1', '0', '1514129318', '104800', '61500', '3716', 'uploads/car/3716.jpg');
INSERT INTO `cys_car_category` VALUES ('886', '221', '虎视', '', '1', '0', '1514129318', '102800', '75800', '3166', 'uploads/car/3166.jpg');
INSERT INTO `cys_car_category` VALUES ('887', '221', '御风P16', '', '1', '0', '1514129319', '120800', '93800', '4486', 'uploads/car/4486.jpg');
INSERT INTO `cys_car_category` VALUES ('888', '221', '俊风EJ30', '', '1', '0', '1514129319', '0', '0', '4625', 'uploads/car/4625.jpg');
INSERT INTO `cys_car_category` VALUES ('889', '221', '东风HUV', '', '1', '0', '1514129319', '0', '0', '2803', 'uploads/car/2803.jpg');
INSERT INTO `cys_car_category` VALUES ('890', '221', '猛士', '', '1', '0', '1514129319', '0', '0', '560', 'uploads/car/560.jpg');
INSERT INTO `cys_car_category` VALUES ('891', '221', '东风概念车', '', '1', '0', '1514129320', '0', '0', '832', 'uploads/car/832.jpg');
INSERT INTO `cys_car_category` VALUES ('892', '221', '俊风CV03', '', '1', '0', '1514129320', '53300', '42800', '2901', 'uploads/car/2901.jpg');
INSERT INTO `cys_car_category` VALUES ('893', '222', '帅客', '', '1', '0', '1514129320', '91800', '68800', '951', 'uploads/car/951.jpg');
INSERT INTO `cys_car_category` VALUES ('894', '222', '俊风', '', '1', '0', '1514129320', '45500', '39800', '3279', 'uploads/car/3279.jpg');
INSERT INTO `cys_car_category` VALUES ('895', '222', '锐骐多功能车', '', '1', '0', '1514129321', '142800', '101800', '2512', 'uploads/car/2512.jpg');
INSERT INTO `cys_car_category` VALUES ('896', '222', '锐骐皮卡', '', '1', '0', '1514129321', '173800', '79800', '2510', 'uploads/car/2510.jpg');
INSERT INTO `cys_car_category` VALUES ('897', '222', '奥丁', '', '1', '0', '1514129321', '0', '0', '561', 'uploads/car/561.jpg');
INSERT INTO `cys_car_category` VALUES ('898', '222', '御轩', '', '1', '0', '1514129322', '0', '0', '562', 'uploads/car/562.jpg');
INSERT INTO `cys_car_category` VALUES ('899', '44', '东风小康C35', '', '1', '0', '1514129322', '49800', '49800', '3036', 'uploads/car/3036.jpg');
INSERT INTO `cys_car_category` VALUES ('900', '44', '东风小康C36', '', '1', '0', '1514129324', '54900', '47800', '3502', 'uploads/car/3502.jpg');
INSERT INTO `cys_car_category` VALUES ('901', '44', '东风小康C37', '', '1', '0', '1514129325', '61800', '46900', '2865', 'uploads/car/2865.jpg');
INSERT INTO `cys_car_category` VALUES ('902', '44', '东风小康EC36', '', '1', '0', '1514129325', '126900', '126900', '4461', 'uploads/car/4461.jpg');
INSERT INTO `cys_car_category` VALUES ('903', '44', '东风小康K05S', '', '1', '0', '1514129325', '29900', '27900', '4299', 'uploads/car/4299.jpg');
INSERT INTO `cys_car_category` VALUES ('904', '44', '东风小康K07', '', '1', '0', '1514129326', '36900', '27900', '2500', 'uploads/car/2500.jpg');
INSERT INTO `cys_car_category` VALUES ('905', '44', '东风小康K07II', '', '1', '0', '1514129326', '42800', '27900', '2501', 'uploads/car/2501.jpg');
INSERT INTO `cys_car_category` VALUES ('906', '44', '东风小康K07S', '', '1', '0', '1514129326', '31900', '27900', '3697', 'uploads/car/3697.jpg');
INSERT INTO `cys_car_category` VALUES ('907', '44', '东风小康K17', '', '1', '0', '1514129326', '33900', '27900', '2499', 'uploads/car/2499.jpg');
INSERT INTO `cys_car_category` VALUES ('908', '44', '东风小康V07S', '', '1', '0', '1514129327', '35800', '28800', '2490', 'uploads/car/2490.jpg');
INSERT INTO `cys_car_category` VALUES ('909', '44', '东风小康V29', '', '1', '0', '1514129327', '56800', '45900', '2744', 'uploads/car/2744.jpg');
INSERT INTO `cys_car_category` VALUES ('910', '44', '东风小康C31', '', '1', '0', '1514129327', '39900', '35900', '3698', 'uploads/car/3698.jpg');
INSERT INTO `cys_car_category` VALUES ('911', '44', '东风小康C32', '', '1', '0', '1514129327', '42900', '38900', '3699', 'uploads/car/3699.jpg');
INSERT INTO `cys_car_category` VALUES ('912', '44', '东风小康K01', '', '1', '0', '1514129328', '36800', '25800', '2452', 'uploads/car/2452.jpg');
INSERT INTO `cys_car_category` VALUES ('913', '44', '东风小康K02', '', '1', '0', '1514129328', '39800', '31900', '2497', 'uploads/car/2497.jpg');
INSERT INTO `cys_car_category` VALUES ('914', '44', '东风小康V21', '', '1', '0', '1514129328', '40800', '33800', '2491', 'uploads/car/2491.jpg');
INSERT INTO `cys_car_category` VALUES ('915', '44', '东风小康V22', '', '1', '0', '1514129328', '44800', '37800', '2494', 'uploads/car/2494.jpg');
INSERT INTO `cys_car_category` VALUES ('916', '44', '东风小康V27', '', '1', '0', '1514129329', '58800', '37800', '2495', 'uploads/car/2495.jpg');
INSERT INTO `cys_car_category` VALUES ('917', '44', '东风小康F505', '', '1', '0', '1514129329', '0', '0', '3007', 'uploads/car/3007.jpg');
INSERT INTO `cys_car_category` VALUES ('918', '44', '东风小康K06', '', '1', '0', '1514129329', '43500', '37500', '2498', 'uploads/car/2498.jpg');
INSERT INTO `cys_car_category` VALUES ('919', '222', '东风风度MX5', '', '1', '0', '1514129330', '135500', '103500', '3984', 'uploads/car/3984.jpg');
INSERT INTO `cys_car_category` VALUES ('920', '222', '东风风度MX6', '', '1', '0', '1514129330', '169800', '122800', '3637', 'uploads/car/3637.jpg');
INSERT INTO `cys_car_category` VALUES ('921', '222', '东风风度MX3', '', '1', '0', '1514129330', '0', '0', '4306', 'uploads/car/4306.jpg');
INSERT INTO `cys_car_category` VALUES ('922', '223', '电咖·EV10', '', '1', '0', '1514129331', '141800', '133800', '4238', 'uploads/car/4238.jpg');
INSERT INTO `cys_car_category` VALUES ('923', '224', 'YARiS L 致享', '', '1', '0', '1514129331', '106800', '69800', '4259', 'uploads/car/4259.jpg');
INSERT INTO `cys_car_category` VALUES ('924', '224', 'YARiS L 致炫', '', '1', '0', '1514129331', '104800', '69800', '3126', 'uploads/car/3126.jpg');
INSERT INTO `cys_car_category` VALUES ('925', '224', '雷凌', '', '1', '0', '1514129332', '161800', '109800', '3462', 'uploads/car/3462.jpg');
INSERT INTO `cys_car_category` VALUES ('926', '224', '凯美瑞', '', '1', '0', '1514129332', '329800', '179800', '110', 'uploads/car/110.jpg');
INSERT INTO `cys_car_category` VALUES ('927', '224', '汉兰达', '', '1', '0', '1514129332', '422800', '239800', '771', 'uploads/car/771.jpg');
INSERT INTO `cys_car_category` VALUES ('928', '224', '逸致', '', '1', '0', '1514129332', '162800', '162800', '2237', 'uploads/car/2237.jpg');
INSERT INTO `cys_car_category` VALUES ('929', '224', '丰田C-HR', '', '1', '0', '1514129333', '0', '0', '4645', 'uploads/car/4645.jpg');
INSERT INTO `cys_car_category` VALUES ('930', '224', '雅力士', '', '1', '0', '1514129333', '0', '0', '505', 'uploads/car/505.jpg');
INSERT INTO `cys_car_category` VALUES ('931', '225', '威驰', '', '1', '0', '1514129334', '113800', '69800', '111', 'uploads/car/111.jpg');
INSERT INTO `cys_car_category` VALUES ('932', '225', '威驰FS', '', '1', '0', '1514129334', '109800', '69800', '4260', 'uploads/car/4260.jpg');
INSERT INTO `cys_car_category` VALUES ('933', '225', '卡罗拉', '', '1', '0', '1514129334', '175800', '107800', '526', 'uploads/car/526.jpg');
INSERT INTO `cys_car_category` VALUES ('934', '225', '皇冠', '', '1', '0', '1514129334', '391800', '264800', '882', 'uploads/car/882.jpg');
INSERT INTO `cys_car_category` VALUES ('935', '225', 'RAV4荣放', '', '1', '0', '1514129335', '269800', '179800', '770', 'uploads/car/770.jpg');
INSERT INTO `cys_car_category` VALUES ('936', '225', '普拉多', '', '1', '0', '1514129335', '636800', '464800', '46', 'uploads/car/46.jpg');
INSERT INTO `cys_car_category` VALUES ('937', '225', '柯斯达', '', '1', '0', '1514129335', '558500', '365000', '2527', 'uploads/car/2527.jpg');
INSERT INTO `cys_car_category` VALUES ('938', '225', '普锐斯', '', '1', '0', '1514129335', '269800', '229800', '371', 'uploads/car/371.jpg');
INSERT INTO `cys_car_category` VALUES ('939', '225', '锐志', '', '1', '0', '1514129336', '314800', '209800', '375', 'uploads/car/375.jpg');
INSERT INTO `cys_car_category` VALUES ('940', '225', '兰德酷路泽', '', '1', '0', '1514129336', '1194000', '771000', '45', 'uploads/car/45.jpg');
INSERT INTO `cys_car_category` VALUES ('941', '225', 'IZOA 奕泽', '', '1', '0', '1514129336', '0', '0', '4646', 'uploads/car/4646.jpg');
INSERT INTO `cys_car_category` VALUES ('942', '225', '花冠', '', '1', '0', '1514129336', '0', '0', '109', 'uploads/car/109.jpg');
INSERT INTO `cys_car_category` VALUES ('943', '225', '特锐', '', '1', '0', '1514129337', '0', '0', '170', 'uploads/car/170.jpg');
INSERT INTO `cys_car_category` VALUES ('944', '226', '埃尔法', '', '1', '0', '1514129339', '864000', '759000', '2107', 'uploads/car/2107.jpg');
INSERT INTO `cys_car_category` VALUES ('945', '226', '普瑞维亚', '', '1', '0', '1514129340', '610000', '389800', '107', 'uploads/car/107.jpg');
INSERT INTO `cys_car_category` VALUES ('946', '226', '丰田86', '', '1', '0', '1514129340', '287800', '249800', '2574', 'uploads/car/2574.jpg');
INSERT INTO `cys_car_category` VALUES ('947', '226', 'HIACE', '', '1', '0', '1514129340', '537000', '394000', '2607', 'uploads/car/2607.jpg');
INSERT INTO `cys_car_category` VALUES ('948', '226', 'Aygo', '', '1', '0', '1514129340', '0', '0', '748', 'uploads/car/748.jpg');
INSERT INTO `cys_car_category` VALUES ('949', '226', 'CONCEPT-爱i Ride', '', '1', '0', '1514129341', '0', '0', '4582', 'uploads/car/4582.jpg');
INSERT INTO `cys_car_category` VALUES ('950', '226', 'Fun-Vii', '', '1', '0', '1514129341', '0', '0', '2585', 'uploads/car/2585.jpg');
INSERT INTO `cys_car_category` VALUES ('951', '226', 'i-Road', '', '1', '0', '1514129341', '0', '0', '3019', 'uploads/car/3019.jpg');
INSERT INTO `cys_car_category` VALUES ('952', '226', 'i-TRIL', '', '1', '0', '1514129341', '0', '0', '4365', 'uploads/car/4365.jpg');
INSERT INTO `cys_car_category` VALUES ('953', '226', 'KIKAI', '', '1', '0', '1514129342', '0', '0', '3948', 'uploads/car/3948.jpg');
INSERT INTO `cys_car_category` VALUES ('954', '226', 'Wonder-Capsule', '', '1', '0', '1514129342', '0', '0', '4594', 'uploads/car/4594.jpg');
INSERT INTO `cys_car_category` VALUES ('955', '226', '丰田FT-EV', '', '1', '0', '1514129342', '0', '0', '938', 'uploads/car/938.jpg');
INSERT INTO `cys_car_category` VALUES ('956', '226', '丰田FT-HT', '', '1', '0', '1514129343', '0', '0', '3271', 'uploads/car/3271.jpg');
INSERT INTO `cys_car_category` VALUES ('957', '226', '丰田FV2', '', '1', '0', '1514129343', '0', '0', '3819', 'uploads/car/3819.jpg');
INSERT INTO `cys_car_category` VALUES ('958', '226', '丰田Hi-CT', '', '1', '0', '1514129343', '0', '0', '2936', 'uploads/car/2936.jpg');
INSERT INTO `cys_car_category` VALUES ('959', '226', '丰田iQ', '', '1', '0', '1514129343', '0', '0', '671', 'uploads/car/671.jpg');
INSERT INTO `cys_car_category` VALUES ('960', '226', 'ME.WE', '', '1', '0', '1514129344', '0', '0', '3133', 'uploads/car/3133.jpg');
INSERT INTO `cys_car_category` VALUES ('961', '226', 'YARiS(海外)', '', '1', '0', '1514129344', '0', '0', '711', 'uploads/car/711.jpg');
INSERT INTO `cys_car_category` VALUES ('962', '226', '丰田FT-Bh', '', '1', '0', '1514129344', '0', '0', '2705', 'uploads/car/2705.jpg');
INSERT INTO `cys_car_category` VALUES ('963', '226', '丰田RiN', '', '1', '0', '1514129344', '0', '0', '2937', 'uploads/car/2937.jpg');
INSERT INTO `cys_car_category` VALUES ('964', '226', '威驰(海外)', '', '1', '0', '1514129345', '0', '0', '3041', 'uploads/car/3041.jpg');
INSERT INTO `cys_car_category` VALUES ('965', '226', '悦佳', '', '1', '0', '1514129345', '0', '0', '3118', 'uploads/car/3118.jpg');
INSERT INTO `cys_car_category` VALUES ('966', '226', 'Auris', '', '1', '0', '1514129345', '0', '0', '917', 'uploads/car/917.jpg');
INSERT INTO `cys_car_category` VALUES ('967', '226', 'CONCEPT-爱i', '', '1', '0', '1514129345', '0', '0', '4286', 'uploads/car/4286.jpg');
INSERT INTO `cys_car_category` VALUES ('968', '226', 'Matrix', '', '1', '0', '1514129346', '0', '0', '893', 'uploads/car/893.jpg');
INSERT INTO `cys_car_category` VALUES ('969', '226', 'Premi Aqua', '', '1', '0', '1514129346', '0', '0', '3249', 'uploads/car/3249.jpg');
INSERT INTO `cys_car_category` VALUES ('970', '226', '丰田1X', '', '1', '0', '1514129346', '0', '0', '2935', 'uploads/car/2935.jpg');
INSERT INTO `cys_car_category` VALUES ('971', '226', '丰田NS4', '', '1', '0', '1514129347', '0', '0', '2646', 'uploads/car/2646.jpg');
INSERT INTO `cys_car_category` VALUES ('972', '226', '丰田SAI', '', '1', '0', '1514129347', '0', '0', '3336', 'uploads/car/3336.jpg');
INSERT INTO `cys_car_category` VALUES ('973', '226', '卡罗拉(海外)', '', '1', '0', '1514129347', '0', '0', '774', 'uploads/car/774.jpg');
INSERT INTO `cys_car_category` VALUES ('974', '226', '普锐斯(海外)', '', '1', '0', '1514129347', '0', '0', '721', 'uploads/car/721.jpg');
INSERT INTO `cys_car_category` VALUES ('975', '226', 'Avensis', '', '1', '0', '1514129348', '0', '0', '763', 'uploads/car/763.jpg');
INSERT INTO `cys_car_category` VALUES ('976', '226', 'JPN Taxi', '', '1', '0', '1514129348', '0', '0', '3262', 'uploads/car/3262.jpg');
INSERT INTO `cys_car_category` VALUES ('977', '226', 'Mirai', '', '1', '0', '1514129348', '0', '0', '3682', 'uploads/car/3682.jpg');
INSERT INTO `cys_car_category` VALUES ('978', '226', '丰巢FUN', '', '1', '0', '1514129348', '0', '0', '4413', 'uploads/car/4413.jpg');
INSERT INTO `cys_car_category` VALUES ('979', '226', '丰田FCV', '', '1', '0', '1514129349', '0', '0', '3239', 'uploads/car/3239.jpg');
INSERT INTO `cys_car_category` VALUES ('980', '226', '丰田FCV-R', '', '1', '0', '1514129349', '0', '0', '2704', 'uploads/car/2704.jpg');
INSERT INTO `cys_car_category` VALUES ('981', '226', '凯美瑞(海外)', '', '1', '0', '1514129349', '0', '0', '963', 'uploads/car/963.jpg');
INSERT INTO `cys_car_category` VALUES ('982', '226', '锐志(海外)', '', '1', '0', '1514129349', '0', '0', '945', 'uploads/car/945.jpg');
INSERT INTO `cys_car_category` VALUES ('983', '226', 'Avalon', '', '1', '0', '1514129350', '0', '0', '2055', 'uploads/car/2055.jpg');
INSERT INTO `cys_car_category` VALUES ('984', '226', '皇冠(进口)', '', '1', '0', '1514129350', '0', '0', '2614', 'uploads/car/2614.jpg');
INSERT INTO `cys_car_category` VALUES ('985', '226', '世纪', '', '1', '0', '1514129350', '0', '0', '3168', 'uploads/car/3168.jpg');
INSERT INTO `cys_car_category` VALUES ('986', '226', 'ViRA', '', '1', '0', '1514129350', '0', '0', '4001', 'uploads/car/4001.jpg');
INSERT INTO `cys_car_category` VALUES ('987', '226', '丰巢WAY', '', '1', '0', '1514129351', '0', '0', '4414', 'uploads/car/4414.jpg');
INSERT INTO `cys_car_category` VALUES ('988', '226', '丰田C-HR(海外)', '', '1', '0', '1514129351', '0', '0', '3611', 'uploads/car/3611.jpg');
INSERT INTO `cys_car_category` VALUES ('989', '226', '丰田FT-4X', '', '1', '0', '1514129351', '0', '0', '4400', 'uploads/car/4400.jpg');
INSERT INTO `cys_car_category` VALUES ('990', '226', 'Rush', '', '1', '0', '1514129351', '0', '0', '4626', 'uploads/car/4626.jpg');
INSERT INTO `cys_car_category` VALUES ('991', '226', '丰田FT-AC', '', '1', '0', '1514129352', '0', '0', '4637', 'uploads/car/4637.jpg');
INSERT INTO `cys_car_category` VALUES ('992', '226', '丰田RAV4(进口)', '', '1', '0', '1514129354', '0', '0', '206', 'uploads/car/206.jpg');
INSERT INTO `cys_car_category` VALUES ('993', '226', 'FJ 酷路泽', '', '1', '0', '1514129354', '0', '0', '513', 'uploads/car/513.jpg');
INSERT INTO `cys_car_category` VALUES ('994', '226', 'Fortuner', '', '1', '0', '1514129355', '0', '0', '3851', 'uploads/car/3851.jpg');
INSERT INTO `cys_car_category` VALUES ('995', '226', 'Harrier', '', '1', '0', '1514129355', '0', '0', '3273', 'uploads/car/3273.jpg');
INSERT INTO `cys_car_category` VALUES ('996', '226', 'Tj Cruiser', '', '1', '0', '1514129355', '0', '0', '4572', 'uploads/car/4572.jpg');
INSERT INTO `cys_car_category` VALUES ('997', '226', '汉兰达(进口)', '', '1', '0', '1514129355', '0', '0', '549', 'uploads/car/549.jpg');
INSERT INTO `cys_car_category` VALUES ('998', '226', '4Runner', '', '1', '0', '1514129356', '0', '0', '929', 'uploads/car/929.jpg');
INSERT INTO `cys_car_category` VALUES ('999', '226', '兰德酷路泽(进口)', '', '1', '0', '1514129356', '0', '0', '550', 'uploads/car/550.jpg');
INSERT INTO `cys_car_category` VALUES ('1000', '226', '普拉多(进口)', '', '1', '0', '1514129356', '0', '0', '334', 'uploads/car/334.jpg');
INSERT INTO `cys_car_category` VALUES ('1001', '226', '红杉', '', '1', '0', '1514129356', '0', '0', '964', 'uploads/car/964.jpg');
INSERT INTO `cys_car_category` VALUES ('1002', '226', 'Fine-Comfort Ride', '', '1', '0', '1514129357', '0', '0', '4585', 'uploads/car/4585.jpg');
INSERT INTO `cys_car_category` VALUES ('1003', '226', 'Innova', '', '1', '0', '1514129357', '0', '0', '4155', 'uploads/car/4155.jpg');
INSERT INTO `cys_car_category` VALUES ('1004', '226', 'Sienna', '', '1', '0', '1514129357', '0', '0', '983', 'uploads/car/983.jpg');
INSERT INTO `cys_car_category` VALUES ('1005', '226', 'SIENTA', '', '1', '0', '1514129358', '0', '0', '3837', 'uploads/car/3837.jpg');
INSERT INTO `cys_car_category` VALUES ('1006', '226', 'Vellfire', '', '1', '0', '1514129358', '0', '0', '3718', 'uploads/car/3718.jpg');
INSERT INTO `cys_car_category` VALUES ('1007', '226', 'Verso', '', '1', '0', '1514129358', '0', '0', '786', 'uploads/car/786.jpg');
INSERT INTO `cys_car_category` VALUES ('1008', '226', 'Verso-S', '', '1', '0', '1514129358', '0', '0', '3322', 'uploads/car/3322.jpg');
INSERT INTO `cys_car_category` VALUES ('1009', '226', 'AQUA', '', '1', '0', '1514129359', '0', '0', '3258', 'uploads/car/3258.jpg');
INSERT INTO `cys_car_category` VALUES ('1010', '226', 'Setsuna', '', '1', '0', '1514129359', '0', '0', '4064', 'uploads/car/4064.jpg');
INSERT INTO `cys_car_category` VALUES ('1011', '226', '丰田FT-1', '', '1', '0', '1514129359', '0', '0', '3352', 'uploads/car/3352.jpg');
INSERT INTO `cys_car_category` VALUES ('1012', '226', '丰田FT-86', '', '1', '0', '1514129359', '0', '0', '934', 'uploads/car/934.jpg');
INSERT INTO `cys_car_category` VALUES ('1013', '226', '丰田GR HV Sports', '', '1', '0', '1514129360', '0', '0', '4571', 'uploads/car/4571.jpg');
INSERT INTO `cys_car_category` VALUES ('1014', '226', '丰田S-FR', '', '1', '0', '1514129360', '0', '0', '3931', 'uploads/car/3931.jpg');
INSERT INTO `cys_car_category` VALUES ('1015', '226', 'PROACE', '', '1', '0', '1514129360', '0', '0', '3975', 'uploads/car/3975.jpg');
INSERT INTO `cys_car_category` VALUES ('1016', '226', '柯斯达(海外)', '', '1', '0', '1514129360', '0', '0', '4281', 'uploads/car/4281.jpg');
INSERT INTO `cys_car_category` VALUES ('1017', '226', 'Urban Utility', '', '1', '0', '1514129361', '0', '0', '3598', 'uploads/car/3598.jpg');
INSERT INTO `cys_car_category` VALUES ('1018', '226', 'Hilux', '', '1', '0', '1514129361', '0', '0', '2714', 'uploads/car/2714.jpg');
INSERT INTO `cys_car_category` VALUES ('1019', '226', 'Tacoma', '', '1', '0', '1514129361', '0', '0', '2411', 'uploads/car/2411.jpg');
INSERT INTO `cys_car_category` VALUES ('1020', '226', '坦途', '', '1', '0', '1514129361', '0', '0', '2354', 'uploads/car/2354.jpg');
INSERT INTO `cys_car_category` VALUES ('1021', '226', '丰田FT-CH', '', '1', '0', '1514129362', '0', '0', '2040', 'uploads/car/2040.jpg');
INSERT INTO `cys_car_category` VALUES ('1022', '226', 'Sprinter Trueno', '', '1', '0', '1514129362', '0', '0', '4377', 'uploads/car/4377.jpg');
INSERT INTO `cys_car_category` VALUES ('1023', '226', 'Cressida', '', '1', '0', '1514129362', '0', '0', '3340', 'uploads/car/3340.jpg');
INSERT INTO `cys_car_category` VALUES ('1024', '226', 'Urban Cruiser', '', '1', '0', '1514129363', '0', '0', '931', 'uploads/car/931.jpg');
INSERT INTO `cys_car_category` VALUES ('1025', '226', '威飒', '', '1', '0', '1514129363', '0', '0', '762', 'uploads/car/762.jpg');
INSERT INTO `cys_car_category` VALUES ('1026', '226', 'WISH', '', '1', '0', '1514129363', '0', '0', '2213', 'uploads/car/2213.jpg');
INSERT INTO `cys_car_category` VALUES ('1027', '226', 'Supra', '', '1', '0', '1514129363', '0', '0', '2617', 'uploads/car/2617.jpg');
INSERT INTO `cys_car_category` VALUES ('1028', '226', '杰路驰', '', '1', '0', '1514129364', '0', '0', '2244', 'uploads/car/2244.jpg');
INSERT INTO `cys_car_category` VALUES ('1029', '226', 'A-BAT', '', '1', '0', '1514129364', '0', '0', '2823', 'uploads/car/2823.jpg');
INSERT INTO `cys_car_category` VALUES ('1030', '227', '福克斯', '', '1', '0', '1514129364', '165800', '115800', '364', 'uploads/car/364.jpg');
INSERT INTO `cys_car_category` VALUES ('1031', '227', '福睿斯', '', '1', '0', '1514129365', '122300', '96800', '3347', 'uploads/car/3347.jpg');
INSERT INTO `cys_car_category` VALUES ('1032', '227', '金牛座', '', '1', '0', '1514129365', '369800', '234800', '3693', 'uploads/car/3693.jpg');
INSERT INTO `cys_car_category` VALUES ('1033', '227', '蒙迪欧', '', '1', '0', '1514129365', '319800', '179800', '117', 'uploads/car/117.jpg');
INSERT INTO `cys_car_category` VALUES ('1034', '227', '翼搏', '', '1', '0', '1514129366', '155800', '79800', '2871', 'uploads/car/2871.jpg');
INSERT INTO `cys_car_category` VALUES ('1035', '227', '翼虎', '', '1', '0', '1514129366', '270800', '184800', '2863', 'uploads/car/2863.jpg');
INSERT INTO `cys_car_category` VALUES ('1036', '227', '锐界', '', '1', '0', '1514129366', '449800', '249800', '3615', 'uploads/car/3615.jpg');
INSERT INTO `cys_car_category` VALUES ('1037', '227', '蒙迪欧Energi', '', '1', '0', '1514129366', '0', '0', '4386', 'uploads/car/4386.jpg');
INSERT INTO `cys_car_category` VALUES ('1038', '227', '嘉年华', '', '1', '0', '1514129369', '0', '0', '659', 'uploads/car/659.jpg');
INSERT INTO `cys_car_category` VALUES ('1039', '227', '蒙迪欧-致胜', '', '1', '0', '1514129369', '0', '0', '577', 'uploads/car/577.jpg');
INSERT INTO `cys_car_category` VALUES ('1040', '227', '致胜', '', '1', '0', '1514129369', '0', '0', '3175', 'uploads/car/3175.jpg');
INSERT INTO `cys_car_category` VALUES ('1041', '227', '麦柯斯', '', '1', '0', '1514129370', '0', '0', '498', 'uploads/car/498.jpg');
INSERT INTO `cys_car_category` VALUES ('1042', '228', '撼路者', '', '1', '0', '1514129370', '360800', '267800', '3518', 'uploads/car/3518.jpg');
INSERT INTO `cys_car_category` VALUES ('1043', '228', '途睿欧', '', '1', '0', '1514129370', '265800', '176900', '3814', 'uploads/car/3814.jpg');
INSERT INTO `cys_car_category` VALUES ('1044', '228', '全顺', '', '1', '0', '1514129371', '167900', '122300', '4192', 'uploads/car/4192.jpg');
INSERT INTO `cys_car_category` VALUES ('1045', '228', '新世代全顺', '', '1', '0', '1514129371', '249400', '145600', '2524', 'uploads/car/2524.jpg');
INSERT INTO `cys_car_category` VALUES ('1046', '228', '经典全顺', '', '1', '0', '1514129371', '186600', '92800', '2523', 'uploads/car/2523.jpg');
INSERT INTO `cys_car_category` VALUES ('1047', '229', 'C-MAX', '', '1', '0', '1514129372', '0', '0', '912', 'uploads/car/912.jpg');
INSERT INTO `cys_car_category` VALUES ('1048', '229', '福特GT', '', '1', '0', '1514129372', '0', '0', '378', 'uploads/car/378.jpg');
INSERT INTO `cys_car_category` VALUES ('1049', '229', '福克斯(进口)', '', '1', '0', '1514129372', '401800', '259800', '704', 'uploads/car/704.jpg');
INSERT INTO `cys_car_category` VALUES ('1050', '229', '探险者', '', '1', '0', '1514129372', '639800', '449800', '2024', 'uploads/car/2024.jpg');
INSERT INTO `cys_car_category` VALUES ('1051', '229', 'Mustang', '', '1', '0', '1514129373', '705000', '399800', '102', 'uploads/car/102.jpg');
INSERT INTO `cys_car_category` VALUES ('1052', '229', '福特F-150', '', '1', '0', '1514129373', '681800', '621800', '2353', 'uploads/car/2353.jpg');
INSERT INTO `cys_car_category` VALUES ('1053', '229', 'Airstream', '', '1', '0', '1514129373', '0', '0', '2931', 'uploads/car/2931.jpg');
INSERT INTO `cys_car_category` VALUES ('1054', '229', 'Figo', '', '1', '0', '1514129373', '0', '0', '3373', 'uploads/car/3373.jpg');
INSERT INTO `cys_car_category` VALUES ('1055', '229', '福特Ka', '', '1', '0', '1514129374', '0', '0', '665', 'uploads/car/665.jpg');
INSERT INTO `cys_car_category` VALUES ('1056', '229', '嘉年华(进口)', '', '1', '0', '1514129374', '0', '0', '713', 'uploads/car/713.jpg');
INSERT INTO `cys_car_category` VALUES ('1057', '229', '福睿斯(海外)', '', '1', '0', '1514129374', '0', '0', '3113', 'uploads/car/3113.jpg');
INSERT INTO `cys_car_category` VALUES ('1058', '229', 'Falcon', '', '1', '0', '1514129375', '0', '0', '2023', 'uploads/car/2023.jpg');
INSERT INTO `cys_car_category` VALUES ('1059', '229', 'Fusion', '', '1', '0', '1514129375', '0', '0', '744', 'uploads/car/744.jpg');
INSERT INTO `cys_car_category` VALUES ('1060', '229', '金牛座(海外)', '', '1', '0', '1514129375', '0', '0', '759', 'uploads/car/759.jpg');
INSERT INTO `cys_car_category` VALUES ('1061', '229', '蒙迪欧(海外)', '', '1', '0', '1514129375', '0', '0', '986', 'uploads/car/986.jpg');
INSERT INTO `cys_car_category` VALUES ('1062', '229', '翼搏(海外)', '', '1', '0', '1514129376', '0', '0', '2622', 'uploads/car/2622.jpg');
INSERT INTO `cys_car_category` VALUES ('1063', '229', 'Kuga', '', '1', '0', '1514129376', '0', '0', '97', 'uploads/car/97.jpg');
INSERT INTO `cys_car_category` VALUES ('1064', '229', 'Territory', '', '1', '0', '1514129376', '0', '0', '2265', 'uploads/car/2265.jpg');
INSERT INTO `cys_car_category` VALUES ('1065', '229', '撼路者(海外)', '', '1', '0', '1514129376', '0', '0', '3183', 'uploads/car/3183.jpg');
INSERT INTO `cys_car_category` VALUES ('1066', '229', '锐界(进口)', '', '1', '0', '1514129377', '0', '0', '684', 'uploads/car/684.jpg');
INSERT INTO `cys_car_category` VALUES ('1067', '229', 'FLEX', '', '1', '0', '1514129377', '0', '0', '972', 'uploads/car/972.jpg');
INSERT INTO `cys_car_category` VALUES ('1068', '229', '征服者', '', '1', '0', '1514129377', '0', '0', '2025', 'uploads/car/2025.jpg');
INSERT INTO `cys_car_category` VALUES ('1069', '229', 'B-MAX', '', '1', '0', '1514129377', '0', '0', '2281', 'uploads/car/2281.jpg');
INSERT INTO `cys_car_category` VALUES ('1070', '229', 'Galaxy', '', '1', '0', '1514129378', '0', '0', '2006', 'uploads/car/2006.jpg');
INSERT INTO `cys_car_category` VALUES ('1071', '229', 'Grand C-MAX', '', '1', '0', '1514129378', '0', '0', '921', 'uploads/car/921.jpg');
INSERT INTO `cys_car_category` VALUES ('1072', '229', 'S-MAX', '', '1', '0', '1514129378', '0', '0', '2041', 'uploads/car/2041.jpg');
INSERT INTO `cys_car_category` VALUES ('1073', '229', 'Tourneo Courier', '', '1', '0', '1514129378', '0', '0', '3028', 'uploads/car/3028.jpg');
INSERT INTO `cys_car_category` VALUES ('1074', '229', 'Tourneo Custom', '', '1', '0', '1514129379', '0', '0', '2677', 'uploads/car/2677.jpg');
INSERT INTO `cys_car_category` VALUES ('1075', '229', 'Transit', '', '1', '0', '1514129379', '0', '0', '2946', 'uploads/car/2946.jpg');
INSERT INTO `cys_car_category` VALUES ('1076', '229', '福特E350', '', '1', '0', '1514129379', '0', '0', '2302', 'uploads/car/2302.jpg');
INSERT INTO `cys_car_category` VALUES ('1077', '229', 'Evos', '', '1', '0', '1514129380', '0', '0', '2406', 'uploads/car/2406.jpg');
INSERT INTO `cys_car_category` VALUES ('1078', '229', 'Formula', '', '1', '0', '1514129380', '0', '0', '2423', 'uploads/car/2423.jpg');
INSERT INTO `cys_car_category` VALUES ('1079', '229', 'Mad Max', '', '1', '0', '1514129380', '0', '0', '2298', 'uploads/car/2298.jpg');
INSERT INTO `cys_car_category` VALUES ('1080', '229', 'Ranger', '', '1', '0', '1514129380', '0', '0', '2707', 'uploads/car/2707.jpg');
INSERT INTO `cys_car_category` VALUES ('1081', '229', 'Super Duty', '', '1', '0', '1514129381', '0', '0', '2713', 'uploads/car/2713.jpg');
INSERT INTO `cys_car_category` VALUES ('1082', '229', '福特Atlas', '', '1', '0', '1514129381', '0', '0', '2997', 'uploads/car/2997.jpg');
INSERT INTO `cys_car_category` VALUES ('1083', '229', '福特F-250', '', '1', '0', '1514129381', '0', '0', '2820', 'uploads/car/2820.jpg');
INSERT INTO `cys_car_category` VALUES ('1084', '229', '福特F-350', '', '1', '0', '1514129381', '0', '0', '2389', 'uploads/car/2389.jpg');
INSERT INTO `cys_car_category` VALUES ('1085', '229', '福特F-450', '', '1', '0', '1514129384', '0', '0', '2390', 'uploads/car/2390.jpg');
INSERT INTO `cys_car_category` VALUES ('1086', '229', '福特F-650', '', '1', '0', '1514129384', '0', '0', '2884', 'uploads/car/2884.jpg');
INSERT INTO `cys_car_category` VALUES ('1087', '229', 'Start', '', '1', '0', '1514129384', '0', '0', '2183', 'uploads/car/2183.jpg');
INSERT INTO `cys_car_category` VALUES ('1088', '229', 'Crown Victoria', '', '1', '0', '1514129385', '0', '0', '3696', 'uploads/car/3696.jpg');
INSERT INTO `cys_car_category` VALUES ('1089', '229', '福特GPW', '', '1', '0', '1514129385', '0', '0', '3308', 'uploads/car/3308.jpg');
INSERT INTO `cys_car_category` VALUES ('1090', '229', 'Vertrek', '', '1', '0', '1514129385', '0', '0', '2258', 'uploads/car/2258.jpg');
INSERT INTO `cys_car_category` VALUES ('1091', '229', '福特4-Trac', '', '1', '0', '1514129386', '0', '0', '2817', 'uploads/car/2817.jpg');
INSERT INTO `cys_car_category` VALUES ('1092', '49', '812 Superfast', '', '1', '0', '1514129386', '0', '0', '4314', 'uploads/car/4314.jpg');
INSERT INTO `cys_car_category` VALUES ('1093', '49', 'California T', '', '1', '0', '1514129386', '3088000', '3088000', '676', 'uploads/car/676.jpg');
INSERT INTO `cys_car_category` VALUES ('1094', '49', 'F12berlinetta', '', '1', '0', '1514129387', '5308000', '5308000', '2682', 'uploads/car/2682.jpg');
INSERT INTO `cys_car_category` VALUES ('1095', '49', 'GTC4Lusso', '', '1', '0', '1514129387', '5388000', '3588000', '4027', 'uploads/car/4027.jpg');
INSERT INTO `cys_car_category` VALUES ('1096', '49', 'LaFerrari', '', '1', '0', '1514129387', '22500000', '22500000', '3016', 'uploads/car/3016.jpg');
INSERT INTO `cys_car_category` VALUES ('1097', '49', 'Portofino', '', '1', '0', '1514129387', '2908000', '2908000', '4524', 'uploads/car/4524.jpg');
INSERT INTO `cys_car_category` VALUES ('1098', '49', '法拉利488', '', '1', '0', '1514129388', '3888000', '3388000', '3720', 'uploads/car/3720.jpg');
INSERT INTO `cys_car_category` VALUES ('1099', '49', 'Sergio', '', '1', '0', '1514129388', '0', '0', '3026', 'uploads/car/3026.jpg');
INSERT INTO `cys_car_category` VALUES ('1100', '49', '法拉利308', '', '1', '0', '1514129388', '0', '0', '3713', 'uploads/car/3713.jpg');
INSERT INTO `cys_car_category` VALUES ('1101', '49', '法拉利J50', '', '1', '0', '1514129388', '0', '0', '4272', 'uploads/car/4272.jpg');
INSERT INTO `cys_car_category` VALUES ('1102', '49', '法拉利458', '', '1', '0', '1514129389', '0', '0', '889', 'uploads/car/889.jpg');
INSERT INTO `cys_car_category` VALUES ('1103', '49', '法拉利599', '', '1', '0', '1514129389', '0', '0', '459', 'uploads/car/459.jpg');
INSERT INTO `cys_car_category` VALUES ('1104', '49', '法拉利FF', '', '1', '0', '1514129389', '0', '0', '2261', 'uploads/car/2261.jpg');
INSERT INTO `cys_car_category` VALUES ('1105', '49', 'Dino', '', '1', '0', '1514129389', '0', '0', '2594', 'uploads/car/2594.jpg');
INSERT INTO `cys_car_category` VALUES ('1106', '49', 'Enzo', '', '1', '0', '1514129390', '0', '0', '394', 'uploads/car/394.jpg');
INSERT INTO `cys_car_category` VALUES ('1107', '49', '法拉利212', '', '1', '0', '1514129390', '0', '0', '2874', 'uploads/car/2874.jpg');
INSERT INTO `cys_car_category` VALUES ('1108', '49', '法拉利250 GT', '', '1', '0', '1514129390', '0', '0', '2875', 'uploads/car/2875.jpg');
INSERT INTO `cys_car_category` VALUES ('1109', '49', '法拉利275', '', '1', '0', '1514129390', '0', '0', '2880', 'uploads/car/2880.jpg');
INSERT INTO `cys_car_category` VALUES ('1110', '49', '法拉利328', '', '1', '0', '1514129391', '0', '0', '2595', 'uploads/car/2595.jpg');
INSERT INTO `cys_car_category` VALUES ('1111', '49', '法拉利348', '', '1', '0', '1514129391', '0', '0', '2597', 'uploads/car/2597.jpg');
INSERT INTO `cys_car_category` VALUES ('1112', '49', '法拉利360', '', '1', '0', '1514129391', '0', '0', '361', 'uploads/car/361.jpg');
INSERT INTO `cys_car_category` VALUES ('1113', '49', '法拉利375', '', '1', '0', '1514129391', '0', '0', '2876', 'uploads/car/2876.jpg');
INSERT INTO `cys_car_category` VALUES ('1114', '49', '法拉利400', '', '1', '0', '1514129392', '0', '0', '2878', 'uploads/car/2878.jpg');
INSERT INTO `cys_car_category` VALUES ('1115', '49', '法拉利410', '', '1', '0', '1514129392', '0', '0', '2877', 'uploads/car/2877.jpg');
INSERT INTO `cys_car_category` VALUES ('1116', '49', '法拉利456', '', '1', '0', '1514129392', '0', '0', '2592', 'uploads/car/2592.jpg');
INSERT INTO `cys_car_category` VALUES ('1117', '49', '法拉利500', '', '1', '0', '1514129393', '0', '0', '2879', 'uploads/car/2879.jpg');
INSERT INTO `cys_car_category` VALUES ('1118', '49', '法拉利550', '', '1', '0', '1514129393', '0', '0', '2591', 'uploads/car/2591.jpg');
INSERT INTO `cys_car_category` VALUES ('1119', '49', '法拉利575M', '', '1', '0', '1514129393', '0', '0', '308', 'uploads/car/308.jpg');
INSERT INTO `cys_car_category` VALUES ('1120', '49', '法拉利612', '', '1', '0', '1514129393', '0', '0', '367', 'uploads/car/367.jpg');
INSERT INTO `cys_car_category` VALUES ('1121', '49', '法拉利F355', '', '1', '0', '1514129394', '0', '0', '2598', 'uploads/car/2598.jpg');
INSERT INTO `cys_car_category` VALUES ('1122', '49', '法拉利F40', '', '1', '0', '1514129394', '0', '0', '2177', 'uploads/car/2177.jpg');
INSERT INTO `cys_car_category` VALUES ('1123', '49', '法拉利F430', '', '1', '0', '1514129394', '0', '0', '359', 'uploads/car/359.jpg');
INSERT INTO `cys_car_category` VALUES ('1124', '49', '法拉利F50', '', '1', '0', '1514129394', '0', '0', '2593', 'uploads/car/2593.jpg');
INSERT INTO `cys_car_category` VALUES ('1125', '49', '法拉利GTO', '', '1', '0', '1514129395', '0', '0', '2596', 'uploads/car/2596.jpg');
INSERT INTO `cys_car_category` VALUES ('1126', '230', '菲翔', '', '1', '0', '1514129395', '148800', '100800', '2767', 'uploads/car/2767.jpg');
INSERT INTO `cys_car_category` VALUES ('1127', '230', '致悦', '', '1', '0', '1514129395', '148800', '100800', '3267', 'uploads/car/3267.jpg');
INSERT INTO `cys_car_category` VALUES ('1128', '231', '派朗', '', '1', '0', '1514129396', '0', '0', '465', 'uploads/car/465.jpg');
INSERT INTO `cys_car_category` VALUES ('1129', '231', '派力奥', '', '1', '0', '1514129396', '0', '0', '89', 'uploads/car/89.jpg');
INSERT INTO `cys_car_category` VALUES ('1130', '231', '西耶那', '', '1', '0', '1514129399', '0', '0', '90', 'uploads/car/90.jpg');
INSERT INTO `cys_car_category` VALUES ('1131', '231', '周末风', '', '1', '0', '1514129399', '0', '0', '91', 'uploads/car/91.jpg');
INSERT INTO `cys_car_category` VALUES ('1132', '232', '菲亚特500', '', '1', '0', '1514129399', '261800', '209800', '601', 'uploads/car/601.jpg');
INSERT INTO `cys_car_category` VALUES ('1133', '232', '菲跃', '', '1', '0', '1514129400', '375800', '249800', '2262', 'uploads/car/2262.jpg');
INSERT INTO `cys_car_category` VALUES ('1134', '232', 'Panda', '', '1', '0', '1514129400', '0', '0', '765', 'uploads/car/765.jpg');
INSERT INTO `cys_car_category` VALUES ('1135', '232', 'Avventura', '', '1', '0', '1514129400', '0', '0', '3378', 'uploads/car/3378.jpg');
INSERT INTO `cys_car_category` VALUES ('1136', '232', 'Idea', '', '1', '0', '1514129400', '0', '0', '2193', 'uploads/car/2193.jpg');
INSERT INTO `cys_car_category` VALUES ('1137', '232', 'Mobi', '', '1', '0', '1514129401', '0', '0', '4082', 'uploads/car/4082.jpg');
INSERT INTO `cys_car_category` VALUES ('1138', '232', '菲亚特500L', '', '1', '0', '1514129401', '0', '0', '3709', 'uploads/car/3709.jpg');
INSERT INTO `cys_car_category` VALUES ('1139', '232', '菲亚特Uno', '', '1', '0', '1514129401', '0', '0', '2175', 'uploads/car/2175.jpg');
INSERT INTO `cys_car_category` VALUES ('1140', '232', '派力奥(海外)', '', '1', '0', '1514129402', '0', '0', '2548', 'uploads/car/2548.jpg');
INSERT INTO `cys_car_category` VALUES ('1141', '232', '朋多', '', '1', '0', '1514129402', '0', '0', '543', 'uploads/car/543.jpg');
INSERT INTO `cys_car_category` VALUES ('1142', '232', 'Cronos', '', '1', '0', '1514129402', '0', '0', '4634', 'uploads/car/4634.jpg');
INSERT INTO `cys_car_category` VALUES ('1143', '232', 'Tipo', '', '1', '0', '1514129402', '0', '0', '3841', 'uploads/car/3841.jpg');
INSERT INTO `cys_car_category` VALUES ('1144', '232', '博悦', '', '1', '0', '1514129403', '0', '0', '542', 'uploads/car/542.jpg');
INSERT INTO `cys_car_category` VALUES ('1145', '232', '领雅', '', '1', '0', '1514129403', '0', '0', '544', 'uploads/car/544.jpg');
INSERT INTO `cys_car_category` VALUES ('1146', '232', '菲亚特500X', '', '1', '0', '1514129403', '0', '0', '3624', 'uploads/car/3624.jpg');
INSERT INTO `cys_car_category` VALUES ('1147', '232', '菲亚特FCC4', '', '1', '0', '1514129403', '0', '0', '3642', 'uploads/car/3642.jpg');
INSERT INTO `cys_car_category` VALUES ('1148', '232', 'Fiorino', '', '1', '0', '1514129404', '0', '0', '4079', 'uploads/car/4079.jpg');
INSERT INTO `cys_car_category` VALUES ('1149', '232', 'Qubo', '', '1', '0', '1514129404', '0', '0', '779', 'uploads/car/779.jpg');
INSERT INTO `cys_car_category` VALUES ('1150', '232', '多宝', '', '1', '0', '1514129404', '0', '0', '391', 'uploads/car/391.jpg');
INSERT INTO `cys_car_category` VALUES ('1151', '232', '菲亚特124', '', '1', '0', '1514129404', '0', '0', '3866', 'uploads/car/3866.jpg');
INSERT INTO `cys_car_category` VALUES ('1152', '232', 'Fullback', '', '1', '0', '1514129405', '0', '0', '4055', 'uploads/car/4055.jpg');
INSERT INTO `cys_car_category` VALUES ('1153', '232', 'Strada', '', '1', '0', '1514129405', '0', '0', '2651', 'uploads/car/2651.jpg');
INSERT INTO `cys_car_category` VALUES ('1154', '232', 'Toro', '', '1', '0', '1514129405', '0', '0', '3936', 'uploads/car/3936.jpg');
INSERT INTO `cys_car_category` VALUES ('1155', '232', '菲亚特126P', '', '1', '0', '1514129406', '0', '0', '2868', 'uploads/car/2868.jpg');
INSERT INTO `cys_car_category` VALUES ('1156', '232', 'Sedici', '', '1', '0', '1514129406', '0', '0', '916', 'uploads/car/916.jpg');
INSERT INTO `cys_car_category` VALUES ('1157', '233', '风景V3', '', '1', '0', '1514129406', '37900', '31600', '3676', 'uploads/car/3676.jpg');
INSERT INTO `cys_car_category` VALUES ('1158', '233', '风景V5', '', '1', '0', '1514129407', '43100', '35700', '3821', 'uploads/car/3821.jpg');
INSERT INTO `cys_car_category` VALUES ('1159', '233', '风景G7', '', '1', '0', '1514129407', '112800', '67800', '3440', 'uploads/car/3440.jpg');
INSERT INTO `cys_car_category` VALUES ('1160', '233', '风景G9', '', '1', '0', '1514129407', '199800', '96200', '4035', 'uploads/car/4035.jpg');
INSERT INTO `cys_car_category` VALUES ('1161', '233', '福田风景', '', '1', '0', '1514129407', '102300', '56300', '2535', 'uploads/car/2535.jpg');
INSERT INTO `cys_car_category` VALUES ('1162', '233', '蒙派克E', '', '1', '0', '1514129408', '220000', '72800', '2542', 'uploads/car/2542.jpg');
INSERT INTO `cys_car_category` VALUES ('1163', '233', '蒙派克S', '', '1', '0', '1514129408', '172500', '139000', '3089', 'uploads/car/3089.jpg');
INSERT INTO `cys_car_category` VALUES ('1164', '233', '图雅诺', '', '1', '0', '1514129408', '235800', '109800', '3735', 'uploads/car/3735.jpg');
INSERT INTO `cys_car_category` VALUES ('1165', '233', '图雅诺EV', '', '1', '0', '1514129409', '297200', '297200', '4612', 'uploads/car/4612.jpg');
INSERT INTO `cys_car_category` VALUES ('1166', '233', '萨普', '', '1', '0', '1514129409', '99850', '58800', '2579', 'uploads/car/2579.jpg');
INSERT INTO `cys_car_category` VALUES ('1167', '233', '奥铃T3', '', '1', '0', '1514129409', '0', '0', '4165', 'uploads/car/4165.jpg');
INSERT INTO `cys_car_category` VALUES ('1168', '233', '迷迪', '', '1', '0', '1514129410', '0', '0', '661', 'uploads/car/661.jpg');
INSERT INTO `cys_car_category` VALUES ('1169', '233', '萨瓦纳', '', '1', '0', '1514129410', '210800', '131800', '3307', 'uploads/car/3307.jpg');
INSERT INTO `cys_car_category` VALUES ('1170', '233', '伽途im6', '', '1', '0', '1514129410', '72900', '61900', '4227', 'uploads/car/4227.jpg');
INSERT INTO `cys_car_category` VALUES ('1171', '233', '伽途im8', '', '1', '0', '1514129410', '79900', '70900', '4228', 'uploads/car/4228.jpg');
INSERT INTO `cys_car_category` VALUES ('1172', '233', '伽途ix5', '', '1', '0', '1514129411', '58900', '41900', '3991', 'uploads/car/3991.jpg');
INSERT INTO `cys_car_category` VALUES ('1173', '233', '伽途ix7', '', '1', '0', '1514129411', '69900', '55900', '3990', 'uploads/car/3990.jpg');
INSERT INTO `cys_car_category` VALUES ('1174', '233', '拓陆者', '', '1', '0', '1514129414', '203100', '80800', '2577', 'uploads/car/2577.jpg');
INSERT INTO `cys_car_category` VALUES ('1175', '234', '揽福', '', '1', '0', '1514129414', '144800', '89800', '3633', 'uploads/car/3633.jpg');
INSERT INTO `cys_car_category` VALUES ('1176', '234', '小超人', '', '1', '0', '1514129414', '67800', '49800', '2475', 'uploads/car/2475.jpg');
INSERT INTO `cys_car_category` VALUES ('1177', '234', '雄师F16', '', '1', '0', '1514129415', '93800', '55800', '2895', 'uploads/car/2895.jpg');
INSERT INTO `cys_car_category` VALUES ('1178', '234', '雄师F22', '', '1', '0', '1514129415', '127800', '77800', '3754', 'uploads/car/3754.jpg');
INSERT INTO `cys_car_category` VALUES ('1179', '234', '雄狮', '', '1', '0', '1514129415', '93800', '73800', '2894', 'uploads/car/2894.jpg');
INSERT INTO `cys_car_category` VALUES ('1180', '234', '探索者Ⅱ', '', '1', '0', '1514129416', '0', '0', '2454', 'uploads/car/2454.jpg');
INSERT INTO `cys_car_category` VALUES ('1181', '234', '探索者Ⅲ', '', '1', '0', '1514129416', '0', '0', '2455', 'uploads/car/2455.jpg');
INSERT INTO `cys_car_category` VALUES ('1182', '234', '探索者6', '', '1', '0', '1514129416', '0', '0', '2453', 'uploads/car/2453.jpg');
INSERT INTO `cys_car_category` VALUES ('1183', '235', '启腾V60', '', '1', '0', '1514129417', '66900', '56900', '3992', 'uploads/car/3992.jpg');
INSERT INTO `cys_car_category` VALUES ('1184', '235', '启腾EX80', '', '1', '0', '1514129417', '60800', '42900', '3877', 'uploads/car/3877.jpg');
INSERT INTO `cys_car_category` VALUES ('1185', '235', '启腾M70', '', '1', '0', '1514129417', '45900', '33900', '3346', 'uploads/car/3346.jpg');
INSERT INTO `cys_car_category` VALUES ('1186', '235', '启腾M70EV', '', '1', '0', '1514129417', '163600', '136800', '4530', 'uploads/car/4530.jpg');
INSERT INTO `cys_car_category` VALUES ('1187', '236', '传祺GM8', '', '1', '0', '1514129418', '0', '0', '4174', 'uploads/car/4174.jpg');
INSERT INTO `cys_car_category` VALUES ('1188', '236', '传祺GA3S新能源', '', '1', '0', '1514129418', '174800', '164800', '4255', 'uploads/car/4255.jpg');
INSERT INTO `cys_car_category` VALUES ('1189', '236', '传祺GA3', '', '1', '0', '1514129418', '119800', '75800', '3069', 'uploads/car/3069.jpg');
INSERT INTO `cys_car_category` VALUES ('1190', '236', '传祺GA3S视界', '', '1', '0', '1514129419', '119800', '69800', '3524', 'uploads/car/3524.jpg');
INSERT INTO `cys_car_category` VALUES ('1191', '236', '传祺GA5新能源', '', '1', '0', '1514129420', '219300', '199300', '4340', 'uploads/car/4340.jpg');
INSERT INTO `cys_car_category` VALUES ('1192', '236', '传祺GA6', '', '1', '0', '1514129420', '196800', '102800', '3349', 'uploads/car/3349.jpg');
INSERT INTO `cys_car_category` VALUES ('1193', '236', '传祺GA8', '', '1', '0', '1514129420', '259800', '149800', '3782', 'uploads/car/3782.jpg');
INSERT INTO `cys_car_category` VALUES ('1194', '236', '传祺GE3', '', '1', '0', '1514129421', '245800', '222800', '4291', 'uploads/car/4291.jpg');
INSERT INTO `cys_car_category` VALUES ('1195', '236', '传祺GS3', '', '1', '0', '1514129421', '116800', '73800', '3495', 'uploads/car/3495.jpg');
INSERT INTO `cys_car_category` VALUES ('1196', '236', '传祺GS4', '', '1', '0', '1514129421', '161800', '99800', '3691', 'uploads/car/3691.jpg');
INSERT INTO `cys_car_category` VALUES ('1197', '236', '传祺GS4新能源', '', '1', '0', '1514129421', '219800', '209800', '4256', 'uploads/car/4256.jpg');
INSERT INTO `cys_car_category` VALUES ('1198', '236', '传祺GS5 Super', '', '1', '0', '1514129422', '196800', '116800', '3574', 'uploads/car/3574.jpg');
INSERT INTO `cys_car_category` VALUES ('1199', '236', '传祺GS7', '', '1', '0', '1514129422', '209800', '149800', '4230', 'uploads/car/4230.jpg');
INSERT INTO `cys_car_category` VALUES ('1200', '236', '传祺GS8', '', '1', '0', '1514129422', '259800', '163800', '4094', 'uploads/car/4094.jpg');
INSERT INTO `cys_car_category` VALUES ('1201', '236', 'iSPACE', '', '1', '0', '1514129422', '0', '0', '4611', 'uploads/car/4611.jpg');
INSERT INTO `cys_car_category` VALUES ('1202', '236', 'EV coupe', '', '1', '0', '1514129423', '0', '0', '3952', 'uploads/car/3952.jpg');
INSERT INTO `cys_car_category` VALUES ('1203', '236', '传祺E-jet', '', '1', '0', '1514129423', '0', '0', '3498', 'uploads/car/3498.jpg');
INSERT INTO `cys_car_category` VALUES ('1204', '236', '传祺GA4', '', '1', '0', '1514129423', '0', '0', '4630', 'uploads/car/4630.jpg');
INSERT INTO `cys_car_category` VALUES ('1205', '236', 'WitStar', '', '1', '0', '1514129424', '0', '0', '603', 'uploads/car/603.jpg');
INSERT INTO `cys_car_category` VALUES ('1206', '236', '传祺GA7', '', '1', '0', '1514129424', '0', '0', '3687', 'uploads/car/3687.jpg');
INSERT INTO `cys_car_category` VALUES ('1207', '236', 'EnSpirit', '', '1', '0', '1514129424', '0', '0', '4290', 'uploads/car/4290.jpg');
INSERT INTO `cys_car_category` VALUES ('1208', '236', '传祺GS6', '', '1', '0', '1514129424', '0', '0', '3902', 'uploads/car/3902.jpg');
INSERT INTO `cys_car_category` VALUES ('1209', '236', 'i-lounge朗智', '', '1', '0', '1514129425', '0', '0', '3951', 'uploads/car/3951.jpg');
INSERT INTO `cys_car_category` VALUES ('1210', '236', 'EnLight', '', '1', '0', '1514129425', '0', '0', '4250', 'uploads/car/4250.jpg');
INSERT INTO `cys_car_category` VALUES ('1211', '236', 'E-Linker', '', '1', '0', '1514129425', '0', '0', '3499', 'uploads/car/3499.jpg');
INSERT INTO `cys_car_category` VALUES ('1212', '236', '4-DOOR Coupe', '', '1', '0', '1514129425', '0', '0', '3501', 'uploads/car/3501.jpg');
INSERT INTO `cys_car_category` VALUES ('1213', '236', '传祺GA5', '', '1', '0', '1514129426', '0', '0', '2141', 'uploads/car/2141.jpg');
INSERT INTO `cys_car_category` VALUES ('1214', '236', 'X-POWER', '', '1', '0', '1514129427', '0', '0', '2308', 'uploads/car/2308.jpg');
INSERT INTO `cys_car_category` VALUES ('1215', '236', '传祺GS5', '', '1', '0', '1514129428', '0', '0', '2560', 'uploads/car/2560.jpg');
INSERT INTO `cys_car_category` VALUES ('1216', '236', 'Cabrio-Coupe', '', '1', '0', '1514129429', '0', '0', '3500', 'uploads/car/3500.jpg');
INSERT INTO `cys_car_category` VALUES ('1217', '237', '观致 Model Young', '', '1', '0', '1514129429', '0', '0', '4527', 'uploads/car/4527.jpg');
INSERT INTO `cys_car_category` VALUES ('1218', '237', '观致3', '', '1', '0', '1514129429', '169900', '100900', '2974', 'uploads/car/2974.jpg');
INSERT INTO `cys_car_category` VALUES ('1219', '237', '观致5', '', '1', '0', '1514129430', '194900', '139900', '3662', 'uploads/car/3662.jpg');
INSERT INTO `cys_car_category` VALUES ('1220', '237', '观致', '', '1', '0', '1514129430', '0', '0', '2580', 'uploads/car/2580.jpg');
INSERT INTO `cys_car_category` VALUES ('1221', '237', '观致9', '', '1', '0', '1514129430', '0', '0', '3544', 'uploads/car/3544.jpg');
INSERT INTO `cys_car_category` VALUES ('1222', '237', '观致2', '', '1', '0', '1514129431', '0', '0', '3791', 'uploads/car/3791.jpg');
INSERT INTO `cys_car_category` VALUES ('1223', '237', 'Model K-EV', '', '1', '0', '1514129431', '0', '0', '4382', 'uploads/car/4382.jpg');
INSERT INTO `cys_car_category` VALUES ('1224', '57', 'YUKON', '', '1', '0', '1514129431', '1680000', '1188000', '947', 'uploads/car/947.jpg');
INSERT INTO `cys_car_category` VALUES ('1225', '57', 'SAVANA', '', '1', '0', '1514129432', '1880000', '688000', '980', 'uploads/car/980.jpg');
INSERT INTO `cys_car_category` VALUES ('1226', '57', 'SIERRA', '', '1', '0', '1514129432', '758000', '598000', '2355', 'uploads/car/2355.jpg');
INSERT INTO `cys_car_category` VALUES ('1227', '57', 'Granite', '', '1', '0', '1514129432', '0', '0', '3356', 'uploads/car/3356.jpg');
INSERT INTO `cys_car_category` VALUES ('1228', '57', 'TERRAIN', '', '1', '0', '1514129432', '0', '0', '955', 'uploads/car/955.jpg');
INSERT INTO `cys_car_category` VALUES ('1229', '57', 'ACADIA', '', '1', '0', '1514129433', '0', '0', '952', 'uploads/car/952.jpg');
INSERT INTO `cys_car_category` VALUES ('1230', '57', 'CANYON', '', '1', '0', '1514129433', '0', '0', '3345', 'uploads/car/3345.jpg');
INSERT INTO `cys_car_category` VALUES ('1231', '57', 'Jimmy', '', '1', '0', '1514129433', '0', '0', '3400', 'uploads/car/3400.jpg');
INSERT INTO `cys_car_category` VALUES ('1232', '57', 'ENVOY', '', '1', '0', '1514129433', '0', '0', '953', 'uploads/car/953.jpg');
INSERT INTO `cys_car_category` VALUES ('1233', '57', 'Graphyte', '', '1', '0', '1514129434', '0', '0', '954', 'uploads/car/954.jpg');
INSERT INTO `cys_car_category` VALUES ('1234', '57', 'Denali XT', '', '1', '0', '1514129434', '0', '0', '2822', 'uploads/car/2822.jpg');
INSERT INTO `cys_car_category` VALUES ('1235', '238', '国金GM3', '', '1', '0', '1514129434', '271800', '241800', '4556', 'uploads/car/4556.jpg');
INSERT INTO `cys_car_category` VALUES ('1236', '59', '星旺', '', '1', '0', '1514129435', '35800', '25900', '2488', 'uploads/car/2488.jpg');
INSERT INTO `cys_car_category` VALUES ('1237', '59', '星旺CL', '', '1', '0', '1514129435', '45800', '36800', '2885', 'uploads/car/2885.jpg');
INSERT INTO `cys_car_category` VALUES ('1238', '59', '星旺L', '', '1', '0', '1514129435', '34800', '32900', '3159', 'uploads/car/3159.jpg');
INSERT INTO `cys_car_category` VALUES ('1239', '59', '星旺M1', '', '1', '0', '1514129436', '31800', '29900', '3139', 'uploads/car/3139.jpg');
INSERT INTO `cys_car_category` VALUES ('1240', '59', '星旺M2', '', '1', '0', '1514129436', '32800', '30900', '3140', 'uploads/car/3140.jpg');
INSERT INTO `cys_car_category` VALUES ('1241', '59', '财运100', '', '1', '0', '1514129436', '70800', '52900', '2599', 'uploads/car/2599.jpg');
INSERT INTO `cys_car_category` VALUES ('1242', '59', '财运300', '', '1', '0', '1514129436', '70800', '57900', '2571', 'uploads/car/2571.jpg');
INSERT INTO `cys_car_category` VALUES ('1243', '59', '财运500', '', '1', '0', '1514129437', '88800', '62900', '2568', 'uploads/car/2568.jpg');
INSERT INTO `cys_car_category` VALUES ('1244', '59', '广汽吉奥GP150', '', '1', '0', '1514129437', '112800', '88800', '3480', 'uploads/car/3480.jpg');
INSERT INTO `cys_car_category` VALUES ('1245', '59', '奥轩GX5', '', '1', '0', '1514129437', '151800', '109800', '2774', 'uploads/car/2774.jpg');
INSERT INTO `cys_car_category` VALUES ('1246', '59', '星朗', '', '1', '0', '1514129438', '74300', '45800', '3134', 'uploads/car/3134.jpg');
INSERT INTO `cys_car_category` VALUES ('1247', '59', 'E美', '', '1', '0', '1514129438', '0', '0', '3272', 'uploads/car/3272.jpg');
INSERT INTO `cys_car_category` VALUES ('1248', '59', '奥轩G3', '', '1', '0', '1514129438', '0', '0', '2114', 'uploads/car/2114.jpg');
INSERT INTO `cys_car_category` VALUES ('1249', '59', '吉奥凯旋', '', '1', '0', '1514129438', '0', '0', '969', 'uploads/car/969.jpg');
INSERT INTO `cys_car_category` VALUES ('1250', '59', '凯睿', '', '1', '0', '1514129439', '0', '0', '865', 'uploads/car/865.jpg');
INSERT INTO `cys_car_category` VALUES ('1251', '59', '帅豹', '', '1', '0', '1514129439', '0', '0', '1015', 'uploads/car/1015.jpg');
INSERT INTO `cys_car_category` VALUES ('1252', '59', '帅威', '', '1', '0', '1514129439', '0', '0', '968', 'uploads/car/968.jpg');
INSERT INTO `cys_car_category` VALUES ('1253', '59', '奥轩G5', '', '1', '0', '1514129439', '0', '0', '2306', 'uploads/car/2306.jpg');
INSERT INTO `cys_car_category` VALUES ('1254', '59', '广汽吉奥GX6', '', '1', '0', '1514129440', '0', '0', '3477', 'uploads/car/3477.jpg');
INSERT INTO `cys_car_category` VALUES ('1255', '59', '帅驰', '', '1', '0', '1514129440', '0', '0', '967', 'uploads/car/967.jpg');
INSERT INTO `cys_car_category` VALUES ('1256', '59', '帅舰', '', '1', '0', '1514129440', '0', '0', '864', 'uploads/car/864.jpg');
INSERT INTO `cys_car_category` VALUES ('1257', '239', '大蛇', '', '1', '0', '1514129443', '0', '0', '2093', 'uploads/car/2093.jpg');
INSERT INTO `cys_car_category` VALUES ('1258', '239', '嘉路', '', '1', '0', '1514129443', '0', '0', '2095', 'uploads/car/2095.jpg');
INSERT INTO `cys_car_category` VALUES ('1259', '239', '女王', '', '1', '0', '1514129443', '0', '0', '2094', 'uploads/car/2094.jpg');
INSERT INTO `cys_car_category` VALUES ('1260', '209', '哈弗H1', '', '1', '0', '1514129444', '73900', '54900', '3454', 'uploads/car/3454.jpg');
INSERT INTO `cys_car_category` VALUES ('1261', '209', '哈弗H2', '', '1', '0', '1514129444', '118800', '86800', '2615', 'uploads/car/2615.jpg');
INSERT INTO `cys_car_category` VALUES ('1262', '209', '哈弗H2s', '', '1', '0', '1514129444', '103000', '83800', '4168', 'uploads/car/4168.jpg');
INSERT INTO `cys_car_category` VALUES ('1263', '209', '哈弗H5', '', '1', '0', '1514129445', '136800', '107800', '2027', 'uploads/car/2027.jpg');
INSERT INTO `cys_car_category` VALUES ('1264', '209', '哈弗H6', '', '1', '0', '1514129445', '146800', '88800', '2123', 'uploads/car/2123.jpg');
INSERT INTO `cys_car_category` VALUES ('1265', '209', '哈弗H6 Coupe', '', '1', '0', '1514129445', '149800', '109000', '3481', 'uploads/car/3481.jpg');
INSERT INTO `cys_car_category` VALUES ('1266', '209', '哈弗M6', '', '1', '0', '1514129445', '109800', '89800', '4485', 'uploads/car/4485.jpg');
INSERT INTO `cys_car_category` VALUES ('1267', '209', '哈弗H7', '', '1', '0', '1514129446', '180000', '139000', '3074', 'uploads/car/3074.jpg');
INSERT INTO `cys_car_category` VALUES ('1268', '209', '哈弗H8', '', '1', '0', '1514129446', '231800', '183800', '2124', 'uploads/car/2124.jpg');
INSERT INTO `cys_car_category` VALUES ('1269', '209', '哈弗H9', '', '1', '0', '1514129446', '272800', '199800', '3298', 'uploads/car/3298.jpg');
INSERT INTO `cys_car_category` VALUES ('1270', '209', '哈弗Concept B', '', '1', '0', '1514129446', '0', '0', '3808', 'uploads/car/3808.jpg');
INSERT INTO `cys_car_category` VALUES ('1271', '209', '哈弗COUPE', '', '1', '0', '1514129447', '0', '0', '3449', 'uploads/car/3449.jpg');
INSERT INTO `cys_car_category` VALUES ('1272', '209', '哈弗E', '', '1', '0', '1514129447', '0', '0', '2807', 'uploads/car/2807.jpg');
INSERT INTO `cys_car_category` VALUES ('1273', '209', '哈弗H4', '', '1', '0', '1514129447', '0', '0', '4608', 'uploads/car/4608.jpg');
INSERT INTO `cys_car_category` VALUES ('1274', '209', '哈弗HB-02', '', '1', '0', '1514129447', '0', '0', '4100', 'uploads/car/4100.jpg');
INSERT INTO `cys_car_category` VALUES ('1275', '209', '哈弗HB-03', '', '1', '0', '1514129448', '0', '0', '4429', 'uploads/car/4429.jpg');
INSERT INTO `cys_car_category` VALUES ('1276', '209', '哈弗HR-02', '', '1', '0', '1514129448', '0', '0', '4118', 'uploads/car/4118.jpg');
INSERT INTO `cys_car_category` VALUES ('1277', '209', '哈弗Concept R', '', '1', '0', '1514129448', '0', '0', '3807', 'uploads/car/3807.jpg');
INSERT INTO `cys_car_category` VALUES ('1278', '209', '哈弗IF', '', '1', '0', '1514129448', '0', '0', '2326', 'uploads/car/2326.jpg');
INSERT INTO `cys_car_category` VALUES ('1279', '209', '哈弗H3', '', '1', '0', '1514129449', '0', '0', '395', 'uploads/car/395.jpg');
INSERT INTO `cys_car_category` VALUES ('1280', '240', '海马爱尚EV', '', '1', '0', '1514129449', '123800', '123800', '4459', 'uploads/car/4459.jpg');
INSERT INTO `cys_car_category` VALUES ('1281', '240', '海马@3', '', '1', '0', '1514129449', '157800', '149800', '4156', 'uploads/car/4156.jpg');
INSERT INTO `cys_car_category` VALUES ('1282', '240', '海马M3', '', '1', '0', '1514129450', '69900', '49900', '2941', 'uploads/car/2941.jpg');
INSERT INTO `cys_car_category` VALUES ('1283', '240', '海马M6', '', '1', '0', '1514129450', '102800', '69800', '3006', 'uploads/car/3006.jpg');
INSERT INTO `cys_car_category` VALUES ('1284', '240', '海马S5青春版', '', '1', '0', '1514129450', '88800', '59800', '4169', 'uploads/car/4169.jpg');
INSERT INTO `cys_car_category` VALUES ('1285', '240', '海马S5', '', '1', '0', '1514129451', '106800', '79800', '3214', 'uploads/car/3214.jpg');
INSERT INTO `cys_car_category` VALUES ('1286', '240', '福仕达腾达', '', '1', '0', '1514129451', '45800', '36800', '3162', 'uploads/car/3162.jpg');
INSERT INTO `cys_car_category` VALUES ('1287', '240', '福仕达福卡', '', '1', '0', '1514129451', '40800', '34800', '3163', 'uploads/car/3163.jpg');
INSERT INTO `cys_car_category` VALUES ('1288', '240', '白马王子', '', '1', '0', '1514129451', '0', '0', '2164', 'uploads/car/2164.jpg');
INSERT INTO `cys_car_category` VALUES ('1289', '240', '海马Me', '', '1', '0', '1514129452', '0', '0', '998', 'uploads/car/998.jpg');
INSERT INTO `cys_car_category` VALUES ('1290', '240', '海马爱尚', '', '1', '0', '1514129452', '0', '0', '2318', 'uploads/car/2318.jpg');
INSERT INTO `cys_car_category` VALUES ('1291', '240', '海马王子', '', '1', '0', '1514129452', '0', '0', '855', 'uploads/car/855.jpg');
INSERT INTO `cys_car_category` VALUES ('1292', '240', '青蛙王子', '', '1', '0', '1514129453', '0', '0', '2163', 'uploads/car/2163.jpg');
INSERT INTO `cys_car_category` VALUES ('1293', '240', '海马C2', '', '1', '0', '1514129453', '0', '0', '2342', 'uploads/car/2342.jpg');
INSERT INTO `cys_car_category` VALUES ('1294', '240', '海马C3', '', '1', '0', '1514129453', '0', '0', '2343', 'uploads/car/2343.jpg');
INSERT INTO `cys_car_category` VALUES ('1295', '240', '福仕达鸿达', '', '1', '0', '1514129454', '43800', '29800', '3160', 'uploads/car/3160.jpg');
INSERT INTO `cys_car_category` VALUES ('1296', '240', '福仕达荣达', '', '1', '0', '1514129454', '50800', '32800', '2481', 'uploads/car/2481.jpg');
INSERT INTO `cys_car_category` VALUES ('1297', '241', '福美来', '', '1', '0', '1514129454', '92800', '68800', '470', 'uploads/car/470.jpg');
INSERT INTO `cys_car_category` VALUES ('1298', '241', '海马S7', '', '1', '0', '1514129455', '126800', '98800', '3075', 'uploads/car/3075.jpg');
INSERT INTO `cys_car_category` VALUES ('1299', '241', '福美来F7', '', '1', '0', '1514129455', '119800', '79800', '4525', 'uploads/car/4525.jpg');
INSERT INTO `cys_car_category` VALUES ('1300', '241', '普力马EV', '', '1', '0', '1514129457', '216800', '216800', '4339', 'uploads/car/4339.jpg');
INSERT INTO `cys_car_category` VALUES ('1301', '241', '福美来MPV', '', '1', '0', '1514129458', '128900', '79800', '4205', 'uploads/car/4205.jpg');
INSERT INTO `cys_car_category` VALUES ('1302', '241', '丘比特', '', '1', '0', '1514129458', '0', '0', '824', 'uploads/car/824.jpg');
INSERT INTO `cys_car_category` VALUES ('1303', '241', '海福星', '', '1', '0', '1514129458', '0', '0', '47', 'uploads/car/47.jpg');
INSERT INTO `cys_car_category` VALUES ('1304', '241', '海马3', '', '1', '0', '1514129458', '0', '0', '527', 'uploads/car/527.jpg');
INSERT INTO `cys_car_category` VALUES ('1305', '241', '欢动', '', '1', '0', '1514129459', '0', '0', '696', 'uploads/car/696.jpg');
INSERT INTO `cys_car_category` VALUES ('1306', '241', '海马M8', '', '1', '0', '1514129459', '0', '0', '2766', 'uploads/car/2766.jpg');
INSERT INTO `cys_car_category` VALUES ('1307', '241', '海马骑士', '', '1', '0', '1514129459', '0', '0', '823', 'uploads/car/823.jpg');
INSERT INTO `cys_car_category` VALUES ('1308', '241', '海马V70', '', '1', '0', '1514129459', '0', '0', '3994', 'uploads/car/3994.jpg');
INSERT INTO `cys_car_category` VALUES ('1309', '241', '普力马', '', '1', '0', '1514129460', '0', '0', '844', 'uploads/car/844.jpg');
INSERT INTO `cys_car_category` VALUES ('1310', '63', '汉腾X5', '', '1', '0', '1514129460', '106800', '59800', '4226', 'uploads/car/4226.jpg');
INSERT INTO `cys_car_category` VALUES ('1311', '63', '汉腾X7', '', '1', '0', '1514129460', '148800', '79800', '4130', 'uploads/car/4130.jpg');
INSERT INTO `cys_car_category` VALUES ('1312', '63', '汉腾X7新能源', '', '1', '0', '1514129472', '249800', '229800', '4613', 'uploads/car/4613.jpg');
INSERT INTO `cys_car_category` VALUES ('1313', '63', '汉腾EV', '', '1', '0', '1514129472', '0', '0', '4416', 'uploads/car/4416.jpg');
INSERT INTO `cys_car_category` VALUES ('1314', '63', '汉腾X5新能源', '', '1', '0', '1514129472', '0', '0', '4419', 'uploads/car/4419.jpg');
INSERT INTO `cys_car_category` VALUES ('1315', '242', '红旗L5', '', '1', '0', '1514129473', '0', '0', '3108', 'uploads/car/3108.jpg');
INSERT INTO `cys_car_category` VALUES ('1316', '242', '红旗H7', '', '1', '0', '1514129473', '479800', '249800', '2771', 'uploads/car/2771.jpg');
INSERT INTO `cys_car_category` VALUES ('1317', '242', '红旗B-Concept', '', '1', '0', '1514129473', '0', '0', '4122', 'uploads/car/4122.jpg');
INSERT INTO `cys_car_category` VALUES ('1318', '242', '红旗H5', '', '1', '0', '1514129474', '0', '0', '4410', 'uploads/car/4410.jpg');
INSERT INTO `cys_car_category` VALUES ('1319', '242', '红旗L7', '', '1', '0', '1514129474', '0', '0', '2789', 'uploads/car/2789.jpg');
INSERT INTO `cys_car_category` VALUES ('1320', '242', '红旗U-Concept', '', '1', '0', '1514129474', '0', '0', '4424', 'uploads/car/4424.jpg');
INSERT INTO `cys_car_category` VALUES ('1321', '242', '红旗HS7', '', '1', '0', '1514129474', '0', '0', '4150', 'uploads/car/4150.jpg');
INSERT INTO `cys_car_category` VALUES ('1322', '242', '红旗S-Concept', '', '1', '0', '1514129475', '0', '0', '4116', 'uploads/car/4116.jpg');
INSERT INTO `cys_car_category` VALUES ('1323', '242', '红旗LS5', '', '1', '0', '1514129475', '0', '0', '3812', 'uploads/car/3812.jpg');
INSERT INTO `cys_car_category` VALUES ('1324', '242', '红旗L6', '', '1', '0', '1514129475', '0', '0', '4125', 'uploads/car/4125.jpg');
INSERT INTO `cys_car_category` VALUES ('1325', '242', '世纪星', '', '1', '0', '1514129475', '0', '0', '978', 'uploads/car/978.jpg');
INSERT INTO `cys_car_category` VALUES ('1326', '242', '新明仕', '', '1', '0', '1514129476', '0', '0', '556', 'uploads/car/556.jpg');
INSERT INTO `cys_car_category` VALUES ('1327', '242', '红旗盛世', '', '1', '0', '1514129476', '0', '0', '428', 'uploads/car/428.jpg');
INSERT INTO `cys_car_category` VALUES ('1328', '242', '红旗CA770', '', '1', '0', '1514129476', '0', '0', '3424', 'uploads/car/3424.jpg');
INSERT INTO `cys_car_category` VALUES ('1329', '242', '红旗L9', '', '1', '0', '1514129476', '0', '0', '2138', 'uploads/car/2138.jpg');
INSERT INTO `cys_car_category` VALUES ('1330', '242', '红旗旗舰', '', '1', '0', '1514129477', '0', '0', '427', 'uploads/car/427.jpg');
INSERT INTO `cys_car_category` VALUES ('1331', '242', '红旗SUV', '', '1', '0', '1514129477', '0', '0', '830', 'uploads/car/830.jpg');
INSERT INTO `cys_car_category` VALUES ('1332', '243', '圣达菲', '', '1', '0', '1514129478', '161800', '69800', '3896', 'uploads/car/3896.jpg');
INSERT INTO `cys_car_category` VALUES ('1333', '243', '圣达菲5', '', '1', '0', '1514129478', '111800', '76800', '4518', 'uploads/car/4518.jpg');
INSERT INTO `cys_car_category` VALUES ('1334', '243', '圣达菲7', '', '1', '0', '1514129478', '82800', '69800', '4483', 'uploads/car/4483.jpg');
INSERT INTO `cys_car_category` VALUES ('1335', '243', '路盛E70', '', '1', '0', '1514129478', '89700', '69700', '2133', 'uploads/car/2133.jpg');
INSERT INTO `cys_car_category` VALUES ('1336', '243', '路盛E80', '', '1', '0', '1514129479', '71800', '61800', '3803', 'uploads/car/3803.jpg');
INSERT INTO `cys_car_category` VALUES ('1337', '243', '宝利格', '', '1', '0', '1514129479', '115800', '115800', '2144', 'uploads/car/2144.jpg');
INSERT INTO `cys_car_category` VALUES ('1338', '243', '圣达菲经典', '', '1', '0', '1514129479', '69800', '60800', '477', 'uploads/car/477.jpg');
INSERT INTO `cys_car_category` VALUES ('1339', '243', '路盛E90', '', '1', '0', '1514129479', '0', '0', '3483', 'uploads/car/3483.jpg');
INSERT INTO `cys_car_category` VALUES ('1340', '243', '华泰B11', '', '1', '0', '1514129480', '0', '0', '2108', 'uploads/car/2108.jpg');
INSERT INTO `cys_car_category` VALUES ('1341', '243', '特拉卡', '', '1', '0', '1514129480', '0', '0', '290', 'uploads/car/290.jpg');
INSERT INTO `cys_car_category` VALUES ('1342', '244', '旗胜V3', '', '1', '0', '1514129481', '113800', '101800', '2160', 'uploads/car/2160.jpg');
INSERT INTO `cys_car_category` VALUES ('1343', '244', '瑞途', '', '1', '0', '1514129481', '298800', '168800', '4162', 'uploads/car/4162.jpg');
INSERT INTO `cys_car_category` VALUES ('1344', '244', '傲骏', '', '1', '0', '1514129481', '62800', '54800', '2517', 'uploads/car/2517.jpg');
INSERT INTO `cys_car_category` VALUES ('1345', '244', '大柴神', '', '1', '0', '1514129481', '129800', '62800', '2515', 'uploads/car/2515.jpg');
INSERT INTO `cys_car_category` VALUES ('1346', '244', '黄海N1', '', '1', '0', '1514129482', '118800', '67800', '3455', 'uploads/car/3455.jpg');
INSERT INTO `cys_car_category` VALUES ('1347', '244', '黄海N2', '', '1', '0', '1514129482', '175800', '92800', '3846', 'uploads/car/3846.jpg');
INSERT INTO `cys_car_category` VALUES ('1348', '244', '黄海N3', '', '1', '0', '1514129482', '153800', '112800', '4436', 'uploads/car/4436.jpg');
INSERT INTO `cys_car_category` VALUES ('1349', '244', '小柴神', '', '1', '0', '1514129482', '62800', '54800', '2516', 'uploads/car/2516.jpg');
INSERT INTO `cys_car_category` VALUES ('1350', '244', '翱龙CUV', '', '1', '0', '1514129483', '0', '0', '2212', 'uploads/car/2212.jpg');
INSERT INTO `cys_car_category` VALUES ('1351', '244', '旗胜F1', '', '1', '0', '1514129483', '0', '0', '673', 'uploads/car/673.jpg');
INSERT INTO `cys_car_category` VALUES ('1352', '244', '挑战者SUV', '', '1', '0', '1514129483', '0', '0', '2211', 'uploads/car/2211.jpg');
INSERT INTO `cys_car_category` VALUES ('1353', '67', '悍马HX', '', '1', '0', '1514129484', '0', '0', '857', 'uploads/car/857.jpg');
INSERT INTO `cys_car_category` VALUES ('1354', '67', '悍马H3', '', '1', '0', '1514129484', '0', '0', '379', 'uploads/car/379.jpg');
INSERT INTO `cys_car_category` VALUES ('1355', '67', '悍马H1', '', '1', '0', '1514129485', '0', '0', '895', 'uploads/car/895.jpg');
INSERT INTO `cys_car_category` VALUES ('1356', '67', '悍马H2', '', '1', '0', '1514129486', '0', '0', '38', 'uploads/car/38.jpg');
INSERT INTO `cys_car_category` VALUES ('1357', '68', '华泰EV160B', '', '1', '0', '1514129487', '102800', '102800', '4318', 'uploads/car/4318.jpg');
INSERT INTO `cys_car_category` VALUES ('1358', '68', '华泰EV160R', '', '1', '0', '1514129487', '109800', '109800', '4495', 'uploads/car/4495.jpg');
INSERT INTO `cys_car_category` VALUES ('1359', '68', '华泰iEV230', '', '1', '0', '1514129487', '225500', '186500', '4065', 'uploads/car/4065.jpg');
INSERT INTO `cys_car_category` VALUES ('1360', '68', '华泰XEV260', '', '1', '0', '1514129488', '258800', '245800', '4066', 'uploads/car/4066.jpg');
INSERT INTO `cys_car_category` VALUES ('1361', '68', '路盛S5', '', '1', '0', '1514129488', '0', '0', '4618', 'uploads/car/4618.jpg');
INSERT INTO `cys_car_category` VALUES ('1362', '245', '哈飞小霸王', '', '1', '0', '1514129489', '37800', '29800', '2487', 'uploads/car/2487.jpg');
INSERT INTO `cys_car_category` VALUES ('1363', '245', '骏意', '', '1', '0', '1514129489', '44400', '39300', '2485', 'uploads/car/2485.jpg');
INSERT INTO `cys_car_category` VALUES ('1364', '245', '民意', '', '1', '0', '1514129489', '34900', '26900', '2486', 'uploads/car/2486.jpg');
INSERT INTO `cys_car_category` VALUES ('1365', '245', '中意V5', '', '1', '0', '1514129489', '43700', '38700', '3038', 'uploads/car/3038.jpg');
INSERT INTO `cys_car_category` VALUES ('1366', '245', '民意微卡', '', '1', '0', '1514129490', '35900', '31900', '3840', 'uploads/car/3840.jpg');
INSERT INTO `cys_car_category` VALUES ('1367', '245', '路宝', '', '1', '0', '1514129490', '0', '0', '67', 'uploads/car/67.jpg');
INSERT INTO `cys_car_category` VALUES ('1368', '245', '赛马', '', '1', '0', '1514129490', '0', '0', '68', 'uploads/car/68.jpg');
INSERT INTO `cys_car_category` VALUES ('1369', '245', '赛豹III', '', '1', '0', '1514129490', '0', '0', '392', 'uploads/car/392.jpg');
INSERT INTO `cys_car_category` VALUES ('1370', '245', '赛豹V', '', '1', '0', '1514129491', '0', '0', '481', 'uploads/car/481.jpg');
INSERT INTO `cys_car_category` VALUES ('1371', '245', '路尊大霸王', '', '1', '0', '1514129491', '60800', '50900', '2536', 'uploads/car/2536.jpg');
INSERT INTO `cys_car_category` VALUES ('1372', '246', '华颂7', '', '1', '0', '1514129492', '287700', '237700', '3607', 'uploads/car/3607.jpg');
INSERT INTO `cys_car_category` VALUES ('1373', '247', '海格H4E', '', '1', '0', '1514129492', '258000', '223000', '4131', 'uploads/car/4131.jpg');
INSERT INTO `cys_car_category` VALUES ('1374', '247', '海格H5C', '', '1', '0', '1514129492', '246800', '165300', '2572', 'uploads/car/2572.jpg');
INSERT INTO `cys_car_category` VALUES ('1375', '247', '海格H5V', '', '1', '0', '1514129493', '292800', '210800', '3243', 'uploads/car/3243.jpg');
INSERT INTO `cys_car_category` VALUES ('1376', '247', '海格H6C', '', '1', '0', '1514129493', '250800', '189800', '3636', 'uploads/car/3636.jpg');
INSERT INTO `cys_car_category` VALUES ('1377', '247', '海格H6V', '', '1', '0', '1514129493', '808000', '708000', '3638', 'uploads/car/3638.jpg');
INSERT INTO `cys_car_category` VALUES ('1378', '247', '海格H7V', '', '1', '0', '1514129493', '208800', '208800', '3235', 'uploads/car/3235.jpg');
INSERT INTO `cys_car_category` VALUES ('1379', '247', '龙威', '', '1', '0', '1514129494', '175800', '69800', '3149', 'uploads/car/3149.jpg');
INSERT INTO `cys_car_category` VALUES ('1380', '247', '御骏', '', '1', '0', '1514129494', '92800', '62800', '2673', 'uploads/car/2673.jpg');
INSERT INTO `cys_car_category` VALUES ('1381', '248', '海锋', '', '1', '0', '1514129495', '0', '0', '570', 'uploads/car/570.jpg');
INSERT INTO `cys_car_category` VALUES ('1382', '248', '海尚', '', '1', '0', '1514129495', '0', '0', '461', 'uploads/car/461.jpg');
INSERT INTO `cys_car_category` VALUES ('1383', '248', '海炫', '', '1', '0', '1514129495', '0', '0', '507', 'uploads/car/507.jpg');
INSERT INTO `cys_car_category` VALUES ('1384', '248', '海迅', '', '1', '0', '1514129495', '0', '0', '194', 'uploads/car/194.jpg');
INSERT INTO `cys_car_category` VALUES ('1385', '248', '海域', '', '1', '0', '1514129496', '0', '0', '460', 'uploads/car/460.jpg');
INSERT INTO `cys_car_category` VALUES ('1386', '248', '海悦', '', '1', '0', '1514129496', '0', '0', '856', 'uploads/car/856.jpg');
INSERT INTO `cys_car_category` VALUES ('1387', '248', '华普海景', '', '1', '0', '1514129496', '0', '0', '862', 'uploads/car/862.jpg');
INSERT INTO `cys_car_category` VALUES ('1388', '249', '途腾T1', '', '1', '0', '1514129497', '69800', '59800', '2754', 'uploads/car/2754.jpg');
INSERT INTO `cys_car_category` VALUES ('1389', '249', '途腾T2', '', '1', '0', '1514129497', '85800', '63800', '2755', 'uploads/car/2755.jpg');
INSERT INTO `cys_car_category` VALUES ('1390', '249', '途腾T3', '', '1', '0', '1514129497', '83800', '69800', '2973', 'uploads/car/2973.jpg');
INSERT INTO `cys_car_category` VALUES ('1391', '249', '欢腾H1', '', '1', '0', '1514129497', '0', '0', '3208', 'uploads/car/3208.jpg');
INSERT INTO `cys_car_category` VALUES ('1392', '250', '华骐300E', '', '1', '0', '1514129498', '198800', '198800', '4170', 'uploads/car/4170.jpg');
INSERT INTO `cys_car_category` VALUES ('1393', '250', 'HORKI-1', '', '1', '0', '1514129498', '0', '0', '3125', 'uploads/car/3125.jpg');
INSERT INTO `cys_car_category` VALUES ('1394', '251', '天津大发TJ110', '', '1', '0', '1514129501', '0', '0', '3844', 'uploads/car/3844.jpg');
INSERT INTO `cys_car_category` VALUES ('1395', '252', '华凯皮卡', '', '1', '0', '1514129502', '106800', '64800', '3911', 'uploads/car/3911.jpg');
INSERT INTO `cys_car_category` VALUES ('1396', '77', '金刚', '', '1', '0', '1514129502', '65900', '43900', '447', 'uploads/car/447.jpg');
INSERT INTO `cys_car_category` VALUES ('1397', '77', '帝豪', '', '1', '0', '1514129503', '100800', '69800', '3556', 'uploads/car/3556.jpg');
INSERT INTO `cys_car_category` VALUES ('1398', '77', '帝豪GL', '', '1', '0', '1514129503', '113800', '78800', '4139', 'uploads/car/4139.jpg');
INSERT INTO `cys_car_category` VALUES ('1399', '77', '帝豪新能源', '', '1', '0', '1514129503', '215800', '165800', '4342', 'uploads/car/4342.jpg');
INSERT INTO `cys_car_category` VALUES ('1400', '77', '远景', '', '1', '0', '1514129504', '72900', '53900', '474', 'uploads/car/474.jpg');
INSERT INTO `cys_car_category` VALUES ('1401', '77', '博瑞', '', '1', '0', '1514129504', '179800', '119800', '3589', 'uploads/car/3589.jpg');
INSERT INTO `cys_car_category` VALUES ('1402', '77', '远景X1', '', '1', '0', '1514129504', '57900', '39900', '4293', 'uploads/car/4293.jpg');
INSERT INTO `cys_car_category` VALUES ('1403', '77', '远景X3', '', '1', '0', '1514129505', '65900', '50900', '4481', 'uploads/car/4481.jpg');
INSERT INTO `cys_car_category` VALUES ('1404', '77', '博越', '', '1', '0', '1514129505', '157800', '98800', '3788', 'uploads/car/3788.jpg');
INSERT INTO `cys_car_category` VALUES ('1405', '77', '帝豪GS', '', '1', '0', '1514129505', '111800', '77800', '3465', 'uploads/car/3465.jpg');
INSERT INTO `cys_car_category` VALUES ('1406', '77', '远景S1', '', '1', '0', '1514129505', '102900', '69900', '4491', 'uploads/car/4491.jpg');
INSERT INTO `cys_car_category` VALUES ('1407', '77', '远景SUV', '', '1', '0', '1514129506', '101900', '74900', '4133', 'uploads/car/4133.jpg');
INSERT INTO `cys_car_category` VALUES ('1408', '77', '吉利GC6', '', '1', '0', '1514129506', '0', '0', '821', 'uploads/car/821.jpg');
INSERT INTO `cys_car_category` VALUES ('1409', '77', '吉利GX5', '', '1', '0', '1514129506', '0', '0', '2338', 'uploads/car/2338.jpg');
INSERT INTO `cys_car_category` VALUES ('1410', '77', '吉利GX6', '', '1', '0', '1514129506', '0', '0', '2322', 'uploads/car/2322.jpg');
INSERT INTO `cys_car_category` VALUES ('1411', '77', '吉利GX8', '', '1', '0', '1514129507', '0', '0', '3510', 'uploads/car/3510.jpg');
INSERT INTO `cys_car_category` VALUES ('1412', '77', '吉利MPV概念车', '', '1', '0', '1514129507', '0', '0', '4396', 'uploads/car/4396.jpg');
INSERT INTO `cys_car_category` VALUES ('1413', '77', '吉利GX2', '', '1', '0', '1514129507', '0', '0', '2192', 'uploads/car/2192.jpg');
INSERT INTO `cys_car_category` VALUES ('1414', '77', '熊猫', '', '1', '0', '1514129507', '0', '0', '608', 'uploads/car/608.jpg');
INSERT INTO `cys_car_category` VALUES ('1415', '77', '豪情', '', '1', '0', '1514129508', '0', '0', '133', 'uploads/car/133.jpg');
INSERT INTO `cys_car_category` VALUES ('1416', '77', '吉利EC6-RV', '', '1', '0', '1514129508', '0', '0', '2321', 'uploads/car/2321.jpg');
INSERT INTO `cys_car_category` VALUES ('1417', '77', '吉利GC3', '', '1', '0', '1514129508', '0', '0', '2151', 'uploads/car/2151.jpg');
INSERT INTO `cys_car_category` VALUES ('1418', '77', '吉利SC3', '', '1', '0', '1514129509', '0', '0', '2840', 'uploads/car/2840.jpg');
INSERT INTO `cys_car_category` VALUES ('1419', '77', '吉利SC5', '', '1', '0', '1514129509', '0', '0', '2339', 'uploads/car/2339.jpg');
INSERT INTO `cys_car_category` VALUES ('1420', '77', '吉利SC5-RV', '', '1', '0', '1514129510', '0', '0', '2111', 'uploads/car/2111.jpg');
INSERT INTO `cys_car_category` VALUES ('1421', '77', '吉利SC6-RV', '', '1', '0', '1514129510', '0', '0', '2166', 'uploads/car/2166.jpg');
INSERT INTO `cys_car_category` VALUES ('1422', '77', '金刚财富', '', '1', '0', '1514129510', '0', '0', '2156', 'uploads/car/2156.jpg');
INSERT INTO `cys_car_category` VALUES ('1423', '77', '金鹰', '', '1', '0', '1514129511', '0', '0', '609', 'uploads/car/609.jpg');
INSERT INTO `cys_car_category` VALUES ('1424', '77', '英伦C5', '', '1', '0', '1514129511', '0', '0', '132', 'uploads/car/132.jpg');
INSERT INTO `cys_car_category` VALUES ('1425', '77', '优利欧', '', '1', '0', '1514129511', '0', '0', '421', 'uploads/car/421.jpg');
INSERT INTO `cys_car_category` VALUES ('1426', '77', '自由舰', '', '1', '0', '1514129512', '0', '0', '409', 'uploads/car/409.jpg');
INSERT INTO `cys_car_category` VALUES ('1427', '77', '海景', '', '1', '0', '1514129512', '0', '0', '2051', 'uploads/car/2051.jpg');
INSERT INTO `cys_car_category` VALUES ('1428', '77', '吉利GC5', '', '1', '0', '1514129512', '0', '0', '820', 'uploads/car/820.jpg');
INSERT INTO `cys_car_category` VALUES ('1429', '77', '吉利GC7', '', '1', '0', '1514129513', '0', '0', '2155', 'uploads/car/2155.jpg');
INSERT INTO `cys_car_category` VALUES ('1430', '77', '吉利SC7-RV', '', '1', '0', '1514129513', '0', '0', '2340', 'uploads/car/2340.jpg');
INSERT INTO `cys_car_category` VALUES ('1431', '77', '经典帝豪', '', '1', '0', '1514129513', '0', '0', '799', 'uploads/car/799.jpg');
INSERT INTO `cys_car_category` VALUES ('1432', '77', '英伦TX4', '', '1', '0', '1514129515', '0', '0', '841', 'uploads/car/841.jpg');
INSERT INTO `cys_car_category` VALUES ('1433', '77', '吉利EC8', '', '1', '0', '1514129516', '0', '0', '801', 'uploads/car/801.jpg');
INSERT INTO `cys_car_category` VALUES ('1434', '77', '吉利EC9', '', '1', '0', '1514129516', '0', '0', '3374', 'uploads/car/3374.jpg');
INSERT INTO `cys_car_category` VALUES ('1435', '77', '吉利KC', '', '1', '0', '1514129516', '0', '0', '3116', 'uploads/car/3116.jpg');
INSERT INTO `cys_car_category` VALUES ('1436', '77', '吉利GE', '', '1', '0', '1514129516', '0', '0', '827', 'uploads/car/827.jpg');
INSERT INTO `cys_car_category` VALUES ('1437', '77', '吉利SX5', '', '1', '0', '1514129517', '0', '0', '2112', 'uploads/car/2112.jpg');
INSERT INTO `cys_car_category` VALUES ('1438', '77', '吉利SX6', '', '1', '0', '1514129517', '0', '0', '2158', 'uploads/car/2158.jpg');
INSERT INTO `cys_car_category` VALUES ('1439', '77', '吉利EX7', '', '1', '0', '1514129517', '0', '0', '2110', 'uploads/car/2110.jpg');
INSERT INTO `cys_car_category` VALUES ('1440', '77', '吉利GX7', '', '1', '0', '1514129517', '0', '0', '989', 'uploads/car/989.jpg');
INSERT INTO `cys_car_category` VALUES ('1441', '77', '吉利SX7', '', '1', '0', '1514129518', '0', '0', '2964', 'uploads/car/2964.jpg');
INSERT INTO `cys_car_category` VALUES ('1442', '77', '豪情SUV', '', '1', '0', '1514129518', '0', '0', '3467', 'uploads/car/3467.jpg');
INSERT INTO `cys_car_category` VALUES ('1443', '77', '吉利EX8', '', '1', '0', '1514129518', '0', '0', '840', 'uploads/car/840.jpg');
INSERT INTO `cys_car_category` VALUES ('1444', '77', '吉利EX9', '', '1', '0', '1514129518', '0', '0', '2150', 'uploads/car/2150.jpg');
INSERT INTO `cys_car_category` VALUES ('1445', '77', '吉利EV7', '', '1', '0', '1514129519', '0', '0', '2149', 'uploads/car/2149.jpg');
INSERT INTO `cys_car_category` VALUES ('1446', '77', '吉利EV8', '', '1', '0', '1514129519', '0', '0', '843', 'uploads/car/843.jpg');
INSERT INTO `cys_car_category` VALUES ('1447', '77', '吉利GV5', '', '1', '0', '1514129519', '0', '0', '842', 'uploads/car/842.jpg');
INSERT INTO `cys_car_category` VALUES ('1448', '77', '吉利SV5', '', '1', '0', '1514129520', '0', '0', '2157', 'uploads/car/2157.jpg');
INSERT INTO `cys_car_category` VALUES ('1449', '77', '吉利GS', '', '1', '0', '1514129520', '0', '0', '2245', 'uploads/car/2245.jpg');
INSERT INTO `cys_car_category` VALUES ('1450', '77', '吉利GT', '', '1', '0', '1514129520', '0', '0', '818', 'uploads/car/818.jpg');
INSERT INTO `cys_car_category` VALUES ('1451', '77', '美人豹', '', '1', '0', '1514129520', '0', '0', '138', 'uploads/car/138.jpg');
INSERT INTO `cys_car_category` VALUES ('1452', '77', '中国龙', '', '1', '0', '1514129521', '0', '0', '611', 'uploads/car/611.jpg');
INSERT INTO `cys_car_category` VALUES ('1453', '253', '北京JEEP', '', '1', '0', '1514129521', '0', '0', '291', 'uploads/car/291.jpg');
INSERT INTO `cys_car_category` VALUES ('1454', '253', '大切诺基', '', '1', '0', '1514129521', '0', '0', '23', 'uploads/car/23.jpg');
INSERT INTO `cys_car_category` VALUES ('1455', '254', '自由侠', '', '1', '0', '1514129522', '196800', '134800', '4072', 'uploads/car/4072.jpg');
INSERT INTO `cys_car_category` VALUES ('1456', '254', '指南者', '', '1', '0', '1514129522', '241800', '159800', '3845', 'uploads/car/3845.jpg');
INSERT INTO `cys_car_category` VALUES ('1457', '254', '自由光', '', '1', '0', '1514129522', '319800', '209800', '3872', 'uploads/car/3872.jpg');
INSERT INTO `cys_car_category` VALUES ('1458', '254', '云图', '', '1', '0', '1514129523', '0', '0', '4432', 'uploads/car/4432.jpg');
INSERT INTO `cys_car_category` VALUES ('1459', '255', '牧马人', '', '1', '0', '1514129523', '779900', '429900', '121', 'uploads/car/121.jpg');
INSERT INTO `cys_car_category` VALUES ('1460', '255', '大切诺基(进口)', '', '1', '0', '1514129523', '779900', '579900', '521', 'uploads/car/521.jpg');
INSERT INTO `cys_car_category` VALUES ('1461', '255', '自由侠(海外)', '', '1', '0', '1514129524', '0', '0', '3321', 'uploads/car/3321.jpg');
INSERT INTO `cys_car_category` VALUES ('1462', '255', '指南者(进口)', '', '1', '0', '1514129524', '0', '0', '504', 'uploads/car/504.jpg');
INSERT INTO `cys_car_category` VALUES ('1463', '255', 'Chief', '', '1', '0', '1514129524', '0', '0', '3764', 'uploads/car/3764.jpg');
INSERT INTO `cys_car_category` VALUES ('1464', '255', '自由光(进口)', '', '1', '0', '1514129524', '0', '0', '3062', 'uploads/car/3062.jpg');
INSERT INTO `cys_car_category` VALUES ('1465', '255', '自由人', '', '1', '0', '1514129525', '0', '0', '263', 'uploads/car/263.jpg');
INSERT INTO `cys_car_category` VALUES ('1466', '255', '大瓦格尼', '', '1', '0', '1514129525', '0', '0', '4469', 'uploads/car/4469.jpg');
INSERT INTO `cys_car_category` VALUES ('1467', '255', 'Jeep J12', '', '1', '0', '1514129525', '0', '0', '2813', 'uploads/car/2813.jpg');
INSERT INTO `cys_car_category` VALUES ('1468', '255', '自由客', '', '1', '0', '1514129525', '0', '0', '777', 'uploads/car/777.jpg');
INSERT INTO `cys_car_category` VALUES ('1469', '255', '切诺基(进口)', '', '1', '0', '1514129526', '0', '0', '2026', 'uploads/car/2026.jpg');
INSERT INTO `cys_car_category` VALUES ('1470', '255', '指挥官', '', '1', '0', '1514129526', '0', '0', '503', 'uploads/car/503.jpg');
INSERT INTO `cys_car_category` VALUES ('1471', '255', 'Gladiator', '', '1', '0', '1514129526', '0', '0', '2811', 'uploads/car/2811.jpg');
INSERT INTO `cys_car_category` VALUES ('1472', '220', '大切诺基 SRT', '', '1', '0', '1514129527', '1204900', '1204900', '3048', 'uploads/car/3048.jpg');
INSERT INTO `cys_car_category` VALUES ('1473', '256', '捷豹XEL', '', '1', '0', '1514129527', '428800', '288800', '4462', 'uploads/car/4462.jpg');
INSERT INTO `cys_car_category` VALUES ('1474', '256', '捷豹XFL', '', '1', '0', '1514129528', '688000', '388000', '4083', 'uploads/car/4083.jpg');
INSERT INTO `cys_car_category` VALUES ('1475', '79', '捷豹XE', '', '1', '0', '1514129530', '610000', '398000', '3312', 'uploads/car/3312.jpg');
INSERT INTO `cys_car_category` VALUES ('1476', '79', '捷豹XF', '', '1', '0', '1514129530', '728000', '498000', '589', 'uploads/car/589.jpg');
INSERT INTO `cys_car_category` VALUES ('1477', '79', '捷豹XJ', '', '1', '0', '1514129531', '1278000', '798000', '178', 'uploads/car/178.jpg');
INSERT INTO `cys_car_category` VALUES ('1478', '79', '捷豹F-PACE', '', '1', '0', '1514129531', '848000', '528000', '3209', 'uploads/car/3209.jpg');
INSERT INTO `cys_car_category` VALUES ('1479', '79', '捷豹F-TYPE', '', '1', '0', '1514129531', '2038000', '798000', '2903', 'uploads/car/2903.jpg');
INSERT INTO `cys_car_category` VALUES ('1480', '79', '捷豹B99', '', '1', '0', '1514129531', '0', '0', '2290', 'uploads/car/2290.jpg');
INSERT INTO `cys_car_category` VALUES ('1481', '79', '捷豹E-PACE', '', '1', '0', '1514129532', '0', '0', '4007', 'uploads/car/4007.jpg');
INSERT INTO `cys_car_category` VALUES ('1482', '79', '捷豹I-PACE', '', '1', '0', '1514129532', '0', '0', '4251', 'uploads/car/4251.jpg');
INSERT INTO `cys_car_category` VALUES ('1483', '79', 'FUTURE-TYPE', '', '1', '0', '1514129532', '0', '0', '4535', 'uploads/car/4535.jpg');
INSERT INTO `cys_car_category` VALUES ('1484', '79', '捷豹C-X16', '', '1', '0', '1514129532', '0', '0', '2414', 'uploads/car/2414.jpg');
INSERT INTO `cys_car_category` VALUES ('1485', '79', '捷豹C-X75', '', '1', '0', '1514129533', '0', '0', '2217', 'uploads/car/2217.jpg');
INSERT INTO `cys_car_category` VALUES ('1486', '79', '捷豹E-Type', '', '1', '0', '1514129533', '0', '0', '2369', 'uploads/car/2369.jpg');
INSERT INTO `cys_car_category` VALUES ('1487', '79', '捷豹XK', '', '1', '0', '1514129533', '0', '0', '456', 'uploads/car/456.jpg');
INSERT INTO `cys_car_category` VALUES ('1488', '79', '捷豹X-Type', '', '1', '0', '1514129534', '0', '0', '328', 'uploads/car/328.jpg');
INSERT INTO `cys_car_category` VALUES ('1489', '79', '捷豹S-Type', '', '1', '0', '1514129534', '0', '0', '258', 'uploads/car/258.jpg');
INSERT INTO `cys_car_category` VALUES ('1490', '79', '捷豹C-Type', '', '1', '0', '1514129534', '0', '0', '991', 'uploads/car/991.jpg');
INSERT INTO `cys_car_category` VALUES ('1491', '79', '捷豹D-Type', '', '1', '0', '1514129534', '0', '0', '3094', 'uploads/car/3094.jpg');
INSERT INTO `cys_car_category` VALUES ('1492', '79', '捷豹SS100', '', '1', '0', '1514129535', '0', '0', '2145', 'uploads/car/2145.jpg');
INSERT INTO `cys_car_category` VALUES ('1493', '257', '江淮iEV6E', '', '1', '0', '1514129535', '128500', '118500', '4088', 'uploads/car/4088.jpg');
INSERT INTO `cys_car_category` VALUES ('1494', '257', '江淮iEV', '', '1', '0', '1514129535', '158500', '128500', '3395', 'uploads/car/3395.jpg');
INSERT INTO `cys_car_category` VALUES ('1495', '257', '和悦', '', '1', '0', '1514129536', '75800', '62800', '616', 'uploads/car/616.jpg');
INSERT INTO `cys_car_category` VALUES ('1496', '257', '瑞风A60', '', '1', '0', '1514129536', '229500', '139500', '3363', 'uploads/car/3363.jpg');
INSERT INTO `cys_car_category` VALUES ('1497', '257', '江淮iEV7S', '', '1', '0', '1514129536', '207100', '207100', '4444', 'uploads/car/4444.jpg');
INSERT INTO `cys_car_category` VALUES ('1498', '257', '瑞风S2', '', '1', '0', '1514129536', '76800', '57800', '3545', 'uploads/car/3545.jpg');
INSERT INTO `cys_car_category` VALUES ('1499', '257', '瑞风S2mini', '', '1', '0', '1514129537', '56800', '39800', '4087', 'uploads/car/4087.jpg');
INSERT INTO `cys_car_category` VALUES ('1500', '257', '瑞风S3', '', '1', '0', '1514129537', '95800', '62800', '3080', 'uploads/car/3080.jpg');
INSERT INTO `cys_car_category` VALUES ('1501', '257', '瑞风S5', '', '1', '0', '1514129537', '139500', '89500', '2752', 'uploads/car/2752.jpg');
INSERT INTO `cys_car_category` VALUES ('1502', '257', '瑞风S7', '', '1', '0', '1514129537', '173800', '97800', '4234', 'uploads/car/4234.jpg');
INSERT INTO `cys_car_category` VALUES ('1503', '257', '瑞风M3', '', '1', '0', '1514129538', '96800', '69800', '3351', 'uploads/car/3351.jpg');
INSERT INTO `cys_car_category` VALUES ('1504', '257', '瑞风M4', '', '1', '0', '1514129538', '149800', '99800', '4090', 'uploads/car/4090.jpg');
INSERT INTO `cys_car_category` VALUES ('1505', '257', '瑞风M5', '', '1', '0', '1514129538', '211800', '139500', '2543', 'uploads/car/2543.jpg');
INSERT INTO `cys_car_category` VALUES ('1506', '257', '瑞风M6', '', '1', '0', '1514129538', '349500', '239500', '3061', 'uploads/car/3061.jpg');
INSERT INTO `cys_car_category` VALUES ('1507', '257', '凌铃', '', '1', '0', '1514129539', '36500', '32400', '3490', 'uploads/car/3490.jpg');
INSERT INTO `cys_car_category` VALUES ('1508', '257', '瑞风', '', '1', '0', '1514129539', '174800', '85000', '2541', 'uploads/car/2541.jpg');
INSERT INTO `cys_car_category` VALUES ('1509', '257', '星锐', '', '1', '0', '1514129539', '217800', '115700', '2569', 'uploads/car/2569.jpg');
INSERT INTO `cys_car_category` VALUES ('1510', '257', '瑞铃', '', '1', '0', '1514129540', '100800', '55800', '2581', 'uploads/car/2581.jpg');
INSERT INTO `cys_car_category` VALUES ('1511', '257', '帅铃T6', '', '1', '0', '1514129540', '121800', '85800', '3546', 'uploads/car/3546.jpg');
INSERT INTO `cys_car_category` VALUES ('1512', '257', '和悦A13', '', '1', '0', '1514129540', '58800', '52800', '3407', 'uploads/car/3407.jpg');
INSERT INTO `cys_car_category` VALUES ('1513', '257', '和悦A30', '', '1', '0', '1514129540', '76900', '52900', '2956', 'uploads/car/2956.jpg');
INSERT INTO `cys_car_category` VALUES ('1514', '257', '江淮iEV6S', '', '1', '0', '1514129541', '219800', '219800', '3961', 'uploads/car/3961.jpg');
INSERT INTO `cys_car_category` VALUES ('1515', '257', '愿景IV', '', '1', '0', '1514129541', '0', '0', '2130', 'uploads/car/2130.jpg');
INSERT INTO `cys_car_category` VALUES ('1516', '257', '和悦A20', '', '1', '0', '1514129541', '0', '0', '3084', 'uploads/car/3084.jpg');
INSERT INTO `cys_car_category` VALUES ('1517', '257', '瑞风A33', '', '1', '0', '1514129541', '0', '0', '3784', 'uploads/car/3784.jpg');
INSERT INTO `cys_car_category` VALUES ('1518', '257', '和悦A60', '', '1', '0', '1514129542', '0', '0', '3512', 'uploads/car/3512.jpg');
INSERT INTO `cys_car_category` VALUES ('1519', '257', '江淮iEV7T', '', '1', '0', '1514129542', '0', '0', '4628', 'uploads/car/4628.jpg');
INSERT INTO `cys_car_category` VALUES ('1520', '257', '江淮iEV7C', '', '1', '0', '1514129542', '0', '0', '4089', 'uploads/car/4089.jpg');
INSERT INTO `cys_car_category` VALUES ('1521', '257', '江淮iEV7E', '', '1', '0', '1514129543', '0', '0', '4443', 'uploads/car/4443.jpg');
INSERT INTO `cys_car_category` VALUES ('1522', '257', '江淮SC-5', '', '1', '0', '1514129545', '0', '0', '4085', 'uploads/car/4085.jpg');
INSERT INTO `cys_car_category` VALUES ('1523', '257', '瑞风SC-9', '', '1', '0', '1514129545', '0', '0', '3450', 'uploads/car/3450.jpg');
INSERT INTO `cys_car_category` VALUES ('1524', '257', '瑞风R3', '', '1', '0', '1514129545', '0', '0', '4619', 'uploads/car/4619.jpg');
INSERT INTO `cys_car_category` VALUES ('1525', '257', '和悦SC', '', '1', '0', '1514129546', '0', '0', '2763', 'uploads/car/2763.jpg');
INSERT INTO `cys_car_category` VALUES ('1526', '257', '江淮4R3皮卡', '', '1', '0', '1514129546', '0', '0', '2652', 'uploads/car/2652.jpg');
INSERT INTO `cys_car_category` VALUES ('1527', '257', '瑞驰II', '', '1', '0', '1514129546', '0', '0', '3005', 'uploads/car/3005.jpg');
INSERT INTO `cys_car_category` VALUES ('1528', '257', '悦悦', '', '1', '0', '1514129546', '0', '0', '828', 'uploads/car/828.jpg');
INSERT INTO `cys_car_category` VALUES ('1529', '257', '和悦A13RS', '', '1', '0', '1514129547', '0', '0', '3408', 'uploads/car/3408.jpg');
INSERT INTO `cys_car_category` VALUES ('1530', '257', '同悦', '', '1', '0', '1514129547', '0', '0', '660', 'uploads/car/660.jpg');
INSERT INTO `cys_car_category` VALUES ('1531', '257', '同悦RS', '', '1', '0', '1514129547', '0', '0', '617', 'uploads/car/617.jpg');
INSERT INTO `cys_car_category` VALUES ('1532', '257', '宾悦', '', '1', '0', '1514129547', '0', '0', '567', 'uploads/car/567.jpg');
INSERT INTO `cys_car_category` VALUES ('1533', '257', '愿景III', '', '1', '0', '1514129548', '0', '0', '618', 'uploads/car/618.jpg');
INSERT INTO `cys_car_category` VALUES ('1534', '257', '瑞鹰', '', '1', '0', '1514129548', '0', '0', '572', 'uploads/car/572.jpg');
INSERT INTO `cys_car_category` VALUES ('1535', '257', '瑞风M2', '', '1', '0', '1514129548', '0', '0', '816', 'uploads/car/816.jpg');
INSERT INTO `cys_car_category` VALUES ('1536', '257', '江淮K3', '', '1', '0', '1514129549', '74300', '55200', '3443', 'uploads/car/3443.jpg');
INSERT INTO `cys_car_category` VALUES ('1537', '257', '江淮K5', '', '1', '0', '1514129549', '74500', '53000', '3444', 'uploads/car/3444.jpg');
INSERT INTO `cys_car_category` VALUES ('1538', '257', '征途', '', '1', '0', '1514129549', '112800', '84000', '3456', 'uploads/car/3456.jpg');
INSERT INTO `cys_car_category` VALUES ('1539', '258', '金杯F50', '', '1', '0', '1514129550', '80900', '59900', '4294', 'uploads/car/4294.jpg');
INSERT INTO `cys_car_category` VALUES ('1540', '258', '阁瑞斯', '', '1', '0', '1514129550', '277800', '79800', '2537', 'uploads/car/2537.jpg');
INSERT INTO `cys_car_category` VALUES ('1541', '258', '金杯大海狮', '', '1', '0', '1514129550', '252800', '94800', '2545', 'uploads/car/2545.jpg');
INSERT INTO `cys_car_category` VALUES ('1542', '258', '金杯海狮', '', '1', '0', '1514129551', '124800', '56800', '2810', 'uploads/car/2810.jpg');
INSERT INTO `cys_car_category` VALUES ('1543', '258', '金杯快运', '', '1', '0', '1514129551', '74800', '69800', '4237', 'uploads/car/4237.jpg');
INSERT INTO `cys_car_category` VALUES ('1544', '258', '金杯S50', '', '1', '0', '1514129551', '0', '0', '2402', 'uploads/car/2402.jpg');
INSERT INTO `cys_car_category` VALUES ('1545', '259', '华晨金杯750', '', '1', '0', '1514129552', '73300', '53800', '3763', 'uploads/car/3763.jpg');
INSERT INTO `cys_car_category` VALUES ('1546', '259', '海狮X30L', '', '1', '0', '1514129552', '58800', '46800', '3955', 'uploads/car/3955.jpg');
INSERT INTO `cys_car_category` VALUES ('1547', '259', '海星A7', '', '1', '0', '1514129552', '34800', '25900', '2601', 'uploads/car/2601.jpg');
INSERT INTO `cys_car_category` VALUES ('1548', '259', '海星A9', '', '1', '0', '1514129553', '36900', '28900', '2711', 'uploads/car/2711.jpg');
INSERT INTO `cys_car_category` VALUES ('1549', '259', '小海狮X30', '', '1', '0', '1514129553', '46800', '35000', '3136', 'uploads/car/3136.jpg');
INSERT INTO `cys_car_category` VALUES ('1550', '259', '海星T20', '', '1', '0', '1514129553', '31900', '27900', '2712', 'uploads/car/2712.jpg');
INSERT INTO `cys_car_category` VALUES ('1551', '259', '海星T22', '', '1', '0', '1514129553', '36900', '33900', '2837', 'uploads/car/2837.jpg');
INSERT INTO `cys_car_category` VALUES ('1552', '259', '金杯T30', '', '1', '0', '1514129554', '43900', '35900', '3721', 'uploads/car/3721.jpg');
INSERT INTO `cys_car_category` VALUES ('1553', '259', '金杯T32', '', '1', '0', '1514129554', '43800', '38900', '3722', 'uploads/car/3722.jpg');
INSERT INTO `cys_car_category` VALUES ('1554', '259', '金杯T50', '', '1', '0', '1514129554', '48800', '45800', '4311', 'uploads/car/4311.jpg');
INSERT INTO `cys_car_category` VALUES ('1555', '259', '金杯T52', '', '1', '0', '1514129554', '51800', '48800', '4312', 'uploads/car/4312.jpg');
INSERT INTO `cys_car_category` VALUES ('1556', '260', '智尚S30', '', '1', '0', '1514129555', '72800', '49800', '2325', 'uploads/car/2325.jpg');
INSERT INTO `cys_car_category` VALUES ('1557', '260', '智尚S35', '', '1', '0', '1514129555', '78800', '59800', '3898', 'uploads/car/3898.jpg');
INSERT INTO `cys_car_category` VALUES ('1558', '260', '金杯S70', '', '1', '0', '1514129555', '113800', '79800', '3515', 'uploads/car/3515.jpg');
INSERT INTO `cys_car_category` VALUES ('1559', '260', '西部牛仔', '', '1', '0', '1514129556', '52900', '37300', '3853', 'uploads/car/3853.jpg');
INSERT INTO `cys_car_category` VALUES ('1560', '260', '小金牛', '', '1', '0', '1514129556', '35800', '32800', '3868', 'uploads/car/3868.jpg');
INSERT INTO `cys_car_category` VALUES ('1561', '260', '大力神', '', '1', '0', '1514129557', '96800', '66800', '2659', 'uploads/car/2659.jpg');
INSERT INTO `cys_car_category` VALUES ('1562', '260', '大力神K5', '', '1', '0', '1514129557', '104800', '67800', '4076', 'uploads/car/4076.jpg');
INSERT INTO `cys_car_category` VALUES ('1563', '260', '金典', '', '1', '0', '1514129560', '70800', '51800', '2660', 'uploads/car/2660.jpg');
INSERT INTO `cys_car_category` VALUES ('1564', '260', '雷龙', '', '1', '0', '1514129560', '80800', '52800', '2665', 'uploads/car/2665.jpg');
INSERT INTO `cys_car_category` VALUES ('1565', '261', '特顺', '', '1', '0', '1514129560', '139200', '99800', '4209', 'uploads/car/4209.jpg');
INSERT INTO `cys_car_category` VALUES ('1566', '261', '宝典', '', '1', '0', '1514129561', '119800', '69800', '2514', 'uploads/car/2514.jpg');
INSERT INTO `cys_car_category` VALUES ('1567', '261', '域虎', '', '1', '0', '1514129561', '173300', '97800', '2860', 'uploads/car/2860.jpg');
INSERT INTO `cys_car_category` VALUES ('1568', '261', '宝威', '', '1', '0', '1514129561', '0', '0', '2674', 'uploads/car/2674.jpg');
INSERT INTO `cys_car_category` VALUES ('1569', '83', '骐铃T100', '', '1', '0', '1514129562', '62600', '56600', '4493', 'uploads/car/4493.jpg');
INSERT INTO `cys_car_category` VALUES ('1570', '83', '骐铃T3', '', '1', '0', '1514129562', '66800', '62800', '3981', 'uploads/car/3981.jpg');
INSERT INTO `cys_car_category` VALUES ('1571', '83', '骐铃T5', '', '1', '0', '1514129563', '99800', '63800', '3466', 'uploads/car/3466.jpg');
INSERT INTO `cys_car_category` VALUES ('1572', '83', '骐铃T7', '', '1', '0', '1514129563', '138800', '71800', '3639', 'uploads/car/3639.jpg');
INSERT INTO `cys_car_category` VALUES ('1573', '262', '艾菲', '', '1', '0', '1514129564', '229800', '119800', '3320', 'uploads/car/3320.jpg');
INSERT INTO `cys_car_category` VALUES ('1574', '262', '九龙A4', '', '1', '0', '1514129564', '149800', '99800', '3628', 'uploads/car/3628.jpg');
INSERT INTO `cys_car_category` VALUES ('1575', '262', '九龙A5', '', '1', '0', '1514129564', '258800', '168800', '2573', 'uploads/car/2573.jpg');
INSERT INTO `cys_car_category` VALUES ('1576', '262', '九龙A6', '', '1', '0', '1514129564', '259800', '99800', '2576', 'uploads/car/2576.jpg');
INSERT INTO `cys_car_category` VALUES ('1577', '262', '考斯特', '', '1', '0', '1514129565', '329800', '239800', '3194', 'uploads/car/3194.jpg');
INSERT INTO `cys_car_category` VALUES ('1578', '262', '大MPV', '', '1', '0', '1514129565', '168800', '129800', '2582', 'uploads/car/2582.jpg');
INSERT INTO `cys_car_category` VALUES ('1579', '85', '江铃E100', '', '1', '0', '1514129566', '0', '0', '3681', 'uploads/car/3681.jpg');
INSERT INTO `cys_car_category` VALUES ('1580', '85', '江铃E200', '', '1', '0', '1514129566', '182800', '179800', '4149', 'uploads/car/4149.jpg');
INSERT INTO `cys_car_category` VALUES ('1581', '85', '江铃E200S', '', '1', '0', '1514129566', '135800', '132800', '4388', 'uploads/car/4388.jpg');
INSERT INTO `cys_car_category` VALUES ('1582', '85', '江铃E160', '', '1', '0', '1514129566', '139800', '136800', '4375', 'uploads/car/4375.jpg');
INSERT INTO `cys_car_category` VALUES ('1583', '263', '金威', '', '1', '0', '1514129567', '119800', '59800', '2986', 'uploads/car/2986.jpg');
INSERT INTO `cys_car_category` VALUES ('1584', '263', '凯歌', '', '1', '0', '1514129567', '750000', '159800', '2985', 'uploads/car/2985.jpg');
INSERT INTO `cys_car_category` VALUES ('1585', '263', '凯特', '', '1', '0', '1514129568', '236000', '226000', '3549', 'uploads/car/3549.jpg');
INSERT INTO `cys_car_category` VALUES ('1586', '264', '金旅大海狮', '', '1', '0', '1514129568', '188000', '168000', '3886', 'uploads/car/3886.jpg');
INSERT INTO `cys_car_category` VALUES ('1587', '264', '金旅大海狮新能源', '', '1', '0', '1514129569', '750000', '750000', '3885', 'uploads/car/3885.jpg');
INSERT INTO `cys_car_category` VALUES ('1588', '264', '金旅海狮', '', '1', '0', '1514129569', '89800', '59800', '2976', 'uploads/car/2976.jpg');
INSERT INTO `cys_car_category` VALUES ('1589', '264', '金旅海狮新能源', '', '1', '0', '1514129569', '169800', '159800', '4601', 'uploads/car/4601.jpg');
INSERT INTO `cys_car_category` VALUES ('1590', '264', '金旅考斯特', '', '1', '0', '1514129569', '315000', '235000', '2975', 'uploads/car/2975.jpg');
INSERT INTO `cys_car_category` VALUES ('1591', '265', '凯迪拉克ATS-L', '', '1', '0', '1514129570', '428800', '298800', '3207', 'uploads/car/3207.jpg');
INSERT INTO `cys_car_category` VALUES ('1592', '265', '凯迪拉克CT6', '', '1', '0', '1514129570', '818800', '439900', '3802', 'uploads/car/3802.jpg');
INSERT INTO `cys_car_category` VALUES ('1593', '265', '凯迪拉克CT6 PLUG-IN', '', '1', '0', '1514129571', '658800', '558800', '4334', 'uploads/car/4334.jpg');
INSERT INTO `cys_car_category` VALUES ('1594', '265', '凯迪拉克XTS', '', '1', '0', '1514129571', '479900', '299900', '2949', 'uploads/car/2949.jpg');
INSERT INTO `cys_car_category` VALUES ('1595', '265', '凯迪拉克XT5', '', '1', '0', '1514129571', '539900', '359900', '3989', 'uploads/car/3989.jpg');
INSERT INTO `cys_car_category` VALUES ('1596', '265', 'SLS赛威', '', '1', '0', '1514129575', '0', '0', '488', 'uploads/car/488.jpg');
INSERT INTO `cys_car_category` VALUES ('1597', '265', '凯迪拉克CTS', '', '1', '0', '1514129575', '0', '0', '970', 'uploads/car/970.jpg');
INSERT INTO `cys_car_category` VALUES ('1598', '266', '凯雷德ESCALADE', '', '1', '0', '1514129576', '1488000', '1488000', '462', 'uploads/car/462.jpg');
INSERT INTO `cys_car_category` VALUES ('1599', '266', '凯迪拉克ATS(进口)', '', '1', '0', '1514129576', '0', '0', '2629', 'uploads/car/2629.jpg');
INSERT INTO `cys_car_category` VALUES ('1600', '266', '凯迪拉克CT6(海外)', '', '1', '0', '1514129576', '0', '0', '3359', 'uploads/car/3359.jpg');
INSERT INTO `cys_car_category` VALUES ('1601', '266', '凯迪拉克CTS(进口)', '', '1', '0', '1514129576', '0', '0', '311', 'uploads/car/311.jpg');
INSERT INTO `cys_car_category` VALUES ('1602', '266', '凯迪拉克XTS(海外)', '', '1', '0', '1514129577', '0', '0', '2087', 'uploads/car/2087.jpg');
INSERT INTO `cys_car_category` VALUES ('1603', '266', 'Ciel', '', '1', '0', '1514129577', '0', '0', '2401', 'uploads/car/2401.jpg');
INSERT INTO `cys_car_category` VALUES ('1604', '266', 'Escala', '', '1', '0', '1514129577', '0', '0', '4185', 'uploads/car/4185.jpg');
INSERT INTO `cys_car_category` VALUES ('1605', '266', '凯迪拉克XT4', '', '1', '0', '1514129577', '0', '0', '4647', 'uploads/car/4647.jpg');
INSERT INTO `cys_car_category` VALUES ('1606', '266', '凯迪拉克XT5(海外)', '', '1', '0', '1514129578', '0', '0', '3647', 'uploads/car/3647.jpg');
INSERT INTO `cys_car_category` VALUES ('1607', '266', 'Elmiraj', '', '1', '0', '1514129578', '0', '0', '3190', 'uploads/car/3190.jpg');
INSERT INTO `cys_car_category` VALUES ('1608', '266', 'Series 62', '', '1', '0', '1514129578', '0', '0', '4643', 'uploads/car/4643.jpg');
INSERT INTO `cys_car_category` VALUES ('1609', '266', '凯迪拉克ELR', '', '1', '0', '1514129579', '0', '0', '752', 'uploads/car/752.jpg');
INSERT INTO `cys_car_category` VALUES ('1610', '266', 'Urban Luxury', '', '1', '0', '1514129579', '0', '0', '2939', 'uploads/car/2939.jpg');
INSERT INTO `cys_car_category` VALUES ('1611', '266', '凯迪拉克BLS', '', '1', '0', '1514129579', '0', '0', '637', 'uploads/car/637.jpg');
INSERT INTO `cys_car_category` VALUES ('1612', '266', 'Seville', '', '1', '0', '1514129579', '0', '0', '3169', 'uploads/car/3169.jpg');
INSERT INTO `cys_car_category` VALUES ('1613', '266', '凯迪拉克SLS(海外)', '', '1', '0', '1514129580', '0', '0', '2036', 'uploads/car/2036.jpg');
INSERT INTO `cys_car_category` VALUES ('1614', '266', '凯迪拉克STS', '', '1', '0', '1514129580', '0', '0', '402', 'uploads/car/402.jpg');
INSERT INTO `cys_car_category` VALUES ('1615', '266', 'Brougham', '', '1', '0', '1514129580', '0', '0', '3421', 'uploads/car/3421.jpg');
INSERT INTO `cys_car_category` VALUES ('1616', '266', 'DeVille', '', '1', '0', '1514129581', '0', '0', '238', 'uploads/car/238.jpg');
INSERT INTO `cys_car_category` VALUES ('1617', '266', '弗雷特伍德', '', '1', '0', '1514129581', '0', '0', '3355', 'uploads/car/3355.jpg');
INSERT INTO `cys_car_category` VALUES ('1618', '266', '凯迪拉克SRX', '', '1', '0', '1514129581', '0', '0', '49', 'uploads/car/49.jpg');
INSERT INTO `cys_car_category` VALUES ('1619', '266', 'Converj', '', '1', '0', '1514129581', '0', '0', '2804', 'uploads/car/2804.jpg');
INSERT INTO `cys_car_category` VALUES ('1620', '266', '凯迪拉克XLR', '', '1', '0', '1514129582', '0', '0', '426', 'uploads/car/426.jpg');
INSERT INTO `cys_car_category` VALUES ('1621', '267', '凯翼C3', '', '1', '0', '1514129582', '60800', '45800', '3586', 'uploads/car/3586.jpg');
INSERT INTO `cys_car_category` VALUES ('1622', '267', '凯翼C3R', '', '1', '0', '1514129583', '60800', '45800', '3581', 'uploads/car/3581.jpg');
INSERT INTO `cys_car_category` VALUES ('1623', '267', '凯翼E3', '', '1', '0', '1514129583', '72900', '52900', '4474', 'uploads/car/4474.jpg');
INSERT INTO `cys_car_category` VALUES ('1624', '267', '凯翼X3', '', '1', '0', '1514129583', '96900', '66600', '3983', 'uploads/car/3983.jpg');
INSERT INTO `cys_car_category` VALUES ('1625', '267', '凯翼V3', '', '1', '0', '1514129584', '78800', '62800', '3971', 'uploads/car/3971.jpg');
INSERT INTO `cys_car_category` VALUES ('1626', '267', '凯翼X5', '', '1', '0', '1514129584', '104900', '79900', '4095', 'uploads/car/4095.jpg');
INSERT INTO `cys_car_category` VALUES ('1627', '267', '凯翼C3R EV', '', '1', '0', '1514129584', '0', '0', '4254', 'uploads/car/4254.jpg');
INSERT INTO `cys_car_category` VALUES ('1628', '267', '凯翼CX3', '', '1', '0', '1514129584', '0', '0', '3686', 'uploads/car/3686.jpg');
INSERT INTO `cys_car_category` VALUES ('1629', '267', '凯翼i-CX', '', '1', '0', '1514129585', '0', '0', '3580', 'uploads/car/3580.jpg');
INSERT INTO `cys_car_category` VALUES ('1630', '267', '凯翼X7', '', '1', '0', '1514129585', '0', '0', '4282', 'uploads/car/4282.jpg');
INSERT INTO `cys_car_category` VALUES ('1631', '268', '开瑞K60', '', '1', '0', '1514129586', '81800', '58800', '4039', 'uploads/car/4039.jpg');
INSERT INTO `cys_car_category` VALUES ('1632', '268', '开瑞K50', '', '1', '0', '1514129586', '73800', '44800', '3384', 'uploads/car/3384.jpg');
INSERT INTO `cys_car_category` VALUES ('1633', '268', '优优', '', '1', '0', '1514129586', '55900', '34500', '2476', 'uploads/car/2476.jpg');
INSERT INTO `cys_car_category` VALUES ('1634', '268', '优优2代', '', '1', '0', '1514129589', '44000', '34000', '3017', 'uploads/car/3017.jpg');
INSERT INTO `cys_car_category` VALUES ('1635', '268', '优劲', '', '1', '0', '1514129589', '46500', '33900', '2496', 'uploads/car/2496.jpg');
INSERT INTO `cys_car_category` VALUES ('1636', '268', '开瑞X70', '', '1', '0', '1514129589', '0', '0', '4504', 'uploads/car/4504.jpg');
INSERT INTO `cys_car_category` VALUES ('1637', '268', '开瑞K50EV', '', '1', '0', '1514129589', '0', '0', '4478', 'uploads/car/4478.jpg');
INSERT INTO `cys_car_category` VALUES ('1638', '268', '优优EV', '', '1', '0', '1514129590', '0', '0', '4477', 'uploads/car/4477.jpg');
INSERT INTO `cys_car_category` VALUES ('1639', '268', '优翼', '', '1', '0', '1514129590', '0', '0', '517', 'uploads/car/517.jpg');
INSERT INTO `cys_car_category` VALUES ('1640', '268', '优派', '', '1', '0', '1514129590', '42800', '34800', '2489', 'uploads/car/2489.jpg');
INSERT INTO `cys_car_category` VALUES ('1641', '268', '优胜', '', '1', '0', '1514129591', '32800', '32800', '2492', 'uploads/car/2492.jpg');
INSERT INTO `cys_car_category` VALUES ('1642', '268', '优胜2代', '', '1', '0', '1514129591', '44300', '30900', '2493', 'uploads/car/2493.jpg');
INSERT INTO `cys_car_category` VALUES ('1643', '268', '优雅', '', '1', '0', '1514129591', '57800', '41800', '2484', 'uploads/car/2484.jpg');
INSERT INTO `cys_car_category` VALUES ('1644', '268', '优雅2代', '', '1', '0', '1514129591', '59900', '42900', '3156', 'uploads/car/3156.jpg');
INSERT INTO `cys_car_category` VALUES ('1645', '268', '杰虎', '', '1', '0', '1514129592', '85800', '64800', '3854', 'uploads/car/3854.jpg');
INSERT INTO `cys_car_category` VALUES ('1646', '269', '铂锐', '', '1', '0', '1514129593', '0', '0', '566', 'uploads/car/566.jpg');
INSERT INTO `cys_car_category` VALUES ('1647', '269', '克莱斯勒300C', '', '1', '0', '1514129593', '0', '0', '487', 'uploads/car/487.jpg');
INSERT INTO `cys_car_category` VALUES ('1648', '214', '大捷龙', '', '1', '0', '1514129593', '0', '0', '227', 'uploads/car/227.jpg');
INSERT INTO `cys_car_category` VALUES ('1649', '270', '大捷龙PHEV(进口)', '', '1', '0', '1514129594', '0', '0', '4604', 'uploads/car/4604.jpg');
INSERT INTO `cys_car_category` VALUES ('1650', '270', '克莱斯勒300C(进口)', '', '1', '0', '1514129594', '491900', '399900', '342', 'uploads/car/342.jpg');
INSERT INTO `cys_car_category` VALUES ('1651', '270', '大捷龙(进口)', '', '1', '0', '1514129594', '496900', '496900', '2207', 'uploads/car/2207.jpg');
INSERT INTO `cys_car_category` VALUES ('1652', '270', '克莱斯勒Ypsilon', '', '1', '0', '1514129595', '0', '0', '2470', 'uploads/car/2470.jpg');
INSERT INTO `cys_car_category` VALUES ('1653', '270', '克莱斯勒Delta', '', '1', '0', '1514129595', '0', '0', '2471', 'uploads/car/2471.jpg');
INSERT INTO `cys_car_category` VALUES ('1654', '270', '克莱斯勒200', '', '1', '0', '1514129595', '0', '0', '2224', 'uploads/car/2224.jpg');
INSERT INTO `cys_car_category` VALUES ('1655', '270', '克莱斯勒300', '', '1', '0', '1514129595', '0', '0', '2251', 'uploads/car/2251.jpg');
INSERT INTO `cys_car_category` VALUES ('1656', '270', 'Pacifica', '', '1', '0', '1514129596', '0', '0', '4002', 'uploads/car/4002.jpg');
INSERT INTO `cys_car_category` VALUES ('1657', '270', 'Portal', '', '1', '0', '1514129596', '0', '0', '4284', 'uploads/car/4284.jpg');
INSERT INTO `cys_car_category` VALUES ('1658', '270', 'Town and Country', '', '1', '0', '1514129596', '0', '0', '2231', 'uploads/car/2231.jpg');
INSERT INTO `cys_car_category` VALUES ('1659', '270', '克莱斯勒700C', '', '1', '0', '1514129597', '0', '0', '2643', 'uploads/car/2643.jpg');
INSERT INTO `cys_car_category` VALUES ('1660', '270', 'PT 漫步者', '', '1', '0', '1514129597', '0', '0', '380', 'uploads/car/380.jpg');
INSERT INTO `cys_car_category` VALUES ('1661', '270', 'Sebring', '', '1', '0', '1514129597', '0', '0', '735', 'uploads/car/735.jpg');
INSERT INTO `cys_car_category` VALUES ('1662', '270', '克莱斯勒200C', '', '1', '0', '1514129597', '0', '0', '734', 'uploads/car/734.jpg');
INSERT INTO `cys_car_category` VALUES ('1663', '270', 'Aspen', '', '1', '0', '1514129598', '0', '0', '1011', 'uploads/car/1011.jpg');
INSERT INTO `cys_car_category` VALUES ('1664', '270', '交叉火力', '', '1', '0', '1514129598', '0', '0', '222', 'uploads/car/222.jpg');
INSERT INTO `cys_car_category` VALUES ('1665', '270', '猎兽', '', '1', '0', '1514129598', '0', '0', '977', 'uploads/car/977.jpg');
INSERT INTO `cys_car_category` VALUES ('1666', '220', '克莱斯勒300C SRT', '', '1', '0', '1514129599', '0', '0', '3051', 'uploads/car/3051.jpg');
INSERT INTO `cys_car_category` VALUES ('1667', '271', '卡威W1新能源', '', '1', '0', '1514129599', '227800', '227800', '4482', 'uploads/car/4482.jpg');
INSERT INTO `cys_car_category` VALUES ('1668', '271', '路易斯', '', '1', '0', '1514129600', '99800', '79800', '4563', 'uploads/car/4563.jpg');
INSERT INTO `cys_car_category` VALUES ('1669', '271', '卡威K1', '', '1', '0', '1514129600', '127800', '79800', '3360', 'uploads/car/3360.jpg');
INSERT INTO `cys_car_category` VALUES ('1670', '271', '卡威K150', '', '1', '0', '1514129600', '129800', '93800', '4172', 'uploads/car/4172.jpg');
INSERT INTO `cys_car_category` VALUES ('1671', '271', '卡威K150GT', '', '1', '0', '1514129600', '135800', '99800', '4557', 'uploads/car/4557.jpg');
INSERT INTO `cys_car_category` VALUES ('1672', '271', '卡威W1', '', '1', '0', '1514129601', '97800', '94800', '3511', 'uploads/car/3511.jpg');
INSERT INTO `cys_car_category` VALUES ('1673', '271', '卡威E20', '', '1', '0', '1514129603', '0', '0', '4622', 'uploads/car/4622.jpg');
INSERT INTO `cys_car_category` VALUES ('1674', '271', '卡威SUV', '', '1', '0', '1514129604', '0', '0', '3409', 'uploads/car/3409.jpg');
INSERT INTO `cys_car_category` VALUES ('1675', '271', '卡威E10', '', '1', '0', '1514129604', '0', '0', '4621', 'uploads/car/4621.jpg');
INSERT INTO `cys_car_category` VALUES ('1676', '271', '卡威EV7', '', '1', '0', '1514129604', '0', '0', '4623', 'uploads/car/4623.jpg');
INSERT INTO `cys_car_category` VALUES ('1677', '93', 'Agera', '', '1', '0', '1514129605', '0', '0', '2068', 'uploads/car/2068.jpg');
INSERT INTO `cys_car_category` VALUES ('1678', '93', 'One:1', '', '1', '0', '1514129605', '0', '0', '3377', 'uploads/car/3377.jpg');
INSERT INTO `cys_car_category` VALUES ('1679', '93', 'Regera', '', '1', '0', '1514129605', '0', '0', '3741', 'uploads/car/3741.jpg');
INSERT INTO `cys_car_category` VALUES ('1680', '93', '科尼赛克CCR', '', '1', '0', '1514129606', '0', '0', '730', 'uploads/car/730.jpg');
INSERT INTO `cys_car_category` VALUES ('1681', '93', '科尼赛克CCX', '', '1', '0', '1514129606', '0', '0', '731', 'uploads/car/731.jpg');
INSERT INTO `cys_car_category` VALUES ('1682', '93', '科尼赛克CCXR', '', '1', '0', '1514129606', '0', '0', '732', 'uploads/car/732.jpg');
INSERT INTO `cys_car_category` VALUES ('1683', '272', '全球鹰K10', '', '1', '0', '1514129607', '150800', '150800', '3835', 'uploads/car/3835.jpg');
INSERT INTO `cys_car_category` VALUES ('1684', '272', '全球鹰K11', '', '1', '0', '1514129607', '181800', '181800', '3836', 'uploads/car/3836.jpg');
INSERT INTO `cys_car_category` VALUES ('1685', '272', '全球鹰K12', '', '1', '0', '1514129608', '158800', '158800', '4161', 'uploads/car/4161.jpg');
INSERT INTO `cys_car_category` VALUES ('1686', '272', '全球鹰K17', '', '1', '0', '1514129608', '164800', '164800', '4160', 'uploads/car/4160.jpg');
INSERT INTO `cys_car_category` VALUES ('1687', '272', '全球鹰K30', '', '1', '0', '1514129609', '0', '0', '3597', 'uploads/car/3597.jpg');
INSERT INTO `cys_car_category` VALUES ('1688', '95', 'X-BOW', '', '1', '0', '1514129610', '1390000', '1390000', '911', 'uploads/car/911.jpg');
INSERT INTO `cys_car_category` VALUES ('1689', '273', '卡升C10', '', '1', '0', '1514129612', '1350000', '1350000', '3656', 'uploads/car/3656.jpg');
INSERT INTO `cys_car_category` VALUES ('1690', '273', '卡升T6', '', '1', '0', '1514129612', '828000', '828000', '4447', 'uploads/car/4447.jpg');
INSERT INTO `cys_car_category` VALUES ('1691', '273', '卡升V-Class', '', '1', '0', '1514129612', '1188000', '1188000', '4448', 'uploads/car/4448.jpg');
INSERT INTO `cys_car_category` VALUES ('1692', '273', '卡升威霆', '', '1', '0', '1514129612', '788000', '788000', '3655', 'uploads/car/3655.jpg');
INSERT INTO `cys_car_category` VALUES ('1693', '97', '卡尔森 CLS级', '', '1', '0', '1514129613', '0', '0', '3032', 'uploads/car/3032.jpg');
INSERT INTO `cys_car_category` VALUES ('1694', '97', '卡尔森 M级', '', '1', '0', '1514129613', '0', '0', '3184', 'uploads/car/3184.jpg');
INSERT INTO `cys_car_category` VALUES ('1695', '97', '卡尔森 C25', '', '1', '0', '1514129614', '0', '0', '2612', 'uploads/car/2612.jpg');
INSERT INTO `cys_car_category` VALUES ('1696', '97', '卡尔森 S级', '', '1', '0', '1514129614', '0', '0', '2611', 'uploads/car/2611.jpg');
INSERT INTO `cys_car_category` VALUES ('1697', '97', '卡尔森 GL级', '', '1', '0', '1514129614', '0', '0', '2610', 'uploads/car/2610.jpg');
INSERT INTO `cys_car_category` VALUES ('1698', '98', '领克01', '', '1', '0', '1514129615', '220800', '158800', '4221', 'uploads/car/4221.jpg');
INSERT INTO `cys_car_category` VALUES ('1699', '98', '领克03', '', '1', '0', '1514129615', '0', '0', '4402', 'uploads/car/4402.jpg');
INSERT INTO `cys_car_category` VALUES ('1700', '98', 'LYNK概念车', '', '1', '0', '1514129615', '0', '0', '4225', 'uploads/car/4225.jpg');
INSERT INTO `cys_car_category` VALUES ('1701', '98', '01概念车', '', '1', '0', '1514129618', '0', '0', '4224', 'uploads/car/4224.jpg');
INSERT INTO `cys_car_category` VALUES ('1702', '98', '领克02', '', '1', '0', '1514129618', '0', '0', '4616', 'uploads/car/4616.jpg');
INSERT INTO `cys_car_category` VALUES ('1703', '256', '发现神行', '', '1', '0', '1514129619', '518000', '358000', '3871', 'uploads/car/3871.jpg');
INSERT INTO `cys_car_category` VALUES ('1704', '256', '揽胜极光', '', '1', '0', '1514129619', '578000', '388000', '3521', 'uploads/car/3521.jpg');
INSERT INTO `cys_car_category` VALUES ('1705', '274', '揽胜极光(进口)', '', '1', '0', '1514129619', '698000', '698000', '754', 'uploads/car/754.jpg');
INSERT INTO `cys_car_category` VALUES ('1706', '274', '揽胜星脉', '', '1', '0', '1514129620', '1048000', '688000', '4316', 'uploads/car/4316.jpg');
INSERT INTO `cys_car_category` VALUES ('1707', '274', '发现', '', '1', '0', '1514129620', '1108000', '798000', '802', 'uploads/car/802.jpg');
INSERT INTO `cys_car_category` VALUES ('1708', '274', '揽胜运动版', '', '1', '0', '1514129620', '2298000', '928000', '850', 'uploads/car/850.jpg');
INSERT INTO `cys_car_category` VALUES ('1709', '274', '揽胜', '', '1', '0', '1514129620', '3328000', '1458000', '69', 'uploads/car/69.jpg');
INSERT INTO `cys_car_category` VALUES ('1710', '274', '揽胜运动版新能源', '', '1', '0', '1514129621', '968000', '968000', '4569', 'uploads/car/4569.jpg');
INSERT INTO `cys_car_category` VALUES ('1711', '274', '路虎DC100', '', '1', '0', '1514129621', '0', '0', '2410', 'uploads/car/2410.jpg');
INSERT INTO `cys_car_category` VALUES ('1712', '274', '发现神行(进口)', '', '1', '0', '1514129621', '0', '0', '3565', 'uploads/car/3565.jpg');
INSERT INTO `cys_car_category` VALUES ('1713', '274', '卫士', '', '1', '0', '1514129622', '0', '0', '256', 'uploads/car/256.jpg');
INSERT INTO `cys_car_category` VALUES ('1714', '274', '发现 Vision', '', '1', '0', '1514129622', '0', '0', '3435', 'uploads/car/3435.jpg');
INSERT INTO `cys_car_category` VALUES ('1715', '274', '揽胜新能源', '', '1', '0', '1514129622', '0', '0', '4579', 'uploads/car/4579.jpg');
INSERT INTO `cys_car_category` VALUES ('1716', '274', '神行者2', '', '1', '0', '1514129622', '0', '0', '77', 'uploads/car/77.jpg');
INSERT INTO `cys_car_category` VALUES ('1717', '274', 'Series I', '', '1', '0', '1514129623', '0', '0', '3174', 'uploads/car/3174.jpg');
INSERT INTO `cys_car_category` VALUES ('1718', '274', '神行者', '', '1', '0', '1514129623', '0', '0', '3177', 'uploads/car/3177.jpg');
INSERT INTO `cys_car_category` VALUES ('1719', '100', '雷克萨斯LC', '', '1', '0', '1514129624', '0', '0', '2623', 'uploads/car/2623.jpg');
INSERT INTO `cys_car_category` VALUES ('1720', '100', '雷克萨斯CT', '', '1', '0', '1514129624', '348000', '229000', '2063', 'uploads/car/2063.jpg');
INSERT INTO `cys_car_category` VALUES ('1721', '100', '雷克萨斯IS', '', '1', '0', '1514129624', '453000', '324900', '201', 'uploads/car/201.jpg');
INSERT INTO `cys_car_category` VALUES ('1722', '100', '雷克萨斯ES', '', '1', '0', '1514129624', '498000', '298000', '403', 'uploads/car/403.jpg');
INSERT INTO `cys_car_category` VALUES ('1723', '100', '雷克萨斯GS', '', '1', '0', '1514129625', '799000', '459000', '261', 'uploads/car/261.jpg');
INSERT INTO `cys_car_category` VALUES ('1724', '100', '雷克萨斯LS', '', '1', '0', '1514129625', '2388000', '1490000', '341', 'uploads/car/341.jpg');
INSERT INTO `cys_car_category` VALUES ('1725', '100', '雷克萨斯NX', '', '1', '0', '1514129625', '569000', '318000', '3442', 'uploads/car/3442.jpg');
INSERT INTO `cys_car_category` VALUES ('1726', '100', '雷克萨斯GX', '', '1', '0', '1514129625', '946800', '848000', '112', 'uploads/car/112.jpg');
INSERT INTO `cys_car_category` VALUES ('1727', '100', '雷克萨斯RX', '', '1', '0', '1514129626', '869000', '418000', '3934', 'uploads/car/3934.jpg');
INSERT INTO `cys_car_category` VALUES ('1728', '100', '雷克萨斯LX', '', '1', '0', '1514129626', '1469000', '1396000', '352', 'uploads/car/352.jpg');
INSERT INTO `cys_car_category` VALUES ('1729', '100', '雷克萨斯RC', '', '1', '0', '1514129626', '586000', '488000', '3758', 'uploads/car/3758.jpg');
INSERT INTO `cys_car_category` VALUES ('1730', '100', '雷克萨斯LF-SA', '', '1', '0', '1514129627', '0', '0', '3737', 'uploads/car/3737.jpg');
INSERT INTO `cys_car_category` VALUES ('1731', '100', 'LS概念车', '', '1', '0', '1514129627', '0', '0', '4593', 'uploads/car/4593.jpg');
INSERT INTO `cys_car_category` VALUES ('1732', '100', '雷克萨斯LF-FC', '', '1', '0', '1514129627', '0', '0', '3944', 'uploads/car/3944.jpg');
INSERT INTO `cys_car_category` VALUES ('1733', '100', '雷克萨斯UX', '', '1', '0', '1514129627', '0', '0', '4197', 'uploads/car/4197.jpg');
INSERT INTO `cys_car_category` VALUES ('1734', '100', '雷克萨斯LF-1 Limitless', '', '1', '0', '1514129628', '0', '0', '4644', 'uploads/car/4644.jpg');
INSERT INTO `cys_car_category` VALUES ('1735', '100', '雷克萨斯LF-C2', '', '1', '0', '1514129628', '0', '0', '3658', 'uploads/car/3658.jpg');
INSERT INTO `cys_car_category` VALUES ('1736', '100', '雷克萨斯LF-Ch', '', '1', '0', '1514129628', '0', '0', '915', 'uploads/car/915.jpg');
INSERT INTO `cys_car_category` VALUES ('1737', '100', '雷克萨斯HS', '', '1', '0', '1514129629', '0', '0', '720', 'uploads/car/720.jpg');
INSERT INTO `cys_car_category` VALUES ('1738', '100', '雷克萨斯LF-Gh', '', '1', '0', '1514129629', '0', '0', '2307', 'uploads/car/2307.jpg');
INSERT INTO `cys_car_category` VALUES ('1739', '100', '雷克萨斯LF-Xh', '', '1', '0', '1514129629', '0', '0', '698', 'uploads/car/698.jpg');
INSERT INTO `cys_car_category` VALUES ('1740', '100', '雷克萨斯LF-NX', '', '1', '0', '1514129629', '0', '0', '3203', 'uploads/car/3203.jpg');
INSERT INTO `cys_car_category` VALUES ('1741', '100', '雷克萨斯RX经典', '', '1', '0', '1514129630', '0', '0', '351', 'uploads/car/351.jpg');
INSERT INTO `cys_car_category` VALUES ('1742', '100', '雷克萨斯LF-CC', '', '1', '0', '1514129632', '0', '0', '2900', 'uploads/car/2900.jpg');
INSERT INTO `cys_car_category` VALUES ('1743', '100', '雷克萨斯SC', '', '1', '0', '1514129633', '0', '0', '332', 'uploads/car/332.jpg');
INSERT INTO `cys_car_category` VALUES ('1744', '275', '雷克萨斯RC F', '', '1', '0', '1514129633', '1286000', '1116000', '3238', 'uploads/car/3238.jpg');
INSERT INTO `cys_car_category` VALUES ('1745', '275', '雷克萨斯IS F', '', '1', '0', '1514129633', '0', '0', '3756', 'uploads/car/3756.jpg');
INSERT INTO `cys_car_category` VALUES ('1746', '275', '雷克萨斯GS F', '', '1', '0', '1514129634', '0', '0', '3755', 'uploads/car/3755.jpg');
INSERT INTO `cys_car_category` VALUES ('1747', '275', '雷克萨斯LFA', '', '1', '0', '1514129634', '0', '0', '697', 'uploads/car/697.jpg');
INSERT INTO `cys_car_category` VALUES ('1748', '276', '北斗星', '', '1', '0', '1514129635', '44900', '39900', '75', 'uploads/car/75.jpg');
INSERT INTO `cys_car_category` VALUES ('1749', '276', '北斗星X5', '', '1', '0', '1514129635', '51900', '46900', '3216', 'uploads/car/3216.jpg');
INSERT INTO `cys_car_category` VALUES ('1750', '276', '利亚纳A6', '', '1', '0', '1514129635', '60900', '54900', '3112', 'uploads/car/3112.jpg');
INSERT INTO `cys_car_category` VALUES ('1751', '276', '吉姆尼', '', '1', '0', '1514129635', '0', '0', '4020', 'uploads/car/4020.jpg');
INSERT INTO `cys_car_category` VALUES ('1752', '276', '派喜', '', '1', '0', '1514129636', '0', '0', '2049', 'uploads/car/2049.jpg');
INSERT INTO `cys_car_category` VALUES ('1753', '276', '利亚纳', '', '1', '0', '1514129636', '0', '0', '432', 'uploads/car/432.jpg');
INSERT INTO `cys_car_category` VALUES ('1754', '276', '浪迪', '', '1', '0', '1514129636', '76600', '49800', '2534', 'uploads/car/2534.jpg');
INSERT INTO `cys_car_category` VALUES ('1755', '277', '奥拓', '', '1', '0', '1514129637', '59900', '41800', '872', 'uploads/car/872.jpg');
INSERT INTO `cys_car_category` VALUES ('1756', '277', '雨燕', '', '1', '0', '1514129637', '82800', '54800', '362', 'uploads/car/362.jpg');
INSERT INTO `cys_car_category` VALUES ('1757', '277', '启悦', '', '1', '0', '1514129637', '109900', '78900', '3528', 'uploads/car/3528.jpg');
INSERT INTO `cys_car_category` VALUES ('1758', '277', '天语 SX4', '', '1', '0', '1514129637', '99800', '79800', '529', 'uploads/car/529.jpg');
INSERT INTO `cys_car_category` VALUES ('1759', '277', '维特拉', '', '1', '0', '1514129638', '159800', '99800', '3858', 'uploads/car/3858.jpg');
INSERT INTO `cys_car_category` VALUES ('1760', '277', '骁途', '', '1', '0', '1514129638', '159800', '99800', '4435', 'uploads/car/4435.jpg');
INSERT INTO `cys_car_category` VALUES ('1761', '277', 'Authentics', '', '1', '0', '1514129638', '0', '0', '3288', 'uploads/car/3288.jpg');
INSERT INTO `cys_car_category` VALUES ('1762', '277', '羚羊', '', '1', '0', '1514129639', '0', '0', '94', 'uploads/car/94.jpg');
INSERT INTO `cys_car_category` VALUES ('1763', '277', '天语 尚悦', '', '1', '0', '1514129639', '0', '0', '2242', 'uploads/car/2242.jpg');
INSERT INTO `cys_car_category` VALUES ('1764', '277', '锋驭', '', '1', '0', '1514129639', '0', '0', '3185', 'uploads/car/3185.jpg');
INSERT INTO `cys_car_category` VALUES ('1765', '278', '吉姆尼(进口)', '', '1', '0', '1514129639', '160800', '141800', '508', 'uploads/car/508.jpg');
INSERT INTO `cys_car_category` VALUES ('1766', '278', '英格尼斯', '', '1', '0', '1514129640', '129000', '129000', '3926', 'uploads/car/3926.jpg');
INSERT INTO `cys_car_category` VALUES ('1767', '278', '超级维特拉', '', '1', '0', '1514129640', '274800', '264800', '500', 'uploads/car/500.jpg');
INSERT INTO `cys_car_category` VALUES ('1768', '278', 'A:Wind', '', '1', '0', '1514129640', '0', '0', '3281', 'uploads/car/3281.jpg');
INSERT INTO `cys_car_category` VALUES ('1769', '278', 'CELERIO', '', '1', '0', '1514129641', '0', '0', '3358', 'uploads/car/3358.jpg');
INSERT INTO `cys_car_category` VALUES ('1770', '278', 'MIGHTY DECK', '', '1', '0', '1514129641', '0', '0', '3927', 'uploads/car/3927.jpg');
INSERT INTO `cys_car_category` VALUES ('1771', '278', 'SOLIO', '', '1', '0', '1514129641', '0', '0', '3012', 'uploads/car/3012.jpg');
INSERT INTO `cys_car_category` VALUES ('1772', '278', 'Spacia', '', '1', '0', '1514129642', '0', '0', '4598', 'uploads/car/4598.jpg');
INSERT INTO `cys_car_category` VALUES ('1773', '278', '奥拓(海外)', '', '1', '0', '1514129642', '0', '0', '674', 'uploads/car/674.jpg');
INSERT INTO `cys_car_category` VALUES ('1774', '278', '铃木G70', '', '1', '0', '1514129642', '0', '0', '2708', 'uploads/car/2708.jpg');
INSERT INTO `cys_car_category` VALUES ('1775', '278', 'Dzire', '', '1', '0', '1514129643', '0', '0', '4449', 'uploads/car/4449.jpg');
INSERT INTO `cys_car_category` VALUES ('1776', '278', 'Splash(海外)', '', '1', '0', '1514129643', '0', '0', '707', 'uploads/car/707.jpg');
INSERT INTO `cys_car_category` VALUES ('1777', '278', '铃木iK-2', '', '1', '0', '1514129643', '0', '0', '3744', 'uploads/car/3744.jpg');
INSERT INTO `cys_car_category` VALUES ('1778', '278', '速翼特', '', '1', '0', '1514129643', '0', '0', '2176', 'uploads/car/2176.jpg');
INSERT INTO `cys_car_category` VALUES ('1779', '278', 'ALIVIO(海外)', '', '1', '0', '1514129644', '0', '0', '3476', 'uploads/car/3476.jpg');
INSERT INTO `cys_car_category` VALUES ('1780', '278', 'Authentics(海外)', '', '1', '0', '1514129644', '0', '0', '3047', 'uploads/car/3047.jpg');
INSERT INTO `cys_car_category` VALUES ('1781', '278', 'Baleno', '', '1', '0', '1514129644', '0', '0', '3888', 'uploads/car/3888.jpg');
INSERT INTO `cys_car_category` VALUES ('1782', '278', 'Ciaz', '', '1', '0', '1514129644', '0', '0', '3592', 'uploads/car/3592.jpg');
INSERT INTO `cys_car_category` VALUES ('1783', '278', 'Crosshiker', '', '1', '0', '1514129647', '0', '0', '3260', 'uploads/car/3260.jpg');
INSERT INTO `cys_car_category` VALUES ('1784', '278', 'e-Survivor', '', '1', '0', '1514129648', '0', '0', '4561', 'uploads/car/4561.jpg');
INSERT INTO `cys_car_category` VALUES ('1785', '278', 'Hustler', '', '1', '0', '1514129648', '0', '0', '3256', 'uploads/car/3256.jpg');
INSERT INTO `cys_car_category` VALUES ('1786', '278', 'VITARA(海外)', '', '1', '0', '1514129648', '0', '0', '3584', 'uploads/car/3584.jpg');
INSERT INTO `cys_car_category` VALUES ('1787', '278', 'X-Lander', '', '1', '0', '1514129649', '0', '0', '3259', 'uploads/car/3259.jpg');
INSERT INTO `cys_car_category` VALUES ('1788', '278', '锋驭(海外)', '', '1', '0', '1514129649', '0', '0', '4036', 'uploads/car/4036.jpg');
INSERT INTO `cys_car_category` VALUES ('1789', '278', '铃木iM-4', '', '1', '0', '1514129649', '0', '0', '3745', 'uploads/car/3745.jpg');
INSERT INTO `cys_car_category` VALUES ('1790', '278', '铃木iV-4', '', '1', '0', '1514129649', '0', '0', '3212', 'uploads/car/3212.jpg');
INSERT INTO `cys_car_category` VALUES ('1791', '278', '铃木XBEE', '', '1', '0', '1514129650', '0', '0', '4559', 'uploads/car/4559.jpg');
INSERT INTO `cys_car_category` VALUES ('1792', '278', '维特拉(海外)', '', '1', '0', '1514129650', '0', '0', '4528', 'uploads/car/4528.jpg');
INSERT INTO `cys_car_category` VALUES ('1793', '278', 'S-CROSS', '', '1', '0', '1514129650', '0', '0', '2905', 'uploads/car/2905.jpg');
INSERT INTO `cys_car_category` VALUES ('1794', '278', 'Air Triser', '', '1', '0', '1514129651', '0', '0', '3929', 'uploads/car/3929.jpg');
INSERT INTO `cys_car_category` VALUES ('1795', '278', 'Wagon R', '', '1', '0', '1514129651', '0', '0', '2983', 'uploads/car/2983.jpg');
INSERT INTO `cys_car_category` VALUES ('1796', '278', '铃木SX4(海外)', '', '1', '0', '1514129651', '0', '0', '2225', 'uploads/car/2225.jpg');
INSERT INTO `cys_car_category` VALUES ('1797', '278', '凯泽西', '', '1', '0', '1514129651', '0', '0', '892', 'uploads/car/892.jpg');
INSERT INTO `cys_car_category` VALUES ('1798', '278', '铃木XL7', '', '1', '0', '1514129652', '0', '0', '2022', 'uploads/car/2022.jpg');
INSERT INTO `cys_car_category` VALUES ('1799', '278', 'Equator', '', '1', '0', '1514129652', '0', '0', '2812', 'uploads/car/2812.jpg');
INSERT INTO `cys_car_category` VALUES ('1800', '102', '猎豹CS9', '', '1', '0', '1514129653', '129800', '76800', '4111', 'uploads/car/4111.jpg');
INSERT INTO `cys_car_category` VALUES ('1801', '102', '猎豹CS9新能源', '', '1', '0', '1514129653', '215800', '195800', '4428', 'uploads/car/4428.jpg');
INSERT INTO `cys_car_category` VALUES ('1802', '102', '猎豹CS10', '', '1', '0', '1514129653', '146800', '89800', '3472', 'uploads/car/3472.jpg');
INSERT INTO `cys_car_category` VALUES ('1803', '102', '黑金刚', '', '1', '0', '1514129653', '179800', '109800', '961', 'uploads/car/961.jpg');
INSERT INTO `cys_car_category` VALUES ('1804', '102', '猎豹Q6', '', '1', '0', '1514129654', '169800', '119900', '3150', 'uploads/car/3150.jpg');
INSERT INTO `cys_car_category` VALUES ('1805', '102', '猎豹CT7', '', '1', '0', '1514129654', '119800', '79800', '4126', 'uploads/car/4126.jpg');
INSERT INTO `cys_car_category` VALUES ('1806', '102', '飞腾', '', '1', '0', '1514129654', '0', '0', '706', 'uploads/car/706.jpg');
INSERT INTO `cys_car_category` VALUES ('1807', '102', '飞腾C3', '', '1', '0', '1514129655', '0', '0', '3489', 'uploads/car/3489.jpg');
INSERT INTO `cys_car_category` VALUES ('1808', '102', '猎豹C5-EV', '', '1', '0', '1514129655', '0', '0', '4112', 'uploads/car/4112.jpg');
INSERT INTO `cys_car_category` VALUES ('1809', '102', '欧酷曼', '', '1', '0', '1514129655', '0', '0', '845', 'uploads/car/845.jpg');
INSERT INTO `cys_car_category` VALUES ('1810', '102', '猎豹CS7', '', '1', '0', '1514129655', '0', '0', '815', 'uploads/car/815.jpg');
INSERT INTO `cys_car_category` VALUES ('1811', '102', '飞腾C5', '', '1', '0', '1514129656', '0', '0', '3124', 'uploads/car/3124.jpg');
INSERT INTO `cys_car_category` VALUES ('1812', '102', '猎豹6481', '', '1', '0', '1514129656', '0', '0', '962', 'uploads/car/962.jpg');
INSERT INTO `cys_car_category` VALUES ('1813', '102', '猎豹CS6', '', '1', '0', '1514129656', '0', '0', '569', 'uploads/car/569.jpg');
INSERT INTO `cys_car_category` VALUES ('1814', '102', '骐菱', '', '1', '0', '1514129656', '0', '0', '568', 'uploads/car/568.jpg');
INSERT INTO `cys_car_category` VALUES ('1815', '102', '飞铃', '', '1', '0', '1514129657', '69000', '59800', '2520', 'uploads/car/2520.jpg');
INSERT INTO `cys_car_category` VALUES ('1816', '102', '飞扬', '', '1', '0', '1514129657', '99800', '63300', '2521', 'uploads/car/2521.jpg');
INSERT INTO `cys_car_category` VALUES ('1817', '102', '猎豹CT5', '', '1', '0', '1514129657', '164800', '119800', '3034', 'uploads/car/3034.jpg');
INSERT INTO `cys_car_category` VALUES ('1818', '103', '林肯MKZ', '', '1', '0', '1514129658', '408800', '284800', '793', 'uploads/car/793.jpg');
INSERT INTO `cys_car_category` VALUES ('1819', '103', '林肯大陆', '', '1', '0', '1514129658', '613800', '418800', '3731', 'uploads/car/3731.jpg');
INSERT INTO `cys_car_category` VALUES ('1820', '103', '林肯MKC', '', '1', '0', '1514129658', '458800', '298800', '2991', 'uploads/car/2991.jpg');
INSERT INTO `cys_car_category` VALUES ('1821', '103', '林肯MKX', '', '1', '0', '1514129659', '659800', '449800', '758', 'uploads/car/758.jpg');
INSERT INTO `cys_car_category` VALUES ('1822', '103', '领航员', '', '1', '0', '1514129659', '988800', '988800', '95', 'uploads/car/95.jpg');
INSERT INTO `cys_car_category` VALUES ('1823', '103', '林肯MKS', '', '1', '0', '1514129659', '0', '0', '869', 'uploads/car/869.jpg');
INSERT INTO `cys_car_category` VALUES ('1824', '103', 'Nautilus', '', '1', '0', '1514129662', '0', '0', '4635', 'uploads/car/4635.jpg');
INSERT INTO `cys_car_category` VALUES ('1825', '103', '林肯MKT', '', '1', '0', '1514129662', '0', '0', '794', 'uploads/car/794.jpg');
INSERT INTO `cys_car_category` VALUES ('1826', '103', '林肯C', '', '1', '0', '1514129663', '0', '0', '870', 'uploads/car/870.jpg');
INSERT INTO `cys_car_category` VALUES ('1827', '103', 'Model L', '', '1', '0', '1514129663', '0', '0', '4014', 'uploads/car/4014.jpg');
INSERT INTO `cys_car_category` VALUES ('1828', '103', '城市', '', '1', '0', '1514129663', '0', '0', '103', 'uploads/car/103.jpg');
INSERT INTO `cys_car_category` VALUES ('1829', '216', '科雷傲', '', '1', '0', '1514129664', '269800', '179800', '4098', 'uploads/car/4098.jpg');
INSERT INTO `cys_car_category` VALUES ('1830', '216', '科雷嘉', '', '1', '0', '1514129664', '208800', '139800', '3870', 'uploads/car/3870.jpg');
INSERT INTO `cys_car_category` VALUES ('1831', '279', '风朗', '', '1', '0', '1514129665', '189800', '165800', '908', 'uploads/car/908.jpg');
INSERT INTO `cys_car_category` VALUES ('1832', '279', '卡缤', '', '1', '0', '1514129665', '179800', '137800', '2268', 'uploads/car/2268.jpg');
INSERT INTO `cys_car_category` VALUES ('1833', '279', 'Espace', '', '1', '0', '1514129665', '341800', '271800', '2029', 'uploads/car/2029.jpg');
INSERT INTO `cys_car_category` VALUES ('1834', '279', '梅甘娜', '', '1', '0', '1514129666', '359900', '339900', '196', 'uploads/car/196.jpg');
INSERT INTO `cys_car_category` VALUES ('1835', '279', 'Twingo', '', '1', '0', '1514129666', '0', '0', '887', 'uploads/car/887.jpg');
INSERT INTO `cys_car_category` VALUES ('1836', '279', 'Twin-Run', '', '1', '0', '1514129666', '0', '0', '3147', 'uploads/car/3147.jpg');
INSERT INTO `cys_car_category` VALUES ('1837', '279', 'Twin-Z', '', '1', '0', '1514129667', '0', '0', '3057', 'uploads/car/3057.jpg');
INSERT INTO `cys_car_category` VALUES ('1838', '279', 'Twizy', '', '1', '0', '1514129667', '0', '0', '3077', 'uploads/car/3077.jpg');
INSERT INTO `cys_car_category` VALUES ('1839', '279', '雷诺XBA', '', '1', '0', '1514129667', '0', '0', '3834', 'uploads/car/3834.jpg');
INSERT INTO `cys_car_category` VALUES ('1840', '279', 'Symbol', '', '1', '0', '1514129668', '0', '0', '886', 'uploads/car/886.jpg');
INSERT INTO `cys_car_category` VALUES ('1841', '279', '雷诺Logan', '', '1', '0', '1514129668', '0', '0', '3297', 'uploads/car/3297.jpg');
INSERT INTO `cys_car_category` VALUES ('1842', '279', '雷诺ZOE', '', '1', '0', '1514129669', '0', '0', '2706', 'uploads/car/2706.jpg');
INSERT INTO `cys_car_category` VALUES ('1843', '279', 'Clio', '', '1', '0', '1514129669', '0', '0', '784', 'uploads/car/784.jpg');
INSERT INTO `cys_car_category` VALUES ('1844', '279', 'Eolab', '', '1', '0', '1514129669', '0', '0', '3612', 'uploads/car/3612.jpg');
INSERT INTO `cys_car_category` VALUES ('1845', '279', 'Kwid', '', '1', '0', '1514129670', '0', '0', '3368', 'uploads/car/3368.jpg');
INSERT INTO `cys_car_category` VALUES ('1846', '279', 'Sandero', '', '1', '0', '1514129670', '0', '0', '3865', 'uploads/car/3865.jpg');
INSERT INTO `cys_car_category` VALUES ('1847', '279', '雷诺Symbioz', '', '1', '0', '1514129670', '0', '0', '4548', 'uploads/car/4548.jpg');
INSERT INTO `cys_car_category` VALUES ('1848', '279', '塔利斯曼', '', '1', '0', '1514129670', '0', '0', '2765', 'uploads/car/2765.jpg');
INSERT INTO `cys_car_category` VALUES ('1849', '279', 'Duster Detour', '', '1', '0', '1514129671', '0', '0', '3222', 'uploads/car/3222.jpg');
INSERT INTO `cys_car_category` VALUES ('1850', '279', 'Duster Extreme Concept', '', '1', '0', '1514129671', '0', '0', '4249', 'uploads/car/4249.jpg');
INSERT INTO `cys_car_category` VALUES ('1851', '279', '科雷傲(进口)', '', '1', '0', '1514129671', '0', '0', '686', 'uploads/car/686.jpg');
INSERT INTO `cys_car_category` VALUES ('1852', '279', '科雷嘉(海外)', '', '1', '0', '1514129672', '0', '0', '3717', 'uploads/car/3717.jpg');
INSERT INTO `cys_car_category` VALUES ('1853', '279', '雷诺Duster', '', '1', '0', '1514129672', '0', '0', '4216', 'uploads/car/4216.jpg');
INSERT INTO `cys_car_category` VALUES ('1854', '279', 'Frendzy', '', '1', '0', '1514129672', '0', '0', '2379', 'uploads/car/2379.jpg');
INSERT INTO `cys_car_category` VALUES ('1855', '279', 'Initiale', '', '1', '0', '1514129672', '0', '0', '3211', 'uploads/car/3211.jpg');
INSERT INTO `cys_car_category` VALUES ('1856', '279', 'Kangoo', '', '1', '0', '1514129673', '0', '0', '3659', 'uploads/car/3659.jpg');
INSERT INTO `cys_car_category` VALUES ('1857', '279', 'R-Space', '', '1', '0', '1514129673', '0', '0', '2285', 'uploads/car/2285.jpg');
INSERT INTO `cys_car_category` VALUES ('1858', '279', 'Trafic', '', '1', '0', '1514129674', '0', '0', '3892', 'uploads/car/3892.jpg');
INSERT INTO `cys_car_category` VALUES ('1859', '279', '风景', '', '1', '0', '1514129674', '0', '0', '199', 'uploads/car/199.jpg');
INSERT INTO `cys_car_category` VALUES ('1860', '279', '雷诺Lodgy', '', '1', '0', '1514129677', '0', '0', '4177', 'uploads/car/4177.jpg');
INSERT INTO `cys_car_category` VALUES ('1861', '279', 'Alpine A110-50', '', '1', '0', '1514129677', '0', '0', '2830', 'uploads/car/2830.jpg');
INSERT INTO `cys_car_category` VALUES ('1862', '279', 'Alpine Celebration', '', '1', '0', '1514129678', '0', '0', '3856', 'uploads/car/3856.jpg');
INSERT INTO `cys_car_category` VALUES ('1863', '279', 'Alpine Vision', '', '1', '0', '1514129678', '0', '0', '4032', 'uploads/car/4032.jpg');
INSERT INTO `cys_car_category` VALUES ('1864', '279', 'Alpine Vision Gran Turismo', '', '1', '0', '1514129678', '0', '0', '3719', 'uploads/car/3719.jpg');
INSERT INTO `cys_car_category` VALUES ('1865', '279', 'Coupe Corbusier', '', '1', '0', '1514129678', '0', '0', '3940', 'uploads/car/3940.jpg');
INSERT INTO `cys_car_category` VALUES ('1866', '279', 'Sport RS 01', '', '1', '0', '1514129679', '0', '0', '3585', 'uploads/car/3585.jpg');
INSERT INTO `cys_car_category` VALUES ('1867', '279', 'TREZOR', '', '1', '0', '1514129679', '0', '0', '4210', 'uploads/car/4210.jpg');
INSERT INTO `cys_car_category` VALUES ('1868', '279', 'Alaskan', '', '1', '0', '1514129679', '0', '0', '3905', 'uploads/car/3905.jpg');
INSERT INTO `cys_car_category` VALUES ('1869', '279', 'Duster Oroch', '', '1', '0', '1514129679', '0', '0', '3645', 'uploads/car/3645.jpg');
INSERT INTO `cys_car_category` VALUES ('1870', '279', 'Kangoo be bop', '', '1', '0', '1514129680', '0', '0', '885', 'uploads/car/885.jpg');
INSERT INTO `cys_car_category` VALUES ('1871', '279', '雷诺4 Luxe', '', '1', '0', '1514129680', '0', '0', '3135', 'uploads/car/3135.jpg');
INSERT INTO `cys_car_category` VALUES ('1872', '279', '拉古那', '', '1', '0', '1514129680', '0', '0', '188', 'uploads/car/188.jpg');
INSERT INTO `cys_car_category` VALUES ('1873', '279', '纬度', '', '1', '0', '1514129681', '0', '0', '2184', 'uploads/car/2184.jpg');
INSERT INTO `cys_car_category` VALUES ('1874', '279', '威赛帝', '', '1', '0', '1514129681', '0', '0', '257', 'uploads/car/257.jpg');
INSERT INTO `cys_car_category` VALUES ('1875', '279', 'DeZir', '', '1', '0', '1514129681', '0', '0', '2189', 'uploads/car/2189.jpg');
INSERT INTO `cys_car_category` VALUES ('1876', '279', 'Wind', '', '1', '0', '1514129681', '0', '0', '2052', 'uploads/car/2052.jpg');
INSERT INTO `cys_car_category` VALUES ('1877', '280', '逍遥', '', '1', '0', '1514129682', '0', '0', '4233', 'uploads/car/4233.jpg');
INSERT INTO `cys_car_category` VALUES ('1878', '280', '陆风X2', '', '1', '0', '1514129683', '88800', '63800', '4302', 'uploads/car/4302.jpg');
INSERT INTO `cys_car_category` VALUES ('1879', '280', '陆风X5', '', '1', '0', '1514129683', '115800', '79800', '2883', 'uploads/car/2883.jpg');
INSERT INTO `cys_car_category` VALUES ('1880', '280', '陆风X7', '', '1', '0', '1514129683', '147800', '129800', '3413', 'uploads/car/3413.jpg');
INSERT INTO `cys_car_category` VALUES ('1881', '280', '陆风X8', '', '1', '0', '1514129683', '151900', '113800', '833', 'uploads/car/833.jpg');
INSERT INTO `cys_car_category` VALUES ('1882', '280', '风华', '', '1', '0', '1514129684', '0', '0', '571', 'uploads/car/571.jpg');
INSERT INTO `cys_car_category` VALUES ('1883', '280', '陆风X6', '', '1', '0', '1514129684', '0', '0', '501', 'uploads/car/501.jpg');
INSERT INTO `cys_car_category` VALUES ('1884', '280', '陆风X9', '', '1', '0', '1514129684', '0', '0', '635', 'uploads/car/635.jpg');
INSERT INTO `cys_car_category` VALUES ('1885', '280', '风尚', '', '1', '0', '1514129684', '0', '0', '468', 'uploads/car/468.jpg');
INSERT INTO `cys_car_category` VALUES ('1886', '106', 'Urus', '', '1', '0', '1514129685', '3130000', '3130000', '2775', 'uploads/car/2775.jpg');
INSERT INTO `cys_car_category` VALUES ('1887', '106', 'Huracan', '', '1', '0', '1514129685', '4290900', '2990000', '3277', 'uploads/car/3277.jpg');
INSERT INTO `cys_car_category` VALUES ('1888', '106', 'Aventador', '', '1', '0', '1514129686', '8011500', '6488000', '2277', 'uploads/car/2277.jpg');
INSERT INTO `cys_car_category` VALUES ('1889', '106', 'Asterion', '', '1', '0', '1514129686', '0', '0', '3623', 'uploads/car/3623.jpg');
INSERT INTO `cys_car_category` VALUES ('1890', '106', 'Centenario', '', '1', '0', '1514129686', '0', '0', '4033', 'uploads/car/4033.jpg');
INSERT INTO `cys_car_category` VALUES ('1891', '106', 'Diablo', '', '1', '0', '1514129686', '0', '0', '3760', 'uploads/car/3760.jpg');
INSERT INTO `cys_car_category` VALUES ('1892', '106', 'Egoista', '', '1', '0', '1514129687', '0', '0', '3137', 'uploads/car/3137.jpg');
INSERT INTO `cys_car_category` VALUES ('1893', '106', 'Terzo Millennio', '', '1', '0', '1514129687', '0', '0', '4603', 'uploads/car/4603.jpg');
INSERT INTO `cys_car_category` VALUES ('1894', '106', 'Veneno', '', '1', '0', '1514129687', '0', '0', '3020', 'uploads/car/3020.jpg');
INSERT INTO `cys_car_category` VALUES ('1895', '106', '兰博基尼 5-95', '', '1', '0', '1514129687', '0', '0', '3517', 'uploads/car/3517.jpg');
INSERT INTO `cys_car_category` VALUES ('1896', '106', '兰博基尼LM002', '', '1', '0', '1514129688', '0', '0', '2655', 'uploads/car/2655.jpg');
INSERT INTO `cys_car_category` VALUES ('1897', '106', 'Estoque', '', '1', '0', '1514129688', '0', '0', '739', 'uploads/car/739.jpg');
INSERT INTO `cys_car_category` VALUES ('1898', '106', 'Gallardo', '', '1', '0', '1514129688', '0', '0', '354', 'uploads/car/354.jpg');
INSERT INTO `cys_car_category` VALUES ('1899', '106', 'Murcielago', '', '1', '0', '1514129690', '0', '0', '174', 'uploads/car/174.jpg');
INSERT INTO `cys_car_category` VALUES ('1900', '106', 'Reventon', '', '1', '0', '1514129691', '0', '0', '727', 'uploads/car/727.jpg');
INSERT INTO `cys_car_category` VALUES ('1901', '106', 'Sesto Elemento', '', '1', '0', '1514129691', '0', '0', '2215', 'uploads/car/2215.jpg');
INSERT INTO `cys_car_category` VALUES ('1902', '107', '力帆330EV', '', '1', '0', '1514129692', '146800', '143800', '4332', 'uploads/car/4332.jpg');
INSERT INTO `cys_car_category` VALUES ('1903', '107', '力帆620EV', '', '1', '0', '1514129692', '219800', '219800', '4329', 'uploads/car/4329.jpg');
INSERT INTO `cys_car_category` VALUES ('1904', '107', '力帆820', '', '1', '0', '1514129692', '119800', '76800', '3326', 'uploads/car/3326.jpg');
INSERT INTO `cys_car_category` VALUES ('1905', '107', '力帆X50', '', '1', '0', '1514129693', '82800', '59800', '3220', 'uploads/car/3220.jpg');
INSERT INTO `cys_car_category` VALUES ('1906', '107', '力帆X60', '', '1', '0', '1514129693', '90900', '75400', '2134', 'uploads/car/2134.jpg');
INSERT INTO `cys_car_category` VALUES ('1907', '107', '迈威', '', '1', '0', '1514129693', '79800', '57800', '3987', 'uploads/car/3987.jpg');
INSERT INTO `cys_car_category` VALUES ('1908', '107', '力帆X80', '', '1', '0', '1514129694', '149900', '109900', '3759', 'uploads/car/3759.jpg');
INSERT INTO `cys_car_category` VALUES ('1909', '107', '轩朗', '', '1', '0', '1514129694', '106800', '69800', '4194', 'uploads/car/4194.jpg');
INSERT INTO `cys_car_category` VALUES ('1910', '107', '丰顺', '', '1', '0', '1514129694', '49380', '32800', '2503', 'uploads/car/2503.jpg');
INSERT INTO `cys_car_category` VALUES ('1911', '107', '福顺', '', '1', '0', '1514129694', '31800', '27800', '2800', 'uploads/car/2800.jpg');
INSERT INTO `cys_car_category` VALUES ('1912', '107', '乐途', '', '1', '0', '1514129695', '59800', '35800', '3631', 'uploads/car/3631.jpg');
INSERT INTO `cys_car_category` VALUES ('1913', '107', '兴顺', '', '1', '0', '1514129695', '45800', '37800', '2502', 'uploads/car/2502.jpg');
INSERT INTO `cys_car_category` VALUES ('1914', '107', '力帆T11', '', '1', '0', '1514129695', '31800', '27800', '3228', 'uploads/car/3228.jpg');
INSERT INTO `cys_car_category` VALUES ('1915', '107', '力帆T21', '', '1', '0', '1514129696', '36300', '34800', '3229', 'uploads/car/3229.jpg');
INSERT INTO `cys_car_category` VALUES ('1916', '107', '力帆650', '', '1', '0', '1514129696', '0', '0', '4124', 'uploads/car/4124.jpg');
INSERT INTO `cys_car_category` VALUES ('1917', '107', '力帆X40', '', '1', '0', '1514129696', '0', '0', '3798', 'uploads/car/3798.jpg');
INSERT INTO `cys_car_category` VALUES ('1918', '107', '力帆X70', '', '1', '0', '1514129697', '0', '0', '3797', 'uploads/car/3797.jpg');
INSERT INTO `cys_car_category` VALUES ('1919', '107', '鹏飞', '', '1', '0', '1514129697', '0', '0', '4454', 'uploads/car/4454.jpg');
INSERT INTO `cys_car_category` VALUES ('1920', '107', '力帆320', '', '1', '0', '1514129697', '0', '0', '597', 'uploads/car/597.jpg');
INSERT INTO `cys_car_category` VALUES ('1921', '107', '力帆330', '', '1', '0', '1514129698', '0', '0', '3082', 'uploads/car/3082.jpg');
INSERT INTO `cys_car_category` VALUES ('1922', '107', '力帆530', '', '1', '0', '1514129698', '0', '0', '2957', 'uploads/car/2957.jpg');
INSERT INTO `cys_car_category` VALUES ('1923', '107', '力帆520', '', '1', '0', '1514129698', '0', '0', '443', 'uploads/car/443.jpg');
INSERT INTO `cys_car_category` VALUES ('1924', '107', '力帆620', '', '1', '0', '1514129698', '0', '0', '596', 'uploads/car/596.jpg');
INSERT INTO `cys_car_category` VALUES ('1925', '107', '力帆630', '', '1', '0', '1514129699', '0', '0', '3083', 'uploads/car/3083.jpg');
INSERT INTO `cys_car_category` VALUES ('1926', '107', '力帆720', '', '1', '0', '1514129699', '0', '0', '2312', 'uploads/car/2312.jpg');
INSERT INTO `cys_car_category` VALUES ('1927', '108', '幻影', '', '1', '0', '1514129700', '8008000', '6880000', '265', 'uploads/car/265.jpg');
INSERT INTO `cys_car_category` VALUES ('1928', '108', '古思特', '', '1', '0', '1514129700', '4800000', '4190000', '836', 'uploads/car/836.jpg');
INSERT INTO `cys_car_category` VALUES ('1929', '108', '魅影', '', '1', '0', '1514129700', '5470000', '4730000', '3015', 'uploads/car/3015.jpg');
INSERT INTO `cys_car_category` VALUES ('1930', '108', '曜影', '', '1', '0', '1514129700', '4778000', '4778000', '3838', 'uploads/car/3838.jpg');
INSERT INTO `cys_car_category` VALUES ('1931', '108', 'VISION Next100', '', '1', '0', '1514129701', '0', '0', '4153', 'uploads/car/4153.jpg');
INSERT INTO `cys_car_category` VALUES ('1932', '108', '劳斯莱斯20/25 HP', '', '1', '0', '1514129701', '0', '0', '3728', 'uploads/car/3728.jpg');
INSERT INTO `cys_car_category` VALUES ('1933', '108', 'Cullinan', '', '1', '0', '1514129701', '0', '0', '3778', 'uploads/car/3778.jpg');
INSERT INTO `cys_car_category` VALUES ('1934', '108', '慧影', '', '1', '0', '1514129702', '0', '0', '4467', 'uploads/car/4467.jpg');
INSERT INTO `cys_car_category` VALUES ('1935', '108', 'Silver Cloud', '', '1', '0', '1514129702', '0', '0', '4636', 'uploads/car/4636.jpg');
INSERT INTO `cys_car_category` VALUES ('1936', '108', 'Silver Shadow', '', '1', '0', '1514129702', '0', '0', '3724', 'uploads/car/3724.jpg');
INSERT INTO `cys_car_category` VALUES ('1937', '109', 'Elise', '', '1', '0', '1514129703', '500000', '500000', '272', 'uploads/car/272.jpg');
INSERT INTO `cys_car_category` VALUES ('1938', '109', 'Evora', '', '1', '0', '1514129705', '850000', '850000', '681', 'uploads/car/681.jpg');
INSERT INTO `cys_car_category` VALUES ('1939', '109', 'Exige', '', '1', '0', '1514129706', '820000', '820000', '891', 'uploads/car/891.jpg');
INSERT INTO `cys_car_category` VALUES ('1940', '109', '3-Eleven', '', '1', '0', '1514129706', '0', '0', '3867', 'uploads/car/3867.jpg');
INSERT INTO `cys_car_category` VALUES ('1941', '109', 'Elan', '', '1', '0', '1514129706', '0', '0', '2221', 'uploads/car/2221.jpg');
INSERT INTO `cys_car_category` VALUES ('1942', '109', 'Elite', '', '1', '0', '1514129707', '0', '0', '2223', 'uploads/car/2223.jpg');
INSERT INTO `cys_car_category` VALUES ('1943', '109', 'Esprit', '', '1', '0', '1514129707', '0', '0', '330', 'uploads/car/330.jpg');
INSERT INTO `cys_car_category` VALUES ('1944', '109', 'Eterne', '', '1', '0', '1514129707', '0', '0', '2222', 'uploads/car/2222.jpg');
INSERT INTO `cys_car_category` VALUES ('1945', '109', 'Europa', '', '1', '0', '1514129708', '0', '0', '2620', 'uploads/car/2620.jpg');
INSERT INTO `cys_car_category` VALUES ('1946', '109', 'Excel', '', '1', '0', '1514129708', '0', '0', '2621', 'uploads/car/2621.jpg');
INSERT INTO `cys_car_category` VALUES ('1947', '110', 'Lorinser C级', '', '1', '0', '1514129708', '0', '0', '2099', 'uploads/car/2099.jpg');
INSERT INTO `cys_car_category` VALUES ('1948', '110', 'Lorinser E级', '', '1', '0', '1514129709', '0', '0', '2101', 'uploads/car/2101.jpg');
INSERT INTO `cys_car_category` VALUES ('1949', '110', 'Lorinser S级', '', '1', '0', '1514129709', '0', '0', '2102', 'uploads/car/2102.jpg');
INSERT INTO `cys_car_category` VALUES ('1950', '110', 'Lorinser GLK级', '', '1', '0', '1514129709', '0', '0', '2104', 'uploads/car/2104.jpg');
INSERT INTO `cys_car_category` VALUES ('1951', '110', 'Lorinser G级', '', '1', '0', '1514129710', '0', '0', '2370', 'uploads/car/2370.jpg');
INSERT INTO `cys_car_category` VALUES ('1952', '110', 'Lorinser M级', '', '1', '0', '1514129710', '0', '0', '2103', 'uploads/car/2103.jpg');
INSERT INTO `cys_car_category` VALUES ('1953', '281', 'Lorinser GS500', '', '1', '0', '1514129710', '1598000', '1598000', '4600', 'uploads/car/4600.jpg');
INSERT INTO `cys_car_category` VALUES ('1954', '281', 'Lorinser VS550', '', '1', '0', '1514129711', '1388000', '1388000', '4464', 'uploads/car/4464.jpg');
INSERT INTO `cys_car_category` VALUES ('1955', '281', 'Metris MS500', '', '1', '0', '1514129711', '958000', '958000', '4379', 'uploads/car/4379.jpg');
INSERT INTO `cys_car_category` VALUES ('1956', '281', 'Sprinter LS500', '', '1', '0', '1514129711', '1600000', '1600000', '4378', 'uploads/car/4378.jpg');
INSERT INTO `cys_car_category` VALUES ('1957', '111', '莲花L6', '', '1', '0', '1514129712', '0', '0', '2782', 'uploads/car/2782.jpg');
INSERT INTO `cys_car_category` VALUES ('1958', '111', '莲花T5', '', '1', '0', '1514129712', '0', '0', '2802', 'uploads/car/2802.jpg');
INSERT INTO `cys_car_category` VALUES ('1959', '111', '竞速', '', '1', '0', '1514129712', '0', '0', '583', 'uploads/car/583.jpg');
INSERT INTO `cys_car_category` VALUES ('1960', '111', '竞悦', '', '1', '0', '1514129713', '0', '0', '691', 'uploads/car/691.jpg');
INSERT INTO `cys_car_category` VALUES ('1961', '111', '莲花L3', '', '1', '0', '1514129713', '0', '0', '928', 'uploads/car/928.jpg');
INSERT INTO `cys_car_category` VALUES ('1962', '111', '莲花L5', '', '1', '0', '1514129713', '0', '0', '2125', 'uploads/car/2125.jpg');
INSERT INTO `cys_car_category` VALUES ('1963', '111', '莲花Europa', '', '1', '0', '1514129713', '0', '0', '2344', 'uploads/car/2344.jpg');
INSERT INTO `cys_car_category` VALUES ('1964', '186', '理念S1', '', '1', '0', '1514129714', '99800', '67800', '2248', 'uploads/car/2248.jpg');
INSERT INTO `cys_car_category` VALUES ('1965', '113', 'RALLY FIGHTER', '', '1', '0', '1514129715', '1580000', '1580000', '3864', 'uploads/car/3864.jpg');
INSERT INTO `cys_car_category` VALUES ('1966', '114', '威途X35', '', '1', '0', '1514129715', '190000', '190000', '4509', 'uploads/car/4509.jpg');
INSERT INTO `cys_car_category` VALUES ('1967', '114', '劲玛', '', '1', '0', '1514129716', '0', '0', '3437', 'uploads/car/3437.jpg');
INSERT INTO `cys_car_category` VALUES ('1968', '114', '艾威', '', '1', '0', '1514129716', '0', '0', '3436', 'uploads/car/3436.jpg');
INSERT INTO `cys_car_category` VALUES ('1969', '114', '陆地方舟风尚', '', '1', '0', '1514129716', '0', '0', '3439', 'uploads/car/3439.jpg');
INSERT INTO `cys_car_category` VALUES ('1970', '114', '陆地方舟V5', '', '1', '0', '1514129717', '0', '0', '3438', 'uploads/car/3438.jpg');
INSERT INTO `cys_car_category` VALUES ('1971', '282', '马自达3 Axela昂克赛拉', '', '1', '0', '1514129721', '162900', '112900', '3294', 'uploads/car/3294.jpg');
INSERT INTO `cys_car_category` VALUES ('1972', '282', '马自达CX-5', '', '1', '0', '1514129721', '245800', '169800', '2987', 'uploads/car/2987.jpg');
INSERT INTO `cys_car_category` VALUES ('1973', '282', '马自达2', '', '1', '0', '1514129721', '0', '0', '433', 'uploads/car/433.jpg');
INSERT INTO `cys_car_category` VALUES ('1974', '282', '马自达2劲翔', '', '1', '0', '1514129722', '0', '0', '641', 'uploads/car/641.jpg');
INSERT INTO `cys_car_category` VALUES ('1975', '282', '马自达3', '', '1', '0', '1514129722', '0', '0', '363', 'uploads/car/363.jpg');
INSERT INTO `cys_car_category` VALUES ('1976', '282', '马自达3星骋', '', '1', '0', '1514129722', '0', '0', '2418', 'uploads/car/2418.jpg');
INSERT INTO `cys_car_category` VALUES ('1977', '283', '阿特兹', '', '1', '0', '1514129723', '237800', '175800', '3154', 'uploads/car/3154.jpg');
INSERT INTO `cys_car_category` VALUES ('1978', '283', '马自达CX-4', '', '1', '0', '1514129723', '215800', '140800', '3968', 'uploads/car/3968.jpg');
INSERT INTO `cys_car_category` VALUES ('1979', '283', '马自达6', '', '1', '0', '1514129723', '0', '0', '22', 'uploads/car/22.jpg');
INSERT INTO `cys_car_category` VALUES ('1980', '283', '睿翼', '', '1', '0', '1514129724', '0', '0', '655', 'uploads/car/655.jpg');
INSERT INTO `cys_car_category` VALUES ('1981', '283', '马自达CX-7', '', '1', '0', '1514129724', '0', '0', '3066', 'uploads/car/3066.jpg');
INSERT INTO `cys_car_category` VALUES ('1982', '283', '马自达8', '', '1', '0', '1514129724', '0', '0', '2118', 'uploads/car/2118.jpg');
INSERT INTO `cys_car_category` VALUES ('1983', '284', '马自达CX-3', '', '1', '0', '1514129725', '159800', '149800', '3538', 'uploads/car/3538.jpg');
INSERT INTO `cys_car_category` VALUES ('1984', '284', '马自达MX-5', '', '1', '0', '1514129725', '340000', '339000', '672', 'uploads/car/672.jpg');
INSERT INTO `cys_car_category` VALUES ('1985', '284', 'Hazumi', '', '1', '0', '1514129725', '0', '0', '3394', 'uploads/car/3394.jpg');
INSERT INTO `cys_car_category` VALUES ('1986', '284', '马自达2(海外)', '', '1', '0', '1514129726', '0', '0', '946', 'uploads/car/946.jpg');
INSERT INTO `cys_car_category` VALUES ('1987', '284', '魁', '', '1', '0', '1514129726', '0', '0', '4591', 'uploads/car/4591.jpg');
INSERT INTO `cys_car_category` VALUES ('1988', '284', '马自达3(进口)', '', '1', '0', '1514129726', '0', '0', '584', 'uploads/car/584.jpg');
INSERT INTO `cys_car_category` VALUES ('1989', '284', 'ATENZA', '', '1', '0', '1514129727', '0', '0', '3096', 'uploads/car/3096.jpg');
INSERT INTO `cys_car_category` VALUES ('1990', '284', 'Takeri', '', '1', '0', '1514129727', '0', '0', '2518', 'uploads/car/2518.jpg');
INSERT INTO `cys_car_category` VALUES ('1991', '284', '马自达6(进口)', '', '1', '0', '1514129727', '0', '0', '728', 'uploads/car/728.jpg');
INSERT INTO `cys_car_category` VALUES ('1992', '284', 'KOERU越', '', '1', '0', '1514129727', '0', '0', '3887', 'uploads/car/3887.jpg');
INSERT INTO `cys_car_category` VALUES ('1993', '284', 'Minagi', '', '1', '0', '1514129728', '0', '0', '2284', 'uploads/car/2284.jpg');
INSERT INTO `cys_car_category` VALUES ('1994', '284', '马自达CX-5(进口)', '', '1', '0', '1514129728', '0', '0', '2391', 'uploads/car/2391.jpg');
INSERT INTO `cys_car_category` VALUES ('1995', '284', '马自达CX-8', '', '1', '0', '1514129728', '0', '0', '4452', 'uploads/car/4452.jpg');
INSERT INTO `cys_car_category` VALUES ('1996', '284', '马自达CX-9', '', '1', '0', '1514129729', '0', '0', '1005', 'uploads/car/1005.jpg');
INSERT INTO `cys_car_category` VALUES ('1997', '284', 'VISION COUPE', '', '1', '0', '1514129729', '0', '0', '4590', 'uploads/car/4590.jpg');
INSERT INTO `cys_car_category` VALUES ('1998', '284', '马自达LM55', '', '1', '0', '1514129729', '0', '0', '3694', 'uploads/car/3694.jpg');
INSERT INTO `cys_car_category` VALUES ('1999', '284', '马自达RX-VISION', '', '1', '0', '1514129729', '0', '0', '3942', 'uploads/car/3942.jpg');
INSERT INTO `cys_car_category` VALUES ('2000', '284', '马自达BT-50', '', '1', '0', '1514129730', '0', '0', '3850', 'uploads/car/3850.jpg');
INSERT INTO `cys_car_category` VALUES ('2001', '284', 'Kiyora', '', '1', '0', '1514129730', '0', '0', '2933', 'uploads/car/2933.jpg');
INSERT INTO `cys_car_category` VALUES ('2002', '284', 'Millenia', '', '1', '0', '1514129730', '0', '0', '4071', 'uploads/car/4071.jpg');
INSERT INTO `cys_car_category` VALUES ('2003', '284', 'Shinari', '', '1', '0', '1514129730', '0', '0', '2202', 'uploads/car/2202.jpg');
INSERT INTO `cys_car_category` VALUES ('2004', '284', '马自达CX-7(进口)', '', '1', '0', '1514129731', '0', '0', '658', 'uploads/car/658.jpg');
INSERT INTO `cys_car_category` VALUES ('2005', '284', '马自达5', '', '1', '0', '1514129731', '0', '0', '578', 'uploads/car/578.jpg');
INSERT INTO `cys_car_category` VALUES ('2006', '284', '马自达8(进口)', '', '1', '0', '1514129731', '0', '0', '304', 'uploads/car/304.jpg');
INSERT INTO `cys_car_category` VALUES ('2007', '284', 'Ryuga', '', '1', '0', '1514129732', '0', '0', '2934', 'uploads/car/2934.jpg');
INSERT INTO `cys_car_category` VALUES ('2008', '284', '马自达RX-7', '', '1', '0', '1514129732', '0', '0', '2647', 'uploads/car/2647.jpg');
INSERT INTO `cys_car_category` VALUES ('2009', '284', '马自达RX-8', '', '1', '0', '1514129735', '0', '0', '295', 'uploads/car/295.jpg');
INSERT INTO `cys_car_category` VALUES ('2010', '285', '名爵3', '', '1', '0', '1514129736', '93800', '59800', '2147', 'uploads/car/2147.jpg');
INSERT INTO `cys_car_category` VALUES ('2011', '285', '名爵3SW', '', '1', '0', '1514129737', '87700', '87700', '555', 'uploads/car/555.jpg');
INSERT INTO `cys_car_category` VALUES ('2012', '285', '名爵6', '', '1', '0', '1514129737', '132800', '96800', '835', 'uploads/car/835.jpg');
INSERT INTO `cys_car_category` VALUES ('2013', '285', '锐行', '', '1', '0', '1514129737', '129900', '77900', '3547', 'uploads/car/3547.jpg');
INSERT INTO `cys_car_category` VALUES ('2014', '285', '名爵ZS', '', '1', '0', '1514129737', '115800', '73800', '4247', 'uploads/car/4247.jpg');
INSERT INTO `cys_car_category` VALUES ('2015', '285', '锐腾', '', '1', '0', '1514129738', '175800', '98800', '3065', 'uploads/car/3065.jpg');
INSERT INTO `cys_car_category` VALUES ('2016', '285', '名爵6新能源', '', '1', '0', '1514129738', '0', '0', '4605', 'uploads/car/4605.jpg');
INSERT INTO `cys_car_category` VALUES ('2017', '285', 'ICON', '', '1', '0', '1514129738', '0', '0', '2758', 'uploads/car/2758.jpg');
INSERT INTO `cys_car_category` VALUES ('2018', '285', '名爵iGS', '', '1', '0', '1514129739', '0', '0', '3815', 'uploads/car/3815.jpg');
INSERT INTO `cys_car_category` VALUES ('2019', '285', '名爵E-motion', '', '1', '0', '1514129739', '0', '0', '4395', 'uploads/car/4395.jpg');
INSERT INTO `cys_car_category` VALUES ('2020', '285', '名爵5', '', '1', '0', '1514129739', '0', '0', '532', 'uploads/car/532.jpg');
INSERT INTO `cys_car_category` VALUES ('2021', '285', '名爵7', '', '1', '0', '1514129739', '0', '0', '531', 'uploads/car/531.jpg');
INSERT INTO `cys_car_category` VALUES ('2022', '285', '名爵TF', '', '1', '0', '1514129740', '0', '0', '533', 'uploads/car/533.jpg');
INSERT INTO `cys_car_category` VALUES ('2023', '117', 'Ghibli', '', '1', '0', '1514129740', '1398000', '911000', '3060', 'uploads/car/3060.jpg');
INSERT INTO `cys_car_category` VALUES ('2024', '117', '总裁', '', '1', '0', '1514129741', '1460000', '1460000', '289', 'uploads/car/289.jpg');
INSERT INTO `cys_car_category` VALUES ('2025', '117', 'Levante', '', '1', '0', '1514129741', '1478000', '888000', '2428', 'uploads/car/2428.jpg');
INSERT INTO `cys_car_category` VALUES ('2026', '117', 'GranTurismo', '', '1', '0', '1514129742', '2888000', '2468000', '551', 'uploads/car/551.jpg');
INSERT INTO `cys_car_category` VALUES ('2027', '117', 'GranCabrio', '', '1', '0', '1514129743', '3028000', '2688000', '903', 'uploads/car/903.jpg');
INSERT INTO `cys_car_category` VALUES ('2028', '117', 'Alfieri', '', '1', '0', '1514129743', '0', '0', '3402', 'uploads/car/3402.jpg');
INSERT INTO `cys_car_category` VALUES ('2029', '117', 'Coupe', '', '1', '0', '1514129744', '0', '0', '322', 'uploads/car/322.jpg');
INSERT INTO `cys_car_category` VALUES ('2030', '117', 'Mostro', '', '1', '0', '1514129744', '0', '0', '3842', 'uploads/car/3842.jpg');
INSERT INTO `cys_car_category` VALUES ('2031', '117', 'GranSport', '', '1', '0', '1514129744', '0', '0', '974', 'uploads/car/974.jpg');
INSERT INTO `cys_car_category` VALUES ('2032', '117', '玛莎拉蒂MC12', '', '1', '0', '1514129745', '0', '0', '2709', 'uploads/car/2709.jpg');
INSERT INTO `cys_car_category` VALUES ('2033', '117', '玛莎拉蒂Spyder', '', '1', '0', '1514129745', '0', '0', '191', 'uploads/car/191.jpg');
INSERT INTO `cys_car_category` VALUES ('2034', '118', 'MINI', '', '1', '0', '1514129745', '395000', '185000', '209', 'uploads/car/209.jpg');
INSERT INTO `cys_car_category` VALUES ('2035', '118', 'MINI CLUBMAN', '', '1', '0', '1514129746', '381000', '249000', '749', 'uploads/car/749.jpg');
INSERT INTO `cys_car_category` VALUES ('2036', '118', 'MINI COUNTRYMAN', '', '1', '0', '1514129746', '396000', '286000', '750', 'uploads/car/750.jpg');
INSERT INTO `cys_car_category` VALUES ('2037', '118', 'MINI ROCKETMAN', '', '1', '0', '1514129746', '0', '0', '2276', 'uploads/car/2276.jpg');
INSERT INTO `cys_car_category` VALUES ('2038', '118', 'MINI CLUBVAN', '', '1', '0', '1514129747', '0', '0', '2676', 'uploads/car/2676.jpg');
INSERT INTO `cys_car_category` VALUES ('2039', '118', 'MINI Electric', '', '1', '0', '1514129749', '0', '0', '4529', 'uploads/car/4529.jpg');
INSERT INTO `cys_car_category` VALUES ('2040', '118', 'MINI VISION', '', '1', '0', '1514129750', '0', '0', '3172', 'uploads/car/3172.jpg');
INSERT INTO `cys_car_category` VALUES ('2041', '118', 'MINI VISION Next100', '', '1', '0', '1514129750', '0', '0', '4152', 'uploads/car/4152.jpg');
INSERT INTO `cys_car_category` VALUES ('2042', '118', 'MINI Superleggera Vision', '', '1', '0', '1514129750', '0', '0', '3516', 'uploads/car/3516.jpg');
INSERT INTO `cys_car_category` VALUES ('2043', '118', 'MINI ROADSTER', '', '1', '0', '1514129751', '0', '0', '930', 'uploads/car/930.jpg');
INSERT INTO `cys_car_category` VALUES ('2044', '118', 'MINI VAN', '', '1', '0', '1514129751', '0', '0', '3042', 'uploads/car/3042.jpg');
INSERT INTO `cys_car_category` VALUES ('2045', '118', 'MINI BEACHCOMBER', '', '1', '0', '1514129752', '0', '0', '2007', 'uploads/car/2007.jpg');
INSERT INTO `cys_car_category` VALUES ('2046', '118', 'MINI PACEMAN', '', '1', '0', '1514129752', '0', '0', '2241', 'uploads/car/2241.jpg');
INSERT INTO `cys_car_category` VALUES ('2047', '118', 'MINI COUPE', '', '1', '0', '1514129753', '0', '0', '904', 'uploads/car/904.jpg');
INSERT INTO `cys_car_category` VALUES ('2048', '286', 'MINI JCW', '', '1', '0', '1514129753', '391000', '355000', '3178', 'uploads/car/3178.jpg');
INSERT INTO `cys_car_category` VALUES ('2049', '286', 'MINI JCW CLUBMAN', '', '1', '0', '1514129754', '431000', '395000', '3179', 'uploads/car/3179.jpg');
INSERT INTO `cys_car_category` VALUES ('2050', '286', 'MINI JCW COUNTRYMAN', '', '1', '0', '1514129754', '456000', '416000', '3181', 'uploads/car/3181.jpg');
INSERT INTO `cys_car_category` VALUES ('2051', '286', 'MINI JCW PACEMAN', '', '1', '0', '1514129754', '0', '0', '3182', 'uploads/car/3182.jpg');
INSERT INTO `cys_car_category` VALUES ('2052', '286', 'MINI JCW COUPE', '', '1', '0', '1514129754', '0', '0', '3180', 'uploads/car/3180.jpg');
INSERT INTO `cys_car_category` VALUES ('2053', '119', '迈凯伦P1', '', '1', '0', '1514129755', '12600000', '12600000', '2902', 'uploads/car/2902.jpg');
INSERT INTO `cys_car_category` VALUES ('2054', '119', '迈凯伦540C', '', '1', '0', '1514129756', '2250000', '2250000', '3809', 'uploads/car/3809.jpg');
INSERT INTO `cys_car_category` VALUES ('2055', '119', '迈凯伦570GT', '', '1', '0', '1514129756', '2731000', '2731000', '4040', 'uploads/car/4040.jpg');
INSERT INTO `cys_car_category` VALUES ('2056', '119', '迈凯伦570S', '', '1', '0', '1514129756', '2556000', '2556000', '3767', 'uploads/car/3767.jpg');
INSERT INTO `cys_car_category` VALUES ('2057', '119', '迈凯伦625C', '', '1', '0', '1514129756', '3818000', '3498000', '3620', 'uploads/car/3620.jpg');
INSERT INTO `cys_car_category` VALUES ('2058', '119', '迈凯伦650S', '', '1', '0', '1514129757', '4068000', '3758000', '3382', 'uploads/car/3382.jpg');
INSERT INTO `cys_car_category` VALUES ('2059', '119', '迈凯伦675LT', '', '1', '0', '1514129757', '4933000', '4933000', '3733', 'uploads/car/3733.jpg');
INSERT INTO `cys_car_category` VALUES ('2060', '119', '迈凯伦720S', '', '1', '0', '1514129757', '4054000', '4054000', '4366', 'uploads/car/4366.jpg');
INSERT INTO `cys_car_category` VALUES ('2061', '119', 'Senna', '', '1', '0', '1514129758', '0', '0', '4650', 'uploads/car/4650.jpg');
INSERT INTO `cys_car_category` VALUES ('2062', '119', '迈凯伦500S', '', '1', '0', '1514129758', '0', '0', '3247', 'uploads/car/3247.jpg');
INSERT INTO `cys_car_category` VALUES ('2063', '119', '迈凯伦BP23', '', '1', '0', '1514129758', '0', '0', '4564', 'uploads/car/4564.jpg');
INSERT INTO `cys_car_category` VALUES ('2064', '119', '迈凯伦P15', '', '1', '0', '1514129758', '0', '0', '3527', 'uploads/car/3527.jpg');
INSERT INTO `cys_car_category` VALUES ('2065', '119', '迈凯伦X-1', '', '1', '0', '1514129759', '0', '0', '2872', 'uploads/car/2872.jpg');
INSERT INTO `cys_car_category` VALUES ('2066', '119', '迈凯伦12C', '', '1', '0', '1514129759', '0', '0', '2293', 'uploads/car/2293.jpg');
INSERT INTO `cys_car_category` VALUES ('2067', '119', '迈凯伦F1', '', '1', '0', '1514129759', '0', '0', '3024', 'uploads/car/3024.jpg');
INSERT INTO `cys_car_category` VALUES ('2068', '120', '迈巴赫', '', '1', '0', '1514129760', '0', '0', '389', 'uploads/car/389.jpg');
INSERT INTO `cys_car_category` VALUES ('2069', '120', 'Exelero', '', '1', '0', '1514129760', '0', '0', '2349', 'uploads/car/2349.jpg');
INSERT INTO `cys_car_category` VALUES ('2070', '121', '摩根EV3', '', '1', '0', '1514129761', '0', '0', '4049', 'uploads/car/4049.jpg');
INSERT INTO `cys_car_category` VALUES ('2071', '121', '3 Wheeler', '', '1', '0', '1514129761', '893650', '880000', '3491', 'uploads/car/3491.jpg');
INSERT INTO `cys_car_category` VALUES ('2072', '121', '摩根4-4', '', '1', '0', '1514129761', '950000', '950000', '3153', 'uploads/car/3153.jpg');
INSERT INTO `cys_car_category` VALUES ('2073', '121', '摩根Aero', '', '1', '0', '1514129761', '4171900', '3237500', '2835', 'uploads/car/2835.jpg');
INSERT INTO `cys_car_category` VALUES ('2074', '121', '摩根Aero 8', '', '1', '0', '1514129764', '2680000', '2680000', '3736', 'uploads/car/3736.jpg');
INSERT INTO `cys_car_category` VALUES ('2075', '121', '摩根Plus 4', '', '1', '0', '1514129764', '1300000', '1200000', '3152', 'uploads/car/3152.jpg');
INSERT INTO `cys_car_category` VALUES ('2076', '121', '摩根Plus 8', '', '1', '0', '1514129765', '2480000', '2480000', '2836', 'uploads/car/2836.jpg');
INSERT INTO `cys_car_category` VALUES ('2077', '121', '摩根Roadster', '', '1', '0', '1514129765', '1600000', '1500000', '3151', 'uploads/car/3151.jpg');
INSERT INTO `cys_car_category` VALUES ('2078', '287', '纳5', '', '1', '0', '1514129766', '119800', '85800', '2988', 'uploads/car/2988.jpg');
INSERT INTO `cys_car_category` VALUES ('2079', '287', '锐3', '', '1', '0', '1514129766', '96800', '59800', '3939', 'uploads/car/3939.jpg');
INSERT INTO `cys_car_category` VALUES ('2080', '287', 'U5 SUV', '', '1', '0', '1514129766', '99800', '69800', '4497', 'uploads/car/4497.jpg');
INSERT INTO `cys_car_category` VALUES ('2081', '287', '优6 SUV', '', '1', '0', '1514129766', '159800', '119800', '3293', 'uploads/car/3293.jpg');
INSERT INTO `cys_car_category` VALUES ('2082', '287', '大7 SUV', '', '1', '0', '1514129767', '293000', '179800', '2295', 'uploads/car/2295.jpg');
INSERT INTO `cys_car_category` VALUES ('2083', '287', '大7 MPV', '', '1', '0', '1514129767', '249800', '169800', '3040', 'uploads/car/3040.jpg');
INSERT INTO `cys_car_category` VALUES ('2084', '287', 'MASTER CEO', '', '1', '0', '1514129767', '418000', '398000', '2296', 'uploads/car/2296.jpg');
INSERT INTO `cys_car_category` VALUES ('2085', '287', 'U5 EV', '', '1', '0', '1514129767', '0', '0', '4649', 'uploads/car/4649.jpg');
INSERT INTO `cys_car_category` VALUES ('2086', '287', 'neora', '', '1', '0', '1514129768', '0', '0', '2320', 'uploads/car/2320.jpg');
INSERT INTO `cys_car_category` VALUES ('2087', '288', 'S5 TURBO', '', '1', '0', '1514129768', '0', '0', '2609', 'uploads/car/2609.jpg');
INSERT INTO `cys_car_category` VALUES ('2088', '288', '裕隆汽车U5', '', '1', '0', '1514129768', '0', '0', '4540', 'uploads/car/4540.jpg');
INSERT INTO `cys_car_category` VALUES ('2089', '288', 'U6 TURBO', '', '1', '0', '1514129769', '0', '0', '3242', 'uploads/car/3242.jpg');
INSERT INTO `cys_car_category` VALUES ('2090', '288', 'U7 TURBO', '', '1', '0', '1514129769', '0', '0', '2303', 'uploads/car/2303.jpg');
INSERT INTO `cys_car_category` VALUES ('2091', '123', '开沃D07', '', '1', '0', '1514129770', '85000', '85000', '4639', 'uploads/car/4639.jpg');
INSERT INTO `cys_car_category` VALUES ('2092', '123', '开沃D08', '', '1', '0', '1514129770', '88000', '88000', '4640', 'uploads/car/4640.jpg');
INSERT INTO `cys_car_category` VALUES ('2093', '123', '开沃D09', '', '1', '0', '1514129770', '117600', '117600', '4641', 'uploads/car/4641.jpg');
INSERT INTO `cys_car_category` VALUES ('2094', '123', '开沃D10', '', '1', '0', '1514129770', '118800', '118800', '4642', 'uploads/car/4642.jpg');
INSERT INTO `cys_car_category` VALUES ('2095', '123', '开沃D11', '', '1', '0', '1514129771', '758000', '136000', '3432', 'uploads/car/3432.jpg');
INSERT INTO `cys_car_category` VALUES ('2096', '289', '讴歌TLX-L', '', '1', '0', '1514129772', '379800', '279800', '4381', 'uploads/car/4381.jpg');
INSERT INTO `cys_car_category` VALUES ('2097', '289', '讴歌CDX', '', '1', '0', '1514129772', '312800', '229800', '4096', 'uploads/car/4096.jpg');
INSERT INTO `cys_car_category` VALUES ('2098', '290', '讴歌MDX', '', '1', '0', '1514129772', '848000', '698000', '524', 'uploads/car/524.jpg');
INSERT INTO `cys_car_category` VALUES ('2099', '290', '讴歌ZDX', '', '1', '0', '1514129773', '888000', '888000', '806', 'uploads/car/806.jpg');
INSERT INTO `cys_car_category` VALUES ('2100', '290', '讴歌NSX', '', '1', '0', '1514129773', '2890000', '2890000', '2641', 'uploads/car/2641.jpg');
INSERT INTO `cys_car_category` VALUES ('2101', '290', '讴歌RDX', '', '1', '0', '1514129773', '459800', '399800', '888', 'uploads/car/888.jpg');
INSERT INTO `cys_car_category` VALUES ('2102', '290', '讴歌ILX', '', '1', '0', '1514129773', '0', '0', '2642', 'uploads/car/2642.jpg');
INSERT INTO `cys_car_category` VALUES ('2103', '290', '讴歌TLX', '', '1', '0', '1514129774', '0', '0', '3328', 'uploads/car/3328.jpg');
INSERT INTO `cys_car_category` VALUES ('2104', '290', '讴歌TSX', '', '1', '0', '1514129774', '0', '0', '755', 'uploads/car/755.jpg');
INSERT INTO `cys_car_category` VALUES ('2105', '290', '讴歌RLX', '', '1', '0', '1514129774', '0', '0', '2748', 'uploads/car/2748.jpg');
INSERT INTO `cys_car_category` VALUES ('2106', '290', 'SUV-X', '', '1', '0', '1514129775', '0', '0', '3109', 'uploads/car/3109.jpg');
INSERT INTO `cys_car_category` VALUES ('2107', '290', 'PRECISION', '', '1', '0', '1514129775', '0', '0', '4005', 'uploads/car/4005.jpg');
INSERT INTO `cys_car_category` VALUES ('2108', '290', '讴歌TL', '', '1', '0', '1514129775', '0', '0', '479', 'uploads/car/479.jpg');
INSERT INTO `cys_car_category` VALUES ('2109', '290', '讴歌RL', '', '1', '0', '1514129775', '0', '0', '464', 'uploads/car/464.jpg');
INSERT INTO `cys_car_category` VALUES ('2110', '290', 'Integra', '', '1', '0', '1514129776', '0', '0', '2710', 'uploads/car/2710.jpg');
INSERT INTO `cys_car_category` VALUES ('2111', '125', '欧宝Adam', '', '1', '0', '1514129779', '0', '0', '2859', 'uploads/car/2859.jpg');
INSERT INTO `cys_car_category` VALUES ('2112', '125', 'Karl', '', '1', '0', '1514129779', '0', '0', '3679', 'uploads/car/3679.jpg');
INSERT INTO `cys_car_category` VALUES ('2113', '125', '欧宝Corsa', '', '1', '0', '1514129779', '0', '0', '753', 'uploads/car/753.jpg');
INSERT INTO `cys_car_category` VALUES ('2114', '125', 'Ampera', '', '1', '0', '1514129780', '0', '0', '785', 'uploads/car/785.jpg');
INSERT INTO `cys_car_category` VALUES ('2115', '125', '雅特', '', '1', '0', '1514129780', '0', '0', '348', 'uploads/car/348.jpg');
INSERT INTO `cys_car_category` VALUES ('2116', '125', '英速亚', '', '1', '0', '1514129780', '0', '0', '653', 'uploads/car/653.jpg');
INSERT INTO `cys_car_category` VALUES ('2117', '125', '欧宝Crossland X', '', '1', '0', '1514129780', '0', '0', '4295', 'uploads/car/4295.jpg');
INSERT INTO `cys_car_category` VALUES ('2118', '125', '欧宝Mokka', '', '1', '0', '1514129781', '0', '0', '2645', 'uploads/car/2645.jpg');
INSERT INTO `cys_car_category` VALUES ('2119', '125', 'Grandland X', '', '1', '0', '1514129781', '0', '0', '4296', 'uploads/car/4296.jpg');
INSERT INTO `cys_car_category` VALUES ('2120', '125', 'Combo', '', '1', '0', '1514129781', '0', '0', '2439', 'uploads/car/2439.jpg');
INSERT INTO `cys_car_category` VALUES ('2121', '125', 'Vivaro', '', '1', '0', '1514129782', '0', '0', '3912', 'uploads/car/3912.jpg');
INSERT INTO `cys_car_category` VALUES ('2122', '125', '麦瑞纳', '', '1', '0', '1514129782', '0', '0', '2021', 'uploads/car/2021.jpg');
INSERT INTO `cys_car_category` VALUES ('2123', '125', '赛飞利', '', '1', '0', '1514129782', '0', '0', '381', 'uploads/car/381.jpg');
INSERT INTO `cys_car_category` VALUES ('2124', '125', 'Monza', '', '1', '0', '1514129782', '0', '0', '3193', 'uploads/car/3193.jpg');
INSERT INTO `cys_car_category` VALUES ('2125', '125', '欧宝Cascada', '', '1', '0', '1514129783', '0', '0', '2916', 'uploads/car/2916.jpg');
INSERT INTO `cys_car_category` VALUES ('2126', '125', '欧宝GT', '', '1', '0', '1514129783', '0', '0', '2092', 'uploads/car/2092.jpg');
INSERT INTO `cys_car_category` VALUES ('2127', '125', 'Agila', '', '1', '0', '1514129783', '0', '0', '993', 'uploads/car/993.jpg');
INSERT INTO `cys_car_category` VALUES ('2128', '125', '欧宝RAK', '', '1', '0', '1514129784', '0', '0', '2416', 'uploads/car/2416.jpg');
INSERT INTO `cys_car_category` VALUES ('2129', '125', '威达', '', '1', '0', '1514129784', '0', '0', '182', 'uploads/car/182.jpg');
INSERT INTO `cys_car_category` VALUES ('2130', '125', '安德拉', '', '1', '0', '1514129784', '0', '0', '670', 'uploads/car/670.jpg');
INSERT INTO `cys_car_category` VALUES ('2131', '125', 'Flextreme GT-E', '', '1', '0', '1514129785', '0', '0', '2071', 'uploads/car/2071.jpg');
INSERT INTO `cys_car_category` VALUES ('2132', '291', '欧朗', '', '1', '0', '1514129785', '0', '0', '2563', 'uploads/car/2563.jpg');
INSERT INTO `cys_car_category` VALUES ('2133', '127', 'Huayra', '', '1', '0', '1514129786', '29000000', '29000000', '2263', 'uploads/car/2263.jpg');
INSERT INTO `cys_car_category` VALUES ('2134', '127', 'Zonda', '', '1', '0', '1514129786', '0', '0', '366', 'uploads/car/366.jpg');
INSERT INTO `cys_car_category` VALUES ('2135', '250', 'KX CROSS', '', '1', '0', '1514129787', '85900', '74900', '4505', 'uploads/car/4505.jpg');
INSERT INTO `cys_car_category` VALUES ('2136', '250', '焕驰', '', '1', '0', '1514129788', '73900', '49900', '4387', 'uploads/car/4387.jpg');
INSERT INTO `cys_car_category` VALUES ('2137', '250', '起亚K2', '', '1', '0', '1514129788', '103900', '72900', '2319', 'uploads/car/2319.jpg');
INSERT INTO `cys_car_category` VALUES ('2138', '250', '福瑞迪', '', '1', '0', '1514129789', '119800', '78800', '813', 'uploads/car/813.jpg');
INSERT INTO `cys_car_category` VALUES ('2139', '250', '起亚K3', '', '1', '0', '1514129790', '150800', '96800', '2886', 'uploads/car/2886.jpg');
INSERT INTO `cys_car_category` VALUES ('2140', '250', '凯绅', '', '1', '0', '1514129790', '149800', '128800', '4523', 'uploads/car/4523.jpg');
INSERT INTO `cys_car_category` VALUES ('2141', '250', '起亚K4', '', '1', '0', '1514129793', '188800', '128800', '3286', 'uploads/car/3286.jpg');
INSERT INTO `cys_car_category` VALUES ('2142', '250', '起亚K5', '', '1', '0', '1514129794', '248800', '164800', '2246', 'uploads/car/2246.jpg');
INSERT INTO `cys_car_category` VALUES ('2143', '250', '起亚KX3', '', '1', '0', '1514129794', '177800', '116800', '3664', 'uploads/car/3664.jpg');
INSERT INTO `cys_car_category` VALUES ('2144', '250', '起亚KX5', '', '1', '0', '1514129794', '231800', '171800', '3954', 'uploads/car/3954.jpg');
INSERT INTO `cys_car_category` VALUES ('2145', '250', '智跑', '', '1', '0', '1514129794', '189800', '144800', '2137', 'uploads/car/2137.jpg');
INSERT INTO `cys_car_category` VALUES ('2146', '250', '起亚KX7', '', '1', '0', '1514129796', '276800', '179800', '4200', 'uploads/car/4200.jpg');
INSERT INTO `cys_car_category` VALUES ('2147', '250', '起亚NP', '', '1', '0', '1514129796', '0', '0', '4617', 'uploads/car/4617.jpg');
INSERT INTO `cys_car_category` VALUES ('2148', '250', '千里马', '', '1', '0', '1514129796', '0', '0', '142', 'uploads/car/142.jpg');
INSERT INTO `cys_car_category` VALUES ('2149', '250', '锐欧', '', '1', '0', '1514129797', '0', '0', '454', 'uploads/car/454.jpg');
INSERT INTO `cys_car_category` VALUES ('2150', '250', '秀尔', '', '1', '0', '1514129797', '0', '0', '876', 'uploads/car/876.jpg');
INSERT INTO `cys_car_category` VALUES ('2151', '250', '赛拉图', '', '1', '0', '1514129797', '0', '0', '413', 'uploads/car/413.jpg');
INSERT INTO `cys_car_category` VALUES ('2152', '250', '起亚K3S', '', '1', '0', '1514129797', '0', '0', '3385', 'uploads/car/3385.jpg');
INSERT INTO `cys_car_category` VALUES ('2153', '250', '远舰', '', '1', '0', '1514129798', '0', '0', '298', 'uploads/car/298.jpg');
INSERT INTO `cys_car_category` VALUES ('2154', '250', '狮跑', '', '1', '0', '1514129798', '0', '0', '565', 'uploads/car/565.jpg');
INSERT INTO `cys_car_category` VALUES ('2155', '250', '嘉华', '', '1', '0', '1514129798', '0', '0', '284', 'uploads/car/284.jpg');
INSERT INTO `cys_car_category` VALUES ('2156', '292', '起亚K9', '', '1', '0', '1514129799', '758800', '558000', '2681', 'uploads/car/2681.jpg');
INSERT INTO `cys_car_category` VALUES ('2157', '292', '斯汀格', '', '1', '0', '1514129799', '319800', '279800', '2420', 'uploads/car/2420.jpg');
INSERT INTO `cys_car_category` VALUES ('2158', '292', '极睿', '', '1', '0', '1514129799', '189800', '149800', '3198', 'uploads/car/3198.jpg');
INSERT INTO `cys_car_category` VALUES ('2159', '292', '索兰托', '', '1', '0', '1514129799', '370600', '226800', '281', 'uploads/car/281.jpg');
INSERT INTO `cys_car_category` VALUES ('2160', '292', '霸锐', '', '1', '0', '1514129800', '416800', '416800', '591', 'uploads/car/591.jpg');
INSERT INTO `cys_car_category` VALUES ('2161', '292', '佳乐', '', '1', '0', '1514129800', '206800', '160800', '453', 'uploads/car/453.jpg');
INSERT INTO `cys_car_category` VALUES ('2162', '292', '嘉华(进口)', '', '1', '0', '1514129800', '392400', '269800', '3448', 'uploads/car/3448.jpg');
INSERT INTO `cys_car_category` VALUES ('2163', '292', 'Picanto', '', '1', '0', '1514129801', '0', '0', '2032', 'uploads/car/2032.jpg');
INSERT INTO `cys_car_category` VALUES ('2164', '292', '起亚Ray', '', '1', '0', '1514129801', '0', '0', '4655', 'uploads/car/4655.jpg');
INSERT INTO `cys_car_category` VALUES ('2165', '292', 'Provo', '', '1', '0', '1514129801', '0', '0', '3018', 'uploads/car/3018.jpg');
INSERT INTO `cys_car_category` VALUES ('2166', '292', 'Ray EV', '', '1', '0', '1514129802', '0', '0', '2616', 'uploads/car/2616.jpg');
INSERT INTO `cys_car_category` VALUES ('2167', '292', 'Soul', '', '1', '0', '1514129802', '0', '0', '666', 'uploads/car/666.jpg');
INSERT INTO `cys_car_category` VALUES ('2168', '292', '锐欧(海外)', '', '1', '0', '1514129802', '0', '0', '2274', 'uploads/car/2274.jpg');
INSERT INTO `cys_car_category` VALUES ('2169', '292', 'Forte', '', '1', '0', '1514129803', '0', '0', '757', 'uploads/car/757.jpg');
INSERT INTO `cys_car_category` VALUES ('2170', '292', 'Venga', '', '1', '0', '1514129803', '0', '0', '919', 'uploads/car/919.jpg');
INSERT INTO `cys_car_category` VALUES ('2171', '292', '起亚Cee’d', '', '1', '0', '1514129804', '0', '0', '899', 'uploads/car/899.jpg');
INSERT INTO `cys_car_category` VALUES ('2172', '292', '起亚CUB', '', '1', '0', '1514129804', '0', '0', '3044', 'uploads/car/3044.jpg');
INSERT INTO `cys_car_category` VALUES ('2173', '292', '起亚K3(海外)', '', '1', '0', '1514129804', '0', '0', '2866', 'uploads/car/2866.jpg');
INSERT INTO `cys_car_category` VALUES ('2174', '292', '起亚K5(进口)', '', '1', '0', '1514129805', '0', '0', '890', 'uploads/car/890.jpg');
INSERT INTO `cys_car_category` VALUES ('2175', '292', 'Proceed', '', '1', '0', '1514129805', '0', '0', '4536', 'uploads/car/4536.jpg');
INSERT INTO `cys_car_category` VALUES ('2176', '292', 'SPORTSPACE', '', '1', '0', '1514129808', '0', '0', '3729', 'uploads/car/3729.jpg');
INSERT INTO `cys_car_category` VALUES ('2177', '292', '凯尊', '', '1', '0', '1514129808', '0', '0', '1010', 'uploads/car/1010.jpg');
INSERT INTO `cys_car_category` VALUES ('2178', '292', '起亚K900', '', '1', '0', '1514129808', '0', '0', '3265', 'uploads/car/3265.jpg');
INSERT INTO `cys_car_category` VALUES ('2179', '292', '起亚Novo', '', '1', '0', '1514129809', '0', '0', '3771', 'uploads/car/3771.jpg');
INSERT INTO `cys_car_category` VALUES ('2180', '292', 'Stonic', '', '1', '0', '1514129809', '0', '0', '4475', 'uploads/car/4475.jpg');
INSERT INTO `cys_car_category` VALUES ('2181', '292', 'SPORTAGE', '', '1', '0', '1514129809', '0', '0', '452', 'uploads/car/452.jpg');
INSERT INTO `cys_car_category` VALUES ('2182', '292', 'Cross GT', '', '1', '0', '1514129810', '0', '0', '3009', 'uploads/car/3009.jpg');
INSERT INTO `cys_car_category` VALUES ('2183', '292', 'Telluride', '', '1', '0', '1514129810', '0', '0', '4004', 'uploads/car/4004.jpg');
INSERT INTO `cys_car_category` VALUES ('2184', '292', 'GT4 Stinger', '', '1', '0', '1514129810', '0', '0', '3342', 'uploads/car/3342.jpg');
INSERT INTO `cys_car_category` VALUES ('2185', '292', '起亚POP', '', '1', '0', '1514129811', '0', '0', '2219', 'uploads/car/2219.jpg');
INSERT INTO `cys_car_category` VALUES ('2186', '292', 'Magentis', '', '1', '0', '1514129811', '0', '0', '2002', 'uploads/car/2002.jpg');
INSERT INTO `cys_car_category` VALUES ('2187', '292', '欧菲莱斯', '', '1', '0', '1514129811', '0', '0', '275', 'uploads/car/275.jpg');
INSERT INTO `cys_car_category` VALUES ('2188', '292', 'Naimo', '', '1', '0', '1514129812', '0', '0', '2301', 'uploads/car/2301.jpg');
INSERT INTO `cys_car_category` VALUES ('2189', '292', '起亚KV7', '', '1', '0', '1514129812', '0', '0', '2260', 'uploads/car/2260.jpg');
INSERT INTO `cys_car_category` VALUES ('2190', '292', '起亚VQ', '', '1', '0', '1514129812', '0', '0', '502', 'uploads/car/502.jpg');
INSERT INTO `cys_car_category` VALUES ('2191', '292', '起亚Kee', '', '1', '0', '1514129812', '0', '0', '2048', 'uploads/car/2048.jpg');
INSERT INTO `cys_car_category` VALUES ('2192', '292', '速迈', '', '1', '0', '1514129813', '0', '0', '1016', 'uploads/car/1016.jpg');
INSERT INTO `cys_car_category` VALUES ('2193', '292', '起亚KCV4', '', '1', '0', '1514129813', '0', '0', '2819', 'uploads/car/2819.jpg');
INSERT INTO `cys_car_category` VALUES ('2194', '293', '奇瑞QQ', '', '1', '0', '1514129814', '50900', '37900', '2989', 'uploads/car/2989.jpg');
INSERT INTO `cys_car_category` VALUES ('2195', '293', '风云2', '', '1', '0', '1514129814', '46900', '42900', '837', 'uploads/car/837.jpg');
INSERT INTO `cys_car_category` VALUES ('2196', '293', '艾瑞泽5', '', '1', '0', '1514129814', '97900', '58900', '3405', 'uploads/car/3405.jpg');
INSERT INTO `cys_car_category` VALUES ('2197', '293', '艾瑞泽7', '', '1', '0', '1514129815', '103900', '79900', '2980', 'uploads/car/2980.jpg');
INSERT INTO `cys_car_category` VALUES ('2198', '293', '奇瑞E5', '', '1', '0', '1514129815', '84800', '65800', '2324', 'uploads/car/2324.jpg');
INSERT INTO `cys_car_category` VALUES ('2199', '293', '瑞虎3', '', '1', '0', '1514129815', '92900', '68900', '3397', 'uploads/car/3397.jpg');
INSERT INTO `cys_car_category` VALUES ('2200', '293', '瑞虎3x', '', '1', '0', '1514129815', '83900', '55900', '4099', 'uploads/car/4099.jpg');
INSERT INTO `cys_car_category` VALUES ('2201', '293', '瑞虎5', '', '1', '0', '1514129816', '123800', '88800', '3195', 'uploads/car/3195.jpg');
INSERT INTO `cys_car_category` VALUES ('2202', '293', '瑞虎5x', '', '1', '0', '1514129816', '110900', '79900', '4531', 'uploads/car/4531.jpg');
INSERT INTO `cys_car_category` VALUES ('2203', '293', '瑞虎7', '', '1', '0', '1514129816', '150900', '97900', '3766', 'uploads/car/3766.jpg');
INSERT INTO `cys_car_category` VALUES ('2204', '293', '爱卡', '', '1', '0', '1514129816', '66800', '62800', '2914', 'uploads/car/2914.jpg');
INSERT INTO `cys_car_category` VALUES ('2205', '293', '艾瑞泽3', '', '1', '0', '1514129817', '74900', '57900', '3157', 'uploads/car/3157.jpg');
INSERT INTO `cys_car_category` VALUES ('2206', '293', '艾瑞泽M7', '', '1', '0', '1514129817', '107900', '79900', '3300', 'uploads/car/3300.jpg');
INSERT INTO `cys_car_category` VALUES ('2207', '293', '奇瑞@ANT', '', '1', '0', '1514129817', '0', '0', '2772', 'uploads/car/2772.jpg');
INSERT INTO `cys_car_category` VALUES ('2208', '293', '奇瑞E2', '', '1', '0', '1514129818', '0', '0', '3285', 'uploads/car/3285.jpg');
INSERT INTO `cys_car_category` VALUES ('2209', '293', '奇瑞FV2030', '', '1', '0', '1514129818', '0', '0', '4084', 'uploads/car/4084.jpg');
INSERT INTO `cys_car_category` VALUES ('2210', '293', 'concept β', '', '1', '0', '1514129818', '0', '0', '3446', 'uploads/car/3446.jpg');
INSERT INTO `cys_car_category` VALUES ('2211', '293', '奇瑞EXEED TX', '', '1', '0', '1514129818', '0', '0', '4516', 'uploads/car/4516.jpg');
INSERT INTO `cys_car_category` VALUES ('2212', '293', '奇瑞TX', '', '1', '0', '1514129819', '0', '0', '2759', 'uploads/car/2759.jpg');
INSERT INTO `cys_car_category` VALUES ('2213', '293', '瑞虎概念轿跑SUV', '', '1', '0', '1514129819', '0', '0', '4406', 'uploads/car/4406.jpg');
INSERT INTO `cys_car_category` VALUES ('2214', '293', '奇瑞QQ3', '', '1', '0', '1514129819', '0', '0', '87', 'uploads/car/87.jpg');
INSERT INTO `cys_car_category` VALUES ('2215', '293', '奇瑞QQ6', '', '1', '0', '1514129819', '0', '0', '478', 'uploads/car/478.jpg');
INSERT INTO `cys_car_category` VALUES ('2216', '293', '奇瑞QQme', '', '1', '0', '1514129820', '0', '0', '612', 'uploads/car/612.jpg');
INSERT INTO `cys_car_category` VALUES ('2217', '293', '旗云1', '', '1', '0', '1514129822', '0', '0', '996', 'uploads/car/996.jpg');
INSERT INTO `cys_car_category` VALUES ('2218', '293', '奇瑞A1', '', '1', '0', '1514129823', '0', '0', '518', 'uploads/car/518.jpg');
INSERT INTO `cys_car_category` VALUES ('2219', '293', '奇瑞E3', '', '1', '0', '1514129823', '0', '0', '2953', 'uploads/car/2953.jpg');
INSERT INTO `cys_car_category` VALUES ('2220', '293', '旗云', '', '1', '0', '1514129823', '0', '0', '85', 'uploads/car/85.jpg');
INSERT INTO `cys_car_category` VALUES ('2221', '293', '旗云2', '', '1', '0', '1514129824', '0', '0', '2178', 'uploads/car/2178.jpg');
INSERT INTO `cys_car_category` VALUES ('2222', '293', '艾瑞泽7e', '', '1', '0', '1514129824', '0', '0', '4223', 'uploads/car/4223.jpg');
INSERT INTO `cys_car_category` VALUES ('2223', '293', '风云', '', '1', '0', '1514129824', '0', '0', '84', 'uploads/car/84.jpg');
INSERT INTO `cys_car_category` VALUES ('2224', '293', '奇瑞A3', '', '1', '0', '1514129824', '0', '0', '530', 'uploads/car/530.jpg');
INSERT INTO `cys_car_category` VALUES ('2225', '293', '奇瑞A5', '', '1', '0', '1514129825', '0', '0', '434', 'uploads/car/434.jpg');
INSERT INTO `cys_car_category` VALUES ('2226', '293', '奇瑞α5', '', '1', '0', '1514129825', '0', '0', '3445', 'uploads/car/3445.jpg');
INSERT INTO `cys_car_category` VALUES ('2227', '293', '奇瑞α7', '', '1', '0', '1514129825', '0', '0', '3072', 'uploads/car/3072.jpg');
INSERT INTO `cys_car_category` VALUES ('2228', '293', '旗云3', '', '1', '0', '1514129826', '0', '0', '2180', 'uploads/car/2180.jpg');
INSERT INTO `cys_car_category` VALUES ('2229', '293', '东方之子', '', '1', '0', '1514129826', '0', '0', '83', 'uploads/car/83.jpg');
INSERT INTO `cys_car_category` VALUES ('2230', '293', '旗云5', '', '1', '0', '1514129826', '0', '0', '2331', 'uploads/car/2331.jpg');
INSERT INTO `cys_car_category` VALUES ('2231', '293', '东方之子6', '', '1', '0', '1514129826', '0', '0', '621', 'uploads/car/621.jpg');
INSERT INTO `cys_car_category` VALUES ('2232', '293', '奇瑞X1', '', '1', '0', '1514129827', '0', '0', '854', 'uploads/car/854.jpg');
INSERT INTO `cys_car_category` VALUES ('2233', '293', '瑞虎', '', '1', '0', '1514129827', '0', '0', '396', 'uploads/car/396.jpg');
INSERT INTO `cys_car_category` VALUES ('2234', '293', '奇瑞β5', '', '1', '0', '1514129827', '0', '0', '3071', 'uploads/car/3071.jpg');
INSERT INTO `cys_car_category` VALUES ('2235', '293', '东方之子Cross', '', '1', '0', '1514129828', '0', '0', '451', 'uploads/car/451.jpg');
INSERT INTO `cys_car_category` VALUES ('2236', '294', '奇瑞eQ', '', '1', '0', '1514129828', '171900', '159900', '3648', 'uploads/car/3648.jpg');
INSERT INTO `cys_car_category` VALUES ('2237', '294', '奇瑞eQ1', '', '1', '0', '1514129828', '205900', '155900', '4218', 'uploads/car/4218.jpg');
INSERT INTO `cys_car_category` VALUES ('2238', '294', '艾瑞泽5e', '', '1', '0', '1514129829', '232800', '212800', '4262', 'uploads/car/4262.jpg');
INSERT INTO `cys_car_category` VALUES ('2239', '294', '奇瑞C3e', '', '1', '0', '1514129829', '0', '0', '4627', 'uploads/car/4627.jpg');
INSERT INTO `cys_car_category` VALUES ('2240', '294', '瑞虎3xe', '', '1', '0', '1514129829', '0', '0', '4624', 'uploads/car/4624.jpg');
INSERT INTO `cys_car_category` VALUES ('2241', '294', '奇瑞QQ3EV', '', '1', '0', '1514129829', '0', '0', '3920', 'uploads/car/3920.jpg');
INSERT INTO `cys_car_category` VALUES ('2242', '295', '晨风', '', '1', '0', '1514129830', '261800', '242800', '2955', 'uploads/car/2955.jpg');
INSERT INTO `cys_car_category` VALUES ('2243', '295', '启辰D50', '', '1', '0', '1514129830', '85800', '69800', '2341', 'uploads/car/2341.jpg');
INSERT INTO `cys_car_category` VALUES ('2244', '295', '启辰D60', '', '1', '0', '1514129831', '111800', '69800', '4490', 'uploads/car/4490.jpg');
INSERT INTO `cys_car_category` VALUES ('2245', '295', '启辰R50', '', '1', '0', '1514129831', '85800', '69800', '2867', 'uploads/car/2867.jpg');
INSERT INTO `cys_car_category` VALUES ('2246', '295', '启辰R50X', '', '1', '0', '1514129831', '89800', '74500', '3226', 'uploads/car/3226.jpg');
INSERT INTO `cys_car_category` VALUES ('2247', '295', '启辰T70', '', '1', '0', '1514129832', '127800', '89800', '3618', 'uploads/car/3618.jpg');
INSERT INTO `cys_car_category` VALUES ('2248', '295', '启辰T70X', '', '1', '0', '1514129832', '133800', '116800', '3904', 'uploads/car/3904.jpg');
INSERT INTO `cys_car_category` VALUES ('2249', '295', '启辰T90', '', '1', '0', '1514129832', '154800', '109800', '4115', 'uploads/car/4115.jpg');
INSERT INTO `cys_car_category` VALUES ('2250', '295', '启辰M50V', '', '1', '0', '1514129832', '84900', '65800', '4315', 'uploads/car/4315.jpg');
INSERT INTO `cys_car_category` VALUES ('2251', '295', '启辰R30', '', '1', '0', '1514129833', '51900', '39900', '3475', 'uploads/car/3475.jpg');
INSERT INTO `cys_car_category` VALUES ('2252', '295', '启辰ViWa', '', '1', '0', '1514129833', '0', '0', '3114', 'uploads/car/3114.jpg');
INSERT INTO `cys_car_category` VALUES ('2253', '295', '启辰VOW', '', '1', '0', '1514129833', '0', '0', '3787', 'uploads/car/3787.jpg');
INSERT INTO `cys_car_category` VALUES ('2254', '296', '前途K50', '', '1', '0', '1514129834', '0', '0', '3820', 'uploads/car/3820.jpg');
INSERT INTO `cys_car_category` VALUES ('2255', '297', '玛驰', '', '1', '0', '1514129837', '87500', '59800', '2086', 'uploads/car/2086.jpg');
INSERT INTO `cys_car_category` VALUES ('2256', '297', '骊威', '', '1', '0', '1514129837', '117200', '85800', '522', 'uploads/car/522.jpg');
INSERT INTO `cys_car_category` VALUES ('2257', '297', '骐达', '', '1', '0', '1514129838', '134900', '99900', '425', 'uploads/car/425.jpg');
INSERT INTO `cys_car_category` VALUES ('2258', '297', '轩逸', '', '1', '0', '1514129842', '159000', '99800', '448', 'uploads/car/448.jpg');
INSERT INTO `cys_car_category` VALUES ('2259', '297', '阳光', '', '1', '0', '1514129843', '112800', '79800', '64', 'uploads/car/64.jpg');
INSERT INTO `cys_car_category` VALUES ('2260', '297', 'LANNIA 蓝鸟', '', '1', '0', '1514129844', '143900', '105900', '3817', 'uploads/car/3817.jpg');
INSERT INTO `cys_car_category` VALUES ('2261', '297', '天籁', '', '1', '0', '1514129845', '298800', '175800', '634', 'uploads/car/634.jpg');
INSERT INTO `cys_car_category` VALUES ('2262', '297', '西玛', '', '1', '0', '1514129846', '267800', '234800', '3957', 'uploads/car/3957.jpg');
INSERT INTO `cys_car_category` VALUES ('2263', '297', '劲客', '', '1', '0', '1514129846', '134800', '99800', '4305', 'uploads/car/4305.jpg');
INSERT INTO `cys_car_category` VALUES ('2264', '297', '逍客', '', '1', '0', '1514129846', '189800', '139800', '564', 'uploads/car/564.jpg');
INSERT INTO `cys_car_category` VALUES ('2265', '297', '奇骏', '', '1', '0', '1514129847', '268800', '179800', '656', 'uploads/car/656.jpg');
INSERT INTO `cys_car_category` VALUES ('2266', '297', '楼兰', '', '1', '0', '1514129847', '379800', '238800', '2381', 'uploads/car/2381.jpg');
INSERT INTO `cys_car_category` VALUES ('2267', '297', '颐达', '', '1', '0', '1514129847', '0', '0', '355', 'uploads/car/355.jpg');
INSERT INTO `cys_car_category` VALUES ('2268', '297', '蓝鸟', '', '1', '0', '1514129847', '0', '0', '63', 'uploads/car/63.jpg');
INSERT INTO `cys_car_category` VALUES ('2269', '297', '骏逸', '', '1', '0', '1514129848', '0', '0', '475', 'uploads/car/475.jpg');
INSERT INTO `cys_car_category` VALUES ('2270', '222', '帕拉丁', '', '1', '0', '1514129848', '247800', '167800', '53', 'uploads/car/53.jpg');
INSERT INTO `cys_car_category` VALUES ('2271', '222', '日产NV200', '', '1', '0', '1514129848', '123800', '107800', '2113', 'uploads/car/2113.jpg');
INSERT INTO `cys_car_category` VALUES ('2272', '222', '纳瓦拉', '', '1', '0', '1514129849', '187800', '139800', '4307', 'uploads/car/4307.jpg');
INSERT INTO `cys_car_category` VALUES ('2273', '222', '日产D22', '', '1', '0', '1514129849', '188800', '138800', '2466', 'uploads/car/2466.jpg');
INSERT INTO `cys_car_category` VALUES ('2274', '222', '日产ZN厢式车', '', '1', '0', '1514129851', '196800', '148800', '2853', 'uploads/car/2853.jpg');
INSERT INTO `cys_car_category` VALUES ('2275', '298', '途乐', '', '1', '0', '1514129852', '898000', '558000', '264', 'uploads/car/264.jpg');
INSERT INTO `cys_car_category` VALUES ('2276', '298', '贵士', '', '1', '0', '1514129852', '468000', '468000', '438', 'uploads/car/438.jpg');
INSERT INTO `cys_car_category` VALUES ('2277', '298', '日产370Z', '', '1', '0', '1514129853', '645000', '525000', '702', 'uploads/car/702.jpg');
INSERT INTO `cys_car_category` VALUES ('2278', '298', '日产GT-R', '', '1', '0', '1514129853', '2350000', '1628000', '436', 'uploads/car/436.jpg');
INSERT INTO `cys_car_category` VALUES ('2279', '298', '碧莲', '', '1', '0', '1514129853', '1268000', '798000', '2578', 'uploads/car/2578.jpg');
INSERT INTO `cys_car_category` VALUES ('2280', '298', 'Invitation', '', '1', '0', '1514129853', '0', '0', '2656', 'uploads/car/2656.jpg');
INSERT INTO `cys_car_category` VALUES ('2281', '298', 'Cube', '', '1', '0', '1514129854', '0', '0', '764', 'uploads/car/764.jpg');
INSERT INTO `cys_car_category` VALUES ('2282', '298', 'Note', '', '1', '0', '1514129854', '0', '0', '992', 'uploads/car/992.jpg');
INSERT INTO `cys_car_category` VALUES ('2283', '298', 'Sway', '', '1', '0', '1514129854', '0', '0', '3743', 'uploads/car/3743.jpg');
INSERT INTO `cys_car_category` VALUES ('2284', '298', 'Teatro for Dayz', '', '1', '0', '1514129855', '0', '0', '3930', 'uploads/car/3930.jpg');
INSERT INTO `cys_car_category` VALUES ('2285', '298', '玛驰(海外)', '', '1', '0', '1514129855', '0', '0', '2070', 'uploads/car/2070.jpg');
INSERT INTO `cys_car_category` VALUES ('2286', '298', 'Friend-ME', '', '1', '0', '1514129855', '0', '0', '3110', 'uploads/car/3110.jpg');
INSERT INTO `cys_car_category` VALUES ('2287', '298', 'Pulsar', '', '1', '0', '1514129856', '0', '0', '3509', 'uploads/car/3509.jpg');
INSERT INTO `cys_car_category` VALUES ('2288', '298', 'Sentra', '', '1', '0', '1514129856', '0', '0', '2890', 'uploads/car/2890.jpg');
INSERT INTO `cys_car_category` VALUES ('2289', '298', 'Versa', '', '1', '0', '1514129857', '0', '0', '2186', 'uploads/car/2186.jpg');
INSERT INTO `cys_car_category` VALUES ('2290', '298', '聆风', '', '1', '0', '1514129857', '0', '0', '894', 'uploads/car/894.jpg');
INSERT INTO `cys_car_category` VALUES ('2291', '298', '日产IDS', '', '1', '0', '1514129857', '0', '0', '3943', 'uploads/car/3943.jpg');
INSERT INTO `cys_car_category` VALUES ('2292', '298', 'Altima', '', '1', '0', '1514129858', '0', '0', '932', 'uploads/car/932.jpg');
INSERT INTO `cys_car_category` VALUES ('2293', '298', 'Sport Sedan', '', '1', '0', '1514129858', '0', '0', '3353', 'uploads/car/3353.jpg');
INSERT INTO `cys_car_category` VALUES ('2294', '298', 'Vmotion 2.0', '', '1', '0', '1514129858', '0', '0', '4289', 'uploads/car/4289.jpg');
INSERT INTO `cys_car_category` VALUES ('2295', '298', '日产IMx', '', '1', '0', '1514129858', '0', '0', '4595', 'uploads/car/4595.jpg');
INSERT INTO `cys_car_category` VALUES ('2296', '298', '西玛(海外)', '', '1', '0', '1514129859', '0', '0', '751', 'uploads/car/751.jpg');
INSERT INTO `cys_car_category` VALUES ('2297', '298', 'Extrem', '', '1', '0', '1514129859', '0', '0', '2918', 'uploads/car/2918.jpg');
INSERT INTO `cys_car_category` VALUES ('2298', '298', 'JUKE', '', '1', '0', '1514129859', '0', '0', '2054', 'uploads/car/2054.jpg');
INSERT INTO `cys_car_category` VALUES ('2299', '298', 'Terra', '', '1', '0', '1514129860', '0', '0', '2893', 'uploads/car/2893.jpg');
INSERT INTO `cys_car_category` VALUES ('2300', '298', '劲客(海外)', '', '1', '0', '1514129860', '0', '0', '3641', 'uploads/car/3641.jpg');
INSERT INTO `cys_car_category` VALUES ('2301', '298', 'Hi-Cross', '', '1', '0', '1514129860', '0', '0', '2701', 'uploads/car/2701.jpg');
INSERT INTO `cys_car_category` VALUES ('2302', '298', 'Rogue', '', '1', '0', '1514129860', '0', '0', '2194', 'uploads/car/2194.jpg');
INSERT INTO `cys_car_category` VALUES ('2303', '298', '奇骏(进口)', '', '1', '0', '1514129861', '0', '0', '208', 'uploads/car/208.jpg');
INSERT INTO `cys_car_category` VALUES ('2304', '298', '逍客(海外)', '', '1', '0', '1514129861', '0', '0', '775', 'uploads/car/775.jpg');
INSERT INTO `cys_car_category` VALUES ('2305', '298', 'Resonance', '', '1', '0', '1514129861', '0', '0', '2996', 'uploads/car/2996.jpg');
INSERT INTO `cys_car_category` VALUES ('2306', '298', '楼兰(海外)', '', '1', '0', '1514129861', '0', '0', '958', 'uploads/car/958.jpg');
INSERT INTO `cys_car_category` VALUES ('2307', '298', 'Pathfinder', '', '1', '0', '1514129862', '0', '0', '2061', 'uploads/car/2061.jpg');
INSERT INTO `cys_car_category` VALUES ('2308', '298', 'ARMADA', '', '1', '0', '1514129862', '0', '0', '960', 'uploads/car/960.jpg');
INSERT INTO `cys_car_category` VALUES ('2309', '298', 'Serena', '', '1', '0', '1514129862', '0', '0', '3274', 'uploads/car/3274.jpg');
INSERT INTO `cys_car_category` VALUES ('2310', '298', '日产NV200(海外)', '', '1', '0', '1514129863', '0', '0', '838', 'uploads/car/838.jpg');
INSERT INTO `cys_car_category` VALUES ('2311', '298', '日产NV300', '', '1', '0', '1514129863', '0', '0', '4138', 'uploads/car/4138.jpg');
INSERT INTO `cys_car_category` VALUES ('2312', '298', '日产NV3500', '', '1', '0', '1514129863', '0', '0', '2550', 'uploads/car/2550.jpg');
INSERT INTO `cys_car_category` VALUES ('2313', '298', '2020 Vision Gran Turismo', '', '1', '0', '1514129863', '0', '0', '3531', 'uploads/car/3531.jpg');
INSERT INTO `cys_car_category` VALUES ('2314', '298', 'BladeGlider', '', '1', '0', '1514129865', '0', '0', '3241', 'uploads/car/3241.jpg');
INSERT INTO `cys_car_category` VALUES ('2315', '298', 'DeltaWing', '', '1', '0', '1514129866', '0', '0', '2924', 'uploads/car/2924.jpg');
INSERT INTO `cys_car_category` VALUES ('2316', '298', 'Esflow', '', '1', '0', '1514129867', '0', '0', '2266', 'uploads/car/2266.jpg');
INSERT INTO `cys_car_category` VALUES ('2317', '298', 'Gripz', '', '1', '0', '1514129867', '0', '0', '3914', 'uploads/car/3914.jpg');
INSERT INTO `cys_car_category` VALUES ('2318', '298', '日产IDX', '', '1', '0', '1514129867', '0', '0', '3255', 'uploads/car/3255.jpg');
INSERT INTO `cys_car_category` VALUES ('2319', '298', 'Frontier', '', '1', '0', '1514129868', '0', '0', '2981', 'uploads/car/2981.jpg');
INSERT INTO `cys_car_category` VALUES ('2320', '298', 'Titan', '', '1', '0', '1514129868', '0', '0', '2479', 'uploads/car/2479.jpg');
INSERT INTO `cys_car_category` VALUES ('2321', '298', '纳瓦拉(海外)', '', '1', '0', '1514129868', '0', '0', '3534', 'uploads/car/3534.jpg');
INSERT INTO `cys_car_category` VALUES ('2322', '298', 'Land Glider', '', '1', '0', '1514129869', '0', '0', '937', 'uploads/car/937.jpg');
INSERT INTO `cys_car_category` VALUES ('2323', '298', 'Pivo 3', '', '1', '0', '1514129869', '0', '0', '2549', 'uploads/car/2549.jpg');
INSERT INTO `cys_car_category` VALUES ('2324', '298', 'Pixo', '', '1', '0', '1514129869', '0', '0', '944', 'uploads/car/944.jpg');
INSERT INTO `cys_car_category` VALUES ('2325', '298', 'Townpod', '', '1', '0', '1514129869', '0', '0', '2220', 'uploads/car/2220.jpg');
INSERT INTO `cys_car_category` VALUES ('2326', '298', 'Ellure', '', '1', '0', '1514129870', '0', '0', '2235', 'uploads/car/2235.jpg');
INSERT INTO `cys_car_category` VALUES ('2327', '298', '蓝鸟·印象', '', '1', '0', '1514129870', '0', '0', '3469', 'uploads/car/3469.jpg');
INSERT INTO `cys_car_category` VALUES ('2328', '298', '风度', '', '1', '0', '1514129870', '0', '0', '205', 'uploads/car/205.jpg');
INSERT INTO `cys_car_category` VALUES ('2329', '298', '风雅', '', '1', '0', '1514129871', '0', '0', '376', 'uploads/car/376.jpg');
INSERT INTO `cys_car_category` VALUES ('2330', '298', 'Cedric', '', '1', '0', '1514129871', '0', '0', '3635', 'uploads/car/3635.jpg');
INSERT INTO `cys_car_category` VALUES ('2331', '298', 'CIMA', '', '1', '0', '1514129871', '0', '0', '204', 'uploads/car/204.jpg');
INSERT INTO `cys_car_category` VALUES ('2332', '298', 'Xterra', '', '1', '0', '1514129871', '0', '0', '2305', 'uploads/car/2305.jpg');
INSERT INTO `cys_car_category` VALUES ('2333', '298', 'Elgrand', '', '1', '0', '1514129872', '0', '0', '2195', 'uploads/car/2195.jpg');
INSERT INTO `cys_car_category` VALUES ('2334', '298', 'Silvia', '', '1', '0', '1514129872', '0', '0', '2680', 'uploads/car/2680.jpg');
INSERT INTO `cys_car_category` VALUES ('2335', '298', '日产350Z', '', '1', '0', '1514129872', '0', '0', '316', 'uploads/car/316.jpg');
INSERT INTO `cys_car_category` VALUES ('2336', '285', '荣威e50', '', '1', '0', '1514129873', '188900', '188900', '2779', 'uploads/car/2779.jpg');
INSERT INTO `cys_car_category` VALUES ('2337', '285', '荣威350', '', '1', '0', '1514129873', '140700', '78700', '2062', 'uploads/car/2062.jpg');
INSERT INTO `cys_car_category` VALUES ('2338', '285', '荣威360', '', '1', '0', '1514129873', '129900', '75900', '3857', 'uploads/car/3857.jpg');
INSERT INTO `cys_car_category` VALUES ('2339', '285', '荣威550', '', '1', '0', '1514129874', '182800', '99800', '537', 'uploads/car/537.jpg');
INSERT INTO `cys_car_category` VALUES ('2340', '285', '荣威e550', '', '1', '0', '1514129874', '239800', '239800', '3978', 'uploads/car/3978.jpg');
INSERT INTO `cys_car_category` VALUES ('2341', '285', '荣威ei6', '', '1', '0', '1514129874', '222800', '201800', '4263', 'uploads/car/4263.jpg');
INSERT INTO `cys_car_category` VALUES ('2342', '285', '荣威i6', '', '1', '0', '1514129874', '143800', '89800', '4246', 'uploads/car/4246.jpg');
INSERT INTO `cys_car_category` VALUES ('2343', '285', '荣威950', '', '1', '0', '1514129875', '203800', '168800', '2743', 'uploads/car/2743.jpg');
INSERT INTO `cys_car_category` VALUES ('2344', '285', '荣威e950', '', '1', '0', '1514129875', '255900', '255900', '3977', 'uploads/car/3977.jpg');
INSERT INTO `cys_car_category` VALUES ('2345', '285', '荣威RX3', '', '1', '0', '1514129875', '135800', '89800', '4473', 'uploads/car/4473.jpg');
INSERT INTO `cys_car_category` VALUES ('2346', '285', '荣威RX5', '', '1', '0', '1514129876', '186800', '99800', '4080', 'uploads/car/4080.jpg');
INSERT INTO `cys_car_category` VALUES ('2347', '285', '荣威RX5新能源', '', '1', '0', '1514129876', '296800', '265900', '4240', 'uploads/car/4240.jpg');
INSERT INTO `cys_car_category` VALUES ('2348', '285', '荣威W5', '', '1', '0', '1514129876', '221800', '142800', '2297', 'uploads/car/2297.jpg');
INSERT INTO `cys_car_category` VALUES ('2349', '285', '荣威Ei5', '', '1', '0', '1514129876', '0', '0', '4554', 'uploads/car/4554.jpg');
INSERT INTO `cys_car_category` VALUES ('2350', '285', 'Vision-E', '', '1', '0', '1514129877', '0', '0', '4399', 'uploads/car/4399.jpg');
INSERT INTO `cys_car_category` VALUES ('2351', '285', 'Marvel X', '', '1', '0', '1514129877', '0', '0', '4653', 'uploads/car/4653.jpg');
INSERT INTO `cys_car_category` VALUES ('2352', '285', 'Vision-R', '', '1', '0', '1514129877', '0', '0', '3956', 'uploads/car/3956.jpg');
INSERT INTO `cys_car_category` VALUES ('2353', '285', '荣威750', '', '1', '0', '1514129878', '0', '0', '482', 'uploads/car/482.jpg');
INSERT INTO `cys_car_category` VALUES ('2354', '134', '瑞驰新能源EC35', '', '1', '0', '1514129878', '72900', '72900', '4479', 'uploads/car/4479.jpg');
INSERT INTO `cys_car_category` VALUES ('2355', '134', '瑞驰新能源EK05', '', '1', '0', '1514129881', '52900', '52900', '4602', 'uploads/car/4602.jpg');
INSERT INTO `cys_car_category` VALUES ('2356', '135', '如虎 XL', '', '1', '0', '1514129881', '3500000', '3500000', '2972', 'uploads/car/2972.jpg');
INSERT INTO `cys_car_category` VALUES ('2357', '135', '如虎 CTR 3', '', '1', '0', '1514129882', '5500000', '5500000', '2970', 'uploads/car/2970.jpg');
INSERT INTO `cys_car_category` VALUES ('2358', '135', 'Turbo Florio', '', '1', '0', '1514129882', '0', '0', '3748', 'uploads/car/3748.jpg');
INSERT INTO `cys_car_category` VALUES ('2359', '135', '如虎 RT', '', '1', '0', '1514129882', '0', '0', '2971', 'uploads/car/2971.jpg');
INSERT INTO `cys_car_category` VALUES ('2360', '293', '瑞麒M1', '', '1', '0', '1514129883', '0', '0', '804', 'uploads/car/804.jpg');
INSERT INTO `cys_car_category` VALUES ('2361', '293', '瑞麒M3', '', '1', '0', '1514129883', '0', '0', '2173', 'uploads/car/2173.jpg');
INSERT INTO `cys_car_category` VALUES ('2362', '293', '瑞麒G2', '', '1', '0', '1514129884', '0', '0', '2507', 'uploads/car/2507.jpg');
INSERT INTO `cys_car_category` VALUES ('2363', '293', '瑞麒M5', '', '1', '0', '1514129884', '0', '0', '853', 'uploads/car/853.jpg');
INSERT INTO `cys_car_category` VALUES ('2364', '293', '瑞麒G3', '', '1', '0', '1514129884', '0', '0', '2109', 'uploads/car/2109.jpg');
INSERT INTO `cys_car_category` VALUES ('2365', '293', '瑞麒G5', '', '1', '0', '1514129885', '0', '0', '797', 'uploads/car/797.jpg');
INSERT INTO `cys_car_category` VALUES ('2366', '293', '瑞麒G6', '', '1', '0', '1514129885', '0', '0', '791', 'uploads/car/791.jpg');
INSERT INTO `cys_car_category` VALUES ('2367', '293', '瑞麒A6CC', '', '1', '0', '1514129885', '0', '0', '662', 'uploads/car/662.jpg');
INSERT INTO `cys_car_category` VALUES ('2368', '293', '瑞麒Z5', '', '1', '0', '1514129885', '0', '0', '2328', 'uploads/car/2328.jpg');
INSERT INTO `cys_car_category` VALUES ('2369', '299', '柯珞克', '', '1', '0', '1514129886', '0', '0', '4453', 'uploads/car/4453.jpg');
INSERT INTO `cys_car_category` VALUES ('2370', '299', '晶锐', '', '1', '0', '1514129886', '109900', '69900', '382', 'uploads/car/382.jpg');
INSERT INTO `cys_car_category` VALUES ('2371', '299', '明锐', '', '1', '0', '1514129887', '179900', '119900', '519', 'uploads/car/519.jpg');
INSERT INTO `cys_car_category` VALUES ('2372', '299', '昕动', '', '1', '0', '1514129887', '119900', '69900', '3290', 'uploads/car/3290.jpg');
INSERT INTO `cys_car_category` VALUES ('2373', '299', '昕锐', '', '1', '0', '1514129887', '116900', '76900', '2962', 'uploads/car/2962.jpg');
INSERT INTO `cys_car_category` VALUES ('2374', '299', '速派', '', '1', '0', '1514129888', '249800', '169800', '3171', 'uploads/car/3171.jpg');
INSERT INTO `cys_car_category` VALUES ('2375', '299', 'Yeti', '', '1', '0', '1514129888', '209800', '129800', '3013', 'uploads/car/3013.jpg');
INSERT INTO `cys_car_category` VALUES ('2376', '299', '柯迪亚克', '', '1', '0', '1514129888', '269800', '189800', '4217', 'uploads/car/4217.jpg');
INSERT INTO `cys_car_category` VALUES ('2377', '299', '昊锐', '', '1', '0', '1514129888', '0', '0', '772', 'uploads/car/772.jpg');
INSERT INTO `cys_car_category` VALUES ('2378', '300', '明锐(进口)', '', '1', '0', '1514129889', '237800', '199200', '356', 'uploads/car/356.jpg');
INSERT INTO `cys_car_category` VALUES ('2379', '300', '速尊', '', '1', '0', '1514129889', '334800', '299800', '3269', 'uploads/car/3269.jpg');
INSERT INTO `cys_car_category` VALUES ('2380', '300', 'Citigo', '', '1', '0', '1514129889', '0', '0', '2463', 'uploads/car/2463.jpg');
INSERT INTO `cys_car_category` VALUES ('2381', '300', 'Favorit', '', '1', '0', '1514129890', '0', '0', '3770', 'uploads/car/3770.jpg');
INSERT INTO `cys_car_category` VALUES ('2382', '300', '晶锐(海外)', '', '1', '0', '1514129890', '0', '0', '795', 'uploads/car/795.jpg');
INSERT INTO `cys_car_category` VALUES ('2383', '300', 'MissionL', '', '1', '0', '1514129890', '0', '0', '2421', 'uploads/car/2421.jpg');
INSERT INTO `cys_car_category` VALUES ('2384', '300', 'VisionC', '', '1', '0', '1514129891', '0', '0', '3369', 'uploads/car/3369.jpg');
INSERT INTO `cys_car_category` VALUES ('2385', '300', 'VisionD', '', '1', '0', '1514129891', '0', '0', '2286', 'uploads/car/2286.jpg');
INSERT INTO `cys_car_category` VALUES ('2386', '300', '昕动(海外)', '', '1', '0', '1514129891', '0', '0', '3270', 'uploads/car/3270.jpg');
INSERT INTO `cys_car_category` VALUES ('2387', '300', '昕锐(海外)', '', '1', '0', '1514129891', '0', '0', '2843', 'uploads/car/2843.jpg');
INSERT INTO `cys_car_category` VALUES ('2388', '300', 'Superb', '', '1', '0', '1514129892', '0', '0', '357', 'uploads/car/357.jpg');
INSERT INTO `cys_car_category` VALUES ('2389', '300', 'Yeti(进口)', '', '1', '0', '1514129892', '0', '0', '858', 'uploads/car/858.jpg');
INSERT INTO `cys_car_category` VALUES ('2390', '300', 'VisionS', '', '1', '0', '1514129892', '0', '0', '4021', 'uploads/car/4021.jpg');
INSERT INTO `cys_car_category` VALUES ('2391', '300', '柯珞克(海外)', '', '1', '0', '1514129893', '0', '0', '4451', 'uploads/car/4451.jpg');
INSERT INTO `cys_car_category` VALUES ('2392', '300', 'VISION E', '', '1', '0', '1514129895', '0', '0', '4389', 'uploads/car/4389.jpg');
INSERT INTO `cys_car_category` VALUES ('2393', '300', '柯迪亚克(海外)', '', '1', '0', '1514129896', '0', '0', '4129', 'uploads/car/4129.jpg');
INSERT INTO `cys_car_category` VALUES ('2394', '300', 'CitiJet', '', '1', '0', '1514129896', '0', '0', '3452', 'uploads/car/3452.jpg');
INSERT INTO `cys_car_category` VALUES ('2395', '300', 'Roomster', '', '1', '0', '1514129896', '0', '0', '2003', 'uploads/car/2003.jpg');
INSERT INTO `cys_car_category` VALUES ('2396', '300', 'Felicia', '', '1', '0', '1514129897', '0', '0', '3832', 'uploads/car/3832.jpg');
INSERT INTO `cys_car_category` VALUES ('2397', '300', '斯柯达1000 MB', '', '1', '0', '1514129897', '0', '0', '3458', 'uploads/car/3458.jpg');
INSERT INTO `cys_car_category` VALUES ('2398', '300', '斯柯达440', '', '1', '0', '1514129897', '0', '0', '3753', 'uploads/car/3753.jpg');
INSERT INTO `cys_car_category` VALUES ('2399', '300', '斯柯达VOS', '', '1', '0', '1514129897', '0', '0', '4651', 'uploads/car/4651.jpg');
INSERT INTO `cys_car_category` VALUES ('2400', '253', '欧蓝德经典', '', '1', '0', '1514129898', '0', '0', '25', 'uploads/car/25.jpg');
INSERT INTO `cys_car_category` VALUES ('2401', '253', '帕杰罗速跑', '', '1', '0', '1514129898', '0', '0', '24', 'uploads/car/24.jpg');
INSERT INTO `cys_car_category` VALUES ('2402', '214', '翼神', '', '1', '0', '1514129899', '139800', '95800', '873', 'uploads/car/873.jpg');
INSERT INTO `cys_car_category` VALUES ('2403', '214', '风迪思', '', '1', '0', '1514129899', '0', '0', '3131', 'uploads/car/3131.jpg');
INSERT INTO `cys_car_category` VALUES ('2404', '214', '蓝瑟', '', '1', '0', '1514129899', '0', '0', '458', 'uploads/car/458.jpg');
INSERT INTO `cys_car_category` VALUES ('2405', '214', '三菱戈蓝', '', '1', '0', '1514129899', '0', '0', '483', 'uploads/car/483.jpg');
INSERT INTO `cys_car_category` VALUES ('2406', '214', '君阁', '', '1', '0', '1514129900', '0', '0', '668', 'uploads/car/668.jpg');
INSERT INTO `cys_car_category` VALUES ('2407', '214', '菱绅', '', '1', '0', '1514129900', '0', '0', '128', 'uploads/car/128.jpg');
INSERT INTO `cys_car_category` VALUES ('2408', '301', '劲炫ASX', '', '1', '0', '1514129900', '149800', '114800', '2768', 'uploads/car/2768.jpg');
INSERT INTO `cys_car_category` VALUES ('2409', '301', '欧蓝德', '', '1', '0', '1514129901', '223800', '159800', '4147', 'uploads/car/4147.jpg');
INSERT INTO `cys_car_category` VALUES ('2410', '301', '帕杰罗·劲畅', '', '1', '0', '1514129901', '308800', '208800', '3008', 'uploads/car/3008.jpg');
INSERT INTO `cys_car_category` VALUES ('2411', '301', '帕杰罗', '', '1', '0', '1514129901', '0', '0', '377', 'uploads/car/377.jpg');
INSERT INTO `cys_car_category` VALUES ('2412', '302', 'GRAND LANCER', '', '1', '0', '1514129902', '0', '0', '4313', 'uploads/car/4313.jpg');
INSERT INTO `cys_car_category` VALUES ('2413', '303', '帕杰罗(进口)', '', '1', '0', '1514129902', '429800', '369800', '580', 'uploads/car/580.jpg');
INSERT INTO `cys_car_category` VALUES ('2414', '303', 'Attrage', '', '1', '0', '1514129903', '0', '0', '3145', 'uploads/car/3145.jpg');
INSERT INTO `cys_car_category` VALUES ('2415', '303', 'eK Space', '', '1', '0', '1514129903', '0', '0', '3219', 'uploads/car/3219.jpg');
INSERT INTO `cys_car_category` VALUES ('2416', '303', 'Global Small', '', '1', '0', '1514129903', '0', '0', '2287', 'uploads/car/2287.jpg');
INSERT INTO `cys_car_category` VALUES ('2417', '303', 'Mirage', '', '1', '0', '1514129903', '0', '0', '2588', 'uploads/car/2588.jpg');
INSERT INTO `cys_car_category` VALUES ('2418', '303', '三菱CA-MiEV', '', '1', '0', '1514129904', '0', '0', '3021', 'uploads/car/3021.jpg');
INSERT INTO `cys_car_category` VALUES ('2419', '303', '三菱i', '', '1', '0', '1514129904', '0', '0', '652', 'uploads/car/652.jpg');
INSERT INTO `cys_car_category` VALUES ('2420', '303', 'LANCER', '', '1', '0', '1514129904', '0', '0', '369', 'uploads/car/369.jpg');
INSERT INTO `cys_car_category` VALUES ('2421', '303', 'Mirage G4', '', '1', '0', '1514129904', '0', '0', '3348', 'uploads/car/3348.jpg');
INSERT INTO `cys_car_category` VALUES ('2422', '303', '三菱G4', '', '1', '0', '1514129905', '0', '0', '3070', 'uploads/car/3070.jpg');
INSERT INTO `cys_car_category` VALUES ('2423', '303', '三菱eX', '', '1', '0', '1514129905', '0', '0', '3932', 'uploads/car/3932.jpg');
INSERT INTO `cys_car_category` VALUES ('2424', '303', 'ASX劲炫(进口)', '', '1', '0', '1514129905', '0', '0', '1018', 'uploads/car/1018.jpg');
INSERT INTO `cys_car_category` VALUES ('2425', '303', 'Eclipse Cross', '', '1', '0', '1514129906', '0', '0', '4308', 'uploads/car/4308.jpg');
INSERT INTO `cys_car_category` VALUES ('2426', '303', 'e-EVOLUTION', '', '1', '0', '1514129906', '0', '0', '4573', 'uploads/car/4573.jpg');
INSERT INTO `cys_car_category` VALUES ('2427', '303', '欧蓝德(进口)', '', '1', '0', '1514129906', '0', '0', '486', 'uploads/car/486.jpg');
INSERT INTO `cys_car_category` VALUES ('2428', '303', '三菱GT-PHEV', '', '1', '0', '1514129907', '0', '0', '4203', 'uploads/car/4203.jpg');
INSERT INTO `cys_car_category` VALUES ('2429', '303', '三菱XR-PHEV', '', '1', '0', '1514129907', '0', '0', '3253', 'uploads/car/3253.jpg');
INSERT INTO `cys_car_category` VALUES ('2430', '303', 'Endeavor', '', '1', '0', '1514129907', '0', '0', '2347', 'uploads/car/2347.jpg');
INSERT INTO `cys_car_category` VALUES ('2431', '303', '帕杰罗·劲畅(进口)', '', '1', '0', '1514129907', '0', '0', '2332', 'uploads/car/2332.jpg');
INSERT INTO `cys_car_category` VALUES ('2432', '303', '三菱GC-PHEV', '', '1', '0', '1514129910', '0', '0', '3252', 'uploads/car/3252.jpg');
INSERT INTO `cys_car_category` VALUES ('2433', '303', 'Xpander', '', '1', '0', '1514129910', '0', '0', '4500', 'uploads/car/4500.jpg');
INSERT INTO `cys_car_category` VALUES ('2434', '303', '三菱AR', '', '1', '0', '1514129911', '0', '0', '3254', 'uploads/car/3254.jpg');
INSERT INTO `cys_car_category` VALUES ('2435', '303', '三菱XM', '', '1', '0', '1514129911', '0', '0', '4180', 'uploads/car/4180.jpg');
INSERT INTO `cys_car_category` VALUES ('2436', '303', '三菱GR-HEV', '', '1', '0', '1514129911', '0', '0', '3022', 'uploads/car/3022.jpg');
INSERT INTO `cys_car_category` VALUES ('2437', '303', '三菱L200', '', '1', '0', '1514129911', '0', '0', '3525', 'uploads/car/3525.jpg');
INSERT INTO `cys_car_category` VALUES ('2438', '303', 'Colt', '', '1', '0', '1514129912', '0', '0', '760', 'uploads/car/760.jpg');
INSERT INTO `cys_car_category` VALUES ('2439', '303', '三菱PX-MiEV', '', '1', '0', '1514129912', '0', '0', '933', 'uploads/car/933.jpg');
INSERT INTO `cys_car_category` VALUES ('2440', '303', '格蓝迪', '', '1', '0', '1514129912', '0', '0', '325', 'uploads/car/325.jpg');
INSERT INTO `cys_car_category` VALUES ('2441', '303', '三菱3000GT', '', '1', '0', '1514129912', '0', '0', '2648', 'uploads/car/2648.jpg');
INSERT INTO `cys_car_category` VALUES ('2442', '303', '三菱RA', '', '1', '0', '1514129913', '0', '0', '848', 'uploads/car/848.jpg');
INSERT INTO `cys_car_category` VALUES ('2443', '303', '伊柯丽斯', '', '1', '0', '1514129913', '0', '0', '651', 'uploads/car/651.jpg');
INSERT INTO `cys_car_category` VALUES ('2444', '303', 'Street Raider', '', '1', '0', '1514129913', '0', '0', '2815', 'uploads/car/2815.jpg');
INSERT INTO `cys_car_category` VALUES ('2445', '139', '力狮', '', '1', '0', '1514129914', '292800', '219800', '287', 'uploads/car/287.jpg');
INSERT INTO `cys_car_category` VALUES ('2446', '139', '斯巴鲁XV', '', '1', '0', '1514129914', '234800', '189800', '2417', 'uploads/car/2417.jpg');
INSERT INTO `cys_car_category` VALUES ('2447', '139', '森林人', '', '1', '0', '1514129914', '334800', '239800', '285', 'uploads/car/285.jpg');
INSERT INTO `cys_car_category` VALUES ('2448', '139', '傲虎', '', '1', '0', '1514129915', '359800', '289800', '286', 'uploads/car/286.jpg');
INSERT INTO `cys_car_category` VALUES ('2449', '139', '斯巴鲁BRZ', '', '1', '0', '1514129915', '287800', '269000', '2557', 'uploads/car/2557.jpg');
INSERT INTO `cys_car_category` VALUES ('2450', '139', 'CROSS SPORT', '', '1', '0', '1514129915', '0', '0', '3251', 'uploads/car/3251.jpg');
INSERT INTO `cys_car_category` VALUES ('2451', '139', 'VIZIV Performance', '', '1', '0', '1514129915', '0', '0', '4562', 'uploads/car/4562.jpg');
INSERT INTO `cys_car_category` VALUES ('2452', '139', '斯巴鲁WRX', '', '1', '0', '1514129916', '0', '0', '3263', 'uploads/car/3263.jpg');
INSERT INTO `cys_car_category` VALUES ('2453', '139', '翼豹', '', '1', '0', '1514129916', '0', '0', '283', 'uploads/car/283.jpg');
INSERT INTO `cys_car_category` VALUES ('2454', '139', 'LEVORG', '', '1', '0', '1514129916', '0', '0', '3250', 'uploads/car/3250.jpg');
INSERT INTO `cys_car_category` VALUES ('2455', '139', 'Viziv', '', '1', '0', '1514129916', '0', '0', '3023', 'uploads/car/3023.jpg');
INSERT INTO `cys_car_category` VALUES ('2456', '139', 'Crossover 7', '', '1', '0', '1514129917', '0', '0', '3261', 'uploads/car/3261.jpg');
INSERT INTO `cys_car_category` VALUES ('2457', '139', 'Ascent', '', '1', '0', '1514129917', '0', '0', '4398', 'uploads/car/4398.jpg');
INSERT INTO `cys_car_category` VALUES ('2458', '139', 'VIZIV-7', '', '1', '0', '1514129917', '0', '0', '4257', 'uploads/car/4257.jpg');
INSERT INTO `cys_car_category` VALUES ('2459', '139', 'Exiga', '', '1', '0', '1514129918', '0', '0', '948', 'uploads/car/948.jpg');
INSERT INTO `cys_car_category` VALUES ('2460', '139', 'Trezia', '', '1', '0', '1514129918', '0', '0', '2283', 'uploads/car/2283.jpg');
INSERT INTO `cys_car_category` VALUES ('2461', '139', 'Hybrid', '', '1', '0', '1514129918', '0', '0', '941', 'uploads/car/941.jpg');
INSERT INTO `cys_car_category` VALUES ('2462', '139', 'Advanced Tourer', '', '1', '0', '1514129918', '0', '0', '2586', 'uploads/car/2586.jpg');
INSERT INTO `cys_car_category` VALUES ('2463', '139', '驰鹏', '', '1', '0', '1514129919', '0', '0', '414', 'uploads/car/414.jpg');
INSERT INTO `cys_car_category` VALUES ('2464', '139', '斯巴鲁SVX', '', '1', '0', '1514129919', '0', '0', '3532', 'uploads/car/3532.jpg');
INSERT INTO `cys_car_category` VALUES ('2465', '140', '上汽大通D90', '', '1', '0', '1514129920', '263800', '156700', '4120', 'uploads/car/4120.jpg');
INSERT INTO `cys_car_category` VALUES ('2466', '140', '上汽大通EG10', '', '1', '0', '1514129920', '406800', '309800', '4338', 'uploads/car/4338.jpg');
INSERT INTO `cys_car_category` VALUES ('2467', '140', '上汽大通G10', '', '1', '0', '1514129920', '269800', '133800', '3064', 'uploads/car/3064.jpg');
INSERT INTO `cys_car_category` VALUES ('2468', '140', '上汽大通V80', '', '1', '0', '1514129920', '1300000', '119800', '2608', 'uploads/car/2608.jpg');
INSERT INTO `cys_car_category` VALUES ('2469', '140', '上汽大通T60', '', '1', '0', '1514129921', '213800', '83800', '4241', 'uploads/car/4241.jpg');
INSERT INTO `cys_car_category` VALUES ('2470', '140', '伊思坦纳', '', '1', '0', '1514129921', '226800', '163800', '3192', 'uploads/car/3192.jpg');
INSERT INTO `cys_car_category` VALUES ('2471', '141', 'smart fortwo', '', '1', '0', '1514129922', '206000', '125000', '620', 'uploads/car/620.jpg');
INSERT INTO `cys_car_category` VALUES ('2472', '141', 'smart forfour', '', '1', '0', '1514129922', '186000', '135000', '1004', 'uploads/car/1004.jpg');
INSERT INTO `cys_car_category` VALUES ('2473', '141', 'smart forfour新能源', '', '1', '0', '1514129923', '0', '0', '4328', 'uploads/car/4328.jpg');
INSERT INTO `cys_car_category` VALUES ('2474', '141', 'smart forjeremy', '', '1', '0', '1514129924', '0', '0', '2958', 'uploads/car/2958.jpg');
INSERT INTO `cys_car_category` VALUES ('2475', '141', 'smart forstars', '', '1', '0', '1514129925', '0', '0', '2898', 'uploads/car/2898.jpg');
INSERT INTO `cys_car_category` VALUES ('2476', '141', 'smart fortwo新能源', '', '1', '0', '1514129925', '0', '0', '4326', 'uploads/car/4326.jpg');
INSERT INTO `cys_car_category` VALUES ('2477', '141', 'smart fourjoy', '', '1', '0', '1514129925', '0', '0', '3205', 'uploads/car/3205.jpg');
INSERT INTO `cys_car_category` VALUES ('2478', '141', 'smart Vision EQ fortwo', '', '1', '0', '1514129926', '0', '0', '4551', 'uploads/car/4551.jpg');
INSERT INTO `cys_car_category` VALUES ('2479', '141', 'smart for-us', '', '1', '0', '1514129926', '0', '0', '2638', 'uploads/car/2638.jpg');
INSERT INTO `cys_car_category` VALUES ('2480', '141', 'smart forspeed', '', '1', '0', '1514129926', '0', '0', '2273', 'uploads/car/2273.jpg');
INSERT INTO `cys_car_category` VALUES ('2481', '141', 'smart forvision', '', '1', '0', '1514129926', '0', '0', '2436', 'uploads/car/2436.jpg');
INSERT INTO `cys_car_category` VALUES ('2482', '141', 'smart roadster', '', '1', '0', '1514129927', '0', '0', '2750', 'uploads/car/2750.jpg');
INSERT INTO `cys_car_category` VALUES ('2483', '142', 'SWM斯威X3', '', '1', '0', '1514129927', '82900', '59900', '4336', 'uploads/car/4336.jpg');
INSERT INTO `cys_car_category` VALUES ('2484', '142', 'SWM斯威X7', '', '1', '0', '1514129928', '113900', '85900', '4151', 'uploads/car/4151.jpg');
INSERT INTO `cys_car_category` VALUES ('2485', '142', 'SWM斯威EROE', '', '1', '0', '1514129928', '0', '0', '4433', 'uploads/car/4433.jpg');
INSERT INTO `cys_car_category` VALUES ('2486', '304', '主席', '', '1', '0', '1514129928', '698000', '418000', '141', 'uploads/car/141.jpg');
INSERT INTO `cys_car_category` VALUES ('2487', '304', '蒂维拉', '', '1', '0', '1514129929', '189800', '129800', '3406', 'uploads/car/3406.jpg');
INSERT INTO `cys_car_category` VALUES ('2488', '304', '柯兰多', '', '1', '0', '1514129929', '249800', '139800', '2214', 'uploads/car/2214.jpg');
INSERT INTO `cys_car_category` VALUES ('2489', '304', '爱腾', '', '1', '0', '1514129929', '219800', '154800', '455', 'uploads/car/455.jpg');
INSERT INTO `cys_car_category` VALUES ('2490', '304', '雷斯特W', '', '1', '0', '1514129930', '329800', '249800', '3132', 'uploads/car/3132.jpg');
INSERT INTO `cys_car_category` VALUES ('2491', '304', '享御', '', '1', '0', '1514129930', '259800', '219800', '485', 'uploads/car/485.jpg');
INSERT INTO `cys_car_category` VALUES ('2492', '304', '路帝', '', '1', '0', '1514129930', '269800', '219800', '516', 'uploads/car/516.jpg');
INSERT INTO `cys_car_category` VALUES ('2493', '304', '途凌', '', '1', '0', '1514129930', '239800', '139800', '3372', 'uploads/car/3372.jpg');
INSERT INTO `cys_car_category` VALUES ('2494', '304', 'RIOS', '', '1', '0', '1514129931', '0', '0', '3723', 'uploads/car/3723.jpg');
INSERT INTO `cys_car_category` VALUES ('2495', '304', '双龙XLV-Air', '', '1', '0', '1514129931', '0', '0', '3908', 'uploads/car/3908.jpg');
INSERT INTO `cys_car_category` VALUES ('2496', '304', '双龙SIV-2', '', '1', '0', '1514129931', '0', '0', '4030', 'uploads/car/4030.jpg');
INSERT INTO `cys_car_category` VALUES ('2497', '304', '双龙XAV', '', '1', '0', '1514129931', '0', '0', '3773', 'uploads/car/3773.jpg');
INSERT INTO `cys_car_category` VALUES ('2498', '304', '双龙XAV-Adventure', '', '1', '0', '1514129932', '0', '0', '3907', 'uploads/car/3907.jpg');
INSERT INTO `cys_car_category` VALUES ('2499', '304', '雷斯特', '', '1', '0', '1514129932', '0', '0', '139', 'uploads/car/139.jpg');
INSERT INTO `cys_car_category` VALUES ('2500', '304', '双龙LIV-2', '', '1', '0', '1514129932', '0', '0', '4201', 'uploads/car/4201.jpg');
INSERT INTO `cys_car_category` VALUES ('2501', '304', '双龙XAVL', '', '1', '0', '1514129933', '0', '0', '4357', 'uploads/car/4357.jpg');
INSERT INTO `cys_car_category` VALUES ('2502', '304', 'Musso', '', '1', '0', '1514129933', '0', '0', '4220', 'uploads/car/4220.jpg');
INSERT INTO `cys_car_category` VALUES ('2503', '304', '双龙e-XIV', '', '1', '0', '1514129933', '0', '0', '2907', 'uploads/car/2907.jpg');
INSERT INTO `cys_car_category` VALUES ('2504', '304', '双龙XIV-1', '', '1', '0', '1514129933', '0', '0', '2437', 'uploads/car/2437.jpg');
INSERT INTO `cys_car_category` VALUES ('2505', '304', '双龙XIV-2', '', '1', '0', '1514129934', '0', '0', '2699', 'uploads/car/2699.jpg');
INSERT INTO `cys_car_category` VALUES ('2506', '304', '双龙XIV-Adventure', '', '1', '0', '1514129934', '0', '0', '3609', 'uploads/car/3609.jpg');
INSERT INTO `cys_car_category` VALUES ('2507', '304', '双龙XIV-Air', '', '1', '0', '1514129934', '0', '0', '3608', 'uploads/car/3608.jpg');
INSERT INTO `cys_car_category` VALUES ('2508', '304', '双龙C200', '', '1', '0', '1514129934', '0', '0', '817', 'uploads/car/817.jpg');
INSERT INTO `cys_car_category` VALUES ('2509', '304', '双龙SIV-1', '', '1', '0', '1514129935', '0', '0', '3029', 'uploads/car/3029.jpg');
INSERT INTO `cys_car_category` VALUES ('2510', '304', '双龙LIV-1', '', '1', '0', '1514129935', '0', '0', '3039', 'uploads/car/3039.jpg');
INSERT INTO `cys_car_category` VALUES ('2511', '185', '思铭', '', '1', '0', '1514129936', '116900', '99900', '2751', 'uploads/car/2751.jpg');
INSERT INTO `cys_car_category` VALUES ('2512', '305', '赛麟科迈罗', '', '1', '0', '1514129936', '1272000', '530000', '3487', 'uploads/car/3487.jpg');
INSERT INTO `cys_car_category` VALUES ('2513', '305', '赛麟野马', '', '1', '0', '1514129939', '1656000', '578000', '3486', 'uploads/car/3486.jpg');
INSERT INTO `cys_car_category` VALUES ('2514', '305', '赛麟领道', '', '1', '0', '1514129939', '0', '0', '3966', 'uploads/car/3966.jpg');
INSERT INTO `cys_car_category` VALUES ('2515', '305', '迈迈', '', '1', '0', '1514129940', '0', '0', '3488', 'uploads/car/3488.jpg');
INSERT INTO `cys_car_category` VALUES ('2516', '305', '赛麟S1', '', '1', '0', '1514129940', '0', '0', '4607', 'uploads/car/4607.jpg');
INSERT INTO `cys_car_category` VALUES ('2517', '305', '赛麟S7', '', '1', '0', '1514129940', '0', '0', '3468', 'uploads/car/3468.jpg');
INSERT INTO `cys_car_category` VALUES ('2518', '305', '赛麟挑战者', '', '1', '0', '1514129941', '0', '0', '3485', 'uploads/car/3485.jpg');
INSERT INTO `cys_car_category` VALUES ('2519', '146', '斯达泰克-卫士', '', '1', '0', '1514129941', '1328000', '1128000', '3849', 'uploads/car/3849.jpg');
INSERT INTO `cys_car_category` VALUES ('2520', '146', '斯达泰克-揽胜', '', '1', '0', '1514129941', '3888000', '1858000', '3847', 'uploads/car/3847.jpg');
INSERT INTO `cys_car_category` VALUES ('2521', '146', '斯达泰克-揽胜运动版', '', '1', '0', '1514129942', '1758000', '1488000', '3848', 'uploads/car/3848.jpg');
INSERT INTO `cys_car_category` VALUES ('2522', '147', '世爵C8', '', '1', '0', '1514129942', '0', '0', '599', 'uploads/car/599.jpg');
INSERT INTO `cys_car_category` VALUES ('2523', '147', '世爵D12', '', '1', '0', '1514129943', '0', '0', '654', 'uploads/car/654.jpg');
INSERT INTO `cys_car_category` VALUES ('2524', '147', '世爵B6', '', '1', '0', '1514129943', '0', '0', '3025', 'uploads/car/3025.jpg');
INSERT INTO `cys_car_category` VALUES ('2525', '147', '世爵C12', '', '1', '0', '1514129943', '0', '0', '742', 'uploads/car/742.jpg');
INSERT INTO `cys_car_category` VALUES ('2526', '148', '福家', '', '1', '0', '1514129944', '178000', '31800', '2570', 'uploads/car/2570.jpg');
INSERT INTO `cys_car_category` VALUES ('2527', '148', '龙锐', '', '1', '0', '1514129944', '69800', '60800', '3244', 'uploads/car/3244.jpg');
INSERT INTO `cys_car_category` VALUES ('2528', '306', '小贵族', '', '1', '0', '1514129945', '0', '0', '506', 'uploads/car/506.jpg');
INSERT INTO `cys_car_category` VALUES ('2529', '306', '来宝SRV', '', '1', '0', '1514129945', '0', '0', '13', 'uploads/car/13.jpg');
INSERT INTO `cys_car_category` VALUES ('2530', '306', '双环SCEO', '', '1', '0', '1514129945', '0', '0', '345', 'uploads/car/345.jpg');
INSERT INTO `cys_car_category` VALUES ('2531', '150', 'MODEL 3', '', '1', '0', '1514129946', '0', '0', '4078', 'uploads/car/4078.jpg');
INSERT INTO `cys_car_category` VALUES ('2532', '150', 'MODEL S', '', '1', '0', '1514129946', '1324900', '766800', '2357', 'uploads/car/2357.jpg');
INSERT INTO `cys_car_category` VALUES ('2533', '150', 'MODEL X', '', '1', '0', '1514129946', '1413500', '836000', '2664', 'uploads/car/2664.jpg');
INSERT INTO `cys_car_category` VALUES ('2534', '150', 'ROADSTER', '', '1', '0', '1514129947', '0', '0', '2356', 'uploads/car/2356.jpg');
INSERT INTO `cys_car_category` VALUES ('2535', '307', '腾势', '', '1', '0', '1514129947', '432800', '369800', '2805', 'uploads/car/2805.jpg');
INSERT INTO `cys_car_category` VALUES ('2536', '152', '泰卡特 T9', '', '1', '0', '1514129948', '1839000', '1839000', '3393', 'uploads/car/3393.jpg');
INSERT INTO `cys_car_category` VALUES ('2537', '152', '泰卡特 T7', '', '1', '0', '1514129948', '1527000', '1277000', '3392', 'uploads/car/3392.jpg');
INSERT INTO `cys_car_category` VALUES ('2538', '152', '泰卡特 T1', '', '1', '0', '1514129948', '1101000', '1101000', '3389', 'uploads/car/3389.jpg');
INSERT INTO `cys_car_category` VALUES ('2539', '152', '泰卡特 T2', '', '1', '0', '1514129949', '1122000', '1122000', '3390', 'uploads/car/3390.jpg');
INSERT INTO `cys_car_category` VALUES ('2540', '152', '泰卡特 T3', '', '1', '0', '1514129949', '1923000', '1923000', '3391', 'uploads/car/3391.jpg');
INSERT INTO `cys_car_category` VALUES ('2541', '209', 'WEY VV5', '', '1', '0', '1514129950', '163000', '150000', '4253', 'uploads/car/4253.jpg');
INSERT INTO `cys_car_category` VALUES ('2542', '209', 'WEY VV7', '', '1', '0', '1514129950', '188800', '167800', '4252', 'uploads/car/4252.jpg');
INSERT INTO `cys_car_category` VALUES ('2543', '209', 'WEY VV6', '', '1', '0', '1514129950', '0', '0', '4631', 'uploads/car/4631.jpg');
INSERT INTO `cys_car_category` VALUES ('2544', '209', 'WEY P8', '', '1', '0', '1514129950', '0', '0', '4441', 'uploads/car/4441.jpg');
INSERT INTO `cys_car_category` VALUES ('2545', '209', 'WEY XEV', '', '1', '0', '1514129951', '0', '0', '4541', 'uploads/car/4541.jpg');
INSERT INTO `cys_car_category` VALUES ('2546', '198', '五菱宏光S3', '', '1', '0', '1514129954', '81800', '56800', '4408', 'uploads/car/4408.jpg');
INSERT INTO `cys_car_category` VALUES ('2547', '198', '五菱宏光', '', '1', '0', '1514129954', '79300', '41800', '2139', 'uploads/car/2139.jpg');
INSERT INTO `cys_car_category` VALUES ('2548', '198', '五菱荣光', '', '1', '0', '1514129954', '72800', '36800', '2451', 'uploads/car/2451.jpg');
INSERT INTO `cys_car_category` VALUES ('2549', '198', '五菱荣光V', '', '1', '0', '1514129955', '51800', '38800', '3657', 'uploads/car/3657.jpg');
INSERT INTO `cys_car_category` VALUES ('2550', '198', '五菱之光', '', '1', '0', '1514129955', '48000', '29800', '2456', 'uploads/car/2456.jpg');
INSERT INTO `cys_car_category` VALUES ('2551', '198', '五菱之光V', '', '1', '0', '1514129955', '36800', '33800', '4270', 'uploads/car/4270.jpg');
INSERT INTO `cys_car_category` VALUES ('2552', '198', 'PN货车', '', '1', '0', '1514129955', '39900', '36600', '2506', 'uploads/car/2506.jpg');
INSERT INTO `cys_car_category` VALUES ('2553', '198', '五菱荣光小卡', '', '1', '0', '1514129956', '42550', '34600', '2855', 'uploads/car/2855.jpg');
INSERT INTO `cys_car_category` VALUES ('2554', '198', '五菱之光小卡', '', '1', '0', '1514129956', '32900', '29900', '3946', 'uploads/car/3946.jpg');
INSERT INTO `cys_car_category` VALUES ('2555', '198', '五菱征程', '', '1', '0', '1514129956', '77200', '66000', '3570', 'uploads/car/3570.jpg');
INSERT INTO `cys_car_category` VALUES ('2556', '308', '沃尔沃S40', '', '1', '0', '1514129957', '0', '0', '463', 'uploads/car/463.jpg');
INSERT INTO `cys_car_category` VALUES ('2557', '308', '沃尔沃S80L', '', '1', '0', '1514129963', '0', '0', '693', 'uploads/car/693.jpg');
INSERT INTO `cys_car_category` VALUES ('2558', '309', '沃尔沃S60L', '', '1', '0', '1514129964', '390900', '266900', '3158', 'uploads/car/3158.jpg');
INSERT INTO `cys_car_category` VALUES ('2559', '309', '沃尔沃S60L新能源', '', '1', '0', '1514129964', '559900', '505900', '4335', 'uploads/car/4335.jpg');
INSERT INTO `cys_car_category` VALUES ('2560', '309', '沃尔沃S90', '', '1', '0', '1514129964', '551800', '369800', '4206', 'uploads/car/4206.jpg');
INSERT INTO `cys_car_category` VALUES ('2561', '309', '沃尔沃XC60', '', '1', '0', '1514129964', '479900', '358900', '3411', 'uploads/car/3411.jpg');
INSERT INTO `cys_car_category` VALUES ('2562', '309', '沃尔沃XC60新能源', '', '1', '0', '1514129965', '609900', '549900', '4609', 'uploads/car/4609.jpg');
INSERT INTO `cys_car_category` VALUES ('2563', '309', 'XC Classic', '', '1', '0', '1514129965', '0', '0', '3420', 'uploads/car/3420.jpg');
INSERT INTO `cys_car_category` VALUES ('2564', '310', '沃尔沃V40', '', '1', '0', '1514129965', '309900', '223900', '2678', 'uploads/car/2678.jpg');
INSERT INTO `cys_car_category` VALUES ('2565', '310', '沃尔沃S60', '', '1', '0', '1514129968', '606900', '392900', '404', 'uploads/car/404.jpg');
INSERT INTO `cys_car_category` VALUES ('2566', '310', '沃尔沃V60', '', '1', '0', '1514129968', '636900', '309900', '2190', 'uploads/car/2190.jpg');
INSERT INTO `cys_car_category` VALUES ('2567', '310', '沃尔沃V90', '', '1', '0', '1514129968', '578800', '479800', '4029', 'uploads/car/4029.jpg');
INSERT INTO `cys_car_category` VALUES ('2568', '310', '沃尔沃XC90', '', '1', '0', '1514129969', '937800', '688000', '177', 'uploads/car/177.jpg');
INSERT INTO `cys_car_category` VALUES ('2569', '310', '沃尔沃XC90新能源', '', '1', '0', '1514129969', '1358000', '998000', '4337', 'uploads/car/4337.jpg');
INSERT INTO `cys_car_category` VALUES ('2570', '310', 'Concept 40.2', '', '1', '0', '1514129970', '0', '0', '4135', 'uploads/car/4135.jpg');
INSERT INTO `cys_car_category` VALUES ('2571', '310', 'Estate', '', '1', '0', '1514129970', '0', '0', '3396', 'uploads/car/3396.jpg');
INSERT INTO `cys_car_category` VALUES ('2572', '310', '沃尔沃V50', '', '1', '0', '1514129970', '0', '0', '747', 'uploads/car/747.jpg');
INSERT INTO `cys_car_category` VALUES ('2573', '310', '沃尔沃S80', '', '1', '0', '1514129970', '0', '0', '175', 'uploads/car/175.jpg');
INSERT INTO `cys_car_category` VALUES ('2574', '310', '沃尔沃S90(进口)', '', '1', '0', '1514129971', '0', '0', '3861', 'uploads/car/3861.jpg');
INSERT INTO `cys_car_category` VALUES ('2575', '310', '沃尔沃V70', '', '1', '0', '1514129971', '0', '0', '743', 'uploads/car/743.jpg');
INSERT INTO `cys_car_category` VALUES ('2576', '310', 'Universe', '', '1', '0', '1514129971', '0', '0', '2345', 'uploads/car/2345.jpg');
INSERT INTO `cys_car_category` VALUES ('2577', '310', '沃尔沃You', '', '1', '0', '1514129972', '0', '0', '2426', 'uploads/car/2426.jpg');
INSERT INTO `cys_car_category` VALUES ('2578', '310', 'Concept 40.1', '', '1', '0', '1514129972', '0', '0', '4134', 'uploads/car/4134.jpg');
INSERT INTO `cys_car_category` VALUES ('2579', '310', '沃尔沃XC40', '', '1', '0', '1514129972', '0', '0', '3689', 'uploads/car/3689.jpg');
INSERT INTO `cys_car_category` VALUES ('2580', '310', '沃尔沃XC60(进口)', '', '1', '0', '1514129972', '0', '0', '585', 'uploads/car/585.jpg');
INSERT INTO `cys_car_category` VALUES ('2581', '310', '沃尔沃XC70', '', '1', '0', '1514129973', '0', '0', '405', 'uploads/car/405.jpg');
INSERT INTO `cys_car_category` VALUES ('2582', '310', 'XC Coupe', '', '1', '0', '1514129973', '0', '0', '3314', 'uploads/car/3314.jpg');
INSERT INTO `cys_car_category` VALUES ('2583', '310', '沃尔沃Coupe', '', '1', '0', '1514129973', '0', '0', '3196', 'uploads/car/3196.jpg');
INSERT INTO `cys_car_category` VALUES ('2584', '310', '沃尔沃C30', '', '1', '0', '1514129974', '0', '0', '494', 'uploads/car/494.jpg');
INSERT INTO `cys_car_category` VALUES ('2585', '310', '沃尔沃S40(进口)', '', '1', '0', '1514129974', '0', '0', '981', 'uploads/car/981.jpg');
INSERT INTO `cys_car_category` VALUES ('2586', '310', 'Air Motion', '', '1', '0', '1514129974', '0', '0', '2234', 'uploads/car/2234.jpg');
INSERT INTO `cys_car_category` VALUES ('2587', '310', '沃尔沃C70', '', '1', '0', '1514129974', '0', '0', '406', 'uploads/car/406.jpg');
INSERT INTO `cys_car_category` VALUES ('2588', '311', '五十铃mu-X', '', '1', '0', '1514129975', '268800', '178800', '3576', 'uploads/car/3576.jpg');
INSERT INTO `cys_car_category` VALUES ('2589', '311', 'D-MAX', '', '1', '0', '1514129975', '204800', '114000', '3562', 'uploads/car/3562.jpg');
INSERT INTO `cys_car_category` VALUES ('2590', '311', '瑞迈', '', '1', '0', '1514129976', '133800', '84800', '3935', 'uploads/car/3935.jpg');
INSERT INTO `cys_car_category` VALUES ('2591', '312', '竞技者', '', '1', '0', '1514129976', '122500', '122500', '4198', 'uploads/car/4198.jpg');
INSERT INTO `cys_car_category` VALUES ('2592', '312', '五十铃皮卡', '', '1', '0', '1514129976', '140800', '92800', '2834', 'uploads/car/2834.jpg');
INSERT INTO `cys_car_category` VALUES ('2593', '156', '五十铃mu-X(海外)', '', '1', '0', '1514129977', '0', '0', '3571', 'uploads/car/3571.jpg');
INSERT INTO `cys_car_category` VALUES ('2594', '156', 'D-MAX(海外)', '', '1', '0', '1514129977', '0', '0', '3564', 'uploads/car/3564.jpg');
INSERT INTO `cys_car_category` VALUES ('2595', '157', '蔚来EP9', '', '1', '0', '1514129978', '0', '0', '4265', 'uploads/car/4265.jpg');
INSERT INTO `cys_car_category` VALUES ('2596', '157', '蔚来ES8', '', '1', '0', '1514129978', '548000', '448000', '4427', 'uploads/car/4427.jpg');
INSERT INTO `cys_car_category` VALUES ('2597', '157', '蔚来EVE', '', '1', '0', '1514129978', '0', '0', '4373', 'uploads/car/4373.jpg');
INSERT INTO `cys_car_category` VALUES ('2598', '313', '英致G3', '', '1', '0', '1514129979', '80800', '56900', '3306', 'uploads/car/3306.jpg');
INSERT INTO `cys_car_category` VALUES ('2599', '313', '英致G5', '', '1', '0', '1514129979', '93800', '57800', '3882', 'uploads/car/3882.jpg');
INSERT INTO `cys_car_category` VALUES ('2600', '313', '英致727', '', '1', '0', '1514129979', '49800', '46800', '3969', 'uploads/car/3969.jpg');
INSERT INTO `cys_car_category` VALUES ('2601', '313', '英致737', '', '1', '0', '1514129980', '99800', '49800', '3653', 'uploads/car/3653.jpg');
INSERT INTO `cys_car_category` VALUES ('2602', '313', '英致EX1', '', '1', '0', '1514129980', '0', '0', '4657', 'uploads/car/4657.jpg');
INSERT INTO `cys_car_category` VALUES ('2603', '313', '英致P80', '', '1', '0', '1514129984', '0', '0', '3337', 'uploads/car/3337.jpg');
INSERT INTO `cys_car_category` VALUES ('2604', '159', '威兹曼GT', '', '1', '0', '1514129985', '3850000', '2950000', '725', 'uploads/car/725.jpg');
INSERT INTO `cys_car_category` VALUES ('2605', '159', '威兹曼Spyder', '', '1', '0', '1514129985', '0', '0', '2291', 'uploads/car/2291.jpg');
INSERT INTO `cys_car_category` VALUES ('2606', '159', '威兹曼Roadster', '', '1', '0', '1514129985', '0', '0', '959', 'uploads/car/959.jpg');
INSERT INTO `cys_car_category` VALUES ('2607', '293', '威麟X5', '', '1', '0', '1514129986', '0', '0', '613', 'uploads/car/613.jpg');
INSERT INTO `cys_car_category` VALUES ('2608', '293', '威麟V5', '', '1', '0', '1514129986', '0', '0', '909', 'uploads/car/909.jpg');
INSERT INTO `cys_car_category` VALUES ('2609', '293', '威麟V8', '', '1', '0', '1514129986', '0', '0', '839', 'uploads/car/839.jpg');
INSERT INTO `cys_car_category` VALUES ('2610', '293', '威麟H3', '', '1', '0', '1514129987', '159800', '159800', '2538', 'uploads/car/2538.jpg');
INSERT INTO `cys_car_category` VALUES ('2611', '293', '威麟H5', '', '1', '0', '1514129987', '213800', '179800', '2539', 'uploads/car/2539.jpg');
INSERT INTO `cys_car_category` VALUES ('2612', '314', '瑞纳', '', '1', '0', '1514129988', '106900', '49900', '2115', 'uploads/car/2115.jpg');
INSERT INTO `cys_car_category` VALUES ('2613', '314', '瑞奕', '', '1', '0', '1514129988', '99900', '72900', '3415', 'uploads/car/3415.jpg');
INSERT INTO `cys_car_category` VALUES ('2614', '314', '悦纳', '', '1', '0', '1514129988', '105800', '72800', '4107', 'uploads/car/4107.jpg');
INSERT INTO `cys_car_category` VALUES ('2615', '314', '悦纳RV', '', '1', '0', '1514129989', '108800', '78800', '4222', 'uploads/car/4222.jpg');
INSERT INTO `cys_car_category` VALUES ('2616', '314', '悦动', '', '1', '0', '1514129989', '115900', '79900', '586', 'uploads/car/586.jpg');
INSERT INTO `cys_car_category` VALUES ('2617', '314', '朗动', '', '1', '0', '1514129989', '127800', '115800', '2764', 'uploads/car/2764.jpg');
INSERT INTO `cys_car_category` VALUES ('2618', '314', '领动', '', '1', '0', '1514129990', '151800', '99800', '3959', 'uploads/car/3959.jpg');
INSERT INTO `cys_car_category` VALUES ('2619', '314', '伊兰特EV', '', '1', '0', '1514129990', '202800', '199800', '4496', 'uploads/car/4496.jpg');
INSERT INTO `cys_car_category` VALUES ('2620', '314', '名图', '', '1', '0', '1514129990', '169800', '129800', '3073', 'uploads/car/3073.jpg');
INSERT INTO `cys_car_category` VALUES ('2621', '314', '索纳塔九', '', '1', '0', '1514129990', '249800', '169800', '3672', 'uploads/car/3672.jpg');
INSERT INTO `cys_car_category` VALUES ('2622', '314', '北京现代ix25', '', '1', '0', '1514129991', '186800', '109800', '3292', 'uploads/car/3292.jpg');
INSERT INTO `cys_car_category` VALUES ('2623', '314', '途胜', '', '1', '0', '1514129991', '239900', '169900', '358', 'uploads/car/358.jpg');
INSERT INTO `cys_car_category` VALUES ('2624', '314', '北京现代ix35', '', '1', '0', '1514129991', '222800', '119900', '1007', 'uploads/car/1007.jpg');
INSERT INTO `cys_car_category` VALUES ('2625', '314', '全新胜达', '', '1', '0', '1514129991', '289800', '224800', '2927', 'uploads/car/2927.jpg');
INSERT INTO `cys_car_category` VALUES ('2626', '314', 'CELESTA', '', '1', '0', '1514129992', '0', '0', '4229', 'uploads/car/4229.jpg');
INSERT INTO `cys_car_category` VALUES ('2627', '314', '索纳塔新能源', '', '1', '0', '1514129992', '0', '0', '4654', 'uploads/car/4654.jpg');
INSERT INTO `cys_car_category` VALUES ('2628', '314', 'ENCINO', '', '1', '0', '1514129992', '0', '0', '4615', 'uploads/car/4615.jpg');
INSERT INTO `cys_car_category` VALUES ('2629', '314', '雅绅特', '', '1', '0', '1514129993', '0', '0', '431', 'uploads/car/431.jpg');
INSERT INTO `cys_car_category` VALUES ('2630', '314', '北京现代i30', '', '1', '0', '1514129993', '0', '0', '814', 'uploads/car/814.jpg');
INSERT INTO `cys_car_category` VALUES ('2631', '314', '伊兰特', '', '1', '0', '1514129993', '0', '0', '51', 'uploads/car/51.jpg');
INSERT INTO `cys_car_category` VALUES ('2632', '314', '领翔', '', '1', '0', '1514129993', '0', '0', '690', 'uploads/car/690.jpg');
INSERT INTO `cys_car_category` VALUES ('2633', '314', '名驭', '', '1', '0', '1514129994', '0', '0', '866', 'uploads/car/866.jpg');
INSERT INTO `cys_car_category` VALUES ('2634', '314', '索纳塔', '', '1', '0', '1514129994', '0', '0', '2649', 'uploads/car/2649.jpg');
INSERT INTO `cys_car_category` VALUES ('2635', '314', '索纳塔八', '', '1', '0', '1514129994', '0', '0', '50', 'uploads/car/50.jpg');
INSERT INTO `cys_car_category` VALUES ('2636', '314', '御翔', '', '1', '0', '1514129994', '0', '0', '429', 'uploads/car/429.jpg');
INSERT INTO `cys_car_category` VALUES ('2637', '315', '康恩迪', '', '1', '0', '1514129997', '498000', '396000', '3613', 'uploads/car/3613.jpg');
INSERT INTO `cys_car_category` VALUES ('2638', '316', 'Veloster飞思', '', '1', '0', '1514129998', '219800', '172800', '2256', 'uploads/car/2256.jpg');
INSERT INTO `cys_car_category` VALUES ('2639', '316', '雅尊', '', '1', '0', '1514129998', '332800', '240800', '446', 'uploads/car/446.jpg');
INSERT INTO `cys_car_category` VALUES ('2640', '316', '捷恩斯', '', '1', '0', '1514129998', '648800', '378000', '3453', 'uploads/car/3453.jpg');
INSERT INTO `cys_car_category` VALUES ('2641', '316', '雅科仕', '', '1', '0', '1514129998', '1320000', '738000', '255', 'uploads/car/255.jpg');
INSERT INTO `cys_car_category` VALUES ('2642', '316', '格越', '', '1', '0', '1514129999', '387800', '256000', '3164', 'uploads/car/3164.jpg');
INSERT INTO `cys_car_category` VALUES ('2643', '316', 'H-1辉翼', '', '1', '0', '1514129999', '249800', '211800', '2117', 'uploads/car/2117.jpg');
INSERT INTO `cys_car_category` VALUES ('2644', '316', '现代i10', '', '1', '0', '1514129999', '0', '0', '995', 'uploads/car/995.jpg');
INSERT INTO `cys_car_category` VALUES ('2645', '316', 'Xcent', '', '1', '0', '1514130000', '0', '0', '3366', 'uploads/car/3366.jpg');
INSERT INTO `cys_car_category` VALUES ('2646', '316', '瑞纳(海外)', '', '1', '0', '1514130000', '0', '0', '3245', 'uploads/car/3245.jpg');
INSERT INTO `cys_car_category` VALUES ('2647', '316', '现代HB20', '', '1', '0', '1514130000', '0', '0', '2899', 'uploads/car/2899.jpg');
INSERT INTO `cys_car_category` VALUES ('2648', '316', '现代i20', '', '1', '0', '1514130001', '0', '0', '805', 'uploads/car/805.jpg');
INSERT INTO `cys_car_category` VALUES ('2649', '316', '现代ix20', '', '1', '0', '1514130001', '0', '0', '2206', 'uploads/car/2206.jpg');
INSERT INTO `cys_car_category` VALUES ('2650', '316', '雅绅特(海外)', '', '1', '0', '1514130001', '0', '0', '936', 'uploads/car/936.jpg');
INSERT INTO `cys_car_category` VALUES ('2651', '316', 'Aslan', '', '1', '0', '1514130001', '0', '0', '3651', 'uploads/car/3651.jpg');
INSERT INTO `cys_car_category` VALUES ('2652', '316', 'Avante', '', '1', '0', '1514130002', '0', '0', '2174', 'uploads/car/2174.jpg');
INSERT INTO `cys_car_category` VALUES ('2653', '316', 'IONIQ', '', '1', '0', '1514130002', '0', '0', '2698', 'uploads/car/2698.jpg');
INSERT INTO `cys_car_category` VALUES ('2654', '316', '现代i30(海外)', '', '1', '0', '1514130003', '0', '0', '710', 'uploads/car/710.jpg');
INSERT INTO `cys_car_category` VALUES ('2655', '316', '现代RN30', '', '1', '0', '1514130003', '0', '0', '4207', 'uploads/car/4207.jpg');
INSERT INTO `cys_car_category` VALUES ('2656', '316', '伊兰特(海外)', '', '1', '0', '1514130003', '0', '0', '712', 'uploads/car/712.jpg');
INSERT INTO `cys_car_category` VALUES ('2657', '316', 'Blue2', '', '1', '0', '1514130004', '0', '0', '2300', 'uploads/car/2300.jpg');
INSERT INTO `cys_car_category` VALUES ('2658', '316', 'Genesis G70', '', '1', '0', '1514130004', '0', '0', '4545', 'uploads/car/4545.jpg');
INSERT INTO `cys_car_category` VALUES ('2659', '316', '索纳塔(进口)', '', '1', '0', '1514130004', '0', '0', '1017', 'uploads/car/1017.jpg');
INSERT INTO `cys_car_category` VALUES ('2660', '316', '现代i40', '', '1', '0', '1514130005', '0', '0', '2272', 'uploads/car/2272.jpg');
INSERT INTO `cys_car_category` VALUES ('2661', '316', 'Genesis G80', '', '1', '0', '1514130005', '0', '0', '4176', 'uploads/car/4176.jpg');
INSERT INTO `cys_car_category` VALUES ('2662', '316', '现代AG', '', '1', '0', '1514130005', '0', '0', '3522', 'uploads/car/3522.jpg');
INSERT INTO `cys_car_category` VALUES ('2663', '316', 'Genesis G90', '', '1', '0', '1514130005', '0', '0', '3982', 'uploads/car/3982.jpg');
INSERT INTO `cys_car_category` VALUES ('2664', '316', 'Carlino sub-4m', '', '1', '0', '1514130006', '0', '0', '4025', 'uploads/car/4025.jpg');
INSERT INTO `cys_car_category` VALUES ('2665', '316', 'Creta', '', '1', '0', '1514130006', '0', '0', '3855', 'uploads/car/3855.jpg');
INSERT INTO `cys_car_category` VALUES ('2666', '316', 'HND-12 Enduro', '', '1', '0', '1514130006', '0', '0', '3960', 'uploads/car/3960.jpg');
INSERT INTO `cys_car_category` VALUES ('2667', '316', 'KONA', '', '1', '0', '1514130006', '0', '0', '4465', 'uploads/car/4465.jpg');
INSERT INTO `cys_car_category` VALUES ('2668', '316', 'Enduro', '', '1', '0', '1514130007', '0', '0', '3772', 'uploads/car/3772.jpg');
INSERT INTO `cys_car_category` VALUES ('2669', '316', 'Intrado', '', '1', '0', '1514130007', '0', '0', '3310', 'uploads/car/3310.jpg');
INSERT INTO `cys_car_category` VALUES ('2670', '316', '途胜(进口)', '', '1', '0', '1514130007', '0', '0', '975', 'uploads/car/975.jpg');
INSERT INTO `cys_car_category` VALUES ('2671', '316', '现代ix35(海外)', '', '1', '0', '1514130008', '0', '0', '971', 'uploads/car/971.jpg');
INSERT INTO `cys_car_category` VALUES ('2672', '316', '全新胜达(进口)', '', '1', '0', '1514130008', '0', '0', '2984', 'uploads/car/2984.jpg');
INSERT INTO `cys_car_category` VALUES ('2673', '316', 'FE Fuel Cell', '', '1', '0', '1514130008', '0', '0', '4361', 'uploads/car/4361.jpg');
INSERT INTO `cys_car_category` VALUES ('2674', '316', 'Genesis GV80', '', '1', '0', '1514130008', '0', '0', '4397', 'uploads/car/4397.jpg');
INSERT INTO `cys_car_category` VALUES ('2675', '316', '新胜达(进口)', '', '1', '0', '1514130009', '0', '0', '127', 'uploads/car/127.jpg');
INSERT INTO `cys_car_category` VALUES ('2676', '316', 'Hexa Space', '', '1', '0', '1514130009', '0', '0', '2624', 'uploads/car/2624.jpg');
INSERT INTO `cys_car_category` VALUES ('2677', '316', 'N 2025 VGT', '', '1', '0', '1514130012', '0', '0', '3921', 'uploads/car/3921.jpg');
INSERT INTO `cys_car_category` VALUES ('2678', '316', 'Vision G', '', '1', '0', '1514130012', '0', '0', '3890', 'uploads/car/3890.jpg');
INSERT INTO `cys_car_category` VALUES ('2679', '316', '现代HND-9', '', '1', '0', '1514130012', '0', '0', '3045', 'uploads/car/3045.jpg');
INSERT INTO `cys_car_category` VALUES ('2680', '316', '现代RM16', '', '1', '0', '1514130012', '0', '0', '4144', 'uploads/car/4144.jpg');
INSERT INTO `cys_car_category` VALUES ('2681', '316', '现代H350', '', '1', '0', '1514130013', '0', '0', '3596', 'uploads/car/3596.jpg');
INSERT INTO `cys_car_category` VALUES ('2682', '316', 'Santa Cruz', '', '1', '0', '1514130013', '0', '0', '3711', 'uploads/car/3711.jpg');
INSERT INTO `cys_car_category` VALUES ('2683', '316', 'Getz', '', '1', '0', '1514130013', '0', '0', '2033', 'uploads/car/2033.jpg');
INSERT INTO `cys_car_category` VALUES ('2684', '316', '现代RB', '', '1', '0', '1514130013', '0', '0', '2199', 'uploads/car/2199.jpg');
INSERT INTO `cys_car_category` VALUES ('2685', '316', '君爵', '', '1', '0', '1514130014', '0', '0', '131', 'uploads/car/131.jpg');
INSERT INTO `cys_car_category` VALUES ('2686', '316', '劳恩斯', '', '1', '0', '1514130014', '0', '0', '594', 'uploads/car/594.jpg');
INSERT INTO `cys_car_category` VALUES ('2687', '316', 'Curb', '', '1', '0', '1514130014', '0', '0', '2257', 'uploads/car/2257.jpg');
INSERT INTO `cys_car_category` VALUES ('2688', '316', 'Nuvis', '', '1', '0', '1514130014', '0', '0', '807', 'uploads/car/807.jpg');
INSERT INTO `cys_car_category` VALUES ('2689', '316', '圣达菲(进口)', '', '1', '0', '1514130015', '0', '0', '976', 'uploads/car/976.jpg');
INSERT INTO `cys_car_category` VALUES ('2690', '316', '维拉克斯', '', '1', '0', '1514130015', '0', '0', '510', 'uploads/car/510.jpg');
INSERT INTO `cys_car_category` VALUES ('2691', '316', '美佳', '', '1', '0', '1514130015', '0', '0', '457', 'uploads/car/457.jpg');
INSERT INTO `cys_car_category` VALUES ('2692', '316', 'i-flow', '', '1', '0', '1514130016', '0', '0', '2077', 'uploads/car/2077.jpg');
INSERT INTO `cys_car_category` VALUES ('2693', '316', '酷派', '', '1', '0', '1514130016', '0', '0', '252', 'uploads/car/252.jpg');
INSERT INTO `cys_car_category` VALUES ('2694', '316', '劳恩斯-酷派', '', '1', '0', '1514130016', '0', '0', '756', 'uploads/car/756.jpg');
INSERT INTO `cys_car_category` VALUES ('2695', '317', '赛欧', '', '1', '0', '1514130017', '79900', '62900', '163', 'uploads/car/163.jpg');
INSERT INTO `cys_car_category` VALUES ('2696', '317', '乐风RV', '', '1', '0', '1514130017', '99900', '74900', '3923', 'uploads/car/3923.jpg');
INSERT INTO `cys_car_category` VALUES ('2697', '317', '科鲁兹', '', '1', '0', '1514130017', '169900', '109900', '657', 'uploads/car/657.jpg');
INSERT INTO `cys_car_category` VALUES ('2698', '317', '科沃兹', '', '1', '0', '1514130018', '109900', '79900', '4105', 'uploads/car/4105.jpg');
INSERT INTO `cys_car_category` VALUES ('2699', '317', '迈锐宝', '', '1', '0', '1514130018', '189900', '164900', '2313', 'uploads/car/2313.jpg');
INSERT INTO `cys_car_category` VALUES ('2700', '317', '迈锐宝XL', '', '1', '0', '1514130018', '269900', '179900', '4031', 'uploads/car/4031.jpg');
INSERT INTO `cys_car_category` VALUES ('2701', '317', '创酷', '', '1', '0', '1514130018', '149900', '99900', '3335', 'uploads/car/3335.jpg');
INSERT INTO `cys_car_category` VALUES ('2702', '317', '科帕奇', '', '1', '0', '1514130019', '209900', '179900', '2583', 'uploads/car/2583.jpg');
INSERT INTO `cys_car_category` VALUES ('2703', '317', '探界者', '', '1', '0', '1514130019', '250900', '174900', '4235', 'uploads/car/4235.jpg');
INSERT INTO `cys_car_category` VALUES ('2704', '317', '爱唯欧', '', '1', '0', '1514130019', '0', '0', '2348', 'uploads/car/2348.jpg');
INSERT INTO `cys_car_category` VALUES ('2705', '317', '乐骋', '', '1', '0', '1514130019', '0', '0', '420', 'uploads/car/420.jpg');
INSERT INTO `cys_car_category` VALUES ('2706', '317', '乐风', '', '1', '0', '1514130020', '0', '0', '439', 'uploads/car/439.jpg');
INSERT INTO `cys_car_category` VALUES ('2707', '317', '景程', '', '1', '0', '1514130020', '0', '0', '397', 'uploads/car/397.jpg');
INSERT INTO `cys_car_category` VALUES ('2708', '318', '科迈罗', '', '1', '0', '1514130021', '399900', '399900', '678', 'uploads/car/678.jpg');
INSERT INTO `cys_car_category` VALUES ('2709', '318', '库罗德', '', '1', '0', '1514130021', '599900', '549900', '2362', 'uploads/car/2362.jpg');
INSERT INTO `cys_car_category` VALUES ('2710', '318', '索罗德', '', '1', '0', '1514130021', '699000', '599000', '2405', 'uploads/car/2405.jpg');
INSERT INTO `cys_car_category` VALUES ('2711', '318', '斯帕可', '', '1', '0', '1514130021', '0', '0', '808', 'uploads/car/808.jpg');
INSERT INTO `cys_car_category` VALUES ('2712', '318', '雪佛兰EN-V', '', '1', '0', '1514130022', '0', '0', '3938', 'uploads/car/3938.jpg');
INSERT INTO `cys_car_category` VALUES ('2713', '318', 'Beat Activ', '', '1', '0', '1514130022', '0', '0', '4024', 'uploads/car/4024.jpg');
INSERT INTO `cys_car_category` VALUES ('2714', '318', 'Bolt', '', '1', '0', '1514130022', '0', '0', '3710', 'uploads/car/3710.jpg');
INSERT INTO `cys_car_category` VALUES ('2715', '318', 'Essentia', '', '1', '0', '1514130022', '0', '0', '4026', 'uploads/car/4026.jpg');
INSERT INTO `cys_car_category` VALUES ('2716', '318', 'Onix', '', '1', '0', '1514130023', '0', '0', '2919', 'uploads/car/2919.jpg');
INSERT INTO `cys_car_category` VALUES ('2717', '318', 'Sonic', '', '1', '0', '1514130023', '0', '0', '2255', 'uploads/car/2255.jpg');
INSERT INTO `cys_car_category` VALUES ('2718', '318', '爱唯欧(海外)', '', '1', '0', '1514130023', '0', '0', '2037', 'uploads/car/2037.jpg');
INSERT INTO `cys_car_category` VALUES ('2719', '318', 'Cobalt', '', '1', '0', '1514130023', '0', '0', '2364', 'uploads/car/2364.jpg');
INSERT INTO `cys_car_category` VALUES ('2720', '318', '科鲁兹(海外)', '', '1', '0', '1514130024', '0', '0', '1014', 'uploads/car/1014.jpg');
INSERT INTO `cys_car_category` VALUES ('2721', '318', '沃蓝达', '', '1', '0', '1514130026', '0', '0', '682', 'uploads/car/682.jpg');
INSERT INTO `cys_car_category` VALUES ('2722', '318', 'Impala', '', '1', '0', '1514130026', '0', '0', '2747', 'uploads/car/2747.jpg');
INSERT INTO `cys_car_category` VALUES ('2723', '318', '迈锐宝(海外)', '', '1', '0', '1514130027', '0', '0', '722', 'uploads/car/722.jpg');
INSERT INTO `cys_car_category` VALUES ('2724', '318', 'Caprice', '', '1', '0', '1514130027', '0', '0', '2773', 'uploads/car/2773.jpg');
INSERT INTO `cys_car_category` VALUES ('2725', '318', '雪佛兰SS', '', '1', '0', '1514130027', '0', '0', '3011', 'uploads/car/3011.jpg');
INSERT INTO `cys_car_category` VALUES ('2726', '318', 'Adra', '', '1', '0', '1514130028', '0', '0', '3365', 'uploads/car/3365.jpg');
INSERT INTO `cys_car_category` VALUES ('2727', '318', 'Niva', '', '1', '0', '1514130028', '0', '0', '3583', 'uploads/car/3583.jpg');
INSERT INTO `cys_car_category` VALUES ('2728', '318', '创酷(海外)', '', '1', '0', '1514130028', '0', '0', '2869', 'uploads/car/2869.jpg');
INSERT INTO `cys_car_category` VALUES ('2729', '318', '科帕奇(进口)', '', '1', '0', '1514130028', '0', '0', '546', 'uploads/car/546.jpg');
INSERT INTO `cys_car_category` VALUES ('2730', '318', '探界者(海外)', '', '1', '0', '1514130029', '0', '0', '868', 'uploads/car/868.jpg');
INSERT INTO `cys_car_category` VALUES ('2731', '318', '雪佛兰TrailBlazer', '', '1', '0', '1514130029', '0', '0', '2553', 'uploads/car/2553.jpg');
INSERT INTO `cys_car_category` VALUES ('2732', '318', 'Traverse', '', '1', '0', '1514130029', '0', '0', '766', 'uploads/car/766.jpg');
INSERT INTO `cys_car_category` VALUES ('2733', '318', 'Suburban', '', '1', '0', '1514130029', '0', '0', '3213', 'uploads/car/3213.jpg');
INSERT INTO `cys_car_category` VALUES ('2734', '318', 'Tahoe', '', '1', '0', '1514130030', '0', '0', '2854', 'uploads/car/2854.jpg');
INSERT INTO `cys_car_category` VALUES ('2735', '318', 'City Express', '', '1', '0', '1514130030', '0', '0', '3138', 'uploads/car/3138.jpg');
INSERT INTO `cys_car_category` VALUES ('2736', '318', 'Spin', '', '1', '0', '1514130030', '0', '0', '2851', 'uploads/car/2851.jpg');
INSERT INTO `cys_car_category` VALUES ('2737', '318', 'Chaparral 2X Vision', '', '1', '0', '1514130031', '0', '0', '3670', 'uploads/car/3670.jpg');
INSERT INTO `cys_car_category` VALUES ('2738', '318', 'CHEVROLET FNR-X', '', '1', '0', '1514130031', '0', '0', '4384', 'uploads/car/4384.jpg');
INSERT INTO `cys_car_category` VALUES ('2739', '318', 'Code', '', '1', '0', '1514130031', '0', '0', '2639', 'uploads/car/2639.jpg');
INSERT INTO `cys_car_category` VALUES ('2740', '318', 'Miray', '', '1', '0', '1514130032', '0', '0', '2330', 'uploads/car/2330.jpg');
INSERT INTO `cys_car_category` VALUES ('2741', '318', '科尔维特', '', '1', '0', '1514130032', '0', '0', '387', 'uploads/car/387.jpg');
INSERT INTO `cys_car_category` VALUES ('2742', '318', '雪佛兰FNR', '', '1', '0', '1514130032', '0', '0', '3806', 'uploads/car/3806.jpg');
INSERT INTO `cys_car_category` VALUES ('2743', '318', '雪佛兰Tru', '', '1', '0', '1514130032', '0', '0', '2640', 'uploads/car/2640.jpg');
INSERT INTO `cys_car_category` VALUES ('2744', '318', 'Agile', '', '1', '0', '1514130033', '0', '0', '943', 'uploads/car/943.jpg');
INSERT INTO `cys_car_category` VALUES ('2745', '318', 'Express', '', '1', '0', '1514130033', '0', '0', '973', 'uploads/car/973.jpg');
INSERT INTO `cys_car_category` VALUES ('2746', '318', 'Orlando', '', '1', '0', '1514130033', '0', '0', '761', 'uploads/car/761.jpg');
INSERT INTO `cys_car_category` VALUES ('2747', '319', '雪铁龙C4L', '', '1', '0', '1514130034', '182900', '134900', '2945', 'uploads/car/2945.jpg');
INSERT INTO `cys_car_category` VALUES ('2748', '319', '世嘉', '', '1', '0', '1514130034', '103800', '95800', '639', 'uploads/car/639.jpg');
INSERT INTO `cys_car_category` VALUES ('2749', '319', '爱丽舍', '', '1', '0', '1514130034', '104800', '83800', '98', 'uploads/car/98.jpg');
INSERT INTO `cys_car_category` VALUES ('2750', '319', 'C4世嘉', '', '1', '0', '1514130035', '141800', '98800', '3873', 'uploads/car/3873.jpg');
INSERT INTO `cys_car_category` VALUES ('2751', '319', '雪铁龙C5', '', '1', '0', '1514130035', '219900', '169900', '792', 'uploads/car/792.jpg');
INSERT INTO `cys_car_category` VALUES ('2752', '319', '雪铁龙C6', '', '1', '0', '1514130035', '279900', '189900', '4043', 'uploads/car/4043.jpg');
INSERT INTO `cys_car_category` VALUES ('2753', '319', '雪铁龙C3-XR', '', '1', '0', '1514130035', '171800', '108800', '3429', 'uploads/car/3429.jpg');
INSERT INTO `cys_car_category` VALUES ('2754', '319', '天逸 C5 AIRCROSS', '', '1', '0', '1514130036', '236700', '152700', '4370', 'uploads/car/4370.jpg');
INSERT INTO `cys_car_category` VALUES ('2755', '319', '雪铁龙C2', '', '1', '0', '1514130036', '0', '0', '476', 'uploads/car/476.jpg');
INSERT INTO `cys_car_category` VALUES ('2756', '319', '富康', '', '1', '0', '1514130036', '0', '0', '293', 'uploads/car/293.jpg');
INSERT INTO `cys_car_category` VALUES ('2757', '319', '凯旋', '', '1', '0', '1514130037', '0', '0', '388', 'uploads/car/388.jpg');
INSERT INTO `cys_car_category` VALUES ('2758', '319', '赛纳', '', '1', '0', '1514130037', '0', '0', '230', 'uploads/car/230.jpg');
INSERT INTO `cys_car_category` VALUES ('2759', '319', '毕加索', '', '1', '0', '1514130037', '0', '0', '232', 'uploads/car/232.jpg');
INSERT INTO `cys_car_category` VALUES ('2760', '218', '雪铁龙C4 Aircross', '', '1', '0', '1514130038', '279800', '199800', '2473', 'uploads/car/2473.jpg');
INSERT INTO `cys_car_category` VALUES ('2761', '218', 'C4 PICASSO', '', '1', '0', '1514130038', '265800', '216800', '473', 'uploads/car/473.jpg');
INSERT INTO `cys_car_category` VALUES ('2762', '218', 'C-Zero', '', '1', '0', '1514130038', '0', '0', '2208', 'uploads/car/2208.jpg');
INSERT INTO `cys_car_category` VALUES ('2763', '218', '雪铁龙C1', '', '1', '0', '1514130041', '0', '0', '2053', 'uploads/car/2053.jpg');
INSERT INTO `cys_car_category` VALUES ('2764', '218', 'C3毕加索', '', '1', '0', '1514130041', '0', '0', '664', 'uploads/car/664.jpg');
INSERT INTO `cys_car_category` VALUES ('2765', '218', 'E-MEHARI', '', '1', '0', '1514130041', '0', '0', '4042', 'uploads/car/4042.jpg');
INSERT INTO `cys_car_category` VALUES ('2766', '218', '雪铁龙C3', '', '1', '0', '1514130042', '0', '0', '329', 'uploads/car/329.jpg');
INSERT INTO `cys_car_category` VALUES ('2767', '218', '爱丽舍(海外)', '', '1', '0', '1514130042', '0', '0', '2844', 'uploads/car/2844.jpg');
INSERT INTO `cys_car_category` VALUES ('2768', '218', '雪铁龙C4', '', '1', '0', '1514130042', '0', '0', '480', 'uploads/car/480.jpg');
INSERT INTO `cys_car_category` VALUES ('2769', '218', '雪铁龙C4L(海外)', '', '1', '0', '1514130042', '0', '0', '2909', 'uploads/car/2909.jpg');
INSERT INTO `cys_car_category` VALUES ('2770', '218', '雪铁龙C5(进口)', '', '1', '0', '1514130043', '0', '0', '212', 'uploads/car/212.jpg');
INSERT INTO `cys_car_category` VALUES ('2771', '218', 'CXPERIENCE', '', '1', '0', '1514130043', '0', '0', '4189', 'uploads/car/4189.jpg');
INSERT INTO `cys_car_category` VALUES ('2772', '218', 'Metropolis', '', '1', '0', '1514130043', '0', '0', '2942', 'uploads/car/2942.jpg');
INSERT INTO `cys_car_category` VALUES ('2773', '218', 'AirCross', '', '1', '0', '1514130044', '0', '0', '3646', 'uploads/car/3646.jpg');
INSERT INTO `cys_car_category` VALUES ('2774', '218', '雪铁龙C3 AIRCROSS', '', '1', '0', '1514130044', '0', '0', '4301', 'uploads/car/4301.jpg');
INSERT INTO `cys_car_category` VALUES ('2775', '218', '雪铁龙C4 Cactus', '', '1', '0', '1514130044', '0', '0', '3206', 'uploads/car/3206.jpg');
INSERT INTO `cys_car_category` VALUES ('2776', '218', 'Berlingo', '', '1', '0', '1514130044', '0', '0', '809', 'uploads/car/809.jpg');
INSERT INTO `cys_car_category` VALUES ('2777', '218', 'Technospace', '', '1', '0', '1514130045', '0', '0', '3010', 'uploads/car/3010.jpg');
INSERT INTO `cys_car_category` VALUES ('2778', '218', 'Tubik', '', '1', '0', '1514130045', '0', '0', '2413', 'uploads/car/2413.jpg');
INSERT INTO `cys_car_category` VALUES ('2779', '218', 'Numero 9', '', '1', '0', '1514130045', '0', '0', '2753', 'uploads/car/2753.jpg');
INSERT INTO `cys_car_category` VALUES ('2780', '218', 'SPACETOURER', '', '1', '0', '1514130045', '0', '0', '3976', 'uploads/car/3976.jpg');
INSERT INTO `cys_car_category` VALUES ('2781', '218', 'Lacoste', '', '1', '0', '1514130046', '0', '0', '2209', 'uploads/car/2209.jpg');
INSERT INTO `cys_car_category` VALUES ('2782', '218', 'REVOLTe', '', '1', '0', '1514130046', '0', '0', '922', 'uploads/car/922.jpg');
INSERT INTO `cys_car_category` VALUES ('2783', '218', '雪铁龙C2(海外)', '', '1', '0', '1514130046', '0', '0', '745', 'uploads/car/745.jpg');
INSERT INTO `cys_car_category` VALUES ('2784', '218', '雪铁龙BX', '', '1', '0', '1514130047', '0', '0', '4081', 'uploads/car/4081.jpg');
INSERT INTO `cys_car_category` VALUES ('2785', '218', '雪铁龙CX', '', '1', '0', '1514130047', '0', '0', '3555', 'uploads/car/3555.jpg');
INSERT INTO `cys_car_category` VALUES ('2786', '218', '雪铁龙C6(进口)', '', '1', '0', '1514130047', '0', '0', '440', 'uploads/car/440.jpg');
INSERT INTO `cys_car_category` VALUES ('2787', '218', 'C-Crosser', '', '1', '0', '1514130047', '0', '0', '950', 'uploads/car/950.jpg');
INSERT INTO `cys_car_category` VALUES ('2788', '218', 'Survolt', '', '1', '0', '1514130048', '0', '0', '2072', 'uploads/car/2072.jpg');
INSERT INTO `cys_car_category` VALUES ('2789', '218', '雪铁龙GQ', '', '1', '0', '1514130048', '0', '0', '2079', 'uploads/car/2079.jpg');
INSERT INTO `cys_car_category` VALUES ('2790', '218', '雪铁龙GT', '', '1', '0', '1514130048', '0', '0', '2031', 'uploads/car/2031.jpg');
INSERT INTO `cys_car_category` VALUES ('2791', '320', '新凯V-Class', '', '1', '0', '1514130049', '1080000', '980000', '4351', 'uploads/car/4351.jpg');
INSERT INTO `cys_car_category` VALUES ('2792', '320', '新凯凌特', '', '1', '0', '1514130049', '1580000', '1580000', '3703', 'uploads/car/3703.jpg');
INSERT INTO `cys_car_category` VALUES ('2793', '320', '新凯威霆', '', '1', '0', '1514130049', '908000', '908000', '3702', 'uploads/car/3702.jpg');
INSERT INTO `cys_car_category` VALUES ('2794', '320', '凯胜', '', '1', '0', '1514130050', '0', '0', '3090', 'uploads/car/3090.jpg');
INSERT INTO `cys_car_category` VALUES ('2795', '259', '好运1号', '', '1', '0', '1514130050', '169800', '166800', '4566', 'uploads/car/4566.jpg');
INSERT INTO `cys_car_category` VALUES ('2796', '259', '鑫源X30LEV', '', '1', '0', '1514130051', '166800', '166800', '4567', 'uploads/car/4567.jpg');
INSERT INTO `cys_car_category` VALUES ('2797', '259', '鑫源T20EV', '', '1', '0', '1514130051', '136800', '133800', '4568', 'uploads/car/4568.jpg');
INSERT INTO `cys_car_category` VALUES ('2798', '166', '西雅特Mii', '', '1', '0', '1514130051', '0', '0', '2474', 'uploads/car/2474.jpg');
INSERT INTO `cys_car_category` VALUES ('2799', '166', '伊比飒', '', '1', '0', '1514130052', '0', '0', '714', 'uploads/car/714.jpg');
INSERT INTO `cys_car_category` VALUES ('2800', '166', 'LEON', '', '1', '0', '1514130052', '0', '0', '718', 'uploads/car/718.jpg');
INSERT INTO `cys_car_category` VALUES ('2801', '166', 'Toledo', '', '1', '0', '1514130052', '0', '0', '2684', 'uploads/car/2684.jpg');
INSERT INTO `cys_car_category` VALUES ('2802', '166', 'Exeo', '', '1', '0', '1514130053', '0', '0', '717', 'uploads/car/717.jpg');
INSERT INTO `cys_car_category` VALUES ('2803', '166', '西雅特IBL', '', '1', '0', '1514130053', '0', '0', '2422', 'uploads/car/2422.jpg');
INSERT INTO `cys_car_category` VALUES ('2804', '166', 'Arona', '', '1', '0', '1514130055', '0', '0', '4455', 'uploads/car/4455.jpg');
INSERT INTO `cys_car_category` VALUES ('2805', '166', 'Ateca', '', '1', '0', '1514130056', '0', '0', '4028', 'uploads/car/4028.jpg');
INSERT INTO `cys_car_category` VALUES ('2806', '166', '西雅特IBX', '', '1', '0', '1514130056', '0', '0', '2280', 'uploads/car/2280.jpg');
INSERT INTO `cys_car_category` VALUES ('2807', '166', '西雅特20V20', '', '1', '0', '1514130056', '0', '0', '3740', 'uploads/car/3740.jpg');
INSERT INTO `cys_car_category` VALUES ('2808', '166', '欧悦搏', '', '1', '0', '1514130056', '0', '0', '2105', 'uploads/car/2105.jpg');
INSERT INTO `cys_car_category` VALUES ('2809', '166', 'Altea', '', '1', '0', '1514130057', '0', '0', '716', 'uploads/car/716.jpg');
INSERT INTO `cys_car_category` VALUES ('2810', '166', '西雅特IBE', '', '1', '0', '1514130057', '0', '0', '2069', 'uploads/car/2069.jpg');
INSERT INTO `cys_car_category` VALUES ('2811', '321', '英菲尼迪Q50L', '', '1', '0', '1514130058', '409800', '279800', '3553', 'uploads/car/3553.jpg');
INSERT INTO `cys_car_category` VALUES ('2812', '321', '英菲尼迪QX50', '', '1', '0', '1514130058', '449800', '349800', '3591', 'uploads/car/3591.jpg');
INSERT INTO `cys_car_category` VALUES ('2813', '322', '英菲尼迪Q50', '', '1', '0', '1514130058', '549800', '389800', '2992', 'uploads/car/2992.jpg');
INSERT INTO `cys_car_category` VALUES ('2814', '322', '英菲尼迪Q70', '', '1', '0', '1514130059', '649800', '399800', '3097', 'uploads/car/3097.jpg');
INSERT INTO `cys_car_category` VALUES ('2815', '322', '英菲尼迪ESQ', '', '1', '0', '1514130059', '249800', '189800', '3535', 'uploads/car/3535.jpg');
INSERT INTO `cys_car_category` VALUES ('2816', '322', '英菲尼迪QX30', '', '1', '0', '1514130059', '389800', '249800', '3652', 'uploads/car/3652.jpg');
INSERT INTO `cys_car_category` VALUES ('2817', '322', '英菲尼迪QX60', '', '1', '0', '1514130059', '618000', '518000', '3043', 'uploads/car/3043.jpg');
INSERT INTO `cys_car_category` VALUES ('2818', '322', '英菲尼迪QX70', '', '1', '0', '1514130060', '808000', '778000', '3099', 'uploads/car/3099.jpg');
INSERT INTO `cys_car_category` VALUES ('2819', '322', '英菲尼迪QX80', '', '1', '0', '1514130060', '1198000', '1198000', '3100', 'uploads/car/3100.jpg');
INSERT INTO `cys_car_category` VALUES ('2820', '322', '英菲尼迪Q60', '', '1', '0', '1514130060', '456800', '436800', '3201', 'uploads/car/3201.jpg');
INSERT INTO `cys_car_category` VALUES ('2821', '322', 'Etherea', '', '1', '0', '1514130060', '0', '0', '2270', 'uploads/car/2270.jpg');
INSERT INTO `cys_car_category` VALUES ('2822', '322', '英菲尼迪Q30', '', '1', '0', '1514130061', '0', '0', '3176', 'uploads/car/3176.jpg');
INSERT INTO `cys_car_category` VALUES ('2823', '322', '英菲尼迪LE', '', '1', '0', '1514130061', '0', '0', '2749', 'uploads/car/2749.jpg');
INSERT INTO `cys_car_category` VALUES ('2824', '322', '英菲尼迪Q80', '', '1', '0', '1514130061', '0', '0', '3617', 'uploads/car/3617.jpg');
INSERT INTO `cys_car_category` VALUES ('2825', '322', 'QX Sport Inspiration', '', '1', '0', '1514130062', '0', '0', '4091', 'uploads/car/4091.jpg');
INSERT INTO `cys_car_category` VALUES ('2826', '322', '英菲尼迪QX50(进口)', '', '1', '0', '1514130062', '0', '0', '3098', 'uploads/car/3098.jpg');
INSERT INTO `cys_car_category` VALUES ('2827', '322', 'Emerg-E', '', '1', '0', '1514130062', '0', '0', '2679', 'uploads/car/2679.jpg');
INSERT INTO `cys_car_category` VALUES ('2828', '322', 'Prototype 9', '', '1', '0', '1514130062', '0', '0', '4514', 'uploads/car/4514.jpg');
INSERT INTO `cys_car_category` VALUES ('2829', '322', '英菲尼迪GranTurismo', '', '1', '0', '1514130063', '0', '0', '3690', 'uploads/car/3690.jpg');
INSERT INTO `cys_car_category` VALUES ('2830', '322', '英菲尼迪G系', '', '1', '0', '1514130063', '0', '0', '383', 'uploads/car/383.jpg');
INSERT INTO `cys_car_category` VALUES ('2831', '322', '英菲尼迪M系', '', '1', '0', '1514130063', '0', '0', '581', 'uploads/car/581.jpg');
INSERT INTO `cys_car_category` VALUES ('2832', '322', '英菲尼迪EX', '', '1', '0', '1514130064', '0', '0', '605', 'uploads/car/605.jpg');
INSERT INTO `cys_car_category` VALUES ('2833', '322', '英菲尼迪FX', '', '1', '0', '1514130064', '0', '0', '122', 'uploads/car/122.jpg');
INSERT INTO `cys_car_category` VALUES ('2834', '322', '英菲尼迪JX', '', '1', '0', '1514130064', '0', '0', '2400', 'uploads/car/2400.jpg');
INSERT INTO `cys_car_category` VALUES ('2835', '322', '英菲尼迪QX', '', '1', '0', '1514130064', '0', '0', '416', 'uploads/car/416.jpg');
INSERT INTO `cys_car_category` VALUES ('2836', '322', 'Essence', '', '1', '0', '1514130065', '0', '0', '783', 'uploads/car/783.jpg');
INSERT INTO `cys_car_category` VALUES ('2837', '322', '英菲尼迪Q60S', '', '1', '0', '1514130065', '0', '0', '3202', 'uploads/car/3202.jpg');
INSERT INTO `cys_car_category` VALUES ('2838', '323', '威志V5', '', '1', '0', '1514130066', '65900', '52900', '2716', 'uploads/car/2716.jpg');
INSERT INTO `cys_car_category` VALUES ('2839', '323', '夏利N5', '', '1', '0', '1514130066', '48900', '36900', '878', 'uploads/car/878.jpg');
INSERT INTO `cys_car_category` VALUES ('2840', '323', '夏利N7', '', '1', '0', '1514130066', '52900', '48900', '2781', 'uploads/car/2781.jpg');
INSERT INTO `cys_car_category` VALUES ('2841', '323', '骏派A70', '', '1', '0', '1514130066', '87800', '64800', '3979', 'uploads/car/3979.jpg');
INSERT INTO `cys_car_category` VALUES ('2842', '323', '骏派A70E', '', '1', '0', '1514130067', '183800', '168800', '4415', 'uploads/car/4415.jpg');
INSERT INTO `cys_car_category` VALUES ('2843', '323', '骏派D60', '', '1', '0', '1514130067', '89900', '56900', '3081', 'uploads/car/3081.jpg');
INSERT INTO `cys_car_category` VALUES ('2844', '323', '骏派A50', '', '1', '0', '1514130068', '0', '0', '4404', 'uploads/car/4404.jpg');
INSERT INTO `cys_car_category` VALUES ('2845', '323', '骏派CX65', '', '1', '0', '1514130070', '0', '0', '4405', 'uploads/car/4405.jpg');
INSERT INTO `cys_car_category` VALUES ('2846', '323', '威乐', '', '1', '0', '1514130070', '0', '0', '106', 'uploads/car/106.jpg');
INSERT INTO `cys_car_category` VALUES ('2847', '323', '威志', '', '1', '0', '1514130071', '0', '0', '444', 'uploads/car/444.jpg');
INSERT INTO `cys_car_category` VALUES ('2848', '323', '威志V2', '', '1', '0', '1514130071', '0', '0', '879', 'uploads/car/879.jpg');
INSERT INTO `cys_car_category` VALUES ('2849', '323', '威姿', '', '1', '0', '1514130071', '0', '0', '104', 'uploads/car/104.jpg');
INSERT INTO `cys_car_category` VALUES ('2850', '323', '夏利', '', '1', '0', '1514130071', '0', '0', '101', 'uploads/car/101.jpg');
INSERT INTO `cys_car_category` VALUES ('2851', '323', '一汽X121', '', '1', '0', '1514130072', '0', '0', '2795', 'uploads/car/2795.jpg');
INSERT INTO `cys_car_category` VALUES ('2852', '323', '一汽NH2', '', '1', '0', '1514130072', '0', '0', '2797', 'uploads/car/2797.jpg');
INSERT INTO `cys_car_category` VALUES ('2853', '323', '一汽TFC', '', '1', '0', '1514130072', '0', '0', '2159', 'uploads/car/2159.jpg');
INSERT INTO `cys_car_category` VALUES ('2854', '323', '一汽NS2', '', '1', '0', '1514130073', '0', '0', '2796', 'uploads/car/2796.jpg');
INSERT INTO `cys_car_category` VALUES ('2855', '324', '森雅R7', '', '1', '0', '1514130073', '102900', '66900', '3824', 'uploads/car/3824.jpg');
INSERT INTO `cys_car_category` VALUES ('2856', '324', '佳宝V52', '', '1', '0', '1514130073', '29200', '27200', '2469', 'uploads/car/2469.jpg');
INSERT INTO `cys_car_category` VALUES ('2857', '324', '佳宝V55', '', '1', '0', '1514130074', '32900', '32900', '2468', 'uploads/car/2468.jpg');
INSERT INTO `cys_car_category` VALUES ('2858', '324', '佳宝V75', '', '1', '0', '1514130074', '30900', '28900', '3775', 'uploads/car/3775.jpg');
INSERT INTO `cys_car_category` VALUES ('2859', '324', '佳宝V77', '', '1', '0', '1514130074', '35900', '30900', '3776', 'uploads/car/3776.jpg');
INSERT INTO `cys_car_category` VALUES ('2860', '324', '佳宝V80', '', '1', '0', '1514130074', '53900', '40900', '3052', 'uploads/car/3052.jpg');
INSERT INTO `cys_car_category` VALUES ('2861', '324', '佳宝T50', '', '1', '0', '1514130075', '34500', '32900', '2526', 'uploads/car/2526.jpg');
INSERT INTO `cys_car_category` VALUES ('2862', '324', '佳宝T51', '', '1', '0', '1514130075', '25500', '25500', '2525', 'uploads/car/2525.jpg');
INSERT INTO `cys_car_category` VALUES ('2863', '324', '佳宝T57', '', '1', '0', '1514130075', '30900', '29900', '2465', 'uploads/car/2465.jpg');
INSERT INTO `cys_car_category` VALUES ('2864', '324', '解放T80', '', '1', '0', '1514130076', '37900', '34900', '3459', 'uploads/car/3459.jpg');
INSERT INTO `cys_car_category` VALUES ('2865', '324', '森雅S80', '', '1', '0', '1514130076', '0', '0', '2131', 'uploads/car/2131.jpg');
INSERT INTO `cys_car_category` VALUES ('2866', '324', '森雅M80', '', '1', '0', '1514130076', '0', '0', '913', 'uploads/car/913.jpg');
INSERT INTO `cys_car_category` VALUES ('2867', '324', '佳宝V70', '', '1', '0', '1514130076', '48800', '36200', '2464', 'uploads/car/2464.jpg');
INSERT INTO `cys_car_category` VALUES ('2868', '324', '佳宝V70 II代', '', '1', '0', '1514130077', '50900', '34900', '2870', 'uploads/car/2870.jpg');
INSERT INTO `cys_car_category` VALUES ('2869', '325', '坤程', '', '1', '0', '1514130077', '66600', '60600', '2603', 'uploads/car/2603.jpg');
INSERT INTO `cys_car_category` VALUES ('2870', '261', '驭胜S330', '', '1', '0', '1514130078', '140800', '88800', '3777', 'uploads/car/3777.jpg');
INSERT INTO `cys_car_category` VALUES ('2871', '261', '驭胜S350', '', '1', '0', '1514130078', '166800', '122800', '2228', 'uploads/car/2228.jpg');
INSERT INTO `cys_car_category` VALUES ('2872', '170', '斯派卡', '', '1', '0', '1514130079', '0', '0', '4425', 'uploads/car/4425.jpg');
INSERT INTO `cys_car_category` VALUES ('2873', '170', '野马T70', '', '1', '0', '1514130079', '115800', '69800', '2888', 'uploads/car/2888.jpg');
INSERT INTO `cys_car_category` VALUES ('2874', '170', '野马T80', '', '1', '0', '1514130079', '139800', '89800', '3765', 'uploads/car/3765.jpg');
INSERT INTO `cys_car_category` VALUES ('2875', '170', '野马U能E350', '', '1', '0', '1514130079', '249800', '249800', '3906', 'uploads/car/3906.jpg');
INSERT INTO `cys_car_category` VALUES ('2876', '170', '野马EC30', '', '1', '0', '1514130080', '177200', '177200', '4510', 'uploads/car/4510.jpg');
INSERT INTO `cys_car_category` VALUES ('2877', '170', '野马C30', '', '1', '0', '1514130080', '0', '0', '3587', 'uploads/car/3587.jpg');
INSERT INTO `cys_car_category` VALUES ('2878', '170', '野马C18', '', '1', '0', '1514130080', '0', '0', '3588', 'uploads/car/3588.jpg');
INSERT INTO `cys_car_category` VALUES ('2879', '170', '野马F18', '', '1', '0', '1514130081', '0', '0', '3199', 'uploads/car/3199.jpg');
INSERT INTO `cys_car_category` VALUES ('2880', '170', '野马T60', '', '1', '0', '1514130081', '0', '0', '4434', 'uploads/car/4434.jpg');
INSERT INTO `cys_car_category` VALUES ('2881', '170', '野马T系', '', '1', '0', '1514130081', '0', '0', '2441', 'uploads/car/2441.jpg');
INSERT INTO `cys_car_category` VALUES ('2882', '170', '野马EC60', '', '1', '0', '1514130081', '0', '0', '4633', 'uploads/car/4633.jpg');
INSERT INTO `cys_car_category` VALUES ('2883', '170', '野马E系', '', '1', '0', '1514130082', '0', '0', '2442', 'uploads/car/2442.jpg');
INSERT INTO `cys_car_category` VALUES ('2884', '170', '野马F19', '', '1', '0', '1514130082', '0', '0', '2979', 'uploads/car/2979.jpg');
INSERT INTO `cys_car_category` VALUES ('2885', '170', '野马A-MPV', '', '1', '0', '1514130085', '0', '0', '2889', 'uploads/car/2889.jpg');
INSERT INTO `cys_car_category` VALUES ('2886', '170', '野马M302', '', '1', '0', '1514130085', '0', '0', '3003', 'uploads/car/3003.jpg');
INSERT INTO `cys_car_category` VALUES ('2887', '170', '野马M31D', '', '1', '0', '1514130085', '0', '0', '2887', 'uploads/car/2887.jpg');
INSERT INTO `cys_car_category` VALUES ('2888', '170', '野马M72', '', '1', '0', '1514130085', '0', '0', '3200', 'uploads/car/3200.jpg');
INSERT INTO `cys_car_category` VALUES ('2889', '170', '野马F10', '', '1', '0', '1514130086', '0', '0', '2378', 'uploads/car/2378.jpg');
INSERT INTO `cys_car_category` VALUES ('2890', '170', '野马F12', '', '1', '0', '1514130086', '0', '0', '2445', 'uploads/car/2445.jpg');
INSERT INTO `cys_car_category` VALUES ('2891', '170', '野马F16', '', '1', '0', '1514130086', '0', '0', '2440', 'uploads/car/2440.jpg');
INSERT INTO `cys_car_category` VALUES ('2892', '170', '野马F99', '', '1', '0', '1514130087', '0', '0', '939', 'uploads/car/939.jpg');
INSERT INTO `cys_car_category` VALUES ('2893', '326', '云度π1', '', '1', '0', '1514130087', '197500', '138900', '4320', 'uploads/car/4320.jpg');
INSERT INTO `cys_car_category` VALUES ('2894', '326', '云度Xπ', '', '1', '0', '1514130088', '0', '0', '4437', 'uploads/car/4437.jpg');
INSERT INTO `cys_car_category` VALUES ('2895', '326', '云度π3', '', '1', '0', '1514130088', '0', '0', '4321', 'uploads/car/4321.jpg');
INSERT INTO `cys_car_category` VALUES ('2896', '327', '依维柯Daily(欧胜)', '', '1', '0', '1514130089', '262900', '150000', '4580', 'uploads/car/4580.jpg');
INSERT INTO `cys_car_category` VALUES ('2897', '327', '依维柯Ouba', '', '1', '0', '1514130089', '447800', '270300', '4266', 'uploads/car/4266.jpg');
INSERT INTO `cys_car_category` VALUES ('2898', '327', '依维柯Power Daily', '', '1', '0', '1514130089', '317800', '130900', '2533', 'uploads/car/2533.jpg');
INSERT INTO `cys_car_category` VALUES ('2899', '327', '依维柯得意', '', '1', '0', '1514130089', '189900', '99900', '2532', 'uploads/car/2532.jpg');
INSERT INTO `cys_car_category` VALUES ('2900', '327', '依维柯Venice', '', '1', '0', '1514130090', '0', '0', '4267', 'uploads/car/4267.jpg');
INSERT INTO `cys_car_category` VALUES ('2901', '327', '都灵', '', '1', '0', '1514130090', '222000', '124900', '2531', 'uploads/car/2531.jpg');
INSERT INTO `cys_car_category` VALUES ('2902', '328', 'Campagnola', '', '1', '0', '1514130090', '0', '0', '2558', 'uploads/car/2558.jpg');
INSERT INTO `cys_car_category` VALUES ('2903', '328', 'Massif', '', '1', '0', '1514130091', '0', '0', '2559', 'uploads/car/2559.jpg');
INSERT INTO `cys_car_category` VALUES ('2904', '328', 'Iveco VISION', '', '1', '0', '1514130091', '0', '0', '3619', 'uploads/car/3619.jpg');
INSERT INTO `cys_car_category` VALUES ('2905', '329', '御捷E驰', '', '1', '0', '1514130092', '152800', '152800', '4508', 'uploads/car/4508.jpg');
INSERT INTO `cys_car_category` VALUES ('2906', '329', '御捷E行', '', '1', '0', '1514130092', '136800', '136800', '4589', 'uploads/car/4589.jpg');
INSERT INTO `cys_car_category` VALUES ('2907', '329', '捷顺', '', '1', '0', '1514130093', '0', '0', '3761', 'uploads/car/3761.jpg');
INSERT INTO `cys_car_category` VALUES ('2908', '329', '御捷330', '', '1', '0', '1514130093', '0', '0', '3762', 'uploads/car/3762.jpg');
INSERT INTO `cys_car_category` VALUES ('2909', '174', '宇通T7', '', '1', '0', '1514130094', '788000', '368000', '4484', 'uploads/car/4484.jpg');
INSERT INTO `cys_car_category` VALUES ('2910', '330', '裕路EV2', '', '1', '0', '1514130094', '122800', '119800', '4574', 'uploads/car/4574.jpg');
INSERT INTO `cys_car_category` VALUES ('2911', '331', '永源五星', '', '1', '0', '1514130095', '42800', '37800', '2828', 'uploads/car/2828.jpg');
INSERT INTO `cys_car_category` VALUES ('2912', '331', '猎鹰', '', '1', '0', '1514130095', '0', '0', '3087', 'uploads/car/3087.jpg');
INSERT INTO `cys_car_category` VALUES ('2913', '331', '永源A380', '', '1', '0', '1514130096', '0', '0', '424', 'uploads/car/424.jpg');
INSERT INTO `cys_car_category` VALUES ('2914', '332', '众泰T500', '', '1', '0', '1514130096', '0', '0', '4417', 'uploads/car/4417.jpg');
INSERT INTO `cys_car_category` VALUES ('2915', '332', '云100', '', '1', '0', '1514130096', '169900', '158900', '3575', 'uploads/car/3575.jpg');
INSERT INTO `cys_car_category` VALUES ('2916', '332', '芝麻', '', '1', '0', '1514130099', '119800', '119800', '3779', 'uploads/car/3779.jpg');
INSERT INTO `cys_car_category` VALUES ('2917', '332', '众泰E200', '', '1', '0', '1514130099', '185800', '181800', '3529', 'uploads/car/3529.jpg');
INSERT INTO `cys_car_category` VALUES ('2918', '332', '众泰Z360', '', '1', '0', '1514130100', '78800', '58800', '4371', 'uploads/car/4371.jpg');
INSERT INTO `cys_car_category` VALUES ('2919', '332', '众泰Z500EV', '', '1', '0', '1514130100', '229800', '209800', '4327', 'uploads/car/4327.jpg');
INSERT INTO `cys_car_category` VALUES ('2920', '332', '众泰Z560', '', '1', '0', '1514130100', '140800', '75800', '4317', 'uploads/car/4317.jpg');
INSERT INTO `cys_car_category` VALUES ('2921', '332', '众泰Z700', '', '1', '0', '1514130100', '165800', '99800', '3627', 'uploads/car/3627.jpg');
INSERT INTO `cys_car_category` VALUES ('2922', '332', '众泰T300', '', '1', '0', '1514130101', '93800', '56800', '2333', 'uploads/car/2333.jpg');
INSERT INTO `cys_car_category` VALUES ('2923', '332', '大迈X5', '', '1', '0', '1514130101', '111900', '69900', '3793', 'uploads/car/3793.jpg');
INSERT INTO `cys_car_category` VALUES ('2924', '332', '众泰SR7', '', '1', '0', '1514130101', '366670', '66800', '3899', 'uploads/car/3899.jpg');
INSERT INTO `cys_car_category` VALUES ('2925', '332', '大迈X7', '', '1', '0', '1514130102', '159900', '106900', '4092', 'uploads/car/4092.jpg');
INSERT INTO `cys_car_category` VALUES ('2926', '332', '众泰SR9', '', '1', '0', '1514130102', '169800', '108800', '4070', 'uploads/car/4070.jpg');
INSERT INTO `cys_car_category` VALUES ('2927', '332', '众泰T600', '', '1', '0', '1514130102', '149800', '79800', '2334', 'uploads/car/2334.jpg');
INSERT INTO `cys_car_category` VALUES ('2928', '332', '众泰T600 Coupe', '', '1', '0', '1514130102', '146800', '86800', '4385', 'uploads/car/4385.jpg');
INSERT INTO `cys_car_category` VALUES ('2929', '332', '众泰T700', '', '1', '0', '1514130103', '155800', '106800', '3852', 'uploads/car/3852.jpg');
INSERT INTO `cys_car_category` VALUES ('2930', '332', '众泰V10', '', '1', '0', '1514130103', '50800', '37800', '2480', 'uploads/car/2480.jpg');
INSERT INTO `cys_car_category` VALUES ('2931', '332', '众泰E20', '', '1', '0', '1514130103', '0', '0', '3447', 'uploads/car/3447.jpg');
INSERT INTO `cys_car_category` VALUES ('2932', '332', '众泰SR9新能源', '', '1', '0', '1514130103', '0', '0', '4507', 'uploads/car/4507.jpg');
INSERT INTO `cys_car_category` VALUES ('2933', '332', '众泰B40', '', '1', '0', '1514130104', '0', '0', '4521', 'uploads/car/4521.jpg');
INSERT INTO `cys_car_category` VALUES ('2934', '332', '众泰M300', '', '1', '0', '1514130104', '0', '0', '708', 'uploads/car/708.jpg');
INSERT INTO `cys_car_category` VALUES ('2935', '332', '江南T11', '', '1', '0', '1514130104', '0', '0', '4038', 'uploads/car/4038.jpg');
INSERT INTO `cys_car_category` VALUES ('2936', '332', '江南TT', '', '1', '0', '1514130104', '0', '0', '2230', 'uploads/car/2230.jpg');
INSERT INTO `cys_car_category` VALUES ('2937', '332', '众泰Z100', '', '1', '0', '1514130105', '0', '0', '3002', 'uploads/car/3002.jpg');
INSERT INTO `cys_car_category` VALUES ('2938', '332', '众泰Z200', '', '1', '0', '1514130105', '0', '0', '2161', 'uploads/car/2161.jpg');
INSERT INTO `cys_car_category` VALUES ('2939', '332', '众泰Z200HB', '', '1', '0', '1514130105', '0', '0', '2171', 'uploads/car/2171.jpg');
INSERT INTO `cys_car_category` VALUES ('2940', '332', '众泰Z300', '', '1', '0', '1514130106', '0', '0', '2337', 'uploads/car/2337.jpg');
INSERT INTO `cys_car_category` VALUES ('2941', '332', '众泰Z500', '', '1', '0', '1514130106', '0', '0', '3425', 'uploads/car/3425.jpg');
INSERT INTO `cys_car_category` VALUES ('2942', '332', '众泰2008', '', '1', '0', '1514130106', '0', '0', '558', 'uploads/car/558.jpg');
INSERT INTO `cys_car_category` VALUES ('2943', '332', '众泰5008', '', '1', '0', '1514130107', '0', '0', '663', 'uploads/car/663.jpg');
INSERT INTO `cys_car_category` VALUES ('2944', '332', '众泰T200', '', '1', '0', '1514130107', '0', '0', '2336', 'uploads/car/2336.jpg');
INSERT INTO `cys_car_category` VALUES ('2945', '333', '中华豚', '', '1', '0', '1514130107', '45800', '39800', '3289', 'uploads/car/3289.jpg');
INSERT INTO `cys_car_category` VALUES ('2946', '333', '中华H220', '', '1', '0', '1514130108', '67800', '54800', '2999', 'uploads/car/2999.jpg');
INSERT INTO `cys_car_category` VALUES ('2947', '333', '中华H230', '', '1', '0', '1514130108', '68800', '55800', '2770', 'uploads/car/2770.jpg');
INSERT INTO `cys_car_category` VALUES ('2948', '333', '中华H230EV', '', '1', '0', '1514130108', '179800', '169800', '4309', 'uploads/car/4309.jpg');
INSERT INTO `cys_car_category` VALUES ('2949', '333', '中华H3', '', '1', '0', '1514130109', '88900', '63900', '3878', 'uploads/car/3878.jpg');
INSERT INTO `cys_car_category` VALUES ('2950', '333', '中华H330', '', '1', '0', '1514130109', '75800', '65800', '2998', 'uploads/car/2998.jpg');
INSERT INTO `cys_car_category` VALUES ('2951', '333', '中华H530', '', '1', '0', '1514130109', '95800', '85800', '2323', 'uploads/car/2323.jpg');
INSERT INTO `cys_car_category` VALUES ('2952', '333', '中华V3', '', '1', '0', '1514130109', '102700', '65700', '3530', 'uploads/car/3530.jpg');
INSERT INTO `cys_car_category` VALUES ('2953', '333', '中华V5', '', '1', '0', '1514130110', '145800', '89800', '2294', 'uploads/car/2294.jpg');
INSERT INTO `cys_car_category` VALUES ('2954', '333', '中华V6', '', '1', '0', '1514130110', '141900', '87900', '4498', 'uploads/car/4498.jpg');
INSERT INTO `cys_car_category` VALUES ('2955', '333', '中华EV', '', '1', '0', '1514130110', '0', '0', '3796', 'uploads/car/3796.jpg');
INSERT INTO `cys_car_category` VALUES ('2956', '333', '中华C3', '', '1', '0', '1514130110', '0', '0', '3095', 'uploads/car/3095.jpg');
INSERT INTO `cys_car_category` VALUES ('2957', '333', '中华V7', '', '1', '0', '1514130111', '0', '0', '4503', 'uploads/car/4503.jpg');
INSERT INTO `cys_car_category` VALUES ('2958', '333', '中华H320', '', '1', '0', '1514130111', '0', '0', '2857', 'uploads/car/2857.jpg');
INSERT INTO `cys_car_category` VALUES ('2959', '333', '中华骏捷Cross', '', '1', '0', '1514130114', '0', '0', '860', 'uploads/car/860.jpg');
INSERT INTO `cys_car_category` VALUES ('2960', '333', '中华骏捷FRV', '', '1', '0', '1514130114', '0', '0', '523', 'uploads/car/523.jpg');
INSERT INTO `cys_car_category` VALUES ('2961', '333', '中华骏捷FSV', '', '1', '0', '1514130114', '0', '0', '825', 'uploads/car/825.jpg');
INSERT INTO `cys_car_category` VALUES ('2962', '333', '中华骏捷', '', '1', '0', '1514130115', '0', '0', '411', 'uploads/car/411.jpg');
INSERT INTO `cys_car_category` VALUES ('2963', '333', '中华尊驰', '', '1', '0', '1514130115', '0', '0', '130', 'uploads/car/130.jpg');
INSERT INTO `cys_car_category` VALUES ('2964', '333', '中华酷宝', '', '1', '0', '1514130115', '0', '0', '490', 'uploads/car/490.jpg');
INSERT INTO `cys_car_category` VALUES ('2965', '334', '中兴C3', '', '1', '0', '1514130116', '58800', '58800', '2658', 'uploads/car/2658.jpg');
INSERT INTO `cys_car_category` VALUES ('2966', '334', '中兴GX3', '', '1', '0', '1514130116', '69800', '63800', '3644', 'uploads/car/3644.jpg');
INSERT INTO `cys_car_category` VALUES ('2967', '335', '领主', '', '1', '0', '1514130117', '161800', '89800', '4178', 'uploads/car/4178.jpg');
INSERT INTO `cys_car_category` VALUES ('2968', '335', '威虎', '', '1', '0', '1514130117', '119800', '70800', '2519', 'uploads/car/2519.jpg');
INSERT INTO `cys_car_category` VALUES ('2969', '335', '小老虎', '', '1', '0', '1514130117', '77900', '63800', '3881', 'uploads/car/3881.jpg');
INSERT INTO `cys_car_category` VALUES ('2970', '335', '中兴CP2', '', '1', '0', '1514130117', '0', '0', '3115', 'uploads/car/3115.jpg');
INSERT INTO `cys_car_category` VALUES ('2971', '335', '威虎SUV', '', '1', '0', '1514130118', '0', '0', '3123', 'uploads/car/3123.jpg');
INSERT INTO `cys_car_category` VALUES ('2972', '335', '小老虎EV', '', '1', '0', '1514130118', '0', '0', '4458', 'uploads/car/4458.jpg');
INSERT INTO `cys_car_category` VALUES ('2973', '335', '陆地方舟', '', '1', '0', '1514130118', '0', '0', '3127', 'uploads/car/3127.jpg');
INSERT INTO `cys_car_category` VALUES ('2974', '335', '驰野-鑫精英', '', '1', '0', '1514130119', '0', '0', '628', 'uploads/car/628.jpg');
INSERT INTO `cys_car_category` VALUES ('2975', '335', '无限', '', '1', '0', '1514130119', '0', '0', '2850', 'uploads/car/2850.jpg');
INSERT INTO `cys_car_category` VALUES ('2976', '335', '无限V3', '', '1', '0', '1514130119', '0', '0', '627', 'uploads/car/627.jpg');
INSERT INTO `cys_car_category` VALUES ('2977', '335', '无限V5', '', '1', '0', '1514130119', '0', '0', '2081', 'uploads/car/2081.jpg');
INSERT INTO `cys_car_category` VALUES ('2978', '335', '无限V7', '', '1', '0', '1514130120', '0', '0', '2143', 'uploads/car/2143.jpg');
INSERT INTO `cys_car_category` VALUES ('2979', '335', '昌铃', '', '1', '0', '1514130120', '65900', '59900', '2522', 'uploads/car/2522.jpg');
INSERT INTO `cys_car_category` VALUES ('2980', '335', '旗舰A9', '', '1', '0', '1514130120', '59900', '53900', '2613', 'uploads/car/2613.jpg');
INSERT INTO `cys_car_category` VALUES ('2981', '335', '威虎G3', '', '1', '0', '1514130120', '99800', '61800', '3215', 'uploads/car/3215.jpg');
INSERT INTO `cys_car_category` VALUES ('2982', '336', '知豆D3', '', '1', '0', '1514130121', '0', '0', '4597', 'uploads/car/4597.jpg');
INSERT INTO `cys_car_category` VALUES ('2983', '336', '知豆D1', '', '1', '0', '1514130121', '158800', '158800', '3706', 'uploads/car/3706.jpg');
INSERT INTO `cys_car_category` VALUES ('2984', '336', '知豆D2', '', '1', '0', '1514130122', '188800', '151800', '3827', 'uploads/car/3827.jpg');
INSERT INTO `cys_car_category` VALUES ('2985', '336', '知豆', '', '1', '0', '1514130122', '0', '0', '3497', 'uploads/car/3497.jpg');
INSERT INTO `cys_car_category` VALUES ('2986', '195', '之诺1E', '', '1', '0', '1514130123', '0', '0', '3237', 'uploads/car/3237.jpg');
INSERT INTO `cys_car_category` VALUES ('2987', '195', '之诺60H', '', '1', '0', '1514130123', '349000', '349000', '4146', 'uploads/car/4146.jpg');
INSERT INTO `cys_car_category` VALUES ('2988', '195', 'Next', '', '1', '0', '1514130123', '0', '0', '3816', 'uploads/car/3816.jpg');

-- ----------------------------
-- Table structure for cys_car_info
-- ----------------------------
DROP TABLE IF EXISTS `cys_car_info`;
CREATE TABLE `cys_car_info` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) DEFAULT NULL COMMENT '所属车系id',
  `car_name` varchar(255) DEFAULT '',
  `car_power` varchar(255) DEFAULT NULL COMMENT '马力',
  `car_data` varchar(255) DEFAULT NULL COMMENT '所属年份',
  PRIMARY KEY (`car_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cys_car_info
-- ----------------------------
INSERT INTO `cys_car_info` VALUES ('1', '136', '\r\n1.5L LX 手动舒适型', '1.5升 131马力', '2014');
INSERT INTO `cys_car_info` VALUES ('2', '136', '1.5L EXLI CVT领先型', '1.5升 131马力', '2014');
INSERT INTO `cys_car_info` VALUES ('3', '2', '30周年年型 30 TFSI 进取型', '1.4升 涡轮增压 150马力', '2017');
INSERT INTO `cys_car_info` VALUES ('4', '2', '30周年年型 45 TFSI quattro 个性运动版', '2.0升 涡轮增压 252马力', '2018');
INSERT INTO `cys_car_info` VALUES ('5', '136', '1.5L LX 手动舒适型', '1.5升 131马力', '2016');
INSERT INTO `cys_car_info` VALUES ('6', '2', '40 TFSI quattro个性运动型', '2.0升 涡轮增压 211马力', '2013');

-- ----------------------------
-- Table structure for extension
-- ----------------------------
DROP TABLE IF EXISTS `extension`;
CREATE TABLE `extension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_id` varchar(45) DEFAULT NULL COMMENT '信息ID',
  `field_name` varchar(45) DEFAULT NULL COMMENT '字段',
  `meaning` varchar(100) DEFAULT NULL COMMENT '字段意思',
  `value` varchar(225) DEFAULT NULL COMMENT '字段值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of extension
-- ----------------------------
