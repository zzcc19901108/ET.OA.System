/*
 Navicat Premium Data Transfer

 Source Server         : geek
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : oa

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 20/09/2018 22:20:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for claim_voucher
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher`;
CREATE TABLE `claim_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cause` varchar(100) DEFAULT NULL,
  `create_sn` char(5) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `next_deal_sn` char(5) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_2` (`next_deal_sn`),
  KEY `FK_Reference_3` (`create_sn`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`next_deal_sn`) REFERENCES `employee` (`sn`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`create_sn`) REFERENCES `employee` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_voucher
-- ----------------------------
BEGIN;
INSERT INTO `claim_voucher` VALUES (1, '出差', '10004', '2018-09-20 21:31:35', NULL, 1100, '已打款');
INSERT INTO `claim_voucher` VALUES (2, '参加谷歌开发者大会', '10004', '2018-09-20 22:06:48', '10004', 3400, '已打回');
INSERT INTO `claim_voucher` VALUES (3, '参加微软开发者大会', '10004', '2018-09-20 22:08:48', NULL, 3400, '已打款');
COMMIT;

-- ----------------------------
-- Table structure for claim_voucher_item
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher_item`;
CREATE TABLE `claim_voucher_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_4` (`claim_voucher_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`claim_voucher_id`) REFERENCES `claim_voucher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_voucher_item
-- ----------------------------
BEGIN;
INSERT INTO `claim_voucher_item` VALUES (1, 1, '交通', 100, '交通费');
INSERT INTO `claim_voucher_item` VALUES (2, 1, '住宿', 1000, '住宿费用');
INSERT INTO `claim_voucher_item` VALUES (3, 2, '交通', 1000, '火车票、出租车、地铁费用合计');
INSERT INTO `claim_voucher_item` VALUES (4, 2, '餐饮', 400, '一日三餐');
INSERT INTO `claim_voucher_item` VALUES (5, 2, '住宿', 1500, '汉庭三晚');
INSERT INTO `claim_voucher_item` VALUES (6, 2, '办公', 500, '采购设备');
INSERT INTO `claim_voucher_item` VALUES (7, 3, '交通', 1200, '火车票、出租车、地铁费用合计');
INSERT INTO `claim_voucher_item` VALUES (8, 3, '餐饮', 500, '两日六餐合计费用');
INSERT INTO `claim_voucher_item` VALUES (9, 3, '住宿', 1500, '汉庭酒店住宿费用合计');
INSERT INTO `claim_voucher_item` VALUES (10, 3, '办公', 200, '打印材料购买物资');
COMMIT;

-- ----------------------------
-- Table structure for deal_record
-- ----------------------------
DROP TABLE IF EXISTS `deal_record`;
CREATE TABLE `deal_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `deal_sn` char(5) DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `deal_way` varchar(20) DEFAULT NULL,
  `deal_result` varchar(20) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`claim_voucher_id`),
  KEY `FK_Reference_6` (`deal_sn`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`claim_voucher_id`) REFERENCES `claim_voucher` (`id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`deal_sn`) REFERENCES `employee` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_record
-- ----------------------------
BEGIN;
INSERT INTO `deal_record` VALUES (1, 1, '10004', '2018-09-20 21:51:32', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (2, 1, '10003', '2018-09-20 21:52:24', '通过', '已审核', '');
INSERT INTO `deal_record` VALUES (3, 1, '10002', '2018-09-20 21:53:04', '打款', '已打款', '');
INSERT INTO `deal_record` VALUES (4, 2, '10004', '2018-09-20 22:06:55', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (5, 3, '10004', '2018-09-20 22:09:04', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (6, 2, '10003', '2018-09-20 22:10:14', '打回', '已打回', '');
INSERT INTO `deal_record` VALUES (7, 3, '10003', '2018-09-20 22:10:20', '通过', '已审核', '');
INSERT INTO `deal_record` VALUES (8, 3, '10002', '2018-09-20 22:13:01', '打款', '已打款', '');
COMMIT;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `sn` char(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
BEGIN;
INSERT INTO `department` VALUES ('10001', '总经理办公室', '天府软件园E座1201');
INSERT INTO `department` VALUES ('10002', '财务部', '天府软件园');
INSERT INTO `department` VALUES ('10003', '事业部', '天府软件园E座1101');
COMMIT;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `sn` char(5) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `department_sn` char(5) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sn`),
  KEY `FK_Reference_1` (`department_sn`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`department_sn`) REFERENCES `department` (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
BEGIN;
INSERT INTO `employee` VALUES ('10001', '000000', '老大', '10001', '总经理');
INSERT INTO `employee` VALUES ('10002', '000000', '财神', '10002', '财务');
INSERT INTO `employee` VALUES ('10003', '000000', '嘿嘿', '10003', '部门经理');
INSERT INTO `employee` VALUES ('10004', '000000', '小白', '10003', '员工');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
