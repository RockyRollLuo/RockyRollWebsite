/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : rockyroll

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2018-01-16 16:52:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rperson
-- ----------------------------
DROP TABLE IF EXISTS `rperson`;
CREATE TABLE `rperson` (
  `person_id` int(11) NOT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `create_person_id` int(11) NOT NULL,
  `update_person_id` int(11) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `nick_name` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `self_brief` varchar(255) DEFAULT NULL,
  `person_type` tinyint(4) DEFAULT NULL,
  `last_login_ip` varchar(40) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
