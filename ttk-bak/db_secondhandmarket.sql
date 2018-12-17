/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : db_secondhandmarket

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-04-11 08:28:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `shm_admin`
-- ----------------------------
DROP TABLE IF EXISTS `shm_admin`;
CREATE TABLE `shm_admin` (
  `aId` int(11) NOT NULL AUTO_INCREMENT,
  `aName` varchar(50) DEFAULT NULL,
  `aPwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_admin
-- ----------------------------
INSERT INTO `shm_admin` VALUES ('10001', 'admin', '123456');

-- ----------------------------
-- Table structure for `shm_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `shm_feedback`;
CREATE TABLE `shm_feedback` (
  `fbId` int(11) NOT NULL AUTO_INCREMENT,
  `fbTitle` varchar(200) DEFAULT NULL,
  `fbContent` text,
  `fbTime` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`fbId`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_feedback
-- ----------------------------
INSERT INTO `shm_feedback` VALUES ('10001', '什么标题好呢', '什么内容好呢', '2018-04-10', '10001');

-- ----------------------------
-- Table structure for `shm_goods`
-- ----------------------------
DROP TABLE IF EXISTS `shm_goods`;
CREATE TABLE `shm_goods` (
  `gId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `tId` int(11) NOT NULL,
  `gsTitle` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `discount` double DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `gsIntro` text,
  `deal` varchar(20) DEFAULT NULL,
  `pTime` date DEFAULT NULL,
  `imgUrl` varchar(200) DEFAULT NULL,
  `show_status` tinyint(1) DEFAULT NULL,
  `buy_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`gId`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_goods
-- ----------------------------
INSERT INTO `shm_goods` VALUES ('10001', '10001', '1', '国产原装丝蓓绮TSUBAKI资生堂洗发水白椿洗护套装', '216', '150', '全新', '今年公司妇女节礼品，正品 全新未拆，我自己发质不适合此款洗发水故转让。550ml*2 官方价格是108一瓶噢！我这的价格超值的！', '当面交易', '2018-04-10', '../img/goods/goodsinfo_0.jpg;../img/goods/goodsinfo_1.jpg;../img/goods/goodsinfo_2.jpg', '0', '0');
INSERT INTO `shm_goods` VALUES ('10002', '10001', '10002', '二手内裤', '10', '5', '新', '只穿过一次', '线下', '2018-04-10', '../img/goods/goodsinfo_0.jpg', '1', '0');
INSERT INTO `shm_goods` VALUES ('10003', '10003', '10003', 'Java编程思想一本', '70', '50', '八成新', 'Java书籍', '线下', '2018-04-10', '../img/goods/goodsinfo_0.jpg', '1', '0');

-- ----------------------------
-- Table structure for `shm_goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `shm_goodstype`;
CREATE TABLE `shm_goodstype` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tType` varchar(100) DEFAULT NULL,
  `tContent` text,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_goodstype
-- ----------------------------
INSERT INTO `shm_goodstype` VALUES ('10001', '日常生活', '日用');
INSERT INTO `shm_goodstype` VALUES ('10002', '鞋服配饰', '女鞋,女装,配饰');
INSERT INTO `shm_goodstype` VALUES ('10003', '闲置书籍', '教材,小说,杂志');
INSERT INTO `shm_goodstype` VALUES ('10004', '闲置数码', '手机,电脑,电子配件');
INSERT INTO `shm_goodstype` VALUES ('10005', '闲置箱包', '男包,女包,旅行箱');

-- ----------------------------
-- Table structure for `shm_user`
-- ----------------------------
DROP TABLE IF EXISTS `shm_user`;
CREATE TABLE `shm_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `callname` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `headimg` int(11) DEFAULT '1',
  `sex` varchar(20) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `dorm` varchar(50) DEFAULT NULL,
  `QQ` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `intro` text,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_user
-- ----------------------------
INSERT INTO `shm_user` VALUES ('10001', '110', '123', '张三', '小胖纸', '3', 'male', '1994-05-10', 'C5-528', '111111111', '13838389438', '我很好');
INSERT INTO `shm_user` VALUES ('10002', 'tomcat', '123456', 'tomcat', null, '1', null, null, null, null, null, null);
INSERT INTO `shm_user` VALUES ('10003', 'lucy', '123456', 'lucy', null, '1', null, null, null, null, null, null);
