/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : huadee_fcis

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-08-12 17:22:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addinfo
-- ----------------------------
DROP TABLE IF EXISTS `addinfo`;
CREATE TABLE `addinfo` (
  `addinfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `stateof_health` mediumtext NOT NULL,
  `stateof_family` mediumtext NOT NULL,
  `stateof_job` char(20) NOT NULL,
  `outstanding_dees` mediumtext NOT NULL,
  `ismodelworker_title` smallint(6) NOT NULL,
  `Attribute_61` varchar(20) DEFAULT NULL,
  `Attribute_62` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`addinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addinfo
-- ----------------------------
INSERT INTO `addinfo` VALUES ('1', '良好', '小康', '已就业', '火中取栗', '1', null, null);

-- ----------------------------
-- Table structure for add_certified_materials
-- ----------------------------
DROP TABLE IF EXISTS `add_certified_materials`;
CREATE TABLE `add_certified_materials` (
  `addcertified_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(32) NOT NULL,
  `Attribute_52` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`addcertified_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of add_certified_materials
-- ----------------------------
INSERT INTO `add_certified_materials` VALUES ('1', 'D:/dev/img/user.png', null);

-- ----------------------------
-- Table structure for advanced_collective
-- ----------------------------
DROP TABLE IF EXISTS `advanced_collective`;
CREATE TABLE `advanced_collective` (
  `advanced_id` int(11) NOT NULL AUTO_INCREMENT,
  `isDeleteAdvance` tinyint(10) NOT NULL,
  `advanced_title` char(40) NOT NULL,
  `advanced_provance` varchar(10) NOT NULL,
  `company_name` varchar(10) NOT NULL,
  `principal_name` char(20) NOT NULL,
  `principal_phone` int(11) NOT NULL,
  `addvance_outstanding` mediumtext NOT NULL,
  `reasonof_cancel` mediumtext,
  `Attribute_70` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`advanced_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advanced_collective
-- ----------------------------
INSERT INTO `advanced_collective` VALUES ('1', '0', '全国先进集体', '重庆市黔江区', '劳动局给我4', '黄xx2', '1654865315', '没有，如果有都是编的', '', null);

-- ----------------------------
-- Table structure for certified_materials
-- ----------------------------
DROP TABLE IF EXISTS `certified_materials`;
CREATE TABLE `certified_materials` (
  `certifiedmaterials_id` int(11) NOT NULL AUTO_INCREMENT,
  `awarding_unit` char(20) NOT NULL,
  `awarding_time` date NOT NULL,
  `recognition_name` char(10) NOT NULL,
  `symbol` char(10) NOT NULL,
  `recoginition_unit` varchar(10) NOT NULL,
  `recognition_time` date NOT NULL,
  `Attribute_64` varchar(20) DEFAULT NULL,
  `Attribute_65` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`certifiedmaterials_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of certified_materials
-- ----------------------------
INSERT INTO `certified_materials` VALUES ('1', '重庆工会', '2021-08-03', '工会某领导', '123456', '重庆工会宣传部', '2021-08-08', null, null);

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_name` varchar(5) NOT NULL,
  `sex` char(5) NOT NULL,
  `nationality` char(5) NOT NULL,
  `born` date NOT NULL,
  `education` char(10) NOT NULL,
  `info_provence` varchar(32) NOT NULL,
  `political_state` char(10) NOT NULL,
  `organization` char(20) NOT NULL,
  `job_title` char(10) NOT NULL,
  `get_modelworker_tltle_time` date NOT NULL,
  `info_awadingunit` varchar(10) NOT NULL,
  `identity_number` char(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `Attribute_59` varchar(20) DEFAULT NULL,
  `modelworker_info_id` int(11) NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('1', '金泽旺', '男', '汉族', '2001-07-12', '本科', '重庆市南岸', '团员', '重庆邮电大学', '学生', '2021-08-05', '重庆邮电大学', '501654896554', '156465131', null, '1');

-- ----------------------------
-- Table structure for model_worker
-- ----------------------------
DROP TABLE IF EXISTS `model_worker`;
CREATE TABLE `model_worker` (
  `modelworker_id` int(16) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(8) NOT NULL,
  `modelworker_title` varchar(10) NOT NULL,
  `modelworker_treatment` varchar(10) NOT NULL,
  `modelworker_info_id` int(11) NOT NULL,
  `modelworker_addinfo_id` int(11) NOT NULL,
  `modelworker_materials_id` int(11) NOT NULL,
  `modelworker_addcertified_materials_id` int(11) NOT NULL,
  `modelworker_state` tinyint(4) NOT NULL,
  `die_time` date DEFAULT NULL,
  `transfer_destination` varchar(20) DEFAULT NULL,
  `moderworker_review` mediumtext,
  `cancel_reason` mediumtext,
  `isRetire` tinyint(5) DEFAULT NULL,
  `will3` varchar(20) DEFAULT NULL,
  `will4` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`modelworker_id`),
  KEY `modelworker_info_id` (`modelworker_info_id`),
  KEY `modelworker_addinfo_id` (`modelworker_addinfo_id`),
  KEY `modelworker_materials_id` (`modelworker_materials_id`),
  KEY `modelworker_addcertified_materials_id` (`modelworker_addcertified_materials_id`),
  CONSTRAINT `modelworker_addcertified_materials_id` FOREIGN KEY (`modelworker_addcertified_materials_id`) REFERENCES `add_certified_materials` (`addcertified_id`),
  CONSTRAINT `modelworker_addinfo_id` FOREIGN KEY (`modelworker_addinfo_id`) REFERENCES `addinfo` (`addinfo_id`),
  CONSTRAINT `modelworker_info_id` FOREIGN KEY (`modelworker_info_id`) REFERENCES `info` (`info_id`),
  CONSTRAINT `modelworker_materials_id` FOREIGN KEY (`modelworker_materials_id`) REFERENCES `certified_materials` (`certifiedmaterials_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='该条记录是否被删除';

-- ----------------------------
-- Records of model_worker
-- ----------------------------
INSERT INTO `model_worker` VALUES ('1', '0', '全国劳模', '享受全国劳模待遇', '1', '1', '1', '1', '0', '1999-06-08', null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(16) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('4', 'admin');
INSERT INTO `role` VALUES ('5', 'audit');
INSERT INTO `role` VALUES ('6', 'declare');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(16) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(16) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `user_sex` varchar(4) NOT NULL,
  `identify_card` varchar(16) NOT NULL,
  `user_phone` varchar(16) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `user_union` varchar(64) DEFAULT NULL,
  `user_isdelete` tinyint(10) NOT NULL,
  `other2` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jin', '123456', 'jinzewang', '男', '50023919941241', '15856483645', '5466@qq.com', '重庆总工会', '0', null);
INSERT INTO `user` VALUES ('2', 'wang', '456789', 'wangwu', '女', '45674685131331', '15245986561', '1313', '四川工会', '0', null);
INSERT INTO `user` VALUES ('3', 'zhang', '123456789', 'zhangsan', '男', '45648965132354', '18746461366', '1321@qq.com', '北京总工会', '0', null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userrole_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`userrole_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '4');
INSERT INTO `user_role` VALUES ('2', '2', '5');
INSERT INTO `user_role` VALUES ('3', '3', '6');
