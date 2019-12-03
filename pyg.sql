/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : pyg

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-12-03 19:14:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pyg_address`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_address`;
CREATE TABLE `pyg_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `consignee` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `province` int(11) DEFAULT NULL COMMENT '省份编码',
  `city` int(11) DEFAULT NULL COMMENT '城市编码',
  `district` int(11) DEFAULT NULL COMMENT '县区编码',
  `area` varchar(255) DEFAULT NULL COMMENT '省市区名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认：0否 1是',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL COMMENT '软删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_address
-- ----------------------------
INSERT INTO `pyg_address` VALUES ('1', '1', '小小', '19912345678', null, null, null, '北京市顺义区', '马坡镇黑马程序员', '1', null, null, null);
INSERT INTO `pyg_address` VALUES ('2', '2', '小小', '19987654232', '130000', '130100', '130105', '河北省石家庄市新华区', '通天大道88号', '0', '1554472230', '1554472479', null);
INSERT INTO `pyg_address` VALUES ('3', '2', '小小', '19987654232', '130000', '130100', '130102', '河北省石家庄市长安区', '通天大道98号', '1', '1554472253', '1554472253', null);
INSERT INTO `pyg_address` VALUES ('5', '2', '小小', '19987654232', '130000', '130100', '130105', '河北省石家庄市新华区', '通天大道98号', '0', '1554472308', '1554472308', null);

-- ----------------------------
-- Table structure for `pyg_admin`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_admin`;
CREATE TABLE `pyg_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `last_login_time` int(11) unsigned DEFAULT NULL COMMENT '上次登录时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态：1可用 2禁用',
  `role_id` tinyint(3) NOT NULL DEFAULT '0' COMMENT '角色id',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_admin
-- ----------------------------
INSERT INTO `pyg_admin` VALUES ('1', 'admin', '6ae150fa0f939a14abb244eadb4fc868', 'admin@itcast.cn', '大佬', '0', '1', '1', '1559527912', null, null);
INSERT INTO `pyg_admin` VALUES ('2', 'sunquan', '6ae150fa0f939a14abb244eadb4fc868', 'sunquan@itcast.cn', '骑鱼的猫', '0', '1', '2', '1520408547', null, null);
INSERT INTO `pyg_admin` VALUES ('3', 'liubei', '8ea6eaee0c5819e756b604c998639b13', 'liubei@itcast.cn', '地球是我搓圆的', '0', '1', '2', '1520408547', null, null);
INSERT INTO `pyg_admin` VALUES ('4', 'caocao', '8ea6eaee0c5819e756b604c998639b13', 'ao@itcast.cn', '除', '0', '1', '1', '1520408547', '1559835937', null);
INSERT INTO `pyg_admin` VALUES ('5', 'dongzhuo', '8ea6eaee0c5819e756b604c998639b13', 'dong@itcast.cn', '朕好萌111', '0', '0', '3', '1520408547', '1559835899', null);
INSERT INTO `pyg_admin` VALUES ('6', 'yuanshao', '8ea6eaee0c5819e756b604c998639b13', 'yuanshao@itcast.cn', '骑着蜗牛周游世界', '0', '0', '3', '1520408547', null, null);
INSERT INTO `pyg_admin` VALUES ('7', 'diaochan', '8ea6eaee0c5819e756b604c998639b13', 'diaochan@itcast.cn', '住我心，免房租', '0', '1', '3', '1520408547', null, null);
INSERT INTO `pyg_admin` VALUES ('8', 'ss', '8ea6eaee0c5819e756b604c998639b13', 'ss!qq@qq.com', 'qqqqq', null, '1', '3', '1559825145', '1559836226', null);
INSERT INTO `pyg_admin` VALUES ('12', '测试', '6ae150fa0f939a14abb244eadb4fc868', '123456@qq.com', '测试', null, '1', '1', '1574848702', '1574851976', null);

-- ----------------------------
-- Table structure for `pyg_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_attribute`;
CREATE TABLE `pyg_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `attr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性名称',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '类型id',
  `attr_values` varchar(255) DEFAULT NULL COMMENT '可选值',
  `sort` tinyint(2) DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_attribute
-- ----------------------------
INSERT INTO `pyg_attribute` VALUES ('7', '毛重', '16', '', '0', '1558002440', '1558002440', null);
INSERT INTO `pyg_attribute` VALUES ('8', '产地', '16', '', '0', '1558002440', '1558002440', null);

-- ----------------------------
-- Table structure for `pyg_auth`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_auth`;
CREATE TABLE `pyg_auth` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(20) NOT NULL COMMENT '权限名称',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父id',
  `pid_path` varchar(255) DEFAULT '' COMMENT '家族图谱',
  `level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '级别：0,1,2',
  `auth_c` varchar(32) NOT NULL DEFAULT '' COMMENT '控制器',
  `auth_a` varchar(32) NOT NULL DEFAULT '' COMMENT '操作方法',
  `is_nav` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否作为菜单显示 1是 0否',
  `sort` smallint(6) DEFAULT '50' COMMENT '排序',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_auth
-- ----------------------------
INSERT INTO `pyg_auth` VALUES ('1', '首页', '0', '0', '0', '', '', '1', '50', '1559031589', '1559112721', null);
INSERT INTO `pyg_auth` VALUES ('2', '平台', '0', '0', '0', '', '', '1', '50', '1559031611', '1559031611', null);
INSERT INTO `pyg_auth` VALUES ('3', '商城', '0', '0', '0', '', '', '1', '50', '1559031622', '1559031742', null);
INSERT INTO `pyg_auth` VALUES ('4', '运营', '0', '0', '0', '', '', '1', '50', '1559031644', '1559031644', null);
INSERT INTO `pyg_auth` VALUES ('5', '系统配置', '2', '0_2', '1', '', '', '1', '50', '1559031790', '1559031790', null);
INSERT INTO `pyg_auth` VALUES ('6', '权限管理', '2', '0_2', '1', '', '', '1', '50', '1559031799', '1559031799', null);
INSERT INTO `pyg_auth` VALUES ('7', '配置管理', '5', '0_2_5', '2', '', '', '1', '50', '1559031820', '1559031820', null);
INSERT INTO `pyg_auth` VALUES ('8', '网站设置', '5', '0_2_5', '2', '', '', '1', '50', '1559032061', '1559032061', null);
INSERT INTO `pyg_auth` VALUES ('9', '附件管理', '5', '0_2_5', '2', '', '', '1', '50', '1559032078', '1559032078', null);
INSERT INTO `pyg_auth` VALUES ('10', '菜单管理', '5', '0_2_5', '2', 'auth', 'index', '1', '50', '1559032094', '1559035686', null);
INSERT INTO `pyg_auth` VALUES ('11', '管理员管理', '6', '0_2_6', '2', 'admin', 'index', '1', '50', '1559032527', '1559204488', null);
INSERT INTO `pyg_auth` VALUES ('12', '角色管理', '6', '0_2_6', '2', 'role', 'index', '1', '50', '1559032545', '1559035726', null);
INSERT INTO `pyg_auth` VALUES ('13', '管理日志', '6', '0_2_6', '2', '', '', '1', '50', '1559032555', '1559032555', null);
INSERT INTO `pyg_auth` VALUES ('14', '订单管理', '3', '0_3', '1', '', '', '1', '50', '1559032641', '1559032641', null);
INSERT INTO `pyg_auth` VALUES ('15', '商品管理', '3', '0_3', '1', '', '', '1', '50', '1559032650', '1559032650', null);
INSERT INTO `pyg_auth` VALUES ('16', '会员管理', '3', '0_3', '1', '', '', '1', '50', '1559032665', '1559032665', null);
INSERT INTO `pyg_auth` VALUES ('17', '基础设置', '3', '0_3', '1', '', '', '1', '50', '1559032676', '1559032676', null);
INSERT INTO `pyg_auth` VALUES ('18', '众筹管理', '3', '0_3', '1', '', '', '1', '50', '1559032686', '1559032686', null);
INSERT INTO `pyg_auth` VALUES ('19', '订单管理', '14', '0_3_14', '2', 'order', 'index', '1', '50', '1559032717', '1559209300', null);
INSERT INTO `pyg_auth` VALUES ('20', '投诉订单', '14', '0_3_14', '2', '', '', '1', '50', '1559032726', '1559032726', null);
INSERT INTO `pyg_auth` VALUES ('21', '退款订单', '14', '0_3_14', '2', '', '', '1', '50', '1559032726', '1559032746', null);
INSERT INTO `pyg_auth` VALUES ('22', '商品分类', '15', '0_3_15', '2', 'category', 'index', '1', '50', '1559032776', '1559035646', null);
INSERT INTO `pyg_auth` VALUES ('23', '商品品牌', '15', '0_3_15', '2', 'brand', 'index', '1', '50', '1559032787', '1559035747', null);
INSERT INTO `pyg_auth` VALUES ('24', '商品模型', '15', '0_3_15', '2', 'type', 'index', '1', '50', '1559032809', '1559035757', null);
INSERT INTO `pyg_auth` VALUES ('25', '商品列表', '15', '0_3_15', '2', 'goods', 'index', '1', '50', '1559032818', '1559035765', null);
INSERT INTO `pyg_auth` VALUES ('26', '回收站', '15', '0_3_15', '2', '', '', '1', '50', '1559032886', '1559032886', null);
INSERT INTO `pyg_auth` VALUES ('27', '商品属性', '15', '0_3_15', '2', '', '', '1', '50', '1559032924', '1559032924', null);
INSERT INTO `pyg_auth` VALUES ('28', '商品规格', '15', '0_3_15', '2', '', '', '1', '50', '1559032935', '1559032935', null);
INSERT INTO `pyg_auth` VALUES ('29', '评价管理', '15', '0_3_15', '2', '', '', '1', '50', '1559032948', '1559032948', null);
INSERT INTO `pyg_auth` VALUES ('30', '举报管理', '15', '0_3_15', '2', '', '', '1', '50', '1559032958', '1559032958', null);
INSERT INTO `pyg_auth` VALUES ('31', '商品咨询', '15', '0_3_15', '2', '', '', '1', '50', '1559032968', '1559032968', null);
INSERT INTO `pyg_auth` VALUES ('32', '会员等级', '16', '0_3_16', '2', '', '', '1', '50', '1559032987', '1559032987', null);
INSERT INTO `pyg_auth` VALUES ('33', '会员管理', '16', '0_3_16', '2', '', '', '1', '50', '1559032994', '1559032994', null);
INSERT INTO `pyg_auth` VALUES ('34', '广告管理', '17', '0_3_17', '2', '', '', '1', '50', '1559033018', '1559033018', null);
INSERT INTO `pyg_auth` VALUES ('35', '银行管理', '17', '0_3_17', '2', '', '', '1', '50', '1559033028', '1559033028', null);
INSERT INTO `pyg_auth` VALUES ('36', '支付管理', '17', '0_3_17', '2', '', '', '1', '50', '1559033037', '1559033037', null);
INSERT INTO `pyg_auth` VALUES ('37', '众筹管理', '18', '0_3_18', '2', '', '', '1', '50', '1559033056', '1559033056', null);
INSERT INTO `pyg_auth` VALUES ('38', '促销管理', '4', '0_4', '1', '', '', '1', '50', '1559033077', '1559033077', null);
INSERT INTO `pyg_auth` VALUES ('39', '推荐管理', '4', '0_4', '1', '', '', '1', '50', '1559033085', '1559033085', null);
INSERT INTO `pyg_auth` VALUES ('40', '统计报表', '4', '0_4', '1', '', '', '1', '50', '1559033097', '1559033097', null);
INSERT INTO `pyg_auth` VALUES ('41', '财务管理', '4', '0_4', '1', '', '', '1', '50', '1559033107', '1559033107', null);
INSERT INTO `pyg_auth` VALUES ('42', '店铺推荐', '39', '0_4_39', '2', '', '', '1', '50', '1559033132', '1559033132', null);
INSERT INTO `pyg_auth` VALUES ('43', '商品推荐', '39', '0_4_39', '2', '', '', '1', '50', '1559033142', '1559033142', null);
INSERT INTO `pyg_auth` VALUES ('44', '品牌推荐', '39', '0_4_39', '2', '', '', '1', '50', '1559033151', '1559033151', null);
INSERT INTO `pyg_auth` VALUES ('45', '商品销售排行', '40', '0_4_40', '2', '', '', '1', '50', '1559033169', '1559033169', null);
INSERT INTO `pyg_auth` VALUES ('46', '店铺销售排行', '40', '0_4_40', '2', '', '', '1', '50', '1559033183', '1559033183', null);
INSERT INTO `pyg_auth` VALUES ('47', '销售额统计', '40', '0_4_40', '2', '', '', '1', '50', '1559033209', '1559033209', null);
INSERT INTO `pyg_auth` VALUES ('48', '销售订单统计', '40', '0_4_40', '2', '', '', '1', '50', '1559033222', '1559033222', null);
INSERT INTO `pyg_auth` VALUES ('49', '新增会员统计', '40', '0_4_40', '2', '', '', '1', '50', '1559033232', '1559033232', null);
INSERT INTO `pyg_auth` VALUES ('50', '资金管理', '41', '0_4_41', '2', '', '', '1', '50', '1559033245', '1559033245', null);
INSERT INTO `pyg_auth` VALUES ('51', '提现申请', '41', '0_4_41', '2', '', '', '1', '50', '1559033260', '1559033260', null);
INSERT INTO `pyg_auth` VALUES ('52', '结算申请', '41', '0_4_41', '2', '', '', '1', '50', '1559033272', '1559033272', null);
INSERT INTO `pyg_auth` VALUES ('53', '商家结算', '41', '0_4_41', '2', '', '', '1', '50', '1559033282', '1559033282', null);
INSERT INTO `pyg_auth` VALUES ('54', '删除日志', '13', '0_2_6_13', '3', '', '', '0', '50', '1559039359', '1559039373', null);
INSERT INTO `pyg_auth` VALUES ('55', '添加角色', '12', '0_2_6_12', '3', 'role', 'create', '0', '50', '1559039478', '1559039478', null);
INSERT INTO `pyg_auth` VALUES ('56', '添加角色-保存', '12', '0_2_6_12', '3', 'role', 'save', '0', '50', '1559039508', '1559039508', null);
INSERT INTO `pyg_auth` VALUES ('57', '修改角色', '12', '0_2_6_12', '3', 'role', 'edit', '0', '50', '1559039530', '1559039530', null);
INSERT INTO `pyg_auth` VALUES ('58', '修改角色-保存', '12', '0_2_6_12', '3', 'role', 'update', '0', '50', '1559039552', '1559039580', null);
INSERT INTO `pyg_auth` VALUES ('59', '删除角色', '12', '0_2_6_12', '3', 'role', 'delete', '0', '50', '1559039552', '1559039601', null);
INSERT INTO `pyg_auth` VALUES ('60', '添加管理员', '11', '0_2_6_11', '3', 'admin', 'create', '0', '50', '1559039643', '1559204498', null);
INSERT INTO `pyg_auth` VALUES ('61', '添加管理员-保存', '11', '0_2_6_11', '3', 'admin', 'save', '0', '50', '1559093807', '1559093807', null);
INSERT INTO `pyg_auth` VALUES ('62', '修改管理员', '11', '0_2_6_11', '3', 'admin', 'edit', '0', '50', '1559093823', '1559093823', null);
INSERT INTO `pyg_auth` VALUES ('63', '修改管理员-保存', '11', '0_2_6_11', '3', 'admin', 'update', '0', '50', '1559093832', '1559093832', null);
INSERT INTO `pyg_auth` VALUES ('64', '删除管理员', '11', '0_2_6_11', '3', 'admin', 'delete', '0', '50', '1559093843', '1559093843', null);
INSERT INTO `pyg_auth` VALUES ('65', '添加权限', '10', '0_2_5_10', '3', 'auth', 'create', '0', '50', '1559093901', '1559093901', null);
INSERT INTO `pyg_auth` VALUES ('66', '添加权限-保存', '10', '0_2_5_10', '3', 'auth', 'save', '0', '50', '1559093916', '1559093916', null);
INSERT INTO `pyg_auth` VALUES ('67', '修改权限', '10', '0_2_5_10', '3', 'auth', 'edit', '0', '50', '1559093929', '1559093929', null);
INSERT INTO `pyg_auth` VALUES ('68', '修改权限-保存', '10', '0_2_5_10', '3', 'auth', 'update', '0', '50', '1559093939', '1559093939', null);
INSERT INTO `pyg_auth` VALUES ('69', '删除权限', '10', '0_2_5_10', '3', 'auth', 'delete', '0', '50', '1559093951', '1559093951', null);
INSERT INTO `pyg_auth` VALUES ('70', '添加商品分类', '22', '0_3_15_22', '3', 'category', 'create', '0', '50', '1559094006', '1559094006', null);
INSERT INTO `pyg_auth` VALUES ('71', '添加商品分类-保存', '22', '0_3_15_22', '3', 'category', 'save', '0', '50', '1559094019', '1559094019', null);
INSERT INTO `pyg_auth` VALUES ('72', '修改商品分类', '22', '0_3_15_22', '3', 'category', 'edit', '0', '50', '1559094033', '1559094033', null);
INSERT INTO `pyg_auth` VALUES ('73', '修改商品分类-保存', '22', '0_3_15_22', '3', 'category', 'update', '0', '50', '1559094042', '1559094042', null);
INSERT INTO `pyg_auth` VALUES ('74', '删除商品分类', '22', '0_3_15_22', '3', 'category', 'delete', '0', '50', '1559094055', '1559094055', null);
INSERT INTO `pyg_auth` VALUES ('75', '添加商品品牌', '23', '0_3_15_23', '3', 'brand', 'create', '0', '50', '1559094088', '1559094088', null);
INSERT INTO `pyg_auth` VALUES ('76', '添加商品品牌-保存', '23', '0_3_15_23', '3', 'brand', 'save', '0', '50', '1559094094', '1559094094', null);
INSERT INTO `pyg_auth` VALUES ('77', '修改商品品牌', '23', '0_3_15_23', '3', 'brand', 'edit', '0', '50', '1559094104', '1559094104', null);
INSERT INTO `pyg_auth` VALUES ('78', '修改商品品牌-保存', '23', '0_3_15_23', '3', 'brand', 'update', '0', '50', '1559094115', '1559094115', null);
INSERT INTO `pyg_auth` VALUES ('79', '删除商品品牌', '23', '0_3_15_23', '3', 'brand', 'delete', '0', '50', '1559094126', '1559094126', null);
INSERT INTO `pyg_auth` VALUES ('80', '添加商品模型', '24', '0_3_15_24', '3', 'type', 'create', '0', '50', '1559094161', '1559094161', null);
INSERT INTO `pyg_auth` VALUES ('81', '添加商品模型-保存', '24', '0_3_15_24', '3', 'type', 'save', '0', '50', '1559094171', '1559094171', null);
INSERT INTO `pyg_auth` VALUES ('82', '修改商品模型', '24', '0_3_15_24', '3', 'type', 'edit', '0', '50', '1559094181', '1559094181', null);
INSERT INTO `pyg_auth` VALUES ('83', '修改商品模型-保存', '24', '0_3_15_24', '3', 'type', 'update', '0', '50', '1559094186', '1559094186', null);
INSERT INTO `pyg_auth` VALUES ('84', '删除商品模型', '24', '0_3_15_24', '3', 'type', 'delete', '0', '50', '1559094197', '1559094197', null);
INSERT INTO `pyg_auth` VALUES ('85', '添加商品', '25', '0_3_15_25', '3', 'goods', 'create', '0', '50', '1559094218', '1559094218', null);
INSERT INTO `pyg_auth` VALUES ('86', '添加商品-保存', '25', '0_3_15_25', '3', 'goods', 'save', '0', '50', '1559094236', '1559094236', null);
INSERT INTO `pyg_auth` VALUES ('87', '修改商品', '25', '0_3_15_25', '3', 'goods', 'edit', '0', '50', '1559094249', '1559094249', null);
INSERT INTO `pyg_auth` VALUES ('88', '修改商品-保存', '25', '0_3_15_25', '3', 'goods', 'update', '0', '50', '1559094255', '1559094255', null);
INSERT INTO `pyg_auth` VALUES ('89', '删除商品', '25', '0_3_15_25', '3', 'goods', 'delete', '0', '50', '1559094264', '1559094264', null);
INSERT INTO `pyg_auth` VALUES ('90', '首页', '1', '0_1', '1', '', '', '1', '50', '1559112545', '1559112733', null);
INSERT INTO `pyg_auth` VALUES ('91', '首页', '90', '0_1_90', '2', 'index', 'index', '1', '50', '1559112684', '1559112739', null);
INSERT INTO `pyg_auth` VALUES ('92', '接口', '0', '0', '0', '', '', '0', '50', '1559208955', '1559208955', null);
INSERT INTO `pyg_auth` VALUES ('93', '图片验证码', '92', '0_92', '1', 'login', 'captcha', '0', '50', '1559208994', '1559208994', null);
INSERT INTO `pyg_auth` VALUES ('94', '登录', '92', '0_92', '1', 'login', 'login', '0', '50', '1559209013', '1559209013', null);
INSERT INTO `pyg_auth` VALUES ('95', '退出', '92', '0_92', '1', 'login', 'logout', '0', '50', '1559209027', '1559209027', null);
INSERT INTO `pyg_auth` VALUES ('96', '获取菜单权限', '92', '0_92', '1', 'auth', 'nav', '0', '50', '1559209142', '1559209142', null);
INSERT INTO `pyg_auth` VALUES ('97', 'logo图片上传', '92', '0_92', '1', '', '', '0', '50', '1559209186', '1559209186', null);
INSERT INTO `pyg_auth` VALUES ('98', '多图片上传', '92', '0_92', '1', '', '', '0', '50', '1559209195', '1559209195', null);
INSERT INTO `pyg_auth` VALUES ('99', '相册图片删除', '25', '0_3_15_25', '3', 'goods', 'delpics', '0', '50', '1559209259', '1559209259', null);
INSERT INTO `pyg_auth` VALUES ('100', '订单修改', '19', '0_3_14_19', '3', 'order', 'edit', '0', '50', '1559209334', '1559209334', null);
INSERT INTO `pyg_auth` VALUES ('101', '订单修改-保存', '19', '0_3_14_19', '3', 'order', 'update', '0', '50', '1559209342', '1559209342', null);
INSERT INTO `pyg_auth` VALUES ('102', '订单删除', '19', '0_3_14_19', '3', 'order', 'delete', '0', '50', '1559209354', '1559209354', null);
INSERT INTO `pyg_auth` VALUES ('103', '订单详情', '19', '0_3_14_19', '3', 'order', 'read', '0', '50', '1559716699', '1559716699', null);

-- ----------------------------
-- Table structure for `pyg_brand`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_brand`;
CREATE TABLE `pyg_brand` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '品牌表',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `logo` varchar(80) NOT NULL DEFAULT '' COMMENT '品牌logo',
  `desc` text NOT NULL COMMENT '品牌描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌地址',
  `sort` int(3) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `cate_id` int(10) DEFAULT '0' COMMENT '分类id',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否推荐',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_brand
-- ----------------------------
INSERT INTO `pyg_brand` VALUES ('1', '华为（HUAWEI）', '/uploads/brand/0bedaba1e05119ac.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('2', '小米（MI）', '/uploads/brand/600c61f344607414.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('3', 'Apple', '/uploads/brand/574d36dbN262ef26d.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('4', '魅族（MEIZU）', '/uploads/brand/5b7e7f1fNddb8e4ff.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('5', '三星（SAMSUNG）', '/uploads/brand/74dc92d16e483509.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('6', '一加', '/uploads/brand/563b33ffN9c288c6c.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('7', 'OPPO', '/uploads/brand/33ffbca794e7b965.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('8', 'vivo', '/uploads/brand/38a9e351637f92f9.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('9', '诺基亚（NOKIA）', '/uploads/brand/0c685f39d86436dd.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('10', '联想（Lenovo）', '/uploads/brand/15668b30fabe0850.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('11', '努比亚（nubia）', '/uploads/brand/5631cd12N7548352d.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('12', '飞利浦（PHILIPS）', '/uploads/brand/162d6a5b24eb2ab7.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('13', '360', '/uploads/brand/3544a909fb55f1b1.png', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('15', 'realme', '/uploads/brand/bb6bd8cb1169483f.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('16', '荣耀（honor）', '/uploads/brand/a9c302d84c16b3bd.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);
INSERT INTO `pyg_brand` VALUES ('17', '黑鲨', '/uploads/brand/283a213db9eb9735.jpg', '', '', '50', '72', '1', '1559054211', '1559054211', null);

-- ----------------------------
-- Table structure for `pyg_cart`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_cart`;
CREATE TABLE `pyg_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `spec_goods_id` int(11) NOT NULL COMMENT '规格商品id',
  `is_selected` tinyint(1) NOT NULL DEFAULT '1' COMMENT '购物车选中状态',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_cart
-- ----------------------------
INSERT INTO `pyg_cart` VALUES ('3', '1', '1', '4', '1', '1', '1551077825', '1559134152', null);
INSERT INTO `pyg_cart` VALUES ('6', '1', '1', '21', '2', '1', '1551339233', '1559134152', null);
INSERT INTO `pyg_cart` VALUES ('7', '1', '1', '1', '3', '1', '1551339236', '1559134152', null);
INSERT INTO `pyg_cart` VALUES ('8', '1', '1', '10', '10', '1', '1554466488', '1559134152', null);
INSERT INTO `pyg_cart` VALUES ('16', '3', '1', '4', '1', '1', '1551077825', '1551339239', null);
INSERT INTO `pyg_cart` VALUES ('17', '3', '1', '21', '2', '1', '1551339233', '1554466470', null);
INSERT INTO `pyg_cart` VALUES ('18', '3', '1', '1', '3', '0', '1551339236', '1551339236', null);
INSERT INTO `pyg_cart` VALUES ('19', '3', '1', '10', '10', '0', '1554466488', '1554466488', null);
INSERT INTO `pyg_cart` VALUES ('20', '1', '61', '4', '804', '1', '1559132104', '1560498662', null);
INSERT INTO `pyg_cart` VALUES ('21', '1', '61', '1', '803', '1', '1560499384', '1560499384', null);
INSERT INTO `pyg_cart` VALUES ('22', '6', '65', '3', '809', '1', '1575195539', '1575202614', null);
INSERT INTO `pyg_cart` VALUES ('23', '2', '65', '2', '809', '1', '1575202768', '1575269480', null);

-- ----------------------------
-- Table structure for `pyg_category`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_category`;
CREATE TABLE `pyg_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `cate_name` varchar(90) NOT NULL DEFAULT '' COMMENT '商品分类名称',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `pid_path` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '家族图谱',
  `pid_path_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '家族图片分类名',
  `level` tinyint(1) DEFAULT '0' COMMENT '等级',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '50' COMMENT '顺序排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `image_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '分类图片',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否推荐为热门分类',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=817 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_category
-- ----------------------------
INSERT INTO `pyg_category` VALUES ('1', '家用电器', '0', '0', '', '0', '50', '0', '', '0', '1559054127', '1563073149', null);
INSERT INTO `pyg_category` VALUES ('2', '手机/运营商/数码', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('3', '电脑/办公', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('4', '家居/家具/家装/厨具', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('5', '男装/女装/童装/内衣', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('6', '美妆/个护清洁/宠物', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('7', '女鞋/箱包/钟表/珠宝', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('8', '男鞋/运动/户外', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('9', '房产/汽车/汽车用品', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('10', '母婴/玩具乐器', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('11', '食品/酒类/生鲜/特产', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('12', '艺术/礼品鲜花/农资绿植', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('13', '医药保健/计生情趣', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('14', '图书/文娱/电子书', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('15', '机票/酒店/旅游/生活', '0', '0', '', '0', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('16', '电视', '1', '0_1', '家用电器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('17', '超薄电视', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('18', '全面屏电视', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('19', '智能电视', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('20', 'OLED电视', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('21', '曲面电视', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('22', '4K超清电视', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('23', '55英寸', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('24', '65英寸', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('25', '电视配件', '16', '0_1_16', '家用电器_电视', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('26', '空调', '1', '0_1', '家用电器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('27', '空调挂机', '26', '0_1_26', '家用电器_空调', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('28', '空调柜机', '26', '0_1_26', '家用电器_空调', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('29', '精选推荐', '26', '0_1_26', '家用电器_空调', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('30', '中央空调', '26', '0_1_26', '家用电器_空调', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('31', '移动空调', '26', '0_1_26', '家用电器_空调', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('32', '省电空调', '26', '0_1_26', '家用电器_空调', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('33', '变频空调', '26', '0_1_26', '家用电器_空调', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('34', '洗衣机', '1', '0_1', '家用电器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('35', '滚筒洗衣机', '34', '0_1_34', '家用电器_洗衣机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('36', '洗烘一体机', '34', '0_1_34', '家用电器_洗衣机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('37', '波轮洗衣机', '34', '0_1_34', '家用电器_洗衣机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('38', '迷你洗衣机', '34', '0_1_34', '家用电器_洗衣机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('39', '烘干机', '34', '0_1_34', '家用电器_洗衣机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('40', '洗衣机配件', '34', '0_1_34', '家用电器_洗衣机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('41', '冰箱', '1', '0_1', '家用电器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('42', '多门', '41', '0_1_41', '家用电器_冰箱', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('43', '对开门', '41', '0_1_41', '家用电器_冰箱', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('44', '三门', '41', '0_1_41', '家用电器_冰箱', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('45', '双门', '41', '0_1_41', '家用电器_冰箱', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('46', '冷柜/冰吧', '41', '0_1_41', '家用电器_冰箱', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('47', '酒柜', '41', '0_1_41', '家用电器_冰箱', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('48', '冰箱配件', '41', '0_1_41', '家用电器_冰箱', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('49', '厨卫大电', '1', '0_1', '家用电器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('50', '油烟机', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('51', '燃气灶', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('52', '烟灶套装', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('53', '集成灶', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('54', '消毒柜', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('55', '洗碗机', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('56', '电热水器', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('57', '燃气热水器', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('58', '空气能热水器', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('59', '太阳能热水器', '49', '0_1_49', '家用电器_厨卫大电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('60', '厨房小电', '1', '0_1', '家用电器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('61', '破壁机', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('62', '电烤箱', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('63', '电饭煲', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('64', '电压力锅', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('65', '电炖锅', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('66', '豆浆机', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('67', '料理机', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('68', '咖啡机', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('69', '电饼铛', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('70', '榨汁机/原汁机', '60', '0_1_60', '家用电器_厨房小电', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('71', '手机通讯', '2', '0_2', '手机/运营商/数码', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('72', '手机', '71', '0_2_71', '手机/运营商/数码_手机通讯', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('73', '游戏手机', '71', '0_2_71', '手机/运营商/数码_手机通讯', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('74', '老人机', '71', '0_2_71', '手机/运营商/数码_手机通讯', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('75', '对讲机', '71', '0_2_71', '手机/运营商/数码_手机通讯', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('76', '手机维修', '71', '0_2_71', '手机/运营商/数码_手机通讯', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('77', '运营商', '2', '0_2', '手机/运营商/数码', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('78', '合约机', '77', '0_2_77', '手机/运营商/数码_运营商', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('79', '选号码', '77', '0_2_77', '手机/运营商/数码_运营商', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('80', '固话宽带', '77', '0_2_77', '手机/运营商/数码_运营商', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('81', '手机配件', '2', '0_2', '手机/运营商/数码', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('82', '手机壳', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('83', '贴膜', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('84', '手机存储卡', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('85', '数据线', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('86', '充电器', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('87', '手机耳机', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('88', '创意配件', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('89', '手机饰品', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('90', '手机电池', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('91', '苹果周边', '81', '0_2_81', '手机/运营商/数码_手机配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('92', '摄影摄像', '2', '0_2', '手机/运营商/数码', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('93', '数码相机', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('94', '单电/微单相机', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('95', '单反相机', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('96', '拍立得', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('97', '运动相机', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('98', '摄像机', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('99', '镜头', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('100', '户外器材', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('101', '影棚器材', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('102', '冲印服务', '92', '0_2_92', '手机/运营商/数码_摄影摄像', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('103', '数码配件', '2', '0_2', '手机/运营商/数码', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('104', '存储卡', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('105', '三脚架/云台', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('106', '相机包', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('107', '滤镜', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('108', '闪光灯/手柄', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('109', '相机清洁/贴膜', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('110', '机身附件', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('111', '镜头附件', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('112', '读卡器', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('113', '支架', '103', '0_2_103', '手机/运营商/数码_数码配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('114', '影音娱乐', '2', '0_2', '手机/运营商/数码', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('115', '耳机/耳麦', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('116', '音箱/音响', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('117', '智能音箱', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('118', '便携/无线音箱', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('119', '收音机', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('120', '麦克风', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('121', 'MP3/MP4', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('122', '专业音频', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('123', '音频线', '114', '0_2_114', '手机/运营商/数码_影音娱乐', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('124', '电脑整机', '3', '0_3', '电脑/办公', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('125', '笔记本', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('126', '游戏本', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('127', '平板电脑', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('128', '平板电脑配件', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('129', '台式机', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('130', '一体机', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('131', '服务器/工作站', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('132', '笔记本配件', '124', '0_3_124', '电脑/办公_电脑整机', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('133', '电脑配件', '3', '0_3', '电脑/办公', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('134', '显示器', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('135', 'CPU', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('136', '主板', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('137', '显卡', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('138', '硬盘', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('139', '内存', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('140', '机箱', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('141', '电源', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('142', '散热器', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('143', '显示器支架', '133', '0_3_133', '电脑/办公_电脑配件', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('144', '外设产品', '3', '0_3', '电脑/办公', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('145', '鼠标', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('146', '键盘', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('147', '键鼠套装', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('148', '网络仪表仪器', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('149', 'U盘', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('150', '移动硬盘', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('151', '鼠标垫', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('152', '摄像头', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('153', '线缆', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('154', '手写板', '144', '0_3_144', '电脑/办公_外设产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('155', '游戏设备', '3', '0_3', '电脑/办公', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('156', '游戏机', '155', '0_3_155', '电脑/办公_游戏设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('157', '游戏耳机', '155', '0_3_155', '电脑/办公_游戏设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('158', '手柄/方向盘', '155', '0_3_155', '电脑/办公_游戏设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('159', '游戏软件', '155', '0_3_155', '电脑/办公_游戏设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('160', '游戏周边', '155', '0_3_155', '电脑/办公_游戏设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('161', '网络产品', '3', '0_3', '电脑/办公', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('162', '路由器', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('163', '网络机顶盒', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('164', '交换机', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('165', '网络存储', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('166', '网卡', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('167', '4G/3G上网', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('168', '网线', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('169', '网络配件', '161', '0_3_161', '电脑/办公_网络产品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('170', '办公设备', '3', '0_3', '电脑/办公', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('171', '投影机', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('172', '投影配件', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('173', '多功能一体机', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('174', '打印机', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('175', '传真设备', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('176', '验钞/点钞机', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('177', '扫描设备', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('178', '复合机', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('179', '碎纸机', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('180', '考勤门禁', '170', '0_3_170', '电脑/办公_办公设备', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('181', '厨具', '4', '0_4', '家居/家具/家装/厨具', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('182', '炒锅', '181', '0_4_181', '家居/家具/家装/厨具_厨具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('183', '碗碟套装', '181', '0_4_181', '家居/家具/家装/厨具_厨具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('184', '锅具套装', '181', '0_4_181', '家居/家具/家装/厨具_厨具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('185', '茶具', '181', '0_4_181', '家居/家具/家装/厨具_厨具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('186', '咖啡具', '181', '0_4_181', '家居/家具/家装/厨具_厨具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('187', '保温杯', '181', '0_4_181', '家居/家具/家装/厨具_厨具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('188', '家纺', '4', '0_4', '家居/家具/家装/厨具', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('189', '四件套', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('190', '被子', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('191', '枕芯', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('192', '毛巾浴巾', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('193', '蚊帐', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('194', '凉席', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('195', '地毯地垫', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('196', '床垫/床褥', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('197', '毯子', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('198', '抱枕靠垫', '188', '0_4_188', '家居/家具/家装/厨具_家纺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('199', '生活日用', '4', '0_4', '家居/家具/家装/厨具', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('200', '收纳用品', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('201', '雨伞雨具', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('202', '净化除味', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('203', '浴室用品', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('204', '洗晒/熨烫', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('205', '缝纫/针织用品', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('206', '保暖防护', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('207', '清洁工具', '199', '0_4_199', '家居/家具/家装/厨具_生活日用', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('208', '家装软饰', '4', '0_4', '家居/家具/家装/厨具', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('209', '装饰字画', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('210', '装饰摆件', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('211', '手工/十字绣', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('212', '相框/照片墙', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('213', '墙贴/装饰贴', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('214', '花瓶花艺', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('215', '香薰蜡烛', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('216', '节庆饰品', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('217', '钟饰', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('218', '帘艺隔断', '208', '0_4_208', '家居/家具/家装/厨具_家装软饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('219', '灯具', '4', '0_4', '家居/家具/家装/厨具', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('220', '吸顶灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('221', '吊灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('222', '台灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('223', '筒灯射灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('224', '庭院灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('225', '装饰灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('226', 'LED灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('227', '氛围照明', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('228', '落地灯', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('229', '应急灯/手电', '219', '0_4_219', '家居/家具/家装/厨具_灯具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('230', '家具', '4', '0_4', '家居/家具/家装/厨具', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('231', '客厅', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('232', '卧室', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('233', '餐厅', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('234', '书房', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('235', '储物', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('236', '办公家具', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('237', '阳台户外', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('238', '电脑桌', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('239', '电视柜', '230', '0_4_230', '家居/家具/家装/厨具_家具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('240', '女装', '5', '0_5', '男装/女装/童装/内衣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('241', '当季热卖', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('242', '新品推荐', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('243', '商场同款', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('244', '时尚套装', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('245', '连衣裙', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('246', '套装裙', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('247', '半身裙', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('248', 'T恤', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('249', '衬衫', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('250', '雪纺衫', '240', '0_5_240', '男装/女装/童装/内衣_女装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('251', '男装', '5', '0_5', '男装/女装/童装/内衣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('252', '当季热卖', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('253', '新品推荐', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('254', 'T恤', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('255', '牛仔裤', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('256', '休闲裤', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('257', '衬衫', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('258', '短裤', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('259', 'POLO衫', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('260', '羽绒服', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('261', '棉服', '251', '0_5_251', '男装/女装/童装/内衣_男装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('262', '内衣', '5', '0_5', '男装/女装/童装/内衣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('263', '文胸', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('264', '睡衣/家居服', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('265', '男士内裤', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('266', '女士内裤', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('267', '吊带/背心', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('268', '文胸套装', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('269', '情侣睡衣', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('270', '塑身美体', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('271', '少女文胸', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('272', '休闲棉袜', '262', '0_5_262', '男装/女装/童装/内衣_内衣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('273', '配饰', '5', '0_5', '男装/女装/童装/内衣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('274', '太阳镜', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('275', '光学镜架/镜片', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('276', '棒球帽', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('277', '遮阳帽', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('278', '防辐射眼镜', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('279', '女士围巾/披肩', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('280', '遮阳伞/雨伞', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('281', '老花镜', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('282', '鸭舌帽', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('283', '礼帽', '273', '0_5_273', '男装/女装/童装/内衣_配饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('284', '童装', '5', '0_5', '男装/女装/童装/内衣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('285', '套装', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('286', '卫衣', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('287', '裤子', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('288', '外套/大衣', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('289', '毛衣/针织衫', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('290', '衬衫', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('291', '户外/运动服', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('292', 'T恤', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('293', '裙子', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('294', '亲子装', '284', '0_5_284', '男装/女装/童装/内衣_童装', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('295', '童鞋', '5', '0_5', '男装/女装/童装/内衣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('296', '运动鞋', '295', '0_5_295', '男装/女装/童装/内衣_童鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('297', '靴子', '295', '0_5_295', '男装/女装/童装/内衣_童鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('298', '帆布鞋', '295', '0_5_295', '男装/女装/童装/内衣_童鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('299', '皮鞋', '295', '0_5_295', '男装/女装/童装/内衣_童鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('300', '棉鞋', '295', '0_5_295', '男装/女装/童装/内衣_童鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('301', '凉鞋', '295', '0_5_295', '男装/女装/童装/内衣_童鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('302', '拖鞋', '295', '0_5_295', '男装/女装/童装/内衣_童鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('303', '面部护肤', '6', '0_6', '美妆/个护清洁/宠物', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('304', '礼盒', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('305', '美白', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('306', '防晒', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('307', '面膜', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('308', '洁面', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('309', '爽肤水', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('310', '精华', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('311', '眼霜', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('312', '乳液/面霜', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('313', '卸妆', '303', '0_6_303', '美妆/个护清洁/宠物_面部护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('314', '香水彩妆', '6', '0_6', '美妆/个护清洁/宠物', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('315', '隔离', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('316', '遮瑕', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('317', '气垫BB', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('318', '粉底', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('319', '腮红', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('320', '口红/唇膏', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('321', '唇釉/唇彩', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('322', '睫毛膏', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('323', '眼影', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('324', '眼线', '314', '0_6_314', '美妆/个护清洁/宠物_香水彩妆', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('325', '男士护肤', '6', '0_6', '美妆/个护清洁/宠物', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('326', '控油', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('327', '洁面', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('328', '乳液/面霜', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('329', '面膜', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('330', '爽肤水', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('331', '剃须', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('332', '精华', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('333', '防晒', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('334', '套装/礼盒', '325', '0_6_325', '美妆/个护清洁/宠物_男士护肤', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('335', '洗发护发', '6', '0_6', '美妆/个护清洁/宠物', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('336', '洗发水', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('337', '护发素', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('338', '发膜/精油', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('339', '造型', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('340', '染发', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('341', '烫发', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('342', '假发', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('343', '美发工具', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('344', '洗护套装', '335', '0_6_335', '美妆/个护清洁/宠物_洗发护发', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('345', '口腔护理', '6', '0_6', '美妆/个护清洁/宠物', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('346', '牙膏', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('347', '牙粉', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('348', '牙贴', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('349', '牙刷', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('350', '牙线', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('351', '漱口水', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('352', '口喷', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('353', '假牙清洁', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('354', '套装', '345', '0_6_345', '美妆/个护清洁/宠物_口腔护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('355', '身体护理', '6', '0_6', '美妆/个护清洁/宠物', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('356', '花露水', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('357', '沐浴露', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('358', '香皂', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('359', '洗手液', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('360', '护手霜', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('361', '浴盐', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('362', '润肤', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('363', '精油', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('364', '美颈', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('365', '美胸', '355', '0_6_355', '美妆/个护清洁/宠物_身体护理', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('366', '时尚女鞋', '7', '0_7', '女鞋/箱包/钟表/珠宝', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('367', '新品推荐', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('368', '单鞋', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('369', '休闲鞋', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('370', '帆布鞋', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('371', '妈妈鞋', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('372', '布鞋/绣花鞋', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('373', '女靴', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('374', '踝靴', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('375', '马丁靴', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('376', '雪地靴', '366', '0_7_366', '女鞋/箱包/钟表/珠宝_时尚女鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('377', '潮流女包', '7', '0_7', '女鞋/箱包/钟表/珠宝', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('378', '真皮包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('379', '单肩包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('380', '手提包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('381', '斜挎包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('382', '双肩包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('383', '钱包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('384', '手拿包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('385', '卡包/零钱包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('386', '钥匙包', '377', '0_7_377', '女鞋/箱包/钟表/珠宝_潮流女包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('387', '精品男包', '7', '0_7', '女鞋/箱包/钟表/珠宝', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('388', '男士钱包', '387', '0_7_387', '女鞋/箱包/钟表/珠宝_精品男包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('389', '双肩包', '387', '0_7_387', '女鞋/箱包/钟表/珠宝_精品男包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('390', '单肩/斜挎包', '387', '0_7_387', '女鞋/箱包/钟表/珠宝_精品男包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('391', '商务公文包', '387', '0_7_387', '女鞋/箱包/钟表/珠宝_精品男包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('392', '男士手包', '387', '0_7_387', '女鞋/箱包/钟表/珠宝_精品男包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('393', '卡包名片夹', '387', '0_7_387', '女鞋/箱包/钟表/珠宝_精品男包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('394', '钥匙包', '387', '0_7_387', '女鞋/箱包/钟表/珠宝_精品男包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('395', '功能箱包', '7', '0_7', '女鞋/箱包/钟表/珠宝', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('396', '拉杆箱', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('397', '拉杆包', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('398', '旅行包', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('399', '电脑包', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('400', '休闲运动包', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('401', '书包', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('402', '登山包', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('403', '腰包/胸包', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('404', '旅行配件', '395', '0_7_395', '女鞋/箱包/钟表/珠宝_功能箱包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('405', '奢侈品', '7', '0_7', '女鞋/箱包/钟表/珠宝', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('406', '箱包', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('407', '钱包', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('408', '服饰', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('409', '腰带', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('410', '鞋靴', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('411', '太阳镜/眼镜框', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('412', '饰品', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('413', '配件', '405', '0_7_405', '女鞋/箱包/钟表/珠宝_奢侈品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('414', '', '7', '0_7', '女鞋/箱包/钟表/珠宝', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('415', 'GUCCI', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('416', 'COACH', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('417', '雷朋', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('418', '施华洛世奇', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('419', 'MK', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('420', '阿玛尼', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('421', '菲拉格慕', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('422', 'VERSACE', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('423', '普拉达', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('424', '巴宝莉', '414', '0_7_414', '女鞋/箱包/钟表/珠宝_', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('425', '流行男鞋', '8', '0_8', '男鞋/运动/户外', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('426', '新品推荐', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('427', '休闲鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('428', '商务休闲鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('429', '正装鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('430', '帆布鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('431', '凉鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('432', '拖鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('433', '功能鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('434', '增高鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('435', '工装鞋', '425', '0_8_425', '男鞋/运动/户外_流行男鞋', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('436', '运动鞋包', '8', '0_8', '男鞋/运动/户外', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('437', '跑步鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('438', '休闲鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('439', '篮球鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('440', '帆布鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('441', '板鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('442', '拖鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('443', '运动包', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('444', '足球鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('445', '乒羽网鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('446', '训练鞋', '436', '0_8_436', '男鞋/运动/户外_运动鞋包', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('447', '运动服饰', '8', '0_8', '男鞋/运动/户外', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('448', 'T恤', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('449', '运动套装', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('450', '运动裤', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('451', '卫衣/套头衫', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('452', '夹克/风衣', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('453', '羽绒服', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('454', '运动配饰', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('455', '棉服', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('456', '紧身衣', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('457', '运动背心', '447', '0_8_447', '男鞋/运动/户外_运动服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('458', '健身训练', '8', '0_8', '男鞋/运动/户外', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('459', '跑步机', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('460', '动感单车', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('461', '健身车', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('462', '椭圆机', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('463', '综合训练器', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('464', '划船机', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('465', '甩脂机', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('466', '倒立机', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('467', '踏步机', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('468', '哑铃', '458', '0_8_458', '男鞋/运动/户外_健身训练', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('469', '骑行运动', '8', '0_8', '男鞋/运动/户外', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('470', '山地车', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('471', '公路车', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('472', '折叠车', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('473', '骑行服', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('474', '电动车', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('475', '电动滑板车', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('476', '城市自行车', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('477', '平衡车', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('478', '穿戴装备', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('479', '自行车配件', '469', '0_8_469', '男鞋/运动/户外_骑行运动', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('480', '体育用品', '8', '0_8', '男鞋/运动/户外', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('481', '乒乓球', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('482', '羽毛球', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('483', '篮球', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('484', '足球', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('485', '轮滑滑板', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('486', '网球', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('487', '高尔夫', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('488', '台球', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('489', '排球', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('490', '棋牌麻将', '480', '0_8_480', '男鞋/运动/户外_体育用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('491', '房产', '9', '0_9', '房产/汽车/汽车用品', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('492', '长租公寓', '491', '0_9_491', '房产/汽车/汽车用品_房产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('493', '汽车车型', '9', '0_9', '房产/汽车/汽车用品', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('494', '微型车', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('495', '小型车', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('496', '紧凑型车', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('497', '中型车', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('498', '中大型车', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('499', '豪华车', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('500', 'MPV', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('501', 'SUV', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('502', '跑车', '493', '0_9_493', '房产/汽车/汽车用品_汽车车型', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('503', '汽车价格', '9', '0_9', '房产/汽车/汽车用品', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('504', '5-8万', '503', '0_9_503', '房产/汽车/汽车用品_汽车价格', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('505', '8-12万', '503', '0_9_503', '房产/汽车/汽车用品_汽车价格', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('506', '12-18万', '503', '0_9_503', '房产/汽车/汽车用品_汽车价格', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('507', '18-25万', '503', '0_9_503', '房产/汽车/汽车用品_汽车价格', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('508', '25-40万', '503', '0_9_503', '房产/汽车/汽车用品_汽车价格', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('509', '40万以上', '503', '0_9_503', '房产/汽车/汽车用品_汽车价格', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('510', '汽车品牌', '9', '0_9', '房产/汽车/汽车用品', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('511', '大众', '510', '0_9_510', '房产/汽车/汽车用品_汽车品牌', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('512', '日产', '510', '0_9_510', '房产/汽车/汽车用品_汽车品牌', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('513', '丰田', '510', '0_9_510', '房产/汽车/汽车用品_汽车品牌', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('514', '别克', '510', '0_9_510', '房产/汽车/汽车用品_汽车品牌', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('515', '宝骏', '510', '0_9_510', '房产/汽车/汽车用品_汽车品牌', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('516', '本田', '510', '0_9_510', '房产/汽车/汽车用品_汽车品牌', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('517', '维修保养', '9', '0_9', '房产/汽车/汽车用品', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('518', '京东保养', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('519', '汽机油', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('520', '轮胎', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('521', '添加剂', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('522', '防冻液', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('523', '滤清器', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('524', '蓄电池', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('525', '变速箱油/滤', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('526', '雨刷', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('527', '刹车片/盘', '517', '0_9_517', '房产/汽车/汽车用品_维修保养', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('528', '汽车装饰', '9', '0_9', '房产/汽车/汽车用品', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('529', '座垫座套', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('530', '脚垫', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('531', '头枕腰靠', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('532', '方向盘套', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('533', '后备箱垫', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('534', '车载支架', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('535', '车钥匙扣', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('536', '香水', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('537', '炭包/净化剂', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('538', '扶手箱', '528', '0_9_528', '房产/汽车/汽车用品_汽车装饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('539', '奶粉', '10', '0_10', '母婴/玩具乐器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('540', '1段', '539', '0_10_539', '母婴/玩具乐器_奶粉', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('541', '2段', '539', '0_10_539', '母婴/玩具乐器_奶粉', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('542', '3段', '539', '0_10_539', '母婴/玩具乐器_奶粉', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('543', '4段', '539', '0_10_539', '母婴/玩具乐器_奶粉', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('544', '孕妈奶粉', '539', '0_10_539', '母婴/玩具乐器_奶粉', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('545', '特殊配方奶粉', '539', '0_10_539', '母婴/玩具乐器_奶粉', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('546', '有机奶粉', '539', '0_10_539', '母婴/玩具乐器_奶粉', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('547', '营养辅食', '10', '0_10', '母婴/玩具乐器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('548', '米粉/菜粉', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('549', '面条/粥', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('550', '果泥/果汁', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('551', '益生菌/初乳', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('552', 'DHA', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('553', '钙铁锌/维生素', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('554', '清火/开胃', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('555', '宝宝零食', '547', '0_10_547', '母婴/玩具乐器_营养辅食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('556', '尿裤湿巾', '10', '0_10', '母婴/玩具乐器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('557', 'NB', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('558', 'S', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('559', 'M', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('560', 'L', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('561', 'XL', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('562', 'XXL', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('563', '拉拉裤', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('564', '成人尿裤', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('565', '婴儿湿巾', '556', '0_10_556', '母婴/玩具乐器_尿裤湿巾', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('566', '喂养用品', '10', '0_10', '母婴/玩具乐器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('567', '奶瓶奶嘴', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('568', '吸奶器', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('569', '暖奶消毒', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('570', '辅食料理机', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('571', '牙胶安抚', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('572', '食物存储', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('573', '儿童餐具', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('574', '水壶/水杯', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('575', '围兜/防溅衣', '566', '0_10_566', '母婴/玩具乐器_喂养用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('576', '洗护用品', '10', '0_10', '母婴/玩具乐器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('577', '宝宝护肤', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('578', '日常护理', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('579', '洗发沐浴', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('580', '洗澡用具', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('581', '洗衣液/皂', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('582', '理发器', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('583', '婴儿口腔清洁', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('584', '座便器', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('585', '驱蚊防晒', '576', '0_10_576', '母婴/玩具乐器_洗护用品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('586', '寝居服饰', '10', '0_10', '母婴/玩具乐器', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('587', '睡袋/抱被', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('588', '婴儿枕', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('589', '毛毯棉被', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('590', '婴童床品', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('591', '浴巾/浴衣', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('592', '毛巾/口水巾', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('593', '婴儿礼盒', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('594', '婴儿内衣', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('595', '婴儿外出服', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('596', '隔尿垫巾', '586', '0_10_586', '母婴/玩具乐器_寝居服饰', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('597', '新鲜水果', '11', '0_11', '食品/酒类/生鲜/特产', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('598', '苹果', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('599', '橙子', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('600', '奇异果/猕猴桃', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('601', '火龙果', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('602', '榴莲', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('603', '芒果', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('604', '椰子', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('605', '车厘子', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('606', '百香果', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('607', '柚子', '597', '0_11_597', '食品/酒类/生鲜/特产_新鲜水果', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('608', '蔬菜蛋品', '11', '0_11', '食品/酒类/生鲜/特产', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('609', '蛋品', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('610', '叶菜类', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('611', '根茎类', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('612', '葱姜蒜椒', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('613', '鲜菌菇', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('614', '茄果瓜类', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('615', '半加工蔬菜', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('616', '半加工豆制品', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('617', '玉米', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('618', '山药', '608', '0_11_608', '食品/酒类/生鲜/特产_蔬菜蛋品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('619', '精选肉类', '11', '0_11', '食品/酒类/生鲜/特产', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('620', '猪肉', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('621', '牛肉', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('622', '羊肉', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('623', '鸡肉', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('624', '鸭肉', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('625', '冷鲜肉', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('626', '特色肉类', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('627', '内脏类', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('628', '冷藏熟食', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('629', '牛排', '619', '0_11_619', '食品/酒类/生鲜/特产_精选肉类', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('630', '海鲜水产', '11', '0_11', '食品/酒类/生鲜/特产', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('631', '鱼类', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('632', '虾类', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('633', '蟹类', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('634', '贝类', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('635', '海参', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('636', '鱿鱼/章鱼', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('637', '活鲜', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('638', '三文鱼', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('639', '大闸蟹', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('640', '小龙虾', '630', '0_11_630', '食品/酒类/生鲜/特产_海鲜水产', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('641', '冷饮冻食', '11', '0_11', '食品/酒类/生鲜/特产', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('642', '水饺/馄饨', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('643', '汤圆/元宵', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('644', '面点', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('645', '烘焙半成品', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('646', '奶酪/黄油', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('647', '方便速食', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('648', '火锅丸串', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('649', '冰淇淋', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('650', '冷藏饮料', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('651', '低温奶', '641', '0_11_641', '食品/酒类/生鲜/特产_冷饮冻食', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('652', '中外名酒', '11', '0_11', '食品/酒类/生鲜/特产', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('653', '白酒', '652', '0_11_652', '食品/酒类/生鲜/特产_中外名酒', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('654', '葡萄酒', '652', '0_11_652', '食品/酒类/生鲜/特产_中外名酒', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('655', '洋酒', '652', '0_11_652', '食品/酒类/生鲜/特产_中外名酒', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('656', '啤酒', '652', '0_11_652', '食品/酒类/生鲜/特产_中外名酒', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('657', '黄酒/养生酒', '652', '0_11_652', '食品/酒类/生鲜/特产_中外名酒', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('658', '收藏酒/陈年老酒', '652', '0_11_652', '食品/酒类/生鲜/特产_中外名酒', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('659', '艺术品', '12', '0_12', '艺术/礼品鲜花/农资绿植', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('660', '火机烟具', '12', '0_12', '艺术/礼品鲜花/农资绿植', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('661', '电子烟', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('662', '换弹型电子烟', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('663', '烟油', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('664', '打火机', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('665', '一次性打火机', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('666', '烟嘴', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('667', '烟盒', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('668', '烟斗', '660', '0_12_660', '艺术/礼品鲜花/农资绿植_火机烟具', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('669', '礼品', '12', '0_12', '艺术/礼品鲜花/农资绿植', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('670', '创意礼品', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('671', '电子礼品', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('672', '工艺礼品', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('673', '美妆礼品', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('674', '婚庆节庆', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('675', '礼盒礼券', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('676', '礼品定制', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('677', '军刀军具', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('678', '古董文玩', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('679', '收藏品', '669', '0_12_669', '艺术/礼品鲜花/农资绿植_礼品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('680', '鲜花速递', '12', '0_12', '艺术/礼品鲜花/农资绿植', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('681', '鲜花', '680', '0_12_680', '艺术/礼品鲜花/农资绿植_鲜花速递', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('682', '每周一花', '680', '0_12_680', '艺术/礼品鲜花/农资绿植_鲜花速递', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('683', '永生花', '680', '0_12_680', '艺术/礼品鲜花/农资绿植_鲜花速递', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('684', '香皂花', '680', '0_12_680', '艺术/礼品鲜花/农资绿植_鲜花速递', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('685', '卡通花束', '680', '0_12_680', '艺术/礼品鲜花/农资绿植_鲜花速递', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('686', '干花', '680', '0_12_680', '艺术/礼品鲜花/农资绿植_鲜花速递', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('687', '绿植园艺', '12', '0_12', '艺术/礼品鲜花/农资绿植', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('688', '桌面绿植', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('689', '苗木', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('690', '绿植盆栽', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('691', '多肉植物', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('692', '花卉', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('693', '种子种球', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('694', '花盆花器', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('695', '园艺土肥', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('696', '园艺工具', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('697', '园林机械', '687', '0_12_687', '艺术/礼品鲜花/农资绿植_绿植园艺', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('698', '种子', '12', '0_12', '艺术/礼品鲜花/农资绿植', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('699', '花草林木类', '698', '0_12_698', '艺术/礼品鲜花/农资绿植_种子', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('700', '蔬菜/菌类', '698', '0_12_698', '艺术/礼品鲜花/农资绿植_种子', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('701', '瓜果类', '698', '0_12_698', '艺术/礼品鲜花/农资绿植_种子', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('702', '大田作物类', '698', '0_12_698', '艺术/礼品鲜花/农资绿植_种子', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('703', '中西药品', '13', '0_13', '医药保健/计生情趣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('704', '感冒咳嗽', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('705', '补肾壮阳', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('706', '补气养血', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('707', '止痛镇痛', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('708', '耳鼻喉用药', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('709', '眼科用药', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('710', '口腔用药', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('711', '皮肤用药', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('712', '肠胃消化', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('713', '风湿骨外伤', '703', '0_13_703', '医药保健/计生情趣_中西药品', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('714', '营养健康', '13', '0_13', '医药保健/计生情趣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('715', '增强免疫', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('716', '骨骼健康', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('717', '补肾强身', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('718', '肠胃养护', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('719', '调节三高', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('720', '缓解疲劳', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('721', '养肝护肝', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('722', '改善贫血', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('723', '清咽利喉', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('724', '美容养颜', '714', '0_13_714', '医药保健/计生情趣_营养健康', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('725', '营养成分', '13', '0_13', '医药保健/计生情趣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('726', '维生素/矿物质', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('727', '胶原蛋白', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('728', '益生菌', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('729', '蛋白粉', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('730', '玛咖', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('731', '酵素', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('732', '膳食纤维', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('733', '叶酸', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('734', '番茄红素', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('735', '左旋肉碱', '725', '0_13_725', '医药保健/计生情趣_营养成分', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('736', '滋补养生', '13', '0_13', '医药保健/计生情趣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('737', '阿胶', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('738', '蜂蜜/蜂产品', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('739', '枸杞', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('740', '燕窝', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('741', '冬虫夏草', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('742', '人参/西洋参', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('743', '三七', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('744', '鹿茸', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('745', '雪蛤', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('746', '青钱柳', '736', '0_13_736', '医药保健/计生情趣_滋补养生', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('747', '计生情趣', '13', '0_13', '医药保健/计生情趣', '1', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('748', '避孕套', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('749', '排卵验孕', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('750', '润滑液', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('751', '男用延时', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054127', '1559054127', null);
INSERT INTO `pyg_category` VALUES ('752', '飞机杯', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('753', '倒模', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('754', '仿真娃娃', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('755', '震动棒', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('756', '跳蛋', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('757', '仿真阳具', '747', '0_13_747', '医药保健/计生情趣_计生情趣', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('758', '保健器械', '13', '0_13', '医药保健/计生情趣', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('759', '血压计', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('760', '血糖仪', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('761', '心电仪', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('762', '体温计', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('763', '胎心仪', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('764', '制氧机', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('765', '呼吸机', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('766', '雾化器', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('767', '助听器', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('768', '轮椅', '758', '0_13_758', '医药保健/计生情趣_保健器械', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('769', '文学', '14', '0_14', '图书/文娱/电子书', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('770', '散文随笔', '769', '0_14_769', '图书/文娱/电子书_文学', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('771', '悬疑推理', '769', '0_14_769', '图书/文娱/电子书_文学', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('772', '科幻', '769', '0_14_769', '图书/文娱/电子书_文学', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('773', '武侠', '769', '0_14_769', '图书/文娱/电子书_文学', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('774', '世界名著', '769', '0_14_769', '图书/文娱/电子书_文学', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('775', '童书', '14', '0_14', '图书/文娱/电子书', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('776', '儿童文学', '775', '0_14_775', '图书/文娱/电子书_童书', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('777', '绘本', '775', '0_14_775', '图书/文娱/电子书_童书', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('778', '科普百科', '775', '0_14_775', '图书/文娱/电子书_童书', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('779', '幼儿启蒙', '775', '0_14_775', '图书/文娱/电子书_童书', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('780', '智力开发', '775', '0_14_775', '图书/文娱/电子书_童书', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('781', '少儿英语', '775', '0_14_775', '图书/文娱/电子书_童书', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('782', '教材教辅', '14', '0_14', '图书/文娱/电子书', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('783', '课外读物', '782', '0_14_782', '图书/文娱/电子书_教材教辅', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('784', '英语四六级', '782', '0_14_782', '图书/文娱/电子书_教材教辅', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('785', '会计类考试', '782', '0_14_782', '图书/文娱/电子书_教材教辅', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('786', '国家公务员', '782', '0_14_782', '图书/文娱/电子书_教材教辅', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('787', '人文社科', '14', '0_14', '图书/文娱/电子书', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('788', '经管励志', '14', '0_14', '图书/文娱/电子书', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('789', '市场营销', '788', '0_14_788', '图书/文娱/电子书_经管励志', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('790', '领导力', '788', '0_14_788', '图书/文娱/电子书_经管励志', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('791', '股票', '788', '0_14_788', '图书/文娱/电子书_经管励志', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('792', '投资', '788', '0_14_788', '图书/文娱/电子书_经管励志', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('793', '自我完善', '788', '0_14_788', '图书/文娱/电子书_经管励志', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('794', '艺术', '14', '0_14', '图书/文娱/电子书', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('795', '绘画', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('796', '音乐', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('797', '书法', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('798', '连环画', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('799', '设计', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('800', '建筑艺术', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('801', '艺术史', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('802', '影视', '794', '0_14_794', '图书/文娱/电子书_艺术', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('803', '交通出行', '15', '0_15', '机票/酒店/旅游/生活', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('804', '机场服务', '803', '0_15_803', '机票/酒店/旅游/生活_交通出行', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('805', '机票套餐', '803', '0_15_803', '机票/酒店/旅游/生活_交通出行', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('806', '酒店预订', '15', '0_15', '机票/酒店/旅游/生活', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('807', '酒店套餐', '806', '0_15_806', '机票/酒店/旅游/生活_酒店预订', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('808', '旅游度假', '15', '0_15', '机票/酒店/旅游/生活', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('809', '定制旅游', '15', '0_15', '机票/酒店/旅游/生活', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('810', '团队建设', '809', '0_15_809', '机票/酒店/旅游/生活_定制旅游', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('811', '奖励旅游', '809', '0_15_809', '机票/酒店/旅游/生活_定制旅游', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('812', '会议周边', '809', '0_15_809', '机票/酒店/旅游/生活_定制旅游', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('813', '演出票务', '15', '0_15', '机票/酒店/旅游/生活', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('814', '生活缴费', '15', '0_15', '机票/酒店/旅游/生活', '1', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('815', '城市通', '814', '0_15_814', '机票/酒店/旅游/生活_生活缴费', '2', '50', '1', '', '0', '1559054128', '1559054128', null);
INSERT INTO `pyg_category` VALUES ('816', '加油卡', '814', '0_15_814', '机票/酒店/旅游/生活_生活缴费', '2', '50', '1', '', '0', '1559054128', '1559054128', null);

-- ----------------------------
-- Table structure for `pyg_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_goods`;
CREATE TABLE `pyg_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `cost_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `goods_number` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '商品数量',
  `frozen_number` int(11) DEFAULT '0' COMMENT '冻结数量',
  `goods_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简单描述',
  `goods_desc` text COMMENT '详细介绍',
  `goods_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商品logo图',
  `type_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品类型id',
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  `cate_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  `mould_id` int(11) DEFAULT '0' COMMENT '运费模板id  1以件计算; 2以重量计算; 3以体积计算',
  `weight` int(11) DEFAULT NULL COMMENT '商品重量，以克为单位',
  `volume` double(10,2) DEFAULT NULL COMMENT '商品体积，以立方米为单位',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `comments_num` int(11) NOT NULL DEFAULT '0' COMMENT '评论数',
  `collect_num` varchar(255) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `sales_num` int(11) NOT NULL DEFAULT '0' COMMENT '销量',
  `is_on_sale` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否上架；1是0否',
  `is_free_shipping` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否包邮；1是0否',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐；1是0否',
  `is_new` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否新品;1是0否',
  `is_hot` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否热卖；1是0否',
  `sort` smallint(4) NOT NULL DEFAULT '50' COMMENT '排序',
  `suppliers_id` smallint(4) DEFAULT NULL COMMENT '供货商',
  `goods_attr` varchar(255) DEFAULT NULL COMMENT '商品属性值：json串',
  `create_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '修改时间',
  `delete_time` int(11) unsigned DEFAULT NULL COMMENT '软删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_goods
-- ----------------------------
INSERT INTO `pyg_goods` VALUES ('1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '5299.00', '5299.00', '5299.00', '100', '0', '', null, '/uploads/goods/20190528/865565d919219154.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('2', '小米 红米Redmi Note7 幻彩渐变AI双摄 4GB+64GB 梦幻蓝 全网通4G 双卡双待 水滴全面屏拍照游戏智能手机', '6299.00', '6299.00', '6299.00', '100', '0', '', null, '/uploads/goods/20190528/4f4ba51aed682207.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('3', '荣耀V20 胡歌同款 麒麟980芯片 魅眼全视屏 4800万深感相机 6GB+128GB 幻夜黑 移动联通电信4G全面屏手机', '1299.00', '1299.00', '1299.00', '100', '0', '', null, '/uploads/goods/20190528/5a38e39b2975e837.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('4', '华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+256GB亮黑色全网通版双4G手机', '2999.00', '2999.00', '2999.00', '100', '0', '', null, '/uploads/goods/20190528/295353ae7701c622.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('5', 'Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待', '9099.00', '9099.00', '9099.00', '100', '0', '', null, '/uploads/goods/20190528/02a76e957253a541.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('6', '小米8SE 全面屏智能游戏拍照手机 6GB+64GB 灰色 骁龙710处理器 全网通4G 双卡双待', '4899.00', '4899.00', '4899.00', '100', '0', '', null, '/uploads/goods/20190528/5b0fbaabN3229c7a3.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('7', 'Apple iPhone 8 (A1863) 64GB 深空灰色 移动联通电信4G手机', '3799.00', '3799.00', '3799.00', '100', '0', '', null, '/uploads/goods/20190528/59b85824N836bb714.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('8', '荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待', '2499.00', '2499.00', '2499.00', '100', '0', '', null, '/uploads/goods/20190528/c16e93d0bf77a31f.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('9', '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB天空之境全网通双4G手机', '6999.00', '6999.00', '6999.00', '100', '0', '', null, '/uploads/goods/20190528/8ecf0cb424de1349.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('10', '小米8 全面屏游戏智能拍照手机 6GB+128GB 黑色 骁龙845 全网通4G 双卡双待', '7199.00', '7199.00', '7199.00', '100', '0', '', null, '/uploads/goods/20190528/5b0fcbafNc30f70ec.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('11', 'Apple iPhone 7 (A1660) 128G 黑色 移动联通电信4G手机', '2699.00', '2699.00', '2699.00', '100', '0', '', null, '/uploads/goods/20190528/ab22cb8d8464e096.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('12', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G手机 双卡双待', '3899.00', '3899.00', '3899.00', '100', '0', '', null, '/uploads/goods/20190528/5af13917Naca6cb3d.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('13', 'Apple iPhone XS Max (A2103) 256GB 深空灰色 全网通（移动4G优先版） 双卡双待', '9899.00', '9899.00', '9899.00', '100', '0', '', null, '/uploads/goods/20190528/819dcf182d743897.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('14', '荣耀畅玩8C两天一充 莱茵护眼 刘海屏 全网通版4GB+32GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待', '6699.00', '6699.00', '6699.00', '100', '0', '', null, '/uploads/goods/20190528/5bbac3c5N8b0bd22b.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('15', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G手机', '9099.00', '9099.00', '9099.00', '100', '0', '', null, '/uploads/goods/20190528/5bbf1fc9N3ced3749.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('16', '小米 红米6A AI美颜 3GB+32GB 流沙金 全网通4G手机 双卡双待', '7199.00', '7199.00', '7199.00', '100', '0', '', null, '/uploads/goods/20190528/5b4edfdcN5a7d6faf.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('17', '【KPL官方比赛用机】vivo iQOO 44W超快闪充 8GB+128GB电光蓝 全面屏拍照手机 骁龙855电竞游戏 全网通4G手机', '6899.00', '6899.00', '6899.00', '100', '0', '', null, '/uploads/goods/20190528/044c52520956ebfb.jpg', '0', '8', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('18', 'Apple iPhone 8 Plus (A1864) 64GB 深空灰色 移动联通电信4G手机', '2499.00', '2499.00', '2499.00', '100', '0', '', null, '/uploads/goods/20190528/59b857f8N977f476c.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('19', '华为 HUAWEI 畅享9 Plus 4GB+64GB 极光紫 全网通 四摄超清全面屏大电池 移动联通电信4G手机 双卡双待', '5999.00', '5999.00', '5999.00', '100', '0', '', null, '/uploads/goods/20190528/5bbc6e01Ndf90871c.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('20', '小米 红米Redmi Note7Pro AI双摄 6GB+128GB 梦幻蓝 全网通4G 双卡双待 水滴屏拍照游戏手机', '3299.00', '3299.00', '3299.00', '100', '0', '', null, '/uploads/goods/20190528/9cd57e3a481c7160.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('21', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '6299.00', '6299.00', '6299.00', '100', '0', '', null, '/uploads/goods/20190528/59df2e7fN86c99a27.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('22', '荣耀20i 3200万AI自拍 超广角三摄 全网通版6GB+64GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待', '9299.00', '9299.00', '9299.00', '100', '0', '', null, '/uploads/goods/20190528/5cdd1018N977740e5.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('23', '小米9 4800万超广角三摄 8GB+128GB全息幻彩蓝 骁龙855 全网通4G 双卡双待 水滴全面屏拍照游戏智能手机', '6399.00', '6399.00', '6399.00', '100', '0', '', null, '/uploads/goods/20190528/ce6c1dee969fb626.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('24', '小米MIX2S 全面屏游戏拍照手机 6GB+128GB 黑色 骁龙845处理器 全网通4G 陶瓷手机', '4299.00', '4299.00', '4299.00', '100', '0', '', null, '/uploads/goods/20190528/5ab9e7a8Nbc37a260.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('25', '小米 Redmi 7 AI双摄 3GB+32GB 亮黑色 全网通4G 双卡双待 水滴全面屏拍照游戏智能手机', '1999.00', '1999.00', '1999.00', '100', '0', '', null, '/uploads/goods/20190528/fb7b968a62eb10ef.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('26', '荣耀Play 全网通版 6GB+64GB 极光蓝 移动联通电信4G全面屏游戏手机 双卡双待', '9699.00', '9699.00', '9699.00', '100', '0', '', null, '/uploads/goods/20190528/bc57c7563eb82aa2.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('27', 'Apple iPhone 7 Plus (A1661) 128G 黑色 移动联通电信4G手机', '2199.00', '2199.00', '2199.00', '100', '0', '', null, '/uploads/goods/20190528/34ac75cc458efc46.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('28', '华为 HUAWEI 畅享9  4GB+64GB 幻夜黑 高清珍珠屏 AI长续航 全网通高配版 移动联通电信4G手机', '9799.00', '9799.00', '9799.00', '100', '0', '', null, '/uploads/goods/20190528/5c00df9bN52171b33.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('29', '小米6X 全网通 6GB+64GB 赤焰红 移动联通电信4G手机 双卡双待 智能手机 拍照手机', '4399.00', '4399.00', '4399.00', '100', '0', '', null, '/uploads/goods/20190528/5adfe5eaN42591f8c.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('30', '小米Play 流光渐变AI双摄 4GB+64GB 黑色 全网通4G 双卡双待 小水滴全面屏拍照游戏智能手机', '1199.00', '1199.00', '1199.00', '100', '0', '', null, '/uploads/goods/20190528/019c7ee866ded8f8.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('31', '华为 HUAWEI P20 Pro 全面屏徕卡三摄游戏手机 6GB+128GB 极光色 全网通移动联通电信4G手机 双卡双待', '7799.00', '7799.00', '7799.00', '100', '0', '', null, '/uploads/goods/20190528/5ac1eae4Nce7c8b00.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('32', '华为 HUAWEI 畅享 9S 6GB+64GB 幻夜黑 全网通 2400万超广角三摄珍珠屏大存储 移动联通电信4G手机 双卡双待', '8899.00', '8899.00', '8899.00', '100', '0', '', null, '/uploads/goods/20190528/46e7ace99f41dd41.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('33', '华为 HUAWEI Mate 20 Pro (UD)屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机', '7199.00', '7199.00', '7199.00', '100', '0', '', null, '/uploads/goods/20190528/5bbf17f0N428d505a.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('34', 'vivo Z3x 4GB+64GB 极光色 全面屏双摄拍照手机 移动联通电信全网通4G手机', '5299.00', '5299.00', '5299.00', '100', '0', '', null, '/uploads/goods/20190528/22f6b0b07075f1b7.jpg', '0', '8', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('35', '荣耀 畅玩7 2GB+16GB 金色 全网通4G手机 双卡双待', '3999.00', '3999.00', '3999.00', '100', '0', '', null, '/uploads/goods/20190528/5afc0ae1N4f34d0fc.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('36', '小米Mix3  6GB+128GB黑色  骁龙845 全网通4G 双卡双待 全面屏拍照游戏智能手机', '6799.00', '6799.00', '6799.00', '100', '0', '', null, '/uploads/goods/20190528/f3610e2e816ade0f.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('37', 'OPPO K1 光感屏幕指纹 水滴屏拍照手机 4GB+64GB 摩卡红 全网通 移动联通电信4GB 双卡双待手机', '1199.00', '1199.00', '1199.00', '100', '0', '', null, '/uploads/goods/20190528/5be84358Nbc650d88.jpg', '0', '7', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('38', '小米 红米6 全网通版 3GB内存 流沙金 32GB 移动联通电信4G手机 双卡双待', '4099.00', '4099.00', '4099.00', '100', '0', '', null, '/uploads/goods/20190528/5b4ee0e7N4e9893ac.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('39', '华为 HUAWEI nova 4e 3200万立体美颜AI超广角三摄珍珠屏6GB+128GB幻夜黑全网通版双4G手机', '6499.00', '6499.00', '6499.00', '100', '0', '', null, '/uploads/goods/20190528/659cfc78ee5678e2.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('40', '荣耀8X Max 7.12英寸90%屏占比珍珠屏  4GB+64GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待', '9799.00', '9799.00', '9799.00', '100', '0', '', null, '/uploads/goods/20190528/8219f89af12229c1.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('41', '荣耀畅玩8A 6.09英寸珍珠全面屏 震撼大音量 3GB+32GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待', '9299.00', '9299.00', '9299.00', '100', '0', '', null, '/uploads/goods/20190528/054fbc574b007149.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('42', '【千玺代言】华为新品 HUAWEI nova 4 极点全面屏手机 4800万超广角三摄 8GB+128GB 亮黑色 全网通双卡双待', '4499.00', '4499.00', '4499.00', '100', '0', '', null, '/uploads/goods/20190528/028857f503e52df0.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('43', '魅族 16s 骁龙855全面屏拍照游戏手机 6GB+128GB 碳纤黑 全网通移动联通电信4G手机 双卡双待', '7899.00', '7899.00', '7899.00', '100', '0', '', null, '/uploads/goods/20190528/2351cebef4cbe443.jpg', '0', '4', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('44', '小米8青春版 镜面渐变AI双摄 6GB+64GB 深空灰 全网通4G 双卡双待 全面屏拍照游戏智能手机', '1299.00', '1299.00', '1299.00', '100', '0', '', null, '/uploads/goods/20190528/b34c5ccc4c4fd548.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('45', '一加 OnePlus 7 Pro 2K+90Hz 流体屏 骁龙855旗舰 4800万超广角三摄 8GB+256GB 曜岩灰 全面屏拍照游戏手机', '7199.00', '7199.00', '7199.00', '100', '0', '', null, '/uploads/goods/20190528/5cdd0ce1Nf84c0c4d.jpg', '0', '6', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('46', '荣耀畅玩7C 全面屏手机 全网通标配版 3GB+32GB 铂光金 移动联通电信4G手机 双卡双待', '5499.00', '5499.00', '5499.00', '100', '0', '', null, '/uploads/goods/20190528/5b21ce25N131ce626.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('47', 'vivo Z3 6GB+128GB 极光蓝 性能实力派 全面屏游戏手机 移动联通电信全网通4G手机', '6899.00', '6899.00', '6899.00', '100', '0', '', null, '/uploads/goods/20190528/5bc8342aN898cb1e2.jpg', '0', '8', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('48', '荣耀Note10 全网通6G+64G 幻夜黑 移动联通电信4G全面屏手机 双卡双待 游戏手机', '1099.00', '1099.00', '1099.00', '100', '0', '', null, '/uploads/goods/20190528/5b6018c5N6f80495e.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('49', '小米9 SE 4800万超广角三摄 骁龙712 水滴全面屏 游戏智能拍照手机 6GB+64GB 全息幻彩蓝  全网通4G双卡双待', '7399.00', '7399.00', '7399.00', '100', '0', '', null, '/uploads/goods/20190528/e855a66ae2f1112e.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('50', '华为 HUAWEI nova 2S 全面屏四摄 6GB+64GB 樱粉金 移动联通电信4G手机 双卡双待', '3599.00', '3599.00', '3599.00', '100', '0', '', null, '/uploads/goods/20190528/5b3c24abN8090cb25.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('51', 'OPPO R17 2500万美颜拍照 6.4英寸水滴屏 光感屏幕指纹 8GB+128GB 流光蓝 全网通 双卡双待手机', '4499.00', '4499.00', '4499.00', '100', '0', '', null, '/uploads/goods/20190528/5b6ff426N6634c7de.jpg', '0', '7', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('52', 'vivo Z3 6GB+64GB 极光蓝 性能实力派 全面屏游戏手机 移动联通电信全网通4G手机', '8199.00', '8199.00', '8199.00', '100', '0', '', null, '/uploads/goods/20190528/5bc831fdN61f8d9d2.jpg', '0', '8', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('53', '【千玺代言】华为新品  HUAWEI nova 3全面屏高清四摄游戏手机 海报级自拍 6GB+128GB 蓝楹紫全网通双卡双待', '1999.00', '1999.00', '1999.00', '100', '0', '', null, '/uploads/goods/20190528/5b479102N039702ef.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('54', '华为 HUAWEI nova 3i 全面屏高清四摄游戏手机6GB+128GB 蓝楹紫 全网通移动联通电信4G手机双卡双待', '9599.00', '9599.00', '9599.00', '100', '0', '', null, '/uploads/goods/20190528/fb75d9b38a00e3d0.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('55', 'Apple iPhone 6s Plus (A1699) 128G 玫瑰金色 移动联通电信4G手机', '9099.00', '9099.00', '9099.00', '100', '0', '', null, '/uploads/goods/20190528/a3fe2eccd3a90a71.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('56', '华为 HUAWEI 畅享 9e 实力大音量高像素珍珠屏3GB+64GB幻夜黑全网通版双4G手机', '7799.00', '7799.00', '7799.00', '100', '0', '', null, '/uploads/goods/20190528/046c0c31716a7601.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('57', '荣耀Magic2魔法手机 麒麟980AI智能芯片 超广角AI三摄 6GB+128GB 渐变黑 移动联通电信4G手机 双卡双待', '8699.00', '8699.00', '8699.00', '100', '0', '', null, '/uploads/goods/20190528/70fbbccdf8811111.jpg', '0', '1', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('58', 'Apple iPhone XS (A2100)  256GB 深空灰色 移动联通电信4G手机', '3799.00', '3799.00', '3799.00', '100', '0', '', null, '/uploads/goods/20190528/d3273e91acc45417.jpg', '0', '3', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('59', '小米8屏幕指纹版 8GB+128GB 透明版 全网通4G 双卡双待 全面屏拍照游戏智能手机', '5199.00', '5199.00', '5199.00', '100', '0', '', null, '/uploads/goods/20190528/3ec982e47f5256f1.jpg', '0', '2', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('60', 'vivo U1 水滴全面屏 AI智慧拍照手机 3GB+32GB 极光色 移动联通电信全网通4G手机', '4099.00', '4099.00', '4099.00', '100', '0', '', null, '/uploads/goods/20190528/3ec982e47f5256f1.jpg', '0', '8', '72', '0', null, null, '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559054211', '1559054211', null);
INSERT INTO `pyg_goods` VALUES ('61', 'iphone xr 没朋友啊', '1000.00', '0.00', '0.00', '100', '0', '11111111', '<p>test</p>', '/uploads/goods/20190528/a3fe2eccd3a90a71.jpg', '16', '3', '72', '0', '0', '0.00', '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '[{\"id\":\"7\",\"attr_name\":\"毛重\",\"attr_value\":\"180g\"},{\"id\":\"8\",\"attr_name\":\"产地\",\"attr_value\":\"中国\"}]', '1559114885', '1559114885', null);
INSERT INTO `pyg_goods` VALUES ('62', 'iphone 6 没朋友啊', '100.00', '100.00', '80.00', '100', '0', '哈哈哈哈哈啊哈哈', '<p><img src=\"/ueditor/php/upload/image/20190714/1563117409.png\" title=\"1563117409.png\" alt=\"b1.png\"/><img src=\"/ueditor/php/upload/image/20190714/1563117413.png\" title=\"1563117413.png\" alt=\"b2.png\"/></p>', '\\uploads\\goods\\20190714\\thumb_b5acfdaa88ad05d4a4a7ad0722ee4229.png', '16', '3', '72', '0', '0', '0.00', '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '{\"7\":{\"attr_name\":\"毛重\",\"id\":\"7\",\"attr_value\":\"100g\"},\"8\":{\"attr_name\":\"产地\",\"id\":\"8\",\"attr_value\":\"中国\"}}', '1563117448', '1563117448', null);
INSERT INTO `pyg_goods` VALUES ('63', 'iphone 7 没朋友啊', '100.00', '100.00', '80.00', '100', '0', '哈哈哈哈哈啊哈哈', '<p><img src=\"/ueditor/php/upload/image/20190714/1563117409.png\" title=\"1563117409.png\" alt=\"b1.png\"/><img src=\"/ueditor/php/upload/image/20190714/1563117413.png\" title=\"1563117413.png\" alt=\"b2.png\"/></p>', '\\uploads\\goods\\20190714\\thumb_b5acfdaa88ad05d4a4a7ad0722ee4229.png', '16', '3', '72', '0', '0', '0.00', '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '{\"7\":{\"attr_name\":\"毛重\",\"id\":\"7\",\"attr_value\":\"100g\"},\"8\":{\"attr_name\":\"产地\",\"id\":\"8\",\"attr_value\":\"中国\"}}', '1563117611', '1563117611', null);
INSERT INTO `pyg_goods` VALUES ('64', 'iphone 8 没朋友啊', '100.00', '100.00', '80.00', '100', '0', '哈哈哈哈哈啊哈哈', '<p><img src=\"/ueditor/php/upload/image/20190714/1563117409.png\" title=\"1563117409.png\" alt=\"b1.png\"/><img src=\"/ueditor/php/upload/image/20190714/1563117413.png\" title=\"1563117413.png\" alt=\"b2.png\"/></p>', '\\uploads\\goods\\20190714\\thumb_b5acfdaa88ad05d4a4a7ad0722ee4229.png', '16', '3', '72', '0', '0', '0.00', '', '0', '0', '0', '1', '1', '1', '1', '1', '50', '0', '{\"7\":{\"attr_name\":\"毛重\",\"id\":\"7\",\"attr_value\":\"100g\"},\"8\":{\"attr_name\":\"产地\",\"id\":\"8\",\"attr_value\":\"中国\"}}', '1563118229', '1563118229', null);
INSERT INTO `pyg_goods` VALUES ('65', '苹果ss', '5000.00', '8000.00', '3000.00', '100', '0', '超级无敌手机', '<p>超级无敌手机苹果<img src=\"/ueditor/php/upload/image/20191201/1575189230352816.png\" alt=\"thumb_sma_d461cec28f433456f4b46190948523ea.png\" /></p><p style=\"text-align:center;\"><img src=\"/ueditor/php/upload/image/20191201/1575189246214729.png\" alt=\"1575189246214729.png\" /></p><p style=\"text-align:center;\"><img src=\"/ueditor/php/upload/image/20191201/1575189246854833.png\" alt=\"1575189246854833.png\" /></p><p style=\"text-align:center;\"><img src=\"/ueditor/php/upload/image/20191201/1575189246509413.png\" alt=\"1575189246509413.png\" /></p><p style=\"text-align:center;\"><img src=\"/ueditor/php/upload/image/20191201/1575189247656818.png\" alt=\"1575189247656818.png\" /></p><p><br /></p>', '\\uploads\\goods\\20191201\\thumb_7085ea844f54ed9cf7dac88e762d20ff.png', '16', '3', '72', '0', '0', '0.00', '', '0', '0', '0', '1', '1', '1', '1', '1', '50', null, '{\"7\":{\"attr_name\":\"毛重\",\"id\":\"7\",\"attr_value\":\"100\"},\"8\":{\"attr_name\":\"产地\",\"id\":\"8\",\"attr_value\":\"国产\"}}', '1575189330', '1575189330', null);

-- ----------------------------
-- Table structure for `pyg_goods_images`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_goods_images`;
CREATE TABLE `pyg_goods_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `pics_big` varchar(255) NOT NULL DEFAULT '' COMMENT '相册大图地址 800*800',
  `pics_sma` varchar(255) NOT NULL DEFAULT '' COMMENT '相册小图地址 400*400',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_goods_images
-- ----------------------------
INSERT INTO `pyg_goods_images` VALUES ('4', '1', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117427', null);
INSERT INTO `pyg_goods_images` VALUES ('5', '1', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117428', null);
INSERT INTO `pyg_goods_images` VALUES ('6', '1', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117428', null);
INSERT INTO `pyg_goods_images` VALUES ('7', '2', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117429', null);
INSERT INTO `pyg_goods_images` VALUES ('8', '2', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117429', null);
INSERT INTO `pyg_goods_images` VALUES ('9', '2', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117430', null);
INSERT INTO `pyg_goods_images` VALUES ('10', '3', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117430', null);
INSERT INTO `pyg_goods_images` VALUES ('11', '3', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117431', null);
INSERT INTO `pyg_goods_images` VALUES ('12', '3', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117431', null);
INSERT INTO `pyg_goods_images` VALUES ('13', '4', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117432', null);
INSERT INTO `pyg_goods_images` VALUES ('14', '4', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117432', null);
INSERT INTO `pyg_goods_images` VALUES ('15', '4', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117433', null);
INSERT INTO `pyg_goods_images` VALUES ('16', '5', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117433', null);
INSERT INTO `pyg_goods_images` VALUES ('17', '5', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117434', null);
INSERT INTO `pyg_goods_images` VALUES ('18', '5', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117434', null);
INSERT INTO `pyg_goods_images` VALUES ('19', '6', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117435', null);
INSERT INTO `pyg_goods_images` VALUES ('20', '6', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117435', null);
INSERT INTO `pyg_goods_images` VALUES ('21', '6', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117436', null);
INSERT INTO `pyg_goods_images` VALUES ('22', '7', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117436', null);
INSERT INTO `pyg_goods_images` VALUES ('23', '7', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117437', null);
INSERT INTO `pyg_goods_images` VALUES ('24', '7', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117437', null);
INSERT INTO `pyg_goods_images` VALUES ('25', '8', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117438', null);
INSERT INTO `pyg_goods_images` VALUES ('26', '8', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117438', null);
INSERT INTO `pyg_goods_images` VALUES ('27', '8', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117439', null);
INSERT INTO `pyg_goods_images` VALUES ('28', '9', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117439', null);
INSERT INTO `pyg_goods_images` VALUES ('29', '9', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117440', null);
INSERT INTO `pyg_goods_images` VALUES ('30', '9', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117440', null);
INSERT INTO `pyg_goods_images` VALUES ('31', '10', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117441', null);
INSERT INTO `pyg_goods_images` VALUES ('32', '10', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117441', null);
INSERT INTO `pyg_goods_images` VALUES ('33', '10', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117442', null);
INSERT INTO `pyg_goods_images` VALUES ('34', '11', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117442', null);
INSERT INTO `pyg_goods_images` VALUES ('35', '11', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117443', null);
INSERT INTO `pyg_goods_images` VALUES ('36', '11', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117443', null);
INSERT INTO `pyg_goods_images` VALUES ('37', '12', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117444', null);
INSERT INTO `pyg_goods_images` VALUES ('38', '12', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117444', null);
INSERT INTO `pyg_goods_images` VALUES ('39', '12', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117445', null);
INSERT INTO `pyg_goods_images` VALUES ('40', '13', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117445', null);
INSERT INTO `pyg_goods_images` VALUES ('41', '13', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117446', null);
INSERT INTO `pyg_goods_images` VALUES ('42', '13', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117446', null);
INSERT INTO `pyg_goods_images` VALUES ('43', '14', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117447', null);
INSERT INTO `pyg_goods_images` VALUES ('44', '14', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117447', null);
INSERT INTO `pyg_goods_images` VALUES ('45', '14', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117447', null);
INSERT INTO `pyg_goods_images` VALUES ('46', '15', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117448', null);
INSERT INTO `pyg_goods_images` VALUES ('47', '15', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117448', null);
INSERT INTO `pyg_goods_images` VALUES ('48', '15', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117449', null);
INSERT INTO `pyg_goods_images` VALUES ('49', '16', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117449', null);
INSERT INTO `pyg_goods_images` VALUES ('50', '16', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117450', null);
INSERT INTO `pyg_goods_images` VALUES ('51', '16', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117450', null);
INSERT INTO `pyg_goods_images` VALUES ('52', '17', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117451', null);
INSERT INTO `pyg_goods_images` VALUES ('53', '17', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117451', null);
INSERT INTO `pyg_goods_images` VALUES ('54', '17', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117452', null);
INSERT INTO `pyg_goods_images` VALUES ('55', '18', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117452', null);
INSERT INTO `pyg_goods_images` VALUES ('56', '18', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117453', null);
INSERT INTO `pyg_goods_images` VALUES ('57', '18', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117453', null);
INSERT INTO `pyg_goods_images` VALUES ('58', '19', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117454', null);
INSERT INTO `pyg_goods_images` VALUES ('59', '19', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117454', null);
INSERT INTO `pyg_goods_images` VALUES ('60', '19', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117455', null);
INSERT INTO `pyg_goods_images` VALUES ('61', '20', '/images/upload/goods/2018/04-17\\thumb_800_b1.png', '/images/upload/goods/2018/04-17\\thumb_400_b1.png', '1554269180', '1559117455', null);
INSERT INTO `pyg_goods_images` VALUES ('62', '20', '/images/upload/goods/2018/04-17\\thumb_800_b2.png', '/images/upload/goods/2018/04-17\\thumb_400_b2.png', '1554269180', '1559117456', null);
INSERT INTO `pyg_goods_images` VALUES ('63', '20', '/images/upload/goods/2018/04-17\\thumb_800_b3.png', '/images/upload/goods/2018/04-17\\thumb_400_b3.png', '1554269180', '1559117456', null);
INSERT INTO `pyg_goods_images` VALUES ('64', '20', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559117974', null);
INSERT INTO `pyg_goods_images` VALUES ('65', '20', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559117974', null);
INSERT INTO `pyg_goods_images` VALUES ('66', '20', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559117974', null);
INSERT INTO `pyg_goods_images` VALUES ('67', '21', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118009', null);
INSERT INTO `pyg_goods_images` VALUES ('68', '21', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118010', null);
INSERT INTO `pyg_goods_images` VALUES ('69', '21', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118010', null);
INSERT INTO `pyg_goods_images` VALUES ('70', '22', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118010', null);
INSERT INTO `pyg_goods_images` VALUES ('71', '22', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118010', null);
INSERT INTO `pyg_goods_images` VALUES ('72', '22', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118011', null);
INSERT INTO `pyg_goods_images` VALUES ('73', '23', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118011', null);
INSERT INTO `pyg_goods_images` VALUES ('74', '23', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118011', null);
INSERT INTO `pyg_goods_images` VALUES ('75', '23', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118012', null);
INSERT INTO `pyg_goods_images` VALUES ('76', '24', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118012', null);
INSERT INTO `pyg_goods_images` VALUES ('77', '24', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118012', null);
INSERT INTO `pyg_goods_images` VALUES ('78', '24', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118013', null);
INSERT INTO `pyg_goods_images` VALUES ('79', '25', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118013', null);
INSERT INTO `pyg_goods_images` VALUES ('80', '25', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118013', null);
INSERT INTO `pyg_goods_images` VALUES ('81', '25', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118013', null);
INSERT INTO `pyg_goods_images` VALUES ('82', '26', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118014', null);
INSERT INTO `pyg_goods_images` VALUES ('83', '26', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118014', null);
INSERT INTO `pyg_goods_images` VALUES ('84', '26', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118014', null);
INSERT INTO `pyg_goods_images` VALUES ('85', '27', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118015', null);
INSERT INTO `pyg_goods_images` VALUES ('86', '27', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118015', null);
INSERT INTO `pyg_goods_images` VALUES ('87', '27', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118015', null);
INSERT INTO `pyg_goods_images` VALUES ('88', '28', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118016', null);
INSERT INTO `pyg_goods_images` VALUES ('89', '28', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118016', null);
INSERT INTO `pyg_goods_images` VALUES ('90', '28', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118016', null);
INSERT INTO `pyg_goods_images` VALUES ('91', '29', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118016', null);
INSERT INTO `pyg_goods_images` VALUES ('92', '29', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118017', null);
INSERT INTO `pyg_goods_images` VALUES ('93', '29', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118017', null);
INSERT INTO `pyg_goods_images` VALUES ('94', '30', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118017', null);
INSERT INTO `pyg_goods_images` VALUES ('95', '30', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118017', null);
INSERT INTO `pyg_goods_images` VALUES ('96', '30', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118018', null);
INSERT INTO `pyg_goods_images` VALUES ('97', '31', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118018', null);
INSERT INTO `pyg_goods_images` VALUES ('98', '31', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118018', null);
INSERT INTO `pyg_goods_images` VALUES ('99', '31', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118019', null);
INSERT INTO `pyg_goods_images` VALUES ('100', '32', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118019', null);
INSERT INTO `pyg_goods_images` VALUES ('101', '32', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118019', null);
INSERT INTO `pyg_goods_images` VALUES ('102', '32', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118019', null);
INSERT INTO `pyg_goods_images` VALUES ('103', '33', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118020', null);
INSERT INTO `pyg_goods_images` VALUES ('104', '33', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118020', null);
INSERT INTO `pyg_goods_images` VALUES ('105', '33', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118020', null);
INSERT INTO `pyg_goods_images` VALUES ('106', '34', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118021', null);
INSERT INTO `pyg_goods_images` VALUES ('107', '34', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118021', null);
INSERT INTO `pyg_goods_images` VALUES ('108', '34', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118021', null);
INSERT INTO `pyg_goods_images` VALUES ('109', '35', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118022', null);
INSERT INTO `pyg_goods_images` VALUES ('110', '35', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118022', null);
INSERT INTO `pyg_goods_images` VALUES ('111', '35', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118022', null);
INSERT INTO `pyg_goods_images` VALUES ('112', '36', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118023', null);
INSERT INTO `pyg_goods_images` VALUES ('113', '36', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118023', null);
INSERT INTO `pyg_goods_images` VALUES ('114', '36', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118023', null);
INSERT INTO `pyg_goods_images` VALUES ('115', '37', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118023', null);
INSERT INTO `pyg_goods_images` VALUES ('116', '37', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118024', null);
INSERT INTO `pyg_goods_images` VALUES ('117', '37', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118024', null);
INSERT INTO `pyg_goods_images` VALUES ('118', '38', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118024', null);
INSERT INTO `pyg_goods_images` VALUES ('119', '38', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118024', null);
INSERT INTO `pyg_goods_images` VALUES ('120', '38', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118025', null);
INSERT INTO `pyg_goods_images` VALUES ('121', '39', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118025', null);
INSERT INTO `pyg_goods_images` VALUES ('122', '39', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118025', null);
INSERT INTO `pyg_goods_images` VALUES ('123', '39', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118026', null);
INSERT INTO `pyg_goods_images` VALUES ('124', '40', '/images/upload/goods/2018/04-17\\thumb_800_4c67162a2a45e4c4fbfea50b64241567.png', '/images/upload/goods/2018/04-17\\thumb_400_4c67162a2a45e4c4fbfea50b64241567.png', '1554269233', '1559118026', null);
INSERT INTO `pyg_goods_images` VALUES ('125', '40', '/images/upload/goods/2018/04-17\\thumb_800_712e9a715093fd02c1cc25b662dc5f86.png', '/images/upload/goods/2018/04-17\\thumb_400_712e9a715093fd02c1cc25b662dc5f86.png', '1554269233', '1559118026', null);
INSERT INTO `pyg_goods_images` VALUES ('126', '40', '/images/upload/goods/2018/04-17\\thumb_800_224ba3b41fa7f67f7861581748854b0c.png', '/images/upload/goods/2018/04-17\\thumb_400_224ba3b41fa7f67f7861581748854b0c.png', '1554269233', '1559118026', null);
INSERT INTO `pyg_goods_images` VALUES ('127', '64', '\\uploads\\goods\\20190714\\thumb_big_69d06204f467376f81db000ecbae08aa.png', '\\uploads\\goods\\20190714\\thumb_sma_69d06204f467376f81db000ecbae08aa.png', '1563118230', '1563118230', null);
INSERT INTO `pyg_goods_images` VALUES ('128', '64', '\\uploads\\goods\\20190714\\thumb_big_e5bbdb24354c0cc7c09afd2ff2a3b528.png', '\\uploads\\goods\\20190714\\thumb_sma_e5bbdb24354c0cc7c09afd2ff2a3b528.png', '1563118230', '1563118230', null);
INSERT INTO `pyg_goods_images` VALUES ('129', '64', '\\uploads\\goods\\20190714\\thumb_big_ee0b4014d58a806cc0a150438d68a003.png', '\\uploads\\goods\\20190714\\thumb_sma_ee0b4014d58a806cc0a150438d68a003.png', '1563118230', '1563118230', null);
INSERT INTO `pyg_goods_images` VALUES ('130', '65', '\\uploads\\goods\\20191201\\thumb_big_e106fcdbb59491efe784b7eff2c0db6a.png', '\\uploads\\goods\\20191201\\thumb_sma_e106fcdbb59491efe784b7eff2c0db6a.png', '1575189331', '1575189331', null);
INSERT INTO `pyg_goods_images` VALUES ('131', '65', '\\uploads\\goods\\20191201\\thumb_big_b59652f0496e205fd115c657ef3a200c.png', '\\uploads\\goods\\20191201\\thumb_sma_b59652f0496e205fd115c657ef3a200c.png', '1575189331', '1575189331', null);
INSERT INTO `pyg_goods_images` VALUES ('132', '65', '\\uploads\\goods\\20191201\\thumb_big_048beec11079d5a706a06dd80aebf501.png', '\\uploads\\goods\\20191201\\thumb_sma_048beec11079d5a706a06dd80aebf501.png', '1575189331', '1575189331', null);
INSERT INTO `pyg_goods_images` VALUES ('133', '65', '\\uploads\\goods\\20191201\\thumb_big_135f10feb0ad8a4d03867ce0295cba96.png', '\\uploads\\goods\\20191201\\thumb_sma_135f10feb0ad8a4d03867ce0295cba96.png', '1575189331', '1575189331', null);

-- ----------------------------
-- Table structure for `pyg_order`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_order`;
CREATE TABLE `pyg_order` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_sn` varchar(20) NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0待付款 1待发货 2 待收货 3 待评价 4 已完成 5已取消 6已退货 7已退款',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `phone` varchar(60) NOT NULL DEFAULT '' COMMENT '手机',
  `shipping_code` varchar(32) DEFAULT '' COMMENT '物流code',
  `shipping_name` varchar(120) DEFAULT '' COMMENT '物流名称',
  `shipping_sn` varchar(255) DEFAULT '' COMMENT '物流单号',
  `pay_code` varchar(32) DEFAULT '' COMMENT '支付code',
  `pay_name` varchar(120) DEFAULT '' COMMENT '支付方式名称',
  `invoice_title` varchar(256) DEFAULT '' COMMENT '发票抬头',
  `taxpayer` varchar(30) DEFAULT '' COMMENT '纳税人识别号',
  `invoice_desc` varchar(30) DEFAULT NULL COMMENT '发票内容',
  `user_note` varchar(255) DEFAULT '' COMMENT '用户备注',
  `goods_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品总价',
  `shipping_price` decimal(10,2) DEFAULT '0.00' COMMENT '邮费',
  `coupon_price` decimal(10,2) DEFAULT '0.00' COMMENT '优惠券抵扣',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付款金额',
  `total_amount` decimal(10,2) DEFAULT '0.00' COMMENT '订单总价',
  `create_time` int(11) unsigned DEFAULT '0' COMMENT '下单时间',
  `shipping_time` int(11) DEFAULT '0' COMMENT '最新发货时间',
  `confirm_time` int(10) DEFAULT '0' COMMENT '收货确认时间',
  `pay_time` int(10) unsigned DEFAULT '0' COMMENT '支付时间',
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `add_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_order
-- ----------------------------
INSERT INTO `pyg_order` VALUES ('1', '1554474335691677', '3', '0', '小小', '河北省石家庄市新华区通天大道88号', '19987654232', '', '', '', '', '', '', '', null, '', '200000.00', '0.00', '0.00', '200000.00', '200000.00', '1554474335', '0', '0', '0', '1554474335', null);
INSERT INTO `pyg_order` VALUES ('2', '1554474338844748', '3', '0', '小小', '河北省石家庄市长安区通天大道98号', '19987654232', '', '', '', '', '', '', '', null, '', '200000.00', '0.00', '0.00', '200000.00', '200000.00', '1554474338', '0', '0', '0', '1554474338', null);
INSERT INTO `pyg_order` VALUES ('3', '1554474343947368', '3', '0', '小小', '河北省石家庄市新华区通天大道98号', '19987654232', '', '', '', '', '', '', '', null, '', '200000.00', '0.00', '0.00', '200000.00', '200000.00', '1554474343', '0', '0', '0', '1554474343', null);
INSERT INTO `pyg_order` VALUES ('4', '1559133827743846', '1', '0', '小小', '北京市顺义区马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', '', '', '', '', null, '', '290400.00', '0.00', '0.00', '290400.00', '290400.00', '1559133827', '0', '0', '0', '1559133827', null);
INSERT INTO `pyg_order` VALUES ('5', '1559133919729400', '1', '0', '小小', '北京市顺义区马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', '', '', '', '', null, '', '0.00', '0.00', '0.00', '0.00', '0.00', '1559133919', '0', '0', '0', '1559133919', null);
INSERT INTO `pyg_order` VALUES ('6', '1559134045881582', '1', '0', '小小', '北京市顺义区马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', '', '', '', '', null, '', '0.00', '0.00', '0.00', '0.00', '0.00', '1559134045', '0', '0', '0', '1559134045', null);
INSERT INTO `pyg_order` VALUES ('7', '1559134049695647', '1', '0', '小小', '北京市顺义区马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', '', '', '', '', null, '', '0.00', '0.00', '0.00', '0.00', '0.00', '1559134049', '0', '0', '0', '1559134049', null);
INSERT INTO `pyg_order` VALUES ('8', '1559134100455314', '1', '0', '小小', '北京市顺义区马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', '', '', '', '', null, '', '0.00', '0.00', '0.00', '0.00', '0.00', '1559134100', '0', '0', '0', '1559134100', null);
INSERT INTO `pyg_order` VALUES ('9', '1559134151617041', '1', '0', '小小', '北京市顺义区马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', 'alipay', '支付宝', '', '', null, '', '0.00', '0.00', '0.00', '0.00', '0.00', '1559134152', '0', '0', '0', '1559134162', null);
INSERT INTO `pyg_order` VALUES ('10', '1559134264534731', '1', '0', '小小', '北京市顺义区马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', 'alipay', '支付宝', '', '', null, '', '290400.00', '0.00', '0.00', '290400.00', '290400.00', '1559134264', '0', '0', '0', '1559134266', null);
INSERT INTO `pyg_order` VALUES ('11', '1560497974439787', '1', '0', '小小', '马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', 'alipay', '支付宝', '', '', null, '', '291600.00', '0.00', '0.00', '291600.00', '291600.00', '1560497974', '0', '0', '0', '1560497977', null);
INSERT INTO `pyg_order` VALUES ('12', '1560498707915264', '1', '0', '小小', '马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', 'alipay', '支付宝', '', '', null, '', '292800.00', '0.00', '0.00', '292800.00', '292800.00', '1560498707', '0', '0', '0', '1560498726', null);
INSERT INTO `pyg_order` VALUES ('13', '1560499416592314', '1', '0', '小小', '马坡镇黑马程序员', '19912345678', 'yuantong', '圆通', '', 'alipay', '支付宝', '', '', null, '', '294000.00', '0.00', '0.00', '294000.00', '294000.00', '1560499416', '0', '0', '0', '1560499431', null);
INSERT INTO `pyg_order` VALUES ('14', '1575269487483155', '2', '0', '小小', '河北省石家庄市长安区通天大道98号', '19987654232', '', '', '', 'alipay', null, '', '', null, '', '12400.00', '0.00', '0.00', '12400.00', '12400.00', '1575269487', '0', '0', '0', '1575269492', null);
INSERT INTO `pyg_order` VALUES ('15', '1575269547500437', '2', '0', '小小', '河北省石家庄市长安区通天大道98号', '19987654232', '', '', '', 'alipay', null, '', '', null, '', '12400.00', '0.00', '0.00', '12400.00', '12400.00', '1575269547', '0', '0', '0', '1575269548', null);

-- ----------------------------
-- Table structure for `pyg_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_order_goods`;
CREATE TABLE `pyg_order_goods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id自增',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `spec_goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规格商品id',
  `number` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '购买数量',
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_logo` varchar(255) DEFAULT NULL,
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品单价',
  `spec_value_names` varchar(128) DEFAULT '' COMMENT '规格对应的中文名字',
  `is_comment` tinyint(1) DEFAULT '0' COMMENT '是否评价',
  `status` tinyint(1) DEFAULT '0' COMMENT '0未发货，1已发货，2已换货，3已退货',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_order_goods
-- ----------------------------
INSERT INTO `pyg_order_goods` VALUES ('1', '1', '1', '1', '4', 'Apple iPhone', 'http://api.php66.com/images/upload/goods/2018/04-17/f51212a40b1d41dc85b9d17397ffba69.png', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1554474335', '1554474335', null);
INSERT INTO `pyg_order_goods` VALUES ('2', '1', '1', '2', '21', 'Apple iPhone', 'http://api.php66.com/images/upload/goods/2018/04-17/f51212a40b1d41dc85b9d17397ffba69.png', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1554474335', '1554474335', null);
INSERT INTO `pyg_order_goods` VALUES ('3', '2', '1', '1', '4', 'Apple iPhone', 'http://api.php66.com/images/upload/goods/2018/04-17/f51212a40b1d41dc85b9d17397ffba69.png', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1554474338', '1554474338', null);
INSERT INTO `pyg_order_goods` VALUES ('4', '2', '1', '2', '21', 'Apple iPhone', 'http://api.php66.com/images/upload/goods/2018/04-17/f51212a40b1d41dc85b9d17397ffba69.png', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1554474338', '1554474338', null);
INSERT INTO `pyg_order_goods` VALUES ('5', '3', '1', '1', '4', 'Apple iPhone', 'http://api.php66.com/images/upload/goods/2018/04-17/f51212a40b1d41dc85b9d17397ffba69.png', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1554474343', '1554474343', null);
INSERT INTO `pyg_order_goods` VALUES ('6', '3', '1', '2', '21', 'Apple iPhone', 'http://api.php66.com/images/upload/goods/2018/04-17/f51212a40b1d41dc85b9d17397ffba69.png', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1554474343', '1554474343', null);
INSERT INTO `pyg_order_goods` VALUES ('7', '4', '1', '1', '4', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1559133827', '1559133827', null);
INSERT INTO `pyg_order_goods` VALUES ('8', '4', '1', '2', '21', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1559133827', '1559133827', null);
INSERT INTO `pyg_order_goods` VALUES ('9', '4', '1', '3', '1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：128G', '0', '0', '1559133827', '1559133827', null);
INSERT INTO `pyg_order_goods` VALUES ('10', '4', '1', '10', '10', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：金色 内存：64G', '0', '0', '1559133827', '1559133827', null);
INSERT INTO `pyg_order_goods` VALUES ('11', '4', '61', '804', '2', 'iphone xr 没朋友啊', '\\uploads\\goods\\20190529\\thumb_731f96fc0f729268c44ed0e3784598fe.png', '1200.00', '颜色:白色 版本:全网通（6G+64G）', '0', '0', '1559133827', '1559133827', null);
INSERT INTO `pyg_order_goods` VALUES ('12', '10', '1', '1', '4', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1559134264', '1559134264', null);
INSERT INTO `pyg_order_goods` VALUES ('13', '10', '1', '2', '21', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1559134264', '1559134264', null);
INSERT INTO `pyg_order_goods` VALUES ('14', '10', '1', '3', '1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：128G', '0', '0', '1559134264', '1559134264', null);
INSERT INTO `pyg_order_goods` VALUES ('15', '10', '1', '10', '10', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：金色 内存：64G', '0', '0', '1559134264', '1559134264', null);
INSERT INTO `pyg_order_goods` VALUES ('16', '10', '61', '804', '2', 'iphone xr 没朋友啊', '\\uploads\\goods\\20190529\\thumb_731f96fc0f729268c44ed0e3784598fe.png', '1200.00', '颜色:白色 版本:全网通（6G+64G）', '0', '0', '1559134264', '1559134264', null);
INSERT INTO `pyg_order_goods` VALUES ('17', '11', '1', '1', '4', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1560497975', '1560497975', null);
INSERT INTO `pyg_order_goods` VALUES ('18', '11', '1', '2', '21', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1560497975', '1560497975', null);
INSERT INTO `pyg_order_goods` VALUES ('19', '11', '1', '3', '1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：128G', '0', '0', '1560497975', '1560497975', null);
INSERT INTO `pyg_order_goods` VALUES ('20', '11', '1', '10', '10', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：金色 内存：64G', '0', '0', '1560497975', '1560497975', null);
INSERT INTO `pyg_order_goods` VALUES ('21', '11', '61', '804', '3', 'iphone xr 没朋友啊', '/uploads/goods/20190528/a3fe2eccd3a90a71.jpg', '1200.00', '颜色:白色 版本:全网通（6G+64G）', '0', '0', '1560497975', '1560497975', null);
INSERT INTO `pyg_order_goods` VALUES ('22', '12', '1', '1', '4', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1560498707', '1560498707', null);
INSERT INTO `pyg_order_goods` VALUES ('23', '12', '1', '2', '21', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1560498707', '1560498707', null);
INSERT INTO `pyg_order_goods` VALUES ('24', '12', '1', '3', '1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：128G', '0', '0', '1560498707', '1560498707', null);
INSERT INTO `pyg_order_goods` VALUES ('25', '12', '1', '10', '10', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：金色 内存：64G', '0', '0', '1560498707', '1560498707', null);
INSERT INTO `pyg_order_goods` VALUES ('26', '12', '61', '804', '4', 'iphone xr 没朋友啊', '/uploads/goods/20190528/a3fe2eccd3a90a71.jpg', '1200.00', '颜色:白色 版本:全网通（6G+64G）', '0', '0', '1560498707', '1560498707', null);
INSERT INTO `pyg_order_goods` VALUES ('27', '13', '1', '1', '4', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：32G', '0', '0', '1560499416', '1560499416', null);
INSERT INTO `pyg_order_goods` VALUES ('28', '13', '1', '2', '21', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：64G', '0', '0', '1560499416', '1560499416', null);
INSERT INTO `pyg_order_goods` VALUES ('29', '13', '1', '3', '1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：黑色 内存：128G', '0', '0', '1560499416', '1560499416', null);
INSERT INTO `pyg_order_goods` VALUES ('30', '13', '1', '10', '10', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏手机 双卡双待', '/uploads/goods/20190528/865565d919219154.jpg', '8000.00', '颜色：金色 内存：64G', '0', '0', '1560499416', '1560499416', null);
INSERT INTO `pyg_order_goods` VALUES ('31', '13', '61', '804', '4', 'iphone xr 没朋友啊', '/uploads/goods/20190528/a3fe2eccd3a90a71.jpg', '1200.00', '颜色:白色 版本:全网通（6G+64G）', '0', '0', '1560499416', '1560499416', null);
INSERT INTO `pyg_order_goods` VALUES ('32', '13', '61', '803', '1', 'iphone xr 没朋友啊', '/uploads/goods/20190528/a3fe2eccd3a90a71.jpg', '1200.00', '颜色:白色 版本:全网通（4G+64G）', '0', '0', '1560499416', '1560499416', null);
INSERT INTO `pyg_order_goods` VALUES ('33', '14', '65', '809', '1', '苹果ss', '\\uploads\\goods\\20191201\\thumb_7085ea844f54ed9cf7dac88e762d20ff.png', '6200.00', '颜色:黑色 版本:全网通（4G+64G）', '0', '0', '1575202898', '1575202898', null);
INSERT INTO `pyg_order_goods` VALUES ('34', '15', '65', '809', '1', '苹果ss', '\\uploads\\goods\\20191201\\thumb_7085ea844f54ed9cf7dac88e762d20ff.png', '6200.00', '颜色:黑色 版本:全网通（4G+64G）', '0', '0', '1575203239', '1575203239', null);
INSERT INTO `pyg_order_goods` VALUES ('35', '16', '65', '809', '1', '苹果ss', '\\uploads\\goods\\20191201\\thumb_7085ea844f54ed9cf7dac88e762d20ff.png', '6200.00', '颜色:黑色 版本:全网通（4G+64G）', '0', '0', '1575204195', '1575204195', null);
INSERT INTO `pyg_order_goods` VALUES ('36', '14', '65', '809', '2', '苹果ss', '\\uploads\\goods\\20191201\\thumb_7085ea844f54ed9cf7dac88e762d20ff.png', '6200.00', '颜色:黑色 版本:全网通（4G+64G）', '0', '0', '1575269487', '1575269487', null);
INSERT INTO `pyg_order_goods` VALUES ('37', '15', '65', '809', '2', '苹果ss', '\\uploads\\goods\\20191201\\thumb_7085ea844f54ed9cf7dac88e762d20ff.png', '6200.00', '颜色:黑色 版本:全网通（4G+64G）', '0', '0', '1575269547', '1575269547', null);

-- ----------------------------
-- Table structure for `pyg_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_pay_log`;
CREATE TABLE `pyg_pay_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `json` text COMMENT '通知数据',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_pay_log
-- ----------------------------
INSERT INTO `pyg_pay_log` VALUES ('1', 'test', '{\"id\":\"evt_401180105155030001274902\",\"created\":1515138630,\"livemode\":false,\"type\":\"charge.succeeded\",\"data\":{\"object\":{\"id\":\"ch_9Si1GGuzvHGKnDeL0KXrolq5\",\"object\":\"charge\",\"created\":1515138618,\"livemode\":false,\"paid\":true,\"refunded\":false,\"reversed\":false,\"app\":\"app_r1uDe9rDashboard\",\"channel\":\"wx_pub_qr\",\"order_no\":\"4f5d663588yg667d\",\"client_ip\":\"139.224.154.17\",\"amount\":5,\"amount_settle\":5,\"currency\":\"cny\",\"subject\":\"Your subject\",\"body\":\"Your body\",\"extra\":{\"product_id\":\"testlab1Prepinpula\",\"bank_type\":\"CFT\",\"cash_fee\":\"5\",\"is_subscribe\":\"Y\",\"open_id\":\"o9zpMs0-e99sdenrxkDlyebk1cmm\"},\"time_paid\":1515138629,\"time_expire\":1515142215,\"time_settle\":null,\"transaction_no\":\"4200000018201801058463402174\",\"refunds\":{\"object\":\"list\",\"url\":\"/v1/charges/ch_9Si1GGuzvHGKnDeL0KXrolq5/refunds\",\"has_more\":false,\"data\":[]},\"amount_refunded\":0,\"failure_code\":null,\"failure_msg\":null,\"metadata\":{\"userStr\":\"KTs/YDg3ZFUFONZUC10SuA==\"},\"credential\":{},\"description\":\"Your description\"}},\"object\":\"event\",\"request\":\"iar_yTSGePjPG0m1iH8OdfyDCijP\",\"pending_webhooks\":0}', '1561175980', '1561175980', null);
INSERT INTO `pyg_pay_log` VALUES ('2', 'test', '{\"id\":\"evt_400190622120110991007202\",\"created\":1561176070,\"livemode\":false,\"type\":\"charge.succeeded\",\"data\":{\"object\":{\"id\":\"ch_9Sa1KOPCmfL040mXPCXPabPK\",\"object\":\"charge\",\"created\":1561176064,\"livemode\":false,\"paid\":true,\"refunded\":false,\"reversed\":false,\"app\":\"app_nTG0uPa5OWH4mH0m\",\"channel\":\"wx_pub_qr\",\"order_no\":\"1561176058816354\",\"client_ip\":\"127.0.0.1\",\"amount\":1,\"amount_settle\":1,\"currency\":\"cny\",\"subject\":\"Your Subject\",\"body\":\"Your Body\",\"extra\":{\"product_id\":\"26\",\"open_id\":\"aHenbLbTKa1GKGWn1400KSiD\",\"bank_type\":\"your bank type\"},\"time_paid\":1561176070,\"time_expire\":1561183264,\"time_settle\":null,\"transaction_no\":\"1264118434201906225945647569\",\"refunds\":{\"object\":\"list\",\"url\":\"/v1/charges/ch_9Sa1KOPCmfL040mXPCXPabPK/refunds\",\"has_more\":false,\"data\":[]},\"amount_refunded\":0,\"failure_code\":null,\"failure_msg\":null,\"metadata\":{},\"credential\":{},\"description\":null}},\"object\":\"event\",\"request\":\"iar_4uf5SSi1OaXDLOCKu5P4GOWT\",\"pending_webhooks\":0}', '1561176070', '1561176070', null);
INSERT INTO `pyg_pay_log` VALUES ('3', '1561176058816354', '{\"id\":\"evt_400190622120110991007202\",\"created\":1561176070,\"livemode\":false,\"type\":\"charge.succeeded\",\"data\":{\"object\":{\"id\":\"ch_9Sa1KOPCmfL040mXPCXPabPK\",\"object\":\"charge\",\"created\":1561176064,\"livemode\":false,\"paid\":true,\"refunded\":false,\"reversed\":false,\"app\":\"app_nTG0uPa5OWH4mH0m\",\"channel\":\"wx_pub_qr\",\"order_no\":\"1561176058816354\",\"client_ip\":\"127.0.0.1\",\"amount\":1,\"amount_settle\":1,\"currency\":\"cny\",\"subject\":\"Your Subject\",\"body\":\"Your Body\",\"extra\":{\"product_id\":\"26\",\"open_id\":\"aHenbLbTKa1GKGWn1400KSiD\",\"bank_type\":\"your bank type\"},\"time_paid\":1561176070,\"time_expire\":1561183264,\"time_settle\":null,\"transaction_no\":\"1264118434201906225945647569\",\"refunds\":{\"object\":\"list\",\"url\":\"/v1/charges/ch_9Sa1KOPCmfL040mXPCXPabPK/refunds\",\"has_more\":false,\"data\":[]},\"amount_refunded\":0,\"failure_code\":null,\"failure_msg\":null,\"metadata\":{},\"credential\":{},\"description\":null}},\"object\":\"event\",\"request\":\"iar_4uf5SSi1OaXDLOCKu5P4GOWT\",\"pending_webhooks\":0}', '1561176070', '1561176070', null);
INSERT INTO `pyg_pay_log` VALUES ('5', '1561177187381183', '{\"id\":\"evt_400190622121959032323003\",\"created\":1561177199,\"livemode\":false,\"type\":\"charge.succeeded\",\"data\":{\"object\":{\"id\":\"ch_qDe1C0KaH488vrTKSGbzLub1\",\"object\":\"charge\",\"created\":1561177196,\"livemode\":false,\"paid\":true,\"refunded\":false,\"reversed\":false,\"app\":\"app_nTG0uPa5OWH4mH0m\",\"channel\":\"wx_pub_qr\",\"order_no\":\"1561177187381183\",\"client_ip\":\"127.0.0.1\",\"amount\":1,\"amount_settle\":1,\"currency\":\"cny\",\"subject\":\"Your Subject\",\"body\":\"Your Body\",\"extra\":{\"product_id\":\"27\",\"open_id\":\"bHOif1jTW5S49iTaf9e1OK08\",\"bank_type\":\"your bank type\"},\"time_paid\":1561177199,\"time_expire\":1561184396,\"time_settle\":null,\"transaction_no\":\"1208265793201906221596411364\",\"refunds\":{\"object\":\"list\",\"url\":\"/v1/charges/ch_qDe1C0KaH488vrTKSGbzLub1/refunds\",\"has_more\":false,\"data\":[]},\"amount_refunded\":0,\"failure_code\":null,\"failure_msg\":null,\"metadata\":{},\"credential\":{},\"description\":null}},\"object\":\"event\",\"request\":\"iar_rj1OC4Ty9uzL8uzLCOPSS4aD\",\"pending_webhooks\":0}', '1561177200', '1561177200', null);

-- ----------------------------
-- Table structure for `pyg_profile`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_profile`;
CREATE TABLE `pyg_profile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `idnum` varchar(30) DEFAULT NULL COMMENT '身份证号',
  `card` varchar(255) DEFAULT NULL COMMENT '银行卡号',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_profile
-- ----------------------------
INSERT INTO `pyg_profile` VALUES ('1', '1', '232332198008083321', '421656421254789', '1520408547', '1520408547', null);
INSERT INTO `pyg_profile` VALUES ('2', '2', '435332198108083312', '521656421254777', '1520408547', '1520408547', null);
INSERT INTO `pyg_profile` VALUES ('3', '3', '655332198108083357', '681656421254787', '1520408547', '1520408547', null);
INSERT INTO `pyg_profile` VALUES ('4', '4', '987067198208083734', '843123421257829', '1520408547', '1520408547', null);
INSERT INTO `pyg_profile` VALUES ('5', '5', '657067198408083256', '753623421259523', '1520408547', '1520408547', null);
INSERT INTO `pyg_profile` VALUES ('6', '6', '746067198608089463', '534623421259125', '1520408547', '1520408547', null);
INSERT INTO `pyg_profile` VALUES ('7', '7', '745367198708089414', '514623426449165', '1520408547', '1520408547', null);

-- ----------------------------
-- Table structure for `pyg_role`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_role`;
CREATE TABLE `pyg_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色/用户组名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `role_auth_ids` varchar(128) NOT NULL DEFAULT '' COMMENT '权限ids,1,2,5，权限表中的主键集合',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_role
-- ----------------------------
INSERT INTO `pyg_role` VALUES ('1', '超级管理员', null, '', null, null, null);
INSERT INTO `pyg_role` VALUES ('2', '主管', null, '1,4,5,2,8,96', '1520408547', '1521337606', null);
INSERT INTO `pyg_role` VALUES ('3', '经理', null, '1,4,2,9,10,3,12', '1520408547', '1550547631', null);
INSERT INTO `pyg_role` VALUES ('10', '组长', '权限很小啦', '1,4,5,6,7,2,8,9,13,15,10,14', '1557581260', '1557581268', null);

-- ----------------------------
-- Table structure for `pyg_spec`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_spec`;
CREATE TABLE `pyg_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格表',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格类型',
  `spec_name` varchar(55) NOT NULL DEFAULT '' COMMENT '规格名称',
  `sort` int(11) DEFAULT '50' COMMENT '排序',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_spec
-- ----------------------------
INSERT INTO `pyg_spec` VALUES ('3', '17', '口味', '50', null, null, null);
INSERT INTO `pyg_spec` VALUES ('4', '17', '包装', '50', null, null, null);
INSERT INTO `pyg_spec` VALUES ('19', '16', '颜色', '0', '1558002440', '1558002440', null);
INSERT INTO `pyg_spec` VALUES ('20', '16', '版本', '0', '1558002440', '1558002440', null);

-- ----------------------------
-- Table structure for `pyg_spec_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_spec_goods`;
CREATE TABLE `pyg_spec_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格商品id',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id',
  `value_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名:规格值组合ids',
  `value_names` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名中文:规格值组合值',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `cost_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `store_count` int(11) unsigned DEFAULT '10' COMMENT '库存数量',
  `store_frozen` int(11) DEFAULT '0' COMMENT '冻结库存',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`value_ids`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_spec_goods
-- ----------------------------
INSERT INTO `pyg_spec_goods` VALUES ('1', '1', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '980', '20', '1554268532', '1560499416', null);
INSERT INTO `pyg_spec_goods` VALUES ('2', '1', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '895', '105', '1554268532', '1560499416', null);
INSERT INTO `pyg_spec_goods` VALUES ('3', '1', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '995', '5', '1554268532', '1560499416', null);
INSERT INTO `pyg_spec_goods` VALUES ('4', '1', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('5', '1', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('6', '1', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('7', '1', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('8', '1', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('9', '1', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('10', '1', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '950', '50', '1554268532', '1560499416', null);
INSERT INTO `pyg_spec_goods` VALUES ('11', '1', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('12', '1', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('14', '1', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('15', '1', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('16', '1', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('17', '1', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('18', '1', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('19', '1', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('20', '1', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('21', '2', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('22', '2', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('23', '2', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('24', '2', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('25', '2', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('26', '2', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('27', '2', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('28', '2', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('29', '2', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('30', '2', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('31', '2', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('32', '2', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('34', '2', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('35', '2', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('36', '2', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('37', '2', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('38', '2', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('39', '2', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('40', '2', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('41', '3', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('42', '3', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('43', '3', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('44', '3', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('45', '3', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('46', '3', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('47', '3', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('48', '3', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('49', '3', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('50', '3', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('51', '3', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('52', '3', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('54', '3', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('55', '3', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('56', '3', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('57', '3', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('58', '3', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('59', '3', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('60', '3', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('61', '4', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('62', '4', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('63', '4', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('64', '4', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('65', '4', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('66', '4', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('67', '4', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('68', '4', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('69', '4', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('70', '4', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('71', '4', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('72', '4', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('74', '4', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('75', '4', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('76', '4', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('77', '4', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('78', '4', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('79', '4', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('80', '4', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('81', '5', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('82', '5', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('83', '5', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('84', '5', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('85', '5', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('86', '5', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('87', '5', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('88', '5', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('89', '5', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('90', '5', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('91', '5', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('92', '5', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('94', '5', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('95', '5', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('96', '5', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('97', '5', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('98', '5', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('99', '5', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('100', '5', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('101', '6', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('102', '6', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('103', '6', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('104', '6', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('105', '6', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('106', '6', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('107', '6', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('108', '6', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('109', '6', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268532', '1554268532', null);
INSERT INTO `pyg_spec_goods` VALUES ('110', '6', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('111', '6', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('112', '6', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('114', '6', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('115', '6', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('116', '6', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('117', '6', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('118', '6', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('119', '6', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('120', '6', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('121', '7', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('122', '7', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('123', '7', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('124', '7', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('125', '7', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('126', '7', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('127', '7', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('128', '7', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('129', '7', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('130', '7', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('131', '7', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('132', '7', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('134', '7', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('135', '7', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('136', '7', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('137', '7', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('138', '7', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('139', '7', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('140', '7', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('141', '8', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('142', '8', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('143', '8', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('144', '8', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('145', '8', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('146', '8', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('147', '8', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('148', '8', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('149', '8', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('150', '8', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('151', '8', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('152', '8', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('154', '8', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('155', '8', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('156', '8', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('157', '8', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('158', '8', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('159', '8', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('160', '8', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('161', '9', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('162', '9', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('163', '9', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('164', '9', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('165', '9', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('166', '9', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('167', '9', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('168', '9', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('169', '9', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('170', '9', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('171', '9', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('172', '9', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('174', '9', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('175', '9', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('176', '9', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('177', '9', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('178', '9', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('179', '9', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('180', '9', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('181', '10', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('182', '10', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('183', '10', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('184', '10', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('185', '10', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('186', '10', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('187', '10', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('188', '10', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('189', '10', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('190', '10', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('191', '10', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('192', '10', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('194', '10', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('195', '10', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('196', '10', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('197', '10', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('198', '10', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('199', '10', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('200', '10', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('201', '11', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('202', '11', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('203', '11', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('204', '11', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('205', '11', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('206', '11', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('207', '11', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('208', '11', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('209', '11', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('210', '11', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('211', '11', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('212', '11', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('214', '11', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('215', '11', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('216', '11', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('217', '11', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('218', '11', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('219', '11', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('220', '11', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('221', '12', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('222', '12', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('223', '12', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('224', '12', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('225', '12', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('226', '12', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('227', '12', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('228', '12', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('229', '12', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('230', '12', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('231', '12', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('232', '12', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('234', '12', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('235', '12', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('236', '12', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('237', '12', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('238', '12', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('239', '12', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('240', '12', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('241', '13', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('242', '13', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('243', '13', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('244', '13', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('245', '13', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('246', '13', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('247', '13', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('248', '13', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('249', '13', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('250', '13', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('251', '13', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('252', '13', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('254', '13', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('255', '13', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('256', '13', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('257', '13', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('258', '13', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('259', '13', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('260', '13', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('261', '14', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('262', '14', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('263', '14', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('264', '14', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('265', '14', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('266', '14', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('267', '14', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('268', '14', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('269', '14', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('270', '14', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('271', '14', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('272', '14', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('274', '14', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('275', '14', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('276', '14', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('277', '14', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('278', '14', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('279', '14', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('280', '14', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('281', '15', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('282', '15', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('283', '15', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('284', '15', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('285', '15', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('286', '15', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('287', '15', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('288', '15', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('289', '15', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('290', '15', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('291', '15', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('292', '15', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('294', '15', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('295', '15', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('296', '15', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('297', '15', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('298', '15', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('299', '15', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('300', '15', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('301', '16', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('302', '16', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('303', '16', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('304', '16', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('305', '16', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('306', '16', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('307', '16', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('308', '16', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('309', '16', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('310', '16', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('311', '16', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('312', '16', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('314', '16', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('315', '16', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('316', '16', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('317', '16', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('318', '16', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('319', '16', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('320', '16', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('321', '17', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('322', '17', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('323', '17', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('324', '17', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('325', '17', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('326', '17', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('327', '17', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('328', '17', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('329', '17', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('330', '17', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('331', '17', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('332', '17', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('334', '17', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('335', '17', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('336', '17', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('337', '17', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('338', '17', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('339', '17', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('340', '17', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('341', '18', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('342', '18', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('343', '18', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('344', '18', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('345', '18', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('346', '18', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('347', '18', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('348', '18', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('349', '18', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('350', '18', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('351', '18', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('352', '18', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('354', '18', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('355', '18', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('356', '18', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('357', '18', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('358', '18', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('359', '18', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('360', '18', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('361', '19', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('362', '19', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('363', '19', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('364', '19', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('365', '19', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('366', '19', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('367', '19', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('368', '19', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('369', '19', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('370', '19', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('371', '19', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('372', '19', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('374', '19', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('375', '19', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('376', '19', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('377', '19', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('378', '19', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('379', '19', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('380', '19', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('381', '20', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('382', '20', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('383', '20', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('384', '20', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('385', '20', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('386', '20', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('387', '20', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('388', '20', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('389', '20', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('390', '20', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('391', '20', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('392', '20', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('394', '20', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('395', '20', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('396', '20', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('397', '20', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('398', '20', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('399', '20', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('400', '20', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('401', '21', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('402', '21', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('403', '21', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('404', '21', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('405', '21', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('406', '21', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('407', '21', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('408', '21', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('409', '21', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('410', '21', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('411', '21', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('412', '21', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('414', '21', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('415', '21', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('416', '21', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('417', '21', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('418', '21', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('419', '21', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('420', '21', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('421', '22', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('422', '22', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('423', '22', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('424', '22', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('425', '22', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('426', '22', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('427', '22', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('428', '22', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('429', '22', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('430', '22', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('431', '22', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('432', '22', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('434', '22', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('435', '22', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('436', '22', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('437', '22', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('438', '22', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('439', '22', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('440', '22', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('441', '23', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('442', '23', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('443', '23', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('444', '23', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('445', '23', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('446', '23', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('447', '23', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('448', '23', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('449', '23', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('450', '23', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('451', '23', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('452', '23', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('454', '23', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('455', '23', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('456', '23', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('457', '23', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('458', '23', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('459', '23', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('460', '23', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('461', '24', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('462', '24', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('463', '24', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('464', '24', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('465', '24', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('466', '24', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('467', '24', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('468', '24', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('469', '24', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('470', '24', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('471', '24', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('472', '24', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('474', '24', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('475', '24', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('476', '24', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('477', '24', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('478', '24', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('479', '24', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('480', '24', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('481', '25', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('482', '25', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('483', '25', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('484', '25', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('485', '25', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('486', '25', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('487', '25', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('488', '25', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('489', '25', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('490', '25', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('491', '25', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('492', '25', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('494', '25', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('495', '25', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('496', '25', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('497', '25', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('498', '25', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('499', '25', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('500', '25', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('501', '26', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('502', '26', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('503', '26', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('504', '26', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('505', '26', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('506', '26', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('507', '26', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('508', '26', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('509', '26', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('510', '26', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('511', '26', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('512', '26', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('514', '26', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('515', '26', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('516', '26', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('517', '26', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('518', '26', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('519', '26', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('520', '26', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('521', '27', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('522', '27', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('523', '27', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('524', '27', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('525', '27', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('526', '27', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('527', '27', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('528', '27', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('529', '27', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('530', '27', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('531', '27', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('532', '27', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('534', '27', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('535', '27', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('536', '27', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('537', '27', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('538', '27', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('539', '27', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('540', '27', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('541', '28', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('542', '28', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('543', '28', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('544', '28', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('545', '28', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('546', '28', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('547', '28', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('548', '28', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('549', '28', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('550', '28', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('551', '28', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('552', '28', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('554', '28', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('555', '28', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('556', '28', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('557', '28', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('558', '28', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('559', '28', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('560', '28', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('561', '29', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('562', '29', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('563', '29', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('564', '29', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('565', '29', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('566', '29', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('567', '29', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('568', '29', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('569', '29', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('570', '29', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('571', '29', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('572', '29', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('574', '29', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('575', '29', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('576', '29', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('577', '29', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('578', '29', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('579', '29', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('580', '29', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('581', '30', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('582', '30', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('583', '30', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('584', '30', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('585', '30', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('586', '30', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('587', '30', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('588', '30', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('589', '30', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('590', '30', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('591', '30', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('592', '30', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('594', '30', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('595', '30', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('596', '30', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('597', '30', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('598', '30', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('599', '30', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('600', '30', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('601', '31', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('602', '31', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('603', '31', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('604', '31', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('605', '31', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('606', '31', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('607', '31', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('608', '31', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('609', '31', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('610', '31', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('611', '31', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('612', '31', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('614', '31', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('615', '31', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('616', '31', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('617', '31', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('618', '31', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('619', '31', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('620', '31', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('621', '32', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('622', '32', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('623', '32', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('624', '32', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('625', '32', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('626', '32', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('627', '32', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('628', '32', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('629', '32', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('630', '32', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('631', '32', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('632', '32', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('634', '32', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('635', '32', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('636', '32', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('637', '32', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('638', '32', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('639', '32', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('640', '32', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('641', '33', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('642', '33', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('643', '33', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('644', '33', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('645', '33', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('646', '33', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('647', '33', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('648', '33', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('649', '33', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('650', '33', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('651', '33', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('652', '33', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('654', '33', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('655', '33', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('656', '33', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('657', '33', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('658', '33', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('659', '33', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('660', '33', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('661', '34', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('662', '34', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('663', '34', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('664', '34', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('665', '34', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('666', '34', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('667', '34', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('668', '34', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('669', '34', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('670', '34', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('671', '34', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('672', '34', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('674', '34', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('675', '34', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('676', '34', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('677', '34', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('678', '34', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('679', '34', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('680', '34', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('681', '35', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('682', '35', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('683', '35', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('684', '35', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('685', '35', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('686', '35', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('687', '35', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('688', '35', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('689', '35', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('690', '35', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('691', '35', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('692', '35', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('694', '35', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('695', '35', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('696', '35', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('697', '35', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('698', '35', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('699', '35', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('700', '35', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('701', '36', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('702', '36', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('703', '36', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('704', '36', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('705', '36', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('706', '36', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('707', '36', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('708', '36', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('709', '36', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('710', '36', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('711', '36', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('712', '36', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('714', '36', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('715', '36', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('716', '36', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('717', '36', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('718', '36', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('719', '36', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('720', '36', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('721', '37', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('722', '37', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('723', '37', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('724', '37', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('725', '37', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('726', '37', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('727', '37', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('728', '37', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('729', '37', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('730', '37', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('731', '37', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('732', '37', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('734', '37', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('735', '37', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('736', '37', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('737', '37', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('738', '37', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('739', '37', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('740', '37', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('741', '38', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('742', '38', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('743', '38', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('744', '38', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('745', '38', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('746', '38', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('747', '38', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('748', '38', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('749', '38', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('750', '38', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('751', '38', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('752', '38', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('754', '38', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('755', '38', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('756', '38', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('757', '38', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('758', '38', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('759', '38', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('760', '38', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('761', '39', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('762', '39', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('763', '39', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('764', '39', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('765', '39', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('766', '39', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('767', '39', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('768', '39', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('769', '39', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('770', '39', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('771', '39', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('772', '39', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('774', '39', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('775', '39', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('776', '39', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('777', '39', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('778', '39', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('779', '39', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('780', '39', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('781', '40', '1_6', '颜色：黑色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('782', '40', '1_7', '颜色：黑色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('783', '40', '1_8', '颜色：黑色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('784', '40', '1_9', '颜色：黑色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('785', '40', '2_6', '颜色：白色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('786', '40', '2_7', '颜色：白色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('787', '40', '2_8', '颜色：白色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('788', '40', '2_9', '颜色：白色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('789', '40', '3_6', '颜色：金色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('790', '40', '3_7', '颜色：金色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('791', '40', '3_8', '颜色：金色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('792', '40', '3_9', '颜色：金色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('794', '40', '4_7', '颜色：红色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('795', '40', '4_8', '颜色：红色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('796', '40', '4_9', '颜色：红色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('797', '40', '5_6', '颜色：粉色 内存：32G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('798', '40', '5_7', '颜色：粉色 内存：64G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('799', '40', '5_8', '颜色：粉色 内存：128G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('800', '40', '5_9', '颜色：粉色 内存：256G', '8000.00', '5000.00', '1000', '0', '1554268533', '1554268533', null);
INSERT INTO `pyg_spec_goods` VALUES ('801', '61', '18_21', '颜色:黑色 版本:全网通（4G+64G）', '1000.00', '1000.00', '100', '0', '1559114885', '1559114885', null);
INSERT INTO `pyg_spec_goods` VALUES ('802', '61', '18_22', '颜色:黑色 版本:全网通（6G+64G）', '1100.00', '1000.00', '100', '0', '1559114885', '1559114885', null);
INSERT INTO `pyg_spec_goods` VALUES ('803', '61', '19_21', '颜色:白色 版本:全网通（4G+64G）', '1200.00', '1100.00', '99', '1', '1559114885', '1560499416', null);
INSERT INTO `pyg_spec_goods` VALUES ('804', '61', '19_22', '颜色:白色 版本:全网通（6G+64G）', '1200.00', '1100.00', '85', '15', '1559114885', '1560499416', null);
INSERT INTO `pyg_spec_goods` VALUES ('805', '64', '18_21', '颜色:黑色 版本:全网通（4G+64G）', '0.00', '0.00', '0', '0', '1563118230', '1563118230', null);
INSERT INTO `pyg_spec_goods` VALUES ('806', '64', '18_22', '颜色:黑色 版本:全网通（6G+64G）', '0.00', '0.00', '0', '0', '1563118230', '1563118230', null);
INSERT INTO `pyg_spec_goods` VALUES ('807', '64', '19_21', '颜色:白色 版本:全网通（4G+64G）', '0.00', '0.00', '0', '0', '1563118230', '1563118230', null);
INSERT INTO `pyg_spec_goods` VALUES ('808', '64', '19_22', '颜色:白色 版本:全网通（6G+64G）', '0.00', '0.00', '0', '0', '1563118230', '1563118230', null);
INSERT INTO `pyg_spec_goods` VALUES ('809', '65', '18_21', '颜色:黑色 版本:全网通（4G+64G）', '6200.00', '5000.00', '993', '7', '1575189331', '1575269547', null);
INSERT INTO `pyg_spec_goods` VALUES ('810', '65', '18_22', '颜色:黑色 版本:全网通（6G+64G）', '6300.00', '5000.00', '1000', '0', '1575189331', '1575189331', null);
INSERT INTO `pyg_spec_goods` VALUES ('811', '65', '19_21', '颜色:白色 版本:全网通（4G+64G）', '6400.00', '5000.00', '1000', '0', '1575189331', '1575189331', null);
INSERT INTO `pyg_spec_goods` VALUES ('812', '65', '19_22', '颜色:白色 版本:全网通（6G+64G）', '6500.00', '5000.00', '1000', '0', '1575189331', '1575189331', null);
INSERT INTO `pyg_spec_goods` VALUES ('813', '65', '20_21', '颜色:红色 版本:全网通（4G+64G）', '6000.00', '5000.00', '1000', '0', '1575189331', '1575189331', null);
INSERT INTO `pyg_spec_goods` VALUES ('814', '65', '20_22', '颜色:红色 版本:全网通（6G+64G）', '6000.00', '5000.00', '1000', '0', '1575189331', '1575189331', null);

-- ----------------------------
-- Table structure for `pyg_spec_value`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_spec_value`;
CREATE TABLE `pyg_spec_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格项id',
  `spec_id` int(11) DEFAULT NULL COMMENT '规格id',
  `spec_value` varchar(54) DEFAULT NULL COMMENT '规格项',
  `type_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_spec_value
-- ----------------------------
INSERT INTO `pyg_spec_value` VALUES ('18', '19', '黑色', '16', '1558002440', '1558002440', null);
INSERT INTO `pyg_spec_value` VALUES ('19', '19', '白色', '16', '1558002440', '1558002440', null);
INSERT INTO `pyg_spec_value` VALUES ('20', '19', '红色', '16', '1558002440', '1558002440', null);
INSERT INTO `pyg_spec_value` VALUES ('21', '20', '全网通（4G+64G）', '16', '1558002440', '1558002440', null);
INSERT INTO `pyg_spec_value` VALUES ('22', '20', '全网通（6G+64G）', '16', '1558002440', '1558002440', null);

-- ----------------------------
-- Table structure for `pyg_type`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_type`;
CREATE TABLE `pyg_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL DEFAULT '' COMMENT '类型名称',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_type
-- ----------------------------
INSERT INTO `pyg_type` VALUES ('16', '手机', '1558002440', '1558002440', null);
INSERT INTO `pyg_type` VALUES ('17', '坚果', '1550717982', '1550717982', null);
INSERT INTO `pyg_type` VALUES ('18', '电脑', '1550717989', '1550717989', null);
INSERT INTO `pyg_type` VALUES ('19', '桌子', '1550718243', '1550718243', null);

-- ----------------------------
-- Table structure for `pyg_user`
-- ----------------------------
DROP TABLE IF EXISTS `pyg_user`;
CREATE TABLE `pyg_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号码',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `figure_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `open_type` varchar(255) DEFAULT NULL COMMENT '第三方平台名',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '第三方帐号openid',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pyg_user
-- ----------------------------
INSERT INTO `pyg_user` VALUES ('1', '', '199****5678', '19912345678', '6ae150fa0f939a14abb244eadb4fc868', null, '', '0', null, '', null, null, null);
INSERT INTO `pyg_user` VALUES ('2', '19812345678', '198****5678', '19812345678', '6ae150fa0f939a14abb244eadb4fc868', null, '', '0', null, '', '1554471551', '1554471551', null);
INSERT INTO `pyg_user` VALUES ('3', '19712345678', '197****5678', '19712345678', '6ae150fa0f939a14abb244eadb4fc868', null, '', '0', null, '', '1554471633', '1554471633', null);
INSERT INTO `pyg_user` VALUES ('4', '13345678910', '小桦桦', '13345678910', '6ae150fa0f939a14abb244eadb4fc868', null, '', '0', null, '', '1575040902', '1575040902', null);
INSERT INTO `pyg_user` VALUES ('6', '13126038182', '131****8182', '13126038182', '6ae150fa0f939a14abb244eadb4fc868', null, '', '0', null, '', '1575122122', '1575122122', null);
