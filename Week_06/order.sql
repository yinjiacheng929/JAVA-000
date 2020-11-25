/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-11-25 22:37:40
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
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(32) CHARACTER SET latin1 NOT NULL COMMENT '主键',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `order_numer` varchar(64) NOT NULL COMMENT '订单号',
  `pay_price` decimal(10,0) NOT NULL COMMENT '支付金额',
  `name` varchar(32) NOT NULL COMMENT '订单名称',
  `type` int(10) NOT NULL COMMENT '订单类型',
  `status` int(10) NOT NULL COMMENT '订单状态',
  `notes` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number_primary` (`order_numer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------

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
