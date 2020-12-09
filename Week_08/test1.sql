/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50729
Source Host           : localhost:3307
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-12-09 22:12:53
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_0
-- ----------------------------
INSERT INTO `order_0` VALUES ('1999', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_0` VALUES ('2999', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_1
-- ----------------------------
INSERT INTO `order_1` VALUES ('3999', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_1` VALUES ('4999', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_10
-- ----------------------------
INSERT INTO `order_10` VALUES ('5999', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_10` VALUES ('6999', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_11
-- ----------------------------
INSERT INTO `order_11` VALUES ('7999', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_11` VALUES ('8999', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_12
-- ----------------------------
INSERT INTO `order_12` VALUES ('9999', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_12` VALUES ('99990', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_13
-- ----------------------------
INSERT INTO `order_13` VALUES ('8878777', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_13` VALUES ('88899977', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_14
-- ----------------------------
INSERT INTO `order_14` VALUES ('666777555', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_14` VALUES ('776664488', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_15
-- ----------------------------
INSERT INTO `order_15` VALUES ('22352132134', '2020-12-08 21:57:47', '122', '2');
INSERT INTO `order_15` VALUES ('446655778844', '2020-12-09 21:57:23', '129', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_2
-- ----------------------------
INSERT INTO `order_2` VALUES ('67534537352', '2020-12-08 21:57:47', '122', '2');
INSERT INTO `order_2` VALUES ('3123214534543556546', '2020-12-09 21:57:23', '129', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_3
-- ----------------------------
INSERT INTO `order_3` VALUES ('9784579347534', '2020-12-08 21:57:47', '122', '2');
INSERT INTO `order_3` VALUES ('86492695623096', '2020-12-09 21:57:23', '129', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_4
-- ----------------------------
INSERT INTO `order_4` VALUES ('890678567', '2020-12-08 21:57:47', '122', '2');
INSERT INTO `order_4` VALUES ('73976589239078', '2020-12-09 21:57:23', '129', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_5
-- ----------------------------
INSERT INTO `order_5` VALUES ('134578345', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_5` VALUES ('78890567345', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_6
-- ----------------------------
INSERT INTO `order_6` VALUES ('568897', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_6` VALUES ('224734234', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_7
-- ----------------------------
INSERT INTO `order_7` VALUES ('3234536', '2020-12-08 21:57:47', '122', '2');
INSERT INTO `order_7` VALUES ('13455234', '2020-12-09 21:57:23', '129', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_8
-- ----------------------------
INSERT INTO `order_8` VALUES ('54642343', '2020-12-09 21:57:23', '129', '1');
INSERT INTO `order_8` VALUES ('645645234', '2020-12-08 21:57:47', '122', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_9
-- ----------------------------
INSERT INTO `order_9` VALUES ('246567', '2020-12-08 21:57:47', '122', '2');
INSERT INTO `order_9` VALUES ('198423436', '2020-12-09 21:57:23', '129', '1');

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
