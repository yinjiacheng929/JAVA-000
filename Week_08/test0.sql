/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-12-09 22:13:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '商品名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `price` decimal(10,0) NOT NULL COMMENT '商品价格',
  `describe` varchar(32) DEFAULT NULL COMMENT '商品描述',
  `notes` varchar(255) DEFAULT NULL COMMENT '备注',
  `type` int(11) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for order_0
-- ----------------------------
DROP TABLE IF EXISTS `order_0`;
CREATE TABLE `order_0` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_0
-- ----------------------------
INSERT INTO `order_0` VALUES ('12345', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_0` VALUES ('123456', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_0` VALUES ('123542', '2020-12-19 21:59:43', '232', '12');

-- ----------------------------
-- Table structure for order_1
-- ----------------------------
DROP TABLE IF EXISTS `order_1`;
CREATE TABLE `order_1` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_1
-- ----------------------------
INSERT INTO `order_1` VALUES ('11', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_1` VALUES ('22', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_1` VALUES ('33', '2020-12-19 21:59:43', '232', '12');

-- ----------------------------
-- Table structure for order_10
-- ----------------------------
DROP TABLE IF EXISTS `order_10`;
CREATE TABLE `order_10` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_10
-- ----------------------------
INSERT INTO `order_10` VALUES ('90', '2020-12-09 22:03:11', '2', '1');

-- ----------------------------
-- Table structure for order_11
-- ----------------------------
DROP TABLE IF EXISTS `order_11`;
CREATE TABLE `order_11` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_11
-- ----------------------------
INSERT INTO `order_11` VALUES ('88', '2020-12-09 22:03:23', '23', '1');

-- ----------------------------
-- Table structure for order_12
-- ----------------------------
DROP TABLE IF EXISTS `order_12`;
CREATE TABLE `order_12` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_12
-- ----------------------------
INSERT INTO `order_12` VALUES ('334', '2020-12-20 22:03:33', '22', '11');

-- ----------------------------
-- Table structure for order_13
-- ----------------------------
DROP TABLE IF EXISTS `order_13`;
CREATE TABLE `order_13` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_13
-- ----------------------------
INSERT INTO `order_13` VALUES ('66', '2020-12-23 22:03:43', '2', '2');

-- ----------------------------
-- Table structure for order_14
-- ----------------------------
DROP TABLE IF EXISTS `order_14`;
CREATE TABLE `order_14` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=34556 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_14
-- ----------------------------
INSERT INTO `order_14` VALUES ('34555', '2020-12-23 22:03:52', '22', '42');

-- ----------------------------
-- Table structure for order_15
-- ----------------------------
DROP TABLE IF EXISTS `order_15`;
CREATE TABLE `order_15` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=22334423 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_15
-- ----------------------------
INSERT INTO `order_15` VALUES ('22334422', '2020-12-09 22:04:05', '23213', '43');

-- ----------------------------
-- Table structure for order_2
-- ----------------------------
DROP TABLE IF EXISTS `order_2`;
CREATE TABLE `order_2` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_2
-- ----------------------------
INSERT INTO `order_2` VALUES ('768', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_2` VALUES ('789', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_2` VALUES ('5786', '2020-12-19 21:59:43', '232', '12');

-- ----------------------------
-- Table structure for order_3
-- ----------------------------
DROP TABLE IF EXISTS `order_3`;
CREATE TABLE `order_3` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_3
-- ----------------------------
INSERT INTO `order_3` VALUES ('245324', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_3` VALUES ('657468', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_3` VALUES ('23213213123213', '2020-12-19 21:59:43', '232', '12');

-- ----------------------------
-- Table structure for order_4
-- ----------------------------
DROP TABLE IF EXISTS `order_4`;
CREATE TABLE `order_4` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_4
-- ----------------------------
INSERT INTO `order_4` VALUES ('376767', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_4` VALUES ('25435345', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_4` VALUES ('40989867', '2020-12-19 21:59:43', '232', '12');

-- ----------------------------
-- Table structure for order_5
-- ----------------------------
DROP TABLE IF EXISTS `order_5`;
CREATE TABLE `order_5` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_5
-- ----------------------------
INSERT INTO `order_5` VALUES ('57854', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_5` VALUES ('5689234', '2020-12-19 21:59:43', '232', '12');
INSERT INTO `order_5` VALUES ('2890234809342', '2020-12-05 21:59:35', '3', '3');

-- ----------------------------
-- Table structure for order_6
-- ----------------------------
DROP TABLE IF EXISTS `order_6`;
CREATE TABLE `order_6` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_6
-- ----------------------------
INSERT INTO `order_6` VALUES ('23656123', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_6` VALUES ('343486753434', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_6` VALUES ('487937898934', '2020-12-19 21:59:43', '232', '12');

-- ----------------------------
-- Table structure for order_7
-- ----------------------------
DROP TABLE IF EXISTS `order_7`;
CREATE TABLE `order_7` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_7
-- ----------------------------
INSERT INTO `order_7` VALUES ('332323223', '2020-12-09 21:59:25', '12', '32');
INSERT INTO `order_7` VALUES ('44545454545', '2020-12-19 21:59:43', '232', '12');
INSERT INTO `order_7` VALUES ('1231235343434', '2020-12-05 21:59:35', '3', '3');

-- ----------------------------
-- Table structure for order_8
-- ----------------------------
DROP TABLE IF EXISTS `order_8`;
CREATE TABLE `order_8` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_8
-- ----------------------------
INSERT INTO `order_8` VALUES ('22222222', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_8` VALUES ('44444444', '2020-12-19 21:59:43', '232', '12');
INSERT INTO `order_8` VALUES ('333333333', '2020-12-09 21:59:25', '12', '32');

-- ----------------------------
-- Table structure for order_9
-- ----------------------------
DROP TABLE IF EXISTS `order_9`;
CREATE TABLE `order_9` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `order_numer` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_9
-- ----------------------------
INSERT INTO `order_9` VALUES ('222223333', '2020-12-05 21:59:35', '3', '3');
INSERT INTO `order_9` VALUES ('455556666', '2020-12-19 21:59:43', '232', '12');
INSERT INTO `order_9` VALUES ('33333344444', '2020-12-09 21:59:25', '12', '32');

-- ----------------------------
-- Table structure for oreder_goods
-- ----------------------------
DROP TABLE IF EXISTS `oreder_goods`;
CREATE TABLE `oreder_goods` (
  `id` varchar(32) CHARACTER SET latin1 NOT NULL,
  `order_id` varchar(32) CHARACTER SET latin1 NOT NULL COMMENT '订单ID',
  `goods_id` varchar(32) CHARACTER SET latin1 NOT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oreder_goods
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(11) CHARACTER SET latin1 NOT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2020-12-08 21:36:25', 'yjc', '1');

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `order_id` varchar(32) NOT NULL COMMENT '订单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_order
-- ----------------------------
