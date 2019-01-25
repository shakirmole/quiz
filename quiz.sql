/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 100134
Source Host           : localhost:3306
Source Database       : quiz

Target Server Type    : MYSQL
Target Server Version : 100134
File Encoding         : 65001

Date: 2019-01-25 23:25:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'Shakir Moledina', '1', '2017-09-17 02:58:46', '2017-09-17 02:58:49', null, null);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Maths', '2', '2017-09-22 03:13:37', '2018-04-14 19:39:47', '4', '4');
INSERT INTO `categories` VALUES ('2', 'English', '2', '2017-09-22 03:13:40', null, '4', null);
INSERT INTO `categories` VALUES ('3', 'Mathematics', '1', '2017-09-22 03:18:47', null, '2', null);
INSERT INTO `categories` VALUES ('4', 'Civics', '1', '2017-09-22 03:18:52', '2017-09-22 03:19:31', '2', '2');
INSERT INTO `categories` VALUES ('5', 'Jan 2017', '7', '2017-12-30 22:26:56', null, '18', null);
INSERT INTO `categories` VALUES ('6', 'Jan 2018', '8', '2018-01-21 21:51:55', null, '27', null);
INSERT INTO `categories` VALUES ('7', 'Monthly', '9', '2018-03-12 20:26:19', null, '37', null);

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES ('1', 'black', '2016-11-16 19:08:10', null, null, null);
INSERT INTO `colors` VALUES ('2', 'lime', '2016-11-16 19:08:10', null, null, null);
INSERT INTO `colors` VALUES ('3', 'green', '2016-11-16 19:08:12', null, null, null);
INSERT INTO `colors` VALUES ('4', 'emerald', '2016-11-16 19:08:13', null, null, null);
INSERT INTO `colors` VALUES ('5', 'teal', '2016-11-16 19:08:20', null, null, null);
INSERT INTO `colors` VALUES ('6', 'blue', '2016-11-16 19:08:21', null, null, null);
INSERT INTO `colors` VALUES ('7', 'cyan', '2016-11-16 19:08:23', null, null, null);
INSERT INTO `colors` VALUES ('8', 'cobalt', '2016-11-16 19:08:24', null, null, null);
INSERT INTO `colors` VALUES ('9', 'indigo', '2016-11-16 19:08:26', null, null, null);
INSERT INTO `colors` VALUES ('10', 'violet', '2016-11-16 19:08:27', null, null, null);
INSERT INTO `colors` VALUES ('11', 'pink', '2016-11-16 19:08:28', null, null, null);
INSERT INTO `colors` VALUES ('12', 'magenta', '2016-11-16 19:08:30', null, null, null);
INSERT INTO `colors` VALUES ('13', 'crimson', '2016-11-16 19:08:32', null, null, null);
INSERT INTO `colors` VALUES ('14', 'red', '2016-11-16 19:08:32', null, null, null);
INSERT INTO `colors` VALUES ('15', 'orange', '2016-11-16 19:08:34', null, null, null);
INSERT INTO `colors` VALUES ('16', 'amber', '2016-11-16 19:08:35', null, null, null);
INSERT INTO `colors` VALUES ('17', 'yellow', '2016-11-16 19:08:37', null, null, null);
INSERT INTO `colors` VALUES ('18', 'brown', '2016-11-16 19:08:38', null, null, null);
INSERT INTO `colors` VALUES ('19', 'olive', '2016-11-16 19:08:40', null, null, null);
INSERT INTO `colors` VALUES ('20', 'steel', '2016-11-16 19:08:41', null, null, null);
INSERT INTO `colors` VALUES ('21', 'mauve', '2016-11-16 19:08:43', null, null, null);
INSERT INTO `colors` VALUES ('22', 'taupe', '2016-11-16 19:08:46', null, null, null);
INSERT INTO `colors` VALUES ('23', 'gray', '2016-11-16 19:08:47', null, null, null);
INSERT INTO `colors` VALUES ('24', 'dark', '2016-11-16 19:08:49', null, null, null);
INSERT INTO `colors` VALUES ('25', 'darker', '2016-11-16 19:08:50', null, null, null);
INSERT INTO `colors` VALUES ('26', 'darkBrown', '2016-11-16 19:08:59', null, null, null);
INSERT INTO `colors` VALUES ('27', 'darkCrimson', '2016-11-16 19:09:03', null, null, null);
INSERT INTO `colors` VALUES ('28', 'darkMagenta', '2016-11-16 19:09:06', null, null, null);
INSERT INTO `colors` VALUES ('29', 'darkIndigo', '2016-11-16 19:09:08', null, null, null);
INSERT INTO `colors` VALUES ('30', 'darkCyan', '2016-11-16 19:09:10', null, null, null);
INSERT INTO `colors` VALUES ('31', 'darkCobalt', '2016-11-16 19:09:12', null, null, null);
INSERT INTO `colors` VALUES ('32', 'darkTeal', '2016-11-16 19:09:14', null, null, null);
INSERT INTO `colors` VALUES ('33', 'darkEmerald', '2016-11-16 19:09:18', null, null, null);
INSERT INTO `colors` VALUES ('34', 'darkGreen', '2016-11-16 19:09:21', null, null, null);
INSERT INTO `colors` VALUES ('35', 'darkOrange', '2016-11-16 19:09:23', null, null, null);
INSERT INTO `colors` VALUES ('36', 'darkRed', '2016-11-16 19:09:26', null, null, null);
INSERT INTO `colors` VALUES ('37', 'darkPink', '2016-11-16 19:09:27', null, null, null);
INSERT INTO `colors` VALUES ('38', 'darkViolet', '2016-11-16 19:09:31', null, null, null);
INSERT INTO `colors` VALUES ('39', 'darkBlue', '2016-11-16 19:09:32', null, null, null);
INSERT INTO `colors` VALUES ('40', 'lightBlue', '2016-11-16 19:09:35', null, null, null);
INSERT INTO `colors` VALUES ('41', 'lightRed', '2016-11-16 19:09:39', null, null, null);
INSERT INTO `colors` VALUES ('42', 'lightGreen', '2016-11-16 19:09:43', null, null, null);
INSERT INTO `colors` VALUES ('43', 'lighterBlue', '2016-11-16 19:09:48', null, null, null);
INSERT INTO `colors` VALUES ('44', 'lightTeal', '2016-11-16 19:09:52', null, null, null);
INSERT INTO `colors` VALUES ('45', 'lightOlive', '2016-11-16 19:09:55', null, null, null);
INSERT INTO `colors` VALUES ('46', 'lightOrange', '2016-11-16 19:09:57', null, null, null);
INSERT INTO `colors` VALUES ('47', 'lightPink', '2016-11-16 19:10:00', null, null, null);
INSERT INTO `colors` VALUES ('48', 'grayDark', '2016-11-16 19:10:02', null, null, null);
INSERT INTO `colors` VALUES ('49', 'grayDarker', '2016-11-16 19:10:05', null, null, null);
INSERT INTO `colors` VALUES ('50', 'grayLight', '2016-11-16 19:10:06', null, null, null);

-- ----------------------------
-- Table structure for divisions
-- ----------------------------
DROP TABLE IF EXISTS `divisions`;
CREATE TABLE `divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of divisions
-- ----------------------------
INSERT INTO `divisions` VALUES ('1', 'A', '2', '2018-01-15 00:37:11', '2018-02-04 22:16:29', '4', '4');
INSERT INTO `divisions` VALUES ('2', 'B', '2', '2018-01-15 00:37:13', '2018-01-15 00:40:59', '4', null);
INSERT INTO `divisions` VALUES ('3', 'Alpha', '1', '2018-01-15 00:48:33', '2018-01-15 00:48:35', null, null);
INSERT INTO `divisions` VALUES ('4', 'Beta', '1', '2018-01-15 00:48:34', '2018-01-15 00:48:35', null, null);
INSERT INTO `divisions` VALUES ('5', 'Mix', '7', '2018-01-15 00:49:25', '2018-01-15 00:49:28', null, null);
INSERT INTO `divisions` VALUES ('6', 'A', '8', '2018-01-21 21:51:19', null, '27', null);
INSERT INTO `divisions` VALUES ('7', 'A', '9', '2018-03-12 20:29:13', null, '37', null);

-- ----------------------------
-- Table structure for fbanswers
-- ----------------------------
DROP TABLE IF EXISTS `fbanswers`;
CREATE TABLE `fbanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fbid` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `answerid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fbanswers
-- ----------------------------
INSERT INTO `fbanswers` VALUES ('1', '7', 'Apple', '1', '2017-10-14 17:11:52', null, null, null);
INSERT INTO `fbanswers` VALUES ('2', '8', 'Beach', '1', '2017-10-14 17:11:52', '2017-10-14 18:00:43', null, null);
INSERT INTO `fbanswers` VALUES ('3', '9', 'Carl', '1', '2017-10-14 17:11:52', '2017-10-14 18:00:47', null, null);
INSERT INTO `fbanswers` VALUES ('4', '10', 'Dish', '2', '2017-10-14 17:11:52', null, null, null);
INSERT INTO `fbanswers` VALUES ('5', '11', 'Elephant', '2', '2017-10-14 17:11:52', null, null, null);
INSERT INTO `fbanswers` VALUES ('6', '12', 'Fish', '2', '2017-10-14 17:11:52', null, null, null);
INSERT INTO `fbanswers` VALUES ('7', '7', 'Apple', '13', '2017-10-14 18:18:14', null, null, null);
INSERT INTO `fbanswers` VALUES ('8', '8', 'Banana', '13', '2017-10-14 18:18:14', null, null, null);
INSERT INTO `fbanswers` VALUES ('9', '9', 'Cinnamon', '13', '2017-10-14 18:18:14', null, null, null);
INSERT INTO `fbanswers` VALUES ('10', '10', 'Dish', '14', '2017-10-14 18:18:14', null, null, null);
INSERT INTO `fbanswers` VALUES ('11', '11', 'Elephant', '14', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `fbanswers` VALUES ('12', '12', 'Fish', '14', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `fbanswers` VALUES ('123', '7', 'apple', '231', '2017-10-21 02:20:35', null, null, null);
INSERT INTO `fbanswers` VALUES ('124', '8', 'banan', '231', '2017-10-21 02:20:35', null, null, null);
INSERT INTO `fbanswers` VALUES ('125', '9', '', '231', '2017-10-21 02:20:35', null, null, null);
INSERT INTO `fbanswers` VALUES ('126', '10', 'DIsh', '232', '2017-10-21 02:20:35', null, null, null);
INSERT INTO `fbanswers` VALUES ('127', '11', '', '232', '2017-10-21 02:20:35', null, null, null);
INSERT INTO `fbanswers` VALUES ('128', '12', 'Fis', '232', '2017-10-21 02:20:35', null, null, null);
INSERT INTO `fbanswers` VALUES ('129', '3', 'went ', '243', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `fbanswers` VALUES ('130', '4', 'up ', '243', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `fbanswers` VALUES ('131', '5', 'the', '243', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `fbanswers` VALUES ('132', '6', 'hill', '243', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `fbanswers` VALUES ('168', '24', '1', '305', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `fbanswers` VALUES ('169', '25', '2', '306', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `fbanswers` VALUES ('170', '26', '3', '306', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `fbanswers` VALUES ('171', '27', '', '307', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `fbanswers` VALUES ('172', '28', '60', '308', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `fbanswers` VALUES ('173', '29', '', '308', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `fbanswers` VALUES ('174', '30', '3', '308', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `fbanswers` VALUES ('175', '24', '4', '320', '2017-12-27 23:00:37', null, null, null);
INSERT INTO `fbanswers` VALUES ('176', '25', '2', '321', '2017-12-27 23:00:37', null, null, null);
INSERT INTO `fbanswers` VALUES ('177', '26', '8', '321', '2017-12-27 23:00:37', null, null, null);
INSERT INTO `fbanswers` VALUES ('178', '27', '6', '322', '2017-12-27 23:00:37', null, null, null);
INSERT INTO `fbanswers` VALUES ('179', '28', '60', '323', '2017-12-27 23:00:37', null, null, null);
INSERT INTO `fbanswers` VALUES ('180', '29', '90', '323', '2017-12-27 23:00:37', null, null, null);
INSERT INTO `fbanswers` VALUES ('181', '30', '3', '323', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `fbanswers` VALUES ('187', '35', '2', '352', '2017-12-30 22:41:33', null, null, null);
INSERT INTO `fbanswers` VALUES ('188', '36', 'Imam Hasan (a.s.)', '353', '2017-12-30 22:41:34', null, null, null);
INSERT INTO `fbanswers` VALUES ('189', '37', 'Salman', '354', '2017-12-30 22:41:34', null, null, null);
INSERT INTO `fbanswers` VALUES ('190', '38', 'Miqdad', '354', '2017-12-30 22:41:34', null, null, null);
INSERT INTO `fbanswers` VALUES ('191', '34', 'Imam Ali (as)', '355', '2017-12-30 22:41:34', null, null, null);
INSERT INTO `fbanswers` VALUES ('192', '40', '1', '361', '2017-12-30 23:02:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('203', '41', '2', '377', '2018-01-21 22:20:40', null, null, null);
INSERT INTO `fbanswers` VALUES ('204', '43', '2', '378', '2018-01-21 22:20:41', null, null, null);
INSERT INTO `fbanswers` VALUES ('205', '44', '2', '379', '2018-01-21 22:20:41', null, null, null);
INSERT INTO `fbanswers` VALUES ('206', '45', '3', '380', '2018-01-21 22:20:41', null, null, null);
INSERT INTO `fbanswers` VALUES ('207', '46', '3', '381', '2018-01-21 22:20:41', null, null, null);
INSERT INTO `fbanswers` VALUES ('213', '41', '2', '387', '2018-01-21 22:38:23', null, null, null);
INSERT INTO `fbanswers` VALUES ('214', '43', '5', '388', '2018-01-21 22:38:24', null, null, null);
INSERT INTO `fbanswers` VALUES ('215', '44', '8', '389', '2018-01-21 22:38:24', null, null, null);
INSERT INTO `fbanswers` VALUES ('216', '45', '2', '390', '2018-01-21 22:38:24', null, null, null);
INSERT INTO `fbanswers` VALUES ('217', '46', '2', '391', '2018-01-21 22:38:24', null, null, null);
INSERT INTO `fbanswers` VALUES ('218', '41', '2', '392', '2018-01-21 22:39:14', null, null, null);
INSERT INTO `fbanswers` VALUES ('219', '43', '2', '393', '2018-01-21 22:39:14', null, null, null);
INSERT INTO `fbanswers` VALUES ('220', '44', '2', '394', '2018-01-21 22:39:15', null, null, null);
INSERT INTO `fbanswers` VALUES ('221', '45', '2', '395', '2018-01-21 22:39:15', null, null, null);
INSERT INTO `fbanswers` VALUES ('222', '46', '2', '396', '2018-01-21 22:39:15', null, null, null);
INSERT INTO `fbanswers` VALUES ('223', '24', '4', '397', '2018-02-02 22:26:46', null, null, null);
INSERT INTO `fbanswers` VALUES ('224', '25', '', '398', '2018-02-02 22:26:46', null, null, null);
INSERT INTO `fbanswers` VALUES ('225', '26', '', '398', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `fbanswers` VALUES ('226', '27', '', '399', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `fbanswers` VALUES ('227', '28', '', '400', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `fbanswers` VALUES ('228', '29', '', '400', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `fbanswers` VALUES ('229', '30', '', '400', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `fbanswers` VALUES ('267', '24', '1', '473', '2018-09-01 19:49:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('268', '25', '2', '474', '2018-09-01 19:49:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('269', '26', '4', '474', '2018-09-01 19:49:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('270', '27', '6', '475', '2018-09-01 19:49:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('271', '28', '60', '476', '2018-09-01 19:49:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('272', '29', '120', '476', '2018-09-01 19:49:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('273', '30', '3', '476', '2018-09-01 19:49:12', null, null, null);
INSERT INTO `fbanswers` VALUES ('274', '59', '0', '477', '2018-09-01 19:49:12', null, null, null);

-- ----------------------------
-- Table structure for fillblanks
-- ----------------------------
DROP TABLE IF EXISTS `fillblanks`;
CREATE TABLE `fillblanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `questionid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fillblanks
-- ----------------------------
INSERT INTO `fillblanks` VALUES ('3', 'went', '10', '2017-10-04 00:55:29', null, '4', null);
INSERT INTO `fillblanks` VALUES ('4', 'up', '10', '2017-10-04 00:55:29', null, '4', null);
INSERT INTO `fillblanks` VALUES ('5', 'the', '10', '2017-10-04 00:55:29', null, '4', null);
INSERT INTO `fillblanks` VALUES ('6', 'hill', '10', '2017-10-04 00:55:29', null, '4', null);
INSERT INTO `fillblanks` VALUES ('7', 'Apple', '1', '2017-10-04 01:27:57', null, '4', null);
INSERT INTO `fillblanks` VALUES ('8', 'Banana', '1', '2017-10-04 01:27:57', null, '4', null);
INSERT INTO `fillblanks` VALUES ('9', 'Cinnamon', '1', '2017-10-04 01:27:57', null, '4', null);
INSERT INTO `fillblanks` VALUES ('10', 'Dish', '13', '2017-10-14 00:30:57', null, '4', null);
INSERT INTO `fillblanks` VALUES ('11', 'Elephant', '13', '2017-10-14 00:30:57', null, '4', null);
INSERT INTO `fillblanks` VALUES ('12', 'Fish', '13', '2017-10-14 00:30:58', null, '4', null);
INSERT INTO `fillblanks` VALUES ('13', '3', '17', '2017-10-23 01:34:48', null, '4', null);
INSERT INTO `fillblanks` VALUES ('14', '1', '17', '2017-10-23 01:34:48', null, '4', null);
INSERT INTO `fillblanks` VALUES ('24', 'One', '18', '2017-11-21 00:15:25', null, '4', null);
INSERT INTO `fillblanks` VALUES ('25', '2', '19', '2017-11-21 00:17:59', null, '4', null);
INSERT INTO `fillblanks` VALUES ('26', '4', '19', '2017-11-21 00:17:59', null, '4', null);
INSERT INTO `fillblanks` VALUES ('27', '6', '20', '2017-11-21 00:18:25', null, '4', null);
INSERT INTO `fillblanks` VALUES ('28', '60', '21', '2017-11-21 00:18:53', null, '4', null);
INSERT INTO `fillblanks` VALUES ('29', '120', '21', '2017-11-21 00:18:53', null, '4', null);
INSERT INTO `fillblanks` VALUES ('30', '3', '21', '2017-11-21 00:18:54', null, '4', null);
INSERT INTO `fillblanks` VALUES ('31', 'A', '44', '2017-12-27 20:25:45', null, '4', null);
INSERT INTO `fillblanks` VALUES ('32', 'B', '44', '2017-12-27 20:25:45', null, '4', null);
INSERT INTO `fillblanks` VALUES ('33', 'ready', '45', '2017-12-27 20:29:37', null, '4', null);
INSERT INTO `fillblanks` VALUES ('34', 'Imam Ali (as)', '56', '2017-12-30 22:29:51', null, '18', null);
INSERT INTO `fillblanks` VALUES ('35', '2', '47', '2017-12-30 22:30:55', null, '18', null);
INSERT INTO `fillblanks` VALUES ('36', 'Imam Hasan (as)', '48', '2017-12-30 22:31:23', null, '18', null);
INSERT INTO `fillblanks` VALUES ('37', 'Salman', '49', '2017-12-30 22:32:16', null, '18', null);
INSERT INTO `fillblanks` VALUES ('38', 'Abu Dhar', '49', '2017-12-30 22:32:16', null, '18', null);
INSERT INTO `fillblanks` VALUES ('40', '1', '57', '2017-12-30 22:56:40', null, '18', null);
INSERT INTO `fillblanks` VALUES ('41', '2', '65', '2018-01-21 21:58:30', null, '27', null);
INSERT INTO `fillblanks` VALUES ('43', '2', '66', '2018-01-21 21:58:48', null, '27', null);
INSERT INTO `fillblanks` VALUES ('44', '2', '67', '2018-01-21 21:59:00', null, '27', null);
INSERT INTO `fillblanks` VALUES ('45', '2', '68', '2018-01-21 21:59:05', null, '27', null);
INSERT INTO `fillblanks` VALUES ('46', '2', '69', '2018-01-21 21:59:11', null, '27', null);
INSERT INTO `fillblanks` VALUES ('47', '2', '71', '2018-03-12 20:31:25', null, '37', null);
INSERT INTO `fillblanks` VALUES ('48', '4', '72', '2018-03-12 20:31:40', null, '37', null);
INSERT INTO `fillblanks` VALUES ('49', '6', '73', '2018-03-12 20:31:49', null, '37', null);
INSERT INTO `fillblanks` VALUES ('50', '3', '74', '2018-03-12 20:31:57', null, '37', null);
INSERT INTO `fillblanks` VALUES ('51', '2', '75', '2018-03-12 20:32:08', null, '37', null);
INSERT INTO `fillblanks` VALUES ('59', '1', '81', '2018-09-01 19:43:36', null, '4', null);
INSERT INTO `fillblanks` VALUES ('60', '2', '81', '2018-09-01 19:43:36', null, '4', null);
INSERT INTO `fillblanks` VALUES ('61', '3', '81', '2018-09-01 19:43:36', null, '4', null);
INSERT INTO `fillblanks` VALUES ('62', '0', '81', '2018-09-01 19:43:36', null, '4', null);

-- ----------------------------
-- Table structure for grades
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES ('1', '7 ', '1', '2018-01-15 00:36:35', '2018-01-15 00:48:24', '4', '4');
INSERT INTO `grades` VALUES ('2', '8', '7', '2018-01-15 00:36:37', '2018-01-15 00:49:16', '4', null);
INSERT INTO `grades` VALUES ('3', 'Seven', '2', '2018-01-15 00:45:44', '2018-01-15 00:48:27', '4', null);
INSERT INTO `grades` VALUES ('4', 'Eight', '2', '2018-01-15 00:45:47', '2018-01-15 00:48:28', '4', null);
INSERT INTO `grades` VALUES ('5', 'I', '8', '2018-01-21 21:51:10', null, '27', null);
INSERT INTO `grades` VALUES ('6', 'I', '9', '2018-03-12 20:27:00', null, '37', null);
INSERT INTO `grades` VALUES ('7', 'A', '9', '2018-03-12 20:27:05', null, '37', null);

-- ----------------------------
-- Table structure for laanswers
-- ----------------------------
DROP TABLE IF EXISTS `laanswers`;
CREATE TABLE `laanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` longtext,
  `answerid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of laanswers
-- ----------------------------
INSERT INTO `laanswers` VALUES ('1', 'A\r\nB\r\nC\r\nD', '5', '2017-10-14 17:11:52', null, null, null);
INSERT INTO `laanswers` VALUES ('2', '1\r\n2\r\n3\r\n4', '6', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `laanswers` VALUES ('3', 'A\r\nB\r\nC\r\nD', '17', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `laanswers` VALUES ('4', '1\r\n2\r\n3\r\n4', '18', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `laanswers` VALUES ('39', 'ASFOOA', '235', '2017-10-21 02:20:36', null, null, null);
INSERT INTO `laanswers` VALUES ('40', 'I dont\' want\r\n', '236', '2017-10-21 02:20:36', null, null, null);
INSERT INTO `laanswers` VALUES ('51', 'cdi', '313', '2017-11-21 01:04:53', '2017-12-25 22:17:53', null, null);
INSERT INTO `laanswers` VALUES ('52', 'qeooeq', '314', '2017-11-21 01:04:53', '2017-12-25 22:17:54', null, null);
INSERT INTO `laanswers` VALUES ('53', 'because\r\ni \r\ndont know\r\n', '328', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `laanswers` VALUES ('54', 'ple', '329', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `laanswers` VALUES ('55', 'long answer', '363', '2017-12-30 23:02:13', null, null, null);
INSERT INTO `laanswers` VALUES ('56', '', '405', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `laanswers` VALUES ('57', '', '406', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `laanswers` VALUES ('68', 'because can be divided by itself and 1', '482', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `laanswers` VALUES ('69', 'because can be divided by 2, itself and 1 except 2 which is a prime number', '483', '2018-09-01 19:49:13', null, null, null);

-- ----------------------------
-- Table structure for longanswers
-- ----------------------------
DROP TABLE IF EXISTS `longanswers`;
CREATE TABLE `longanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` longtext,
  `questionid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of longanswers
-- ----------------------------
INSERT INTO `longanswers` VALUES ('2', 'A\r\nB\r\nC\r\nD', '3', '2017-10-04 01:30:19', null, '4', null);
INSERT INTO `longanswers` VALUES ('3', '1\r\n2\r\n3\r\n4', '15', '2017-10-14 00:31:38', null, '4', null);
INSERT INTO `longanswers` VALUES ('4', '', '26', '2017-11-20 00:34:39', '2017-12-25 22:17:47', '4', null);
INSERT INTO `longanswers` VALUES ('5', '', '27', '2017-11-20 00:34:59', '2017-12-25 22:17:48', '4', null);
INSERT INTO `longanswers` VALUES ('6', 'Long answer', '60', '2017-12-30 22:58:46', null, '18', null);

-- ----------------------------
-- Table structure for matchingitems
-- ----------------------------
DROP TABLE IF EXISTS `matchingitems`;
CREATE TABLE `matchingitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qoption` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `questionid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of matchingitems
-- ----------------------------
INSERT INTO `matchingitems` VALUES ('5', 'King', 'Arthur', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('6', 'William', 'Shakespeare', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('7', 'Dan', 'Brown', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('8', 'Harry', 'Potter', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('9', 'Ralph', 'Lauren', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('10', 'David', 'Beckham', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('11', 'Michael', 'Angelo', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('12', 'Leonardo', 'da Vinci', '11', '2017-10-04 00:56:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('13', '4', '2', '9', '2017-10-04 01:36:57', null, '4', null);
INSERT INTO `matchingitems` VALUES ('14', '9', '3', '9', '2017-10-04 01:36:57', null, '4', null);
INSERT INTO `matchingitems` VALUES ('15', '16', '4', '9', '2017-10-04 01:36:57', null, '4', null);
INSERT INTO `matchingitems` VALUES ('16', '25', '5', '9', '2017-10-04 01:36:57', null, '4', null);
INSERT INTO `matchingitems` VALUES ('17', '36', '6', '9', '2017-10-04 01:36:57', null, '4', null);
INSERT INTO `matchingitems` VALUES ('18', 'Cow', 'Beef', '16', '2017-10-14 00:32:40', null, '4', null);
INSERT INTO `matchingitems` VALUES ('19', 'Sheep', 'Mutton', '16', '2017-10-14 00:32:40', null, '4', null);
INSERT INTO `matchingitems` VALUES ('20', 'Pig', 'Pork', '16', '2017-10-14 00:32:40', null, '4', null);
INSERT INTO `matchingitems` VALUES ('21', '4', '2', '38', '2017-11-20 00:30:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('22', '9', '3', '38', '2017-11-20 00:30:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('23', '16', '4', '38', '2017-11-20 00:30:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('24', '25', '5', '38', '2017-11-20 00:30:56', null, '4', null);
INSERT INTO `matchingitems` VALUES ('30', '2', '4', '22', '2017-11-20 00:42:17', null, '4', null);
INSERT INTO `matchingitems` VALUES ('31', '3', '9', '22', '2017-11-20 00:42:17', null, '4', null);
INSERT INTO `matchingitems` VALUES ('32', '4', '16', '22', '2017-11-20 00:42:17', null, '4', null);
INSERT INTO `matchingitems` VALUES ('33', 'A', 'A', '62', '2017-12-30 22:59:39', null, '18', null);
INSERT INTO `matchingitems` VALUES ('34', 'B', 'B', '62', '2017-12-30 22:59:39', null, '18', null);
INSERT INTO `matchingitems` VALUES ('35', 'C', 'C', '62', '2017-12-30 22:59:40', null, '18', null);
INSERT INTO `matchingitems` VALUES ('36', 'D', 'D', '62', '2017-12-30 22:59:40', null, '18', null);
INSERT INTO `matchingitems` VALUES ('37', 'E', 'E', '62', '2017-12-30 22:59:40', null, '18', null);

-- ----------------------------
-- Table structure for mcanswers
-- ----------------------------
DROP TABLE IF EXISTS `mcanswers`;
CREATE TABLE `mcanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `answerid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mcanswers
-- ----------------------------
INSERT INTO `mcanswers` VALUES ('1', 'Dictionary', '7', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mcanswers` VALUES ('2', 'Egg', '8', '2017-10-14 17:11:53', '2017-10-14 18:09:22', null, null);
INSERT INTO `mcanswers` VALUES ('3', 'Dictionary', '19', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mcanswers` VALUES ('4', 'Chicken', '20', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mcanswers` VALUES ('33', 'Wehr', '237', '2017-10-21 02:20:36', null, null, null);
INSERT INTO `mcanswers` VALUES ('34', 'Chicken', '238', '2017-10-21 02:20:36', null, null, null);
INSERT INTO `mcanswers` VALUES ('35', 'constant', '318', '2017-12-25 22:54:26', '2017-12-26 00:10:37', null, null);
INSERT INTO `mcanswers` VALUES ('36', 'alpha', '319', '2017-12-26 00:08:02', '2017-12-26 00:08:05', null, null);
INSERT INTO `mcanswers` VALUES ('37', 'variable', '330', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `mcanswers` VALUES ('38', 'alpha', '331', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `mcanswers` VALUES ('39', 'Howard', '332', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `mcanswers` VALUES ('40', 'x squared', '333', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mcanswers` VALUES ('41', 'infinity', '334', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mcanswers` VALUES ('42', 'zz', '335', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mcanswers` VALUES ('43', 'A', '364', '2017-12-30 23:02:13', null, null, null);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Home', 'home', 'index', '1', '1');
INSERT INTO `menus` VALUES ('2', 'Users', null, null, '9', '1');
INSERT INTO `menus` VALUES ('3', 'Masters', null, null, '2', '1');
INSERT INTO `menus` VALUES ('4', 'Tests', 'quizzes', 'index', '3', '1');
INSERT INTO `menus` VALUES ('5', 'Tests', 'student_quizzes', null, '4', '1');

-- ----------------------------
-- Table structure for mianswers
-- ----------------------------
DROP TABLE IF EXISTS `mianswers`;
CREATE TABLE `mianswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `miid` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `answerid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mianswers
-- ----------------------------
INSERT INTO `mianswers` VALUES ('1', '13', '5', '9', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('2', '14', '5', '9', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('3', '15', '5', '9', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('4', '16', '5', '9', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('5', '17', '5', '9', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('6', '18', 'Mutton', '10', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('7', '19', 'Mutton', '10', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('8', '20', 'Mutton', '10', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `mianswers` VALUES ('9', '13', '2', '21', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mianswers` VALUES ('10', '14', '3', '21', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mianswers` VALUES ('11', '15', '4', '21', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mianswers` VALUES ('12', '16', '5', '21', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mianswers` VALUES ('13', '17', '6', '21', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mianswers` VALUES ('14', '18', 'Beef', '22', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `mianswers` VALUES ('15', '19', 'Mutton', '22', '2017-10-14 18:18:16', null, null, null);
INSERT INTO `mianswers` VALUES ('16', '20', 'Pork', '22', '2017-10-14 18:18:16', null, null, null);
INSERT INTO `mianswers` VALUES ('169', '13', '2', '239', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('170', '14', '5', '239', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('171', '15', '4', '239', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('172', '16', '3', '239', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('173', '17', '6', '239', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('174', '18', 'Beef', '240', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('175', '19', 'Pork', '240', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('176', '20', 'Mutton', '240', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `mianswers` VALUES ('177', '5', 'Arthur', '244', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `mianswers` VALUES ('178', '6', 'Shakespeare', '244', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `mianswers` VALUES ('179', '7', 'Brown', '244', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `mianswers` VALUES ('180', '8', 'Potter', '244', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `mianswers` VALUES ('181', '9', 'Lauren', '244', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `mianswers` VALUES ('182', '10', 'Beckham', '244', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `mianswers` VALUES ('183', '11', 'Angelo', '244', '2017-10-23 01:49:21', null, null, null);
INSERT INTO `mianswers` VALUES ('184', '12', 'da Vinci', '244', '2017-10-23 01:49:22', null, null, null);
INSERT INTO `mianswers` VALUES ('220', '30', '4', '315', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `mianswers` VALUES ('221', '31', '4', '315', '2017-11-21 01:04:53', null, null, null);
INSERT INTO `mianswers` VALUES ('222', '32', '4', '315', '2017-11-21 01:04:54', null, null, null);
INSERT INTO `mianswers` VALUES ('223', '21', '2', '316', '2017-11-21 01:04:54', null, null, null);
INSERT INTO `mianswers` VALUES ('224', '22', '2', '316', '2017-11-21 01:04:54', null, null, null);
INSERT INTO `mianswers` VALUES ('225', '23', '2', '316', '2017-11-21 01:04:54', null, null, null);
INSERT INTO `mianswers` VALUES ('226', '24', '2', '316', '2017-11-21 01:04:54', null, null, null);
INSERT INTO `mianswers` VALUES ('227', '30', '4', '336', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mianswers` VALUES ('228', '31', '', '336', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mianswers` VALUES ('229', '32', '16', '336', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mianswers` VALUES ('230', '21', '2', '337', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mianswers` VALUES ('231', '22', '', '337', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mianswers` VALUES ('232', '23', '4', '337', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mianswers` VALUES ('233', '24', '5', '337', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `mianswers` VALUES ('234', '33', 'A', '365', '2017-12-30 23:02:13', null, null, null);
INSERT INTO `mianswers` VALUES ('235', '34', 'B', '365', '2017-12-30 23:02:13', null, null, null);
INSERT INTO `mianswers` VALUES ('236', '35', 'C', '365', '2017-12-30 23:02:14', null, null, null);
INSERT INTO `mianswers` VALUES ('237', '36', 'D', '365', '2017-12-30 23:02:14', null, null, null);
INSERT INTO `mianswers` VALUES ('238', '37', 'E', '365', '2017-12-30 23:02:14', null, null, null);
INSERT INTO `mianswers` VALUES ('239', '30', '', '407', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `mianswers` VALUES ('240', '31', '', '407', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `mianswers` VALUES ('241', '32', '', '407', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `mianswers` VALUES ('242', '21', '', '408', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `mianswers` VALUES ('243', '22', '', '408', '2018-02-02 22:26:48', null, null, null);
INSERT INTO `mianswers` VALUES ('244', '23', '', '408', '2018-02-02 22:26:48', null, null, null);
INSERT INTO `mianswers` VALUES ('245', '24', '', '408', '2018-02-02 22:26:48', null, null, null);
INSERT INTO `mianswers` VALUES ('281', '30', '4', '484', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `mianswers` VALUES ('282', '31', '9', '484', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `mianswers` VALUES ('283', '32', '16', '484', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `mianswers` VALUES ('284', '21', '2', '485', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `mianswers` VALUES ('285', '22', '3', '485', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `mianswers` VALUES ('286', '23', '4', '485', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `mianswers` VALUES ('287', '24', '5', '485', '2018-09-01 19:49:13', null, null, null);

-- ----------------------------
-- Table structure for multiplechoices
-- ----------------------------
DROP TABLE IF EXISTS `multiplechoices`;
CREATE TABLE `multiplechoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `correct` int(11) DEFAULT '0',
  `questionid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of multiplechoices
-- ----------------------------
INSERT INTO `multiplechoices` VALUES ('3', 'Chicken', '1', '6', '2017-10-04 00:44:46', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('4', 'Egg', '0', '6', '2017-10-04 00:44:46', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('5', 'Hans', '0', '5', '2017-10-04 01:33:35', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('6', 'Wehr', '0', '5', '2017-10-04 01:33:35', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('7', 'Dictionary', '1', '5', '2017-10-04 01:33:35', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('8', 'yz', '1', '40', '2017-11-20 00:38:00', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('9', 'yy', '0', '40', '2017-11-20 00:38:00', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('10', 'zz', '0', '40', '2017-11-20 00:38:00', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('11', 'None', '0', '40', '2017-11-20 00:38:00', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('12', 'constant', '0', '33', '2017-11-20 00:38:36', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('13', 'variable', '1', '33', '2017-11-20 00:38:36', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('14', 'number', '0', '33', '2017-11-20 00:38:36', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('15', 'consonant', '0', '33', '2017-11-20 00:38:36', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('16', 'beta', '0', '34', '2017-11-20 00:39:03', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('17', 'alpha', '1', '34', '2017-11-20 00:39:03', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('18', 'gamma', '0', '34', '2017-11-20 00:39:03', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('19', 'none', '0', '34', '2017-11-20 00:39:03', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('20', 'Neumen', '0', '35', '2017-11-20 00:39:38', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('21', 'Stonecold', '0', '35', '2017-11-20 00:39:38', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('22', 'Einstein', '1', '35', '2017-11-20 00:39:38', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('23', 'Howard', '0', '35', '2017-11-20 00:39:38', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('24', 'x / 2', '1', '36', '2017-11-20 00:40:44', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('25', 'x / x / 2', '0', '36', '2017-11-20 00:40:44', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('26', '2x', '0', '36', '2017-11-20 00:40:44', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('27', 'x squared', '0', '36', '2017-11-20 00:40:44', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('28', 'zero', '1', '37', '2017-11-20 00:41:46', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('29', 'infinity', '0', '37', '2017-11-20 00:41:46', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('30', 'a million', '0', '37', '2017-11-20 00:41:46', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('31', '1', '0', '37', '2017-11-20 00:41:46', null, '4', null);
INSERT INTO `multiplechoices` VALUES ('32', 'A', '0', '64', '2017-12-30 22:59:08', null, '18', null);
INSERT INTO `multiplechoices` VALUES ('33', 'B', '1', '64', '2017-12-30 22:59:08', null, '18', null);
INSERT INTO `multiplechoices` VALUES ('34', 'C', '0', '64', '2017-12-30 22:59:08', null, '18', null);
INSERT INTO `multiplechoices` VALUES ('35', 'D', '0', '64', '2017-12-30 22:59:09', null, '18', null);
INSERT INTO `multiplechoices` VALUES ('36', 'Maths', '1', '76', '2018-03-12 20:32:44', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('37', 'English', '0', '76', '2018-03-12 20:32:44', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('38', 'Geography', '0', '76', '2018-03-12 20:32:45', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('39', 'Science', '0', '76', '2018-03-12 20:32:45', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('40', 'Maths', '0', '77', '2018-03-12 20:33:03', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('41', 'Science', '1', '77', '2018-03-12 20:33:03', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('42', 'English', '0', '77', '2018-03-12 20:33:03', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('43', 'History', '0', '77', '2018-03-12 20:33:03', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('44', 'Maths', '0', '78', '2018-03-12 20:33:59', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('45', 'Science', '0', '78', '2018-03-12 20:33:59', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('46', 'History', '1', '78', '2018-03-12 20:33:59', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('47', 'English', '0', '78', '2018-03-12 20:33:59', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('48', 'Maths', '0', '79', '2018-03-12 20:34:52', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('49', 'English', '1', '79', '2018-03-12 20:34:52', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('50', 'Science', '0', '79', '2018-03-12 20:34:52', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('51', 'History', '0', '79', '2018-03-12 20:34:52', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('56', 'Maths', '0', '80', '2018-03-12 20:35:22', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('57', 'Geography', '0', '80', '2018-03-12 20:35:22', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('58', 'English', '0', '80', '2018-03-12 20:35:22', null, '37', null);
INSERT INTO `multiplechoices` VALUES ('59', 'Civics', '1', '80', '2018-03-12 20:35:22', null, '37', null);

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `maxstd` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of packages
-- ----------------------------
INSERT INTO `packages` VALUES ('1', 'Bronze', '5', '30', 'TSH 50,000', '2017-12-29 03:10:47', null, '1', null);
INSERT INTO `packages` VALUES ('2', 'Silver', '10', '30', 'TSH 80,000', '2017-12-29 03:11:36', '2017-12-29 03:12:05', '1', '1');
INSERT INTO `packages` VALUES ('3', 'Gold', '20', '30', 'TSH 120,000', '2017-12-29 03:11:57', null, '1', null);
INSERT INTO `packages` VALUES ('4', 'Diamond', '100', '120', 'TSH 80,000', '2018-07-20 20:59:47', '2018-07-20 20:59:59', '1', '1');

-- ----------------------------
-- Table structure for quizanswers
-- ----------------------------
DROP TABLE IF EXISTS `quizanswers`;
CREATE TABLE `quizanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `squizid` int(11) DEFAULT NULL,
  `questionid` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizanswers
-- ----------------------------
INSERT INTO `quizanswers` VALUES ('1', '1', '1', '1', '2017-10-14 17:11:52', '2017-10-15 01:47:40', null, null);
INSERT INTO `quizanswers` VALUES ('2', '1', '13', '0', '2017-10-14 17:11:52', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('3', '1', '2', '2', '2017-10-14 17:11:52', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('4', '1', '14', '4', '2017-10-14 17:11:52', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('5', '1', '3', '1', '2017-10-14 17:11:52', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('6', '1', '15', '2', '2017-10-14 17:11:53', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('7', '1', '5', '1', '2017-10-14 17:11:53', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('8', '1', '6', '1', '2017-10-14 17:11:53', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('9', '1', '9', '2', '2017-10-14 17:11:53', '2017-10-23 01:02:47', null, null);
INSERT INTO `quizanswers` VALUES ('10', '1', '16', '2', '2017-10-14 17:11:53', '2017-10-15 01:47:41', null, null);
INSERT INTO `quizanswers` VALUES ('11', '1', '4', '3', '2017-10-14 17:11:53', '2017-10-15 01:47:40', null, null);
INSERT INTO `quizanswers` VALUES ('12', '1', '12', '1', '2017-10-14 17:11:53', '2017-10-15 01:47:40', null, null);
INSERT INTO `quizanswers` VALUES ('13', '2', '1', '1', '2017-10-14 18:18:14', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('14', '2', '13', '0', '2017-10-14 18:18:14', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('15', '2', '2', '0', '2017-10-14 18:18:15', '2017-12-26 00:31:23', null, null);
INSERT INTO `quizanswers` VALUES ('16', '2', '14', '0', '2017-10-14 18:18:15', '2017-12-26 00:31:24', null, null);
INSERT INTO `quizanswers` VALUES ('17', '2', '3', '1', '2017-10-14 18:18:15', '2017-12-26 00:31:24', null, null);
INSERT INTO `quizanswers` VALUES ('18', '2', '15', '1', '2017-10-14 18:18:15', '2017-12-26 00:31:24', null, null);
INSERT INTO `quizanswers` VALUES ('19', '2', '5', '0', '2017-10-14 18:18:15', '2017-12-26 00:31:24', null, null);
INSERT INTO `quizanswers` VALUES ('20', '2', '6', '0', '2017-10-14 18:18:15', '2017-12-26 00:31:24', null, null);
INSERT INTO `quizanswers` VALUES ('21', '2', '9', '0', '2017-10-14 18:18:15', '2017-12-26 00:31:24', null, null);
INSERT INTO `quizanswers` VALUES ('22', '2', '16', '0', '2017-10-14 18:18:15', '2017-12-26 00:31:24', null, null);
INSERT INTO `quizanswers` VALUES ('23', '2', '4', '3', '2017-10-14 18:18:16', '2017-10-15 02:00:43', null, null);
INSERT INTO `quizanswers` VALUES ('24', '2', '12', '1', '2017-10-14 18:18:16', '2017-10-15 02:00:43', null, null);
INSERT INTO `quizanswers` VALUES ('231', '3', '1', null, '2017-10-21 02:20:35', null, null, null);
INSERT INTO `quizanswers` VALUES ('232', '3', '13', null, '2017-10-21 02:20:35', null, null, null);
INSERT INTO `quizanswers` VALUES ('233', '3', '2', null, '2017-10-21 02:20:35', null, null, null);
INSERT INTO `quizanswers` VALUES ('234', '3', '14', null, '2017-10-21 02:20:36', null, null, null);
INSERT INTO `quizanswers` VALUES ('235', '3', '3', null, '2017-10-21 02:20:36', null, null, null);
INSERT INTO `quizanswers` VALUES ('236', '3', '15', null, '2017-10-21 02:20:36', null, null, null);
INSERT INTO `quizanswers` VALUES ('237', '3', '5', null, '2017-10-21 02:20:36', null, null, null);
INSERT INTO `quizanswers` VALUES ('238', '3', '6', null, '2017-10-21 02:20:36', null, null, null);
INSERT INTO `quizanswers` VALUES ('239', '3', '9', null, '2017-10-21 02:20:36', null, null, null);
INSERT INTO `quizanswers` VALUES ('240', '3', '16', null, '2017-10-21 02:20:37', null, null, null);
INSERT INTO `quizanswers` VALUES ('241', '3', '4', null, '2017-10-21 02:20:37', null, null, null);
INSERT INTO `quizanswers` VALUES ('242', '3', '12', null, '2017-10-21 02:20:37', null, null, null);
INSERT INTO `quizanswers` VALUES ('243', '4', '10', '4', '2017-10-23 01:49:21', '2017-10-23 01:50:17', null, null);
INSERT INTO `quizanswers` VALUES ('244', '4', '11', '4', '2017-10-23 01:49:21', '2017-10-23 01:50:17', null, null);
INSERT INTO `quizanswers` VALUES ('305', '5', '18', '0', '2017-11-21 01:04:53', '2017-12-26 00:58:51', null, null);
INSERT INTO `quizanswers` VALUES ('306', '5', '19', '1', '2017-11-21 01:04:53', '2017-12-26 00:47:59', null, null);
INSERT INTO `quizanswers` VALUES ('307', '5', '20', '0', '2017-11-21 01:04:53', '2017-12-26 00:47:59', null, null);
INSERT INTO `quizanswers` VALUES ('308', '5', '21', '2', '2017-11-21 01:04:53', '2017-12-26 00:58:51', null, null);
INSERT INTO `quizanswers` VALUES ('309', '5', '23', '2', '2017-11-21 01:04:53', '2017-12-26 00:57:19', null, null);
INSERT INTO `quizanswers` VALUES ('310', '5', '24', '2', '2017-11-21 01:04:53', '2017-12-26 00:58:51', null, null);
INSERT INTO `quizanswers` VALUES ('311', '5', '25', '1', '2017-11-21 01:04:53', '2017-12-26 00:57:47', null, null);
INSERT INTO `quizanswers` VALUES ('312', '5', '39', '2', '2017-11-21 01:04:53', '2017-12-26 00:58:51', null, null);
INSERT INTO `quizanswers` VALUES ('313', '5', '26', '2', '2017-11-21 01:04:53', '2017-12-26 00:57:47', null, null);
INSERT INTO `quizanswers` VALUES ('314', '5', '27', '3', '2017-11-21 01:04:53', '2017-12-26 00:57:47', null, null);
INSERT INTO `quizanswers` VALUES ('315', '5', '22', '6', '2017-11-21 01:04:53', '2017-12-27 21:04:47', null, null);
INSERT INTO `quizanswers` VALUES ('316', '5', '38', '1', '2017-11-21 01:04:54', '2017-12-26 00:57:19', null, null);
INSERT INTO `quizanswers` VALUES ('317', '5', '28', '1', '2017-12-25 22:21:57', '2017-12-26 00:57:47', null, null);
INSERT INTO `quizanswers` VALUES ('318', '5', '33', '0', '2017-12-25 22:54:16', '2017-12-26 00:47:59', null, null);
INSERT INTO `quizanswers` VALUES ('319', '5', '34', '1', '2017-12-26 00:08:12', '2017-12-26 00:57:47', null, null);
INSERT INTO `quizanswers` VALUES ('320', '6', '18', '0', '2017-12-27 23:00:37', '2018-04-14 19:05:54', null, null);
INSERT INTO `quizanswers` VALUES ('321', '6', '19', '0', '2017-12-27 23:00:37', '2018-04-14 19:05:54', null, null);
INSERT INTO `quizanswers` VALUES ('322', '6', '20', '0', '2017-12-27 23:00:37', '2018-04-14 19:05:54', null, null);
INSERT INTO `quizanswers` VALUES ('323', '6', '21', '0', '2017-12-27 23:00:37', '2018-04-14 19:05:54', null, null);
INSERT INTO `quizanswers` VALUES ('324', '6', '23', '0', '2017-12-27 23:00:38', '2018-04-14 19:05:54', null, null);
INSERT INTO `quizanswers` VALUES ('325', '6', '24', '0', '2017-12-27 23:00:38', '2018-04-14 19:05:54', null, null);
INSERT INTO `quizanswers` VALUES ('326', '6', '25', '0', '2017-12-27 23:00:38', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('327', '6', '39', '2', '2017-12-27 23:00:38', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('328', '6', '26', '0', '2017-12-27 23:00:38', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('329', '6', '27', '0', '2017-12-27 23:00:38', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('330', '6', '33', '1', '2017-12-27 23:00:38', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('331', '6', '34', '1', '2017-12-27 23:00:38', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('332', '6', '35', '0', '2017-12-27 23:00:38', '2017-12-27 23:02:00', null, null);
INSERT INTO `quizanswers` VALUES ('333', '6', '36', '0', '2017-12-27 23:00:38', '2017-12-27 23:02:00', null, null);
INSERT INTO `quizanswers` VALUES ('334', '6', '37', '0', '2017-12-27 23:00:39', '2017-12-27 23:02:00', null, null);
INSERT INTO `quizanswers` VALUES ('335', '6', '40', '0', '2017-12-27 23:00:39', '2017-12-27 23:02:00', null, null);
INSERT INTO `quizanswers` VALUES ('336', '6', '22', '4', '2017-12-27 23:00:39', '2017-12-27 23:01:58', null, null);
INSERT INTO `quizanswers` VALUES ('337', '6', '38', '3', '2017-12-27 23:00:39', '2017-12-27 23:01:58', null, null);
INSERT INTO `quizanswers` VALUES ('338', '6', '28', '1', '2017-12-27 23:00:39', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('339', '6', '29', '1', '2017-12-27 23:00:39', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('340', '6', '30', '0', '2017-12-27 23:00:40', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('341', '6', '31', '1', '2017-12-27 23:00:40', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('342', '6', '32', '0', '2017-12-27 23:00:40', '2017-12-27 23:01:59', null, null);
INSERT INTO `quizanswers` VALUES ('352', '7', '47', '1', '2017-12-30 22:41:33', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('353', '7', '48', '1', '2017-12-30 22:41:33', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('354', '7', '49', '2', '2017-12-30 22:41:34', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('355', '7', '56', '1', '2017-12-30 22:41:34', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('356', '7', '51', '1', '2017-12-30 22:41:34', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('357', '7', '52', '1', '2017-12-30 22:41:34', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('358', '7', '53', '0', '2017-12-30 22:41:34', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('359', '7', '54', '1', '2017-12-30 22:41:34', '2017-12-30 22:44:44', null, null);
INSERT INTO `quizanswers` VALUES ('360', '7', '55', '1', '2017-12-30 22:41:35', '2017-12-30 22:44:45', null, null);
INSERT INTO `quizanswers` VALUES ('361', '8', '57', '1', '2017-12-30 23:02:12', '2017-12-30 23:02:41', null, null);
INSERT INTO `quizanswers` VALUES ('362', '8', '63', '1', '2017-12-30 23:02:13', '2017-12-30 23:02:41', null, null);
INSERT INTO `quizanswers` VALUES ('363', '8', '60', '1', '2017-12-30 23:02:13', '2017-12-30 23:02:41', null, null);
INSERT INTO `quizanswers` VALUES ('364', '8', '64', '0', '2017-12-30 23:02:13', '2017-12-30 23:02:41', null, null);
INSERT INTO `quizanswers` VALUES ('365', '8', '62', '5', '2017-12-30 23:02:13', '2017-12-30 23:02:41', null, null);
INSERT INTO `quizanswers` VALUES ('366', '8', '58', '1', '2017-12-30 23:02:14', '2017-12-30 23:02:41', null, null);
INSERT INTO `quizanswers` VALUES ('377', '9', '65', '1', '2018-01-21 22:20:40', '2018-01-21 22:24:19', null, null);
INSERT INTO `quizanswers` VALUES ('378', '9', '66', '1', '2018-01-21 22:20:40', '2018-01-21 22:24:19', null, null);
INSERT INTO `quizanswers` VALUES ('379', '9', '67', '1', '2018-01-21 22:20:41', '2018-01-21 22:24:19', null, null);
INSERT INTO `quizanswers` VALUES ('380', '9', '68', '0', '2018-01-21 22:20:41', '2018-01-21 22:29:53', null, null);
INSERT INTO `quizanswers` VALUES ('381', '9', '69', '0', '2018-01-21 22:20:41', '2018-01-21 22:24:19', null, null);
INSERT INTO `quizanswers` VALUES ('387', '10', '65', '1', '2018-01-21 22:38:23', '2018-01-21 22:39:44', null, null);
INSERT INTO `quizanswers` VALUES ('388', '10', '66', '0', '2018-01-21 22:38:24', '2018-01-21 22:39:44', null, null);
INSERT INTO `quizanswers` VALUES ('389', '10', '67', '0', '2018-01-21 22:38:24', '2018-01-21 22:39:44', null, null);
INSERT INTO `quizanswers` VALUES ('390', '10', '68', '1', '2018-01-21 22:38:24', '2018-01-21 22:39:44', null, null);
INSERT INTO `quizanswers` VALUES ('391', '10', '69', '1', '2018-01-21 22:38:24', '2018-01-21 22:39:44', null, null);
INSERT INTO `quizanswers` VALUES ('392', '11', '65', '1', '2018-01-21 22:39:14', '2018-01-21 22:39:48', null, null);
INSERT INTO `quizanswers` VALUES ('393', '11', '66', '1', '2018-01-21 22:39:14', '2018-01-21 22:39:48', null, null);
INSERT INTO `quizanswers` VALUES ('394', '11', '67', '1', '2018-01-21 22:39:15', '2018-01-21 22:39:48', null, null);
INSERT INTO `quizanswers` VALUES ('395', '11', '68', '1', '2018-01-21 22:39:15', '2018-01-21 22:39:48', null, null);
INSERT INTO `quizanswers` VALUES ('396', '11', '69', '1', '2018-01-21 22:39:15', '2018-01-21 22:39:48', null, null);
INSERT INTO `quizanswers` VALUES ('397', '12', '18', null, '2018-02-02 22:26:46', null, null, null);
INSERT INTO `quizanswers` VALUES ('398', '12', '19', null, '2018-02-02 22:26:46', null, null, null);
INSERT INTO `quizanswers` VALUES ('399', '12', '20', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('400', '12', '21', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('401', '12', '23', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('402', '12', '24', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('403', '12', '25', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('404', '12', '39', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('405', '12', '26', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('406', '12', '27', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('407', '12', '22', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('408', '12', '38', null, '2018-02-02 22:26:47', null, null, null);
INSERT INTO `quizanswers` VALUES ('473', '13', '18', null, '2018-09-01 19:49:12', null, null, null);
INSERT INTO `quizanswers` VALUES ('474', '13', '19', null, '2018-09-01 19:49:12', null, null, null);
INSERT INTO `quizanswers` VALUES ('475', '13', '20', null, '2018-09-01 19:49:12', null, null, null);
INSERT INTO `quizanswers` VALUES ('476', '13', '21', null, '2018-09-01 19:49:12', null, null, null);
INSERT INTO `quizanswers` VALUES ('477', '13', '81', null, '2018-09-01 19:49:12', null, null, null);
INSERT INTO `quizanswers` VALUES ('478', '13', '23', null, '2018-09-01 19:49:12', null, null, null);
INSERT INTO `quizanswers` VALUES ('479', '13', '24', null, '2018-09-01 19:49:13', null, null, null);
INSERT INTO `quizanswers` VALUES ('480', '13', '25', null, '2018-09-01 19:49:13', null, null, null);
INSERT INTO `quizanswers` VALUES ('481', '13', '39', null, '2018-09-01 19:49:13', null, null, null);
INSERT INTO `quizanswers` VALUES ('482', '13', '26', null, '2018-09-01 19:49:13', null, null, null);
INSERT INTO `quizanswers` VALUES ('483', '13', '27', null, '2018-09-01 19:49:13', null, null, null);
INSERT INTO `quizanswers` VALUES ('484', '13', '22', null, '2018-09-01 19:49:13', null, null, null);
INSERT INTO `quizanswers` VALUES ('485', '13', '38', null, '2018-09-01 19:49:13', null, null, null);
INSERT INTO `quizanswers` VALUES ('486', '13', '28', null, '2018-09-01 19:49:13', null, null, null);

-- ----------------------------
-- Table structure for quizclasses
-- ----------------------------
DROP TABLE IF EXISTS `quizclasses`;
CREATE TABLE `quizclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quizid` int(11) DEFAULT NULL,
  `divisionid` int(11) DEFAULT NULL,
  `gradeid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizclasses
-- ----------------------------
INSERT INTO `quizclasses` VALUES ('3', '5', '1', '4', '2018-02-04 22:46:57', null, '4', null);
INSERT INTO `quizclasses` VALUES ('4', '5', '1', '3', '2018-02-04 22:48:53', null, '4', null);
INSERT INTO `quizclasses` VALUES ('5', '4', '2', '3', '2018-02-04 23:44:17', null, '4', null);
INSERT INTO `quizclasses` VALUES ('6', '2', '2', '3', '2018-02-23 15:48:15', null, '4', null);
INSERT INTO `quizclasses` VALUES ('7', '3', '1', '4', '2018-02-23 15:51:11', null, '4', null);
INSERT INTO `quizclasses` VALUES ('9', '11', '7', '6', '2018-03-12 20:40:29', null, '37', null);

-- ----------------------------
-- Table structure for quizfiles
-- ----------------------------
DROP TABLE IF EXISTS `quizfiles`;
CREATE TABLE `quizfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `quizid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizfiles
-- ----------------------------
INSERT INTO `quizfiles` VALUES ('3', 'Notes', '6-YW2L_UsersGuide_E_EN.pdf', '6', '2018-01-19 23:38:50', null, '4', null);
INSERT INTO `quizfiles` VALUES ('4', 'DDID', '5-Dynamic_Websites_June_2017_Assignment_-_FINAL_6423.pdf', '5', '2018-01-19 23:39:12', null, '4', null);
INSERT INTO `quizfiles` VALUES ('5', '', '9-Sokko SEO Report.pdf', '9', '2018-01-21 21:57:58', null, '27', null);
INSERT INTO `quizfiles` VALUES ('6', 'PPT', '5-MOLEDINA SHAKIRMR.docx', '5', '2018-02-16 17:07:50', null, '4', null);
INSERT INTO `quizfiles` VALUES ('7', 'Invoice', '11-invoice 29Jan2018.pdf', '11', '2018-03-12 20:35:53', null, '37', null);

-- ----------------------------
-- Table structure for quizquestions
-- ----------------------------
DROP TABLE IF EXISTS `quizquestions`;
CREATE TABLE `quizquestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `typeid` int(11) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `sectionid` int(11) DEFAULT NULL,
  `quizid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizquestions
-- ----------------------------
INSERT INTO `quizquestions` VALUES ('1', 'A ____ B ______ C ______', '1', '1', '6', null, '3', '2017-10-04 00:36:27', '2017-10-23 00:59:48', null, null);
INSERT INTO `quizquestions` VALUES ('2', 'What is A?', '2', '2', '4', null, '3', '2017-10-04 00:41:37', '2017-10-04 01:29:26', null, null);
INSERT INTO `quizquestions` VALUES ('3', 'Write in detail please', '3', '3', '8', null, '3', '2017-10-04 00:42:35', '2017-10-04 01:30:19', null, null);
INSERT INTO `quizquestions` VALUES ('4', 'Is it like this?', '6', '4', '3', null, '3', '2017-10-04 00:43:08', '2017-10-04 01:35:09', null, null);
INSERT INTO `quizquestions` VALUES ('5', 'Choose the right answer', '4', '5', '2', null, '3', '2017-10-04 00:43:45', null, null, null);
INSERT INTO `quizquestions` VALUES ('6', 'Chicken or egg', '4', '6', '2', null, '3', '2017-10-04 00:44:46', null, null, null);
INSERT INTO `quizquestions` VALUES ('9', 'Match square roots', '5', '7', '5', null, '3', '2017-10-04 00:51:35', '2017-10-23 01:02:11', null, null);
INSERT INTO `quizquestions` VALUES ('10', 'Jack and Jill __ __ __ __', '1', '1', '4', null, '2', '2017-10-04 00:55:28', null, null, null);
INSERT INTO `quizquestions` VALUES ('11', 'Match people', '5', '2', '4', null, '2', '2017-10-04 00:56:56', null, null, null);
INSERT INTO `quizquestions` VALUES ('12', 'He is not like Him', '6', '8', '3', null, '3', '2017-10-07 18:18:26', '2017-10-23 01:01:20', null, null);
INSERT INTO `quizquestions` VALUES ('13', 'D ___________ E ___________ F____________', '1', '9', '3', null, '3', '2017-10-14 00:30:57', null, null, null);
INSERT INTO `quizquestions` VALUES ('14', 'What is B', '2', '10', '3', null, '3', '2017-10-14 00:31:16', null, null, null);
INSERT INTO `quizquestions` VALUES ('15', 'Write about yourself', '3', '11', '4', null, '3', '2017-10-14 00:31:38', null, null, null);
INSERT INTO `quizquestions` VALUES ('16', 'Match the parents', '5', '12', '6', null, '3', '2017-10-14 00:32:40', null, null, null);
INSERT INTO `quizquestions` VALUES ('17', 'Enter prime numbers between 1 to 5', '1', '1', '4', null, '4', '2017-10-23 01:34:48', null, null, null);
INSERT INTO `quizquestions` VALUES ('18', 'The first prime number is {blank}', '1', '1', '1', '1', '5', '2017-11-19 17:42:35', '2017-11-21 00:15:25', '4', null);
INSERT INTO `quizquestions` VALUES ('19', '{blank} X 4 = {blank} X 2', '1', '2', '2', '1', '5', '2017-11-19 17:42:35', '2017-11-21 00:17:59', '4', null);
INSERT INTO `quizquestions` VALUES ('20', '6 / x = 1 what is x {blank}', '1', '3', '1', '1', '5', '2017-11-19 17:42:35', '2017-11-21 00:18:25', '4', null);
INSERT INTO `quizquestions` VALUES ('21', 'If x = 90 and y = 30 then x - y = {blank} and y + x = {blank} and x/y = {blank}', '1', '4', '3', '1', '5', '2017-11-19 17:42:35', '2017-11-21 00:18:53', '4', null);
INSERT INTO `quizquestions` VALUES ('22', 'Match the squares', '5', '1', '6', '2', '5', '2017-11-19 17:44:54', '2017-12-26 00:20:56', '4', null);
INSERT INTO `quizquestions` VALUES ('23', 'What is a square root', '2', '1', '2', '3', '5', '2017-11-19 17:45:50', '2017-12-25 23:58:11', '4', null);
INSERT INTO `quizquestions` VALUES ('24', 'Define a prime number', '2', '2', '2', '3', '5', '2017-11-19 17:45:50', '2017-11-20 00:33:44', '4', null);
INSERT INTO `quizquestions` VALUES ('25', 'Define the term sum of all squares', '2', '3', '3', '3', '5', '2017-11-19 17:45:50', '2017-11-20 00:34:02', '4', null);
INSERT INTO `quizquestions` VALUES ('26', 'Prove that 1 is a prime number', '3', '1', '3', '4', '5', '2017-11-19 17:46:09', '2017-12-25 23:58:29', '4', null);
INSERT INTO `quizquestions` VALUES ('27', 'Prove that all even numbers are not prime', '3', '2', '3', '4', '5', '2017-11-19 17:46:10', '2017-11-20 00:34:59', '4', null);
INSERT INTO `quizquestions` VALUES ('28', '4 comes after 5', '6', '1', '1', '5', '5', '2017-11-19 17:46:24', '2017-12-26 00:05:06', '4', null);
INSERT INTO `quizquestions` VALUES ('29', '5 is greater than 4', '6', '2', '1', '5', '5', '2017-11-19 17:46:24', '2017-11-20 00:36:28', '4', null);
INSERT INTO `quizquestions` VALUES ('30', '4 + 3 + 2 + 1 = 10', '6', '3', '1', '5', '5', '2017-11-19 17:46:24', '2017-11-20 00:36:43', '4', null);
INSERT INTO `quizquestions` VALUES ('31', '1 is a prime number', '6', '4', '1', '5', '5', '2017-11-19 17:46:24', '2017-11-20 00:36:56', '4', null);
INSERT INTO `quizquestions` VALUES ('32', 'Infinity can be shown on the number line', '6', '5', '1', '5', '5', '2017-11-19 17:46:24', '2017-11-20 00:37:18', '4', null);
INSERT INTO `quizquestions` VALUES ('33', 'y is a ', '4', '1', '1', '6', '5', '2017-11-19 17:46:36', '2017-11-20 00:38:36', '4', null);
INSERT INTO `quizquestions` VALUES ('34', 'the first greek letter is', '4', '2', '1', '6', '5', '2017-11-19 17:46:36', '2017-11-20 00:39:03', '4', null);
INSERT INTO `quizquestions` VALUES ('35', 'the following is a mathematician', '4', '3', '1', '6', '5', '2017-11-19 17:46:36', '2017-11-20 00:39:38', '4', null);
INSERT INTO `quizquestions` VALUES ('36', 'half the number of another number is', '4', '4', '1', '6', '5', '2017-11-19 17:46:36', '2017-11-20 00:40:44', '4', null);
INSERT INTO `quizquestions` VALUES ('37', 'what when divided is equal to undefined', '4', '5', '1', '6', '5', '2017-11-19 17:46:36', '2017-11-20 00:41:45', '4', null);
INSERT INTO `quizquestions` VALUES ('38', 'Match the square roots', '5', '2', '4', '2', '5', '2017-11-20 00:30:56', '2017-11-20 00:31:50', null, null);
INSERT INTO `quizquestions` VALUES ('39', 'What is a square', '2', '4', '2', '3', '5', '2017-11-20 00:33:27', null, null, null);
INSERT INTO `quizquestions` VALUES ('40', 'y X z = ', '4', '6', '1', '6', '5', '2017-11-20 00:38:00', null, null, null);
INSERT INTO `quizquestions` VALUES ('44', 'A and {blank} and B and {blank}', '1', '1', '2', '7', '6', '2017-12-27 20:25:45', '2017-12-27 20:29:53', null, null);
INSERT INTO `quizquestions` VALUES ('45', 'We are {blank}', '1', '2', '1', '7', '6', '2017-12-27 20:29:37', '2017-12-27 20:29:53', null, null);
INSERT INTO `quizquestions` VALUES ('47', '4 + {blank} = 6', '1', '1', '1', '8', '7', '2017-12-30 22:29:10', '2017-12-30 22:30:55', '18', null);
INSERT INTO `quizquestions` VALUES ('48', '{blank} is the second Imam (as)?', '1', '2', '1', '8', '7', '2017-12-30 22:29:10', '2017-12-30 22:31:22', '18', null);
INSERT INTO `quizquestions` VALUES ('49', '{blank} and {blank} are companions of Imam Ali (as)', '1', '3', '2', '8', '7', '2017-12-30 22:29:10', '2017-12-30 22:32:16', '18', null);
INSERT INTO `quizquestions` VALUES ('51', 'Heaven or Hell already exist.', '6', '1', '1', '9', '7', '2017-12-30 22:29:21', '2017-12-30 22:33:02', '18', null);
INSERT INTO `quizquestions` VALUES ('52', 'Allah is greatest.', '6', '2', '1', '9', '7', '2017-12-30 22:29:21', '2017-12-30 22:33:14', '18', null);
INSERT INTO `quizquestions` VALUES ('53', 'Al-islam.org is a website.', '6', '3', '1', '9', '7', '2017-12-30 22:29:21', '2017-12-30 22:33:39', '18', null);
INSERT INTO `quizquestions` VALUES ('54', 'Abu bakr (la) killed one enemy', '6', '4', '1', '9', '7', '2017-12-30 22:29:21', '2017-12-30 22:34:04', '18', null);
INSERT INTO `quizquestions` VALUES ('55', 'Imam e Zamana (atfs) is the last Imam (atfs)', '6', '5', '1', '9', '7', '2017-12-30 22:29:22', '2017-12-30 22:34:38', '18', null);
INSERT INTO `quizquestions` VALUES ('56', '{blank} is first Imam?', '1', '4', '1', '8', '7', '2017-12-30 22:29:51', '2017-12-30 22:32:19', null, null);
INSERT INTO `quizquestions` VALUES ('57', '{blank} = 1', '1', '1', '1', '10', '8', '2017-12-30 22:54:07', '2017-12-30 22:56:39', '18', null);
INSERT INTO `quizquestions` VALUES ('58', 'This is true', '6', '1', '1', '11', '8', '2017-12-30 22:54:16', '2017-12-30 22:58:08', '18', null);
INSERT INTO `quizquestions` VALUES ('60', 'Write long answer', '3', '1', '1', '13', '8', '2017-12-30 22:54:28', '2017-12-30 22:58:46', '18', null);
INSERT INTO `quizquestions` VALUES ('62', 'Match the following', '5', '1', '5', '15', '8', '2017-12-30 22:54:41', '2017-12-30 22:59:39', '18', null);
INSERT INTO `quizquestions` VALUES ('63', 'Write some short answer', '2', '1', '1', '12', '8', '2017-12-30 22:58:23', '2017-12-30 22:58:28', null, null);
INSERT INTO `quizquestions` VALUES ('64', 'Choose the following', '4', '1', '1', '14', '8', '2017-12-30 22:59:08', '2017-12-30 22:59:13', null, null);
INSERT INTO `quizquestions` VALUES ('65', '1 + 1 = {blank}', '1', '1', '1', '16', '9', '2018-01-21 21:58:17', '2018-01-21 21:58:30', '27', null);
INSERT INTO `quizquestions` VALUES ('66', '1 + 1 = {blank}', '1', '2', '1', '16', '9', '2018-01-21 21:58:17', '2018-01-21 21:58:48', '27', null);
INSERT INTO `quizquestions` VALUES ('67', '1 + 1 = {blank}', '1', '3', '1', '16', '9', '2018-01-21 21:58:17', '2018-01-21 21:58:59', '27', null);
INSERT INTO `quizquestions` VALUES ('68', '1 + 1 = {blank}', '1', '4', '1', '16', '9', '2018-01-21 21:58:17', '2018-01-21 21:59:05', '27', null);
INSERT INTO `quizquestions` VALUES ('69', '1 + 1 = {blank}', '1', '5', '1', '16', '9', '2018-01-21 21:58:17', '2018-01-21 21:59:11', '27', null);
INSERT INTO `quizquestions` VALUES ('70', 'Untitled', '1', '1', '0', '17', '10', '2018-01-21 22:34:40', null, '27', null);
INSERT INTO `quizquestions` VALUES ('71', '2 + {blank} = 4', '1', '1', '1', '18', '11', '2018-03-12 20:31:05', '2018-03-12 20:31:25', '37', null);
INSERT INTO `quizquestions` VALUES ('72', '2 + 2 = {blank}', '1', '2', '1', '18', '11', '2018-03-12 20:31:05', '2018-03-12 20:31:40', '37', null);
INSERT INTO `quizquestions` VALUES ('73', '3 + 3 = {blank}', '1', '3', '1', '18', '11', '2018-03-12 20:31:05', '2018-03-12 20:31:49', '37', null);
INSERT INTO `quizquestions` VALUES ('74', '5 + {blank} = 8', '1', '4', '1', '18', '11', '2018-03-12 20:31:05', '2018-03-12 20:31:57', '37', null);
INSERT INTO `quizquestions` VALUES ('75', '4 + {blank} = 6', '1', '5', '1', '18', '11', '2018-03-12 20:31:05', '2018-03-12 20:32:08', '37', null);
INSERT INTO `quizquestions` VALUES ('76', 'Maths', '4', '1', '1', '19', '11', '2018-03-12 20:31:15', '2018-03-12 20:32:44', '37', null);
INSERT INTO `quizquestions` VALUES ('77', 'Science', '4', '2', '1', '19', '11', '2018-03-12 20:31:15', '2018-03-12 20:33:03', '37', null);
INSERT INTO `quizquestions` VALUES ('78', 'History', '4', '3', '1', '19', '11', '2018-03-12 20:31:15', '2018-03-12 20:33:59', '37', null);
INSERT INTO `quizquestions` VALUES ('79', 'English', '4', '4', '1', '19', '11', '2018-03-12 20:31:15', '2018-03-12 20:34:52', '37', null);
INSERT INTO `quizquestions` VALUES ('80', 'Civics', '4', '5', '1', '19', '11', '2018-03-12 20:31:15', '2018-03-12 20:35:15', '37', null);
INSERT INTO `quizquestions` VALUES ('81', '10 - 10 = {blank}', '1', '5', '1', '1', '5', '2018-09-01 19:24:09', '2018-09-01 19:43:36', null, null);

-- ----------------------------
-- Table structure for quizsections
-- ----------------------------
DROP TABLE IF EXISTS `quizsections`;
CREATE TABLE `quizsections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `quizid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizsections
-- ----------------------------
INSERT INTO `quizsections` VALUES ('1', 'Fill in the blanks for the following', '5', '1', '1', '2017-11-19 17:42:35', null, null, null);
INSERT INTO `quizsections` VALUES ('2', 'Match the following items to the correct answers', '5', '5', '2', '2017-11-19 17:44:54', null, null, null);
INSERT INTO `quizsections` VALUES ('3', 'Write the answers in brief', '5', '2', '3', '2017-11-19 17:45:50', null, null, null);
INSERT INTO `quizsections` VALUES ('4', 'Substantiate any of the following', '5', '3', '4', '2017-11-19 17:46:09', null, null, null);
INSERT INTO `quizsections` VALUES ('5', 'Answer true of false for the following', '5', '6', '5', '2017-11-19 17:46:24', null, null, null);
INSERT INTO `quizsections` VALUES ('6', 'Choose the most correct answer below', '5', '4', '6', '2017-11-19 17:46:36', null, null, null);
INSERT INTO `quizsections` VALUES ('7', 'Fill in the blanks', '6', '1', '1', '2017-12-27 20:16:20', null, null, null);
INSERT INTO `quizsections` VALUES ('8', 'Fill in the blanks', '7', '1', '1', '2017-12-30 22:29:10', null, null, null);
INSERT INTO `quizsections` VALUES ('9', 'True or False', '7', '6', '2', '2017-12-30 22:29:21', null, null, null);
INSERT INTO `quizsections` VALUES ('10', 'Fill in the blanks', '8', '1', '1', '2017-12-30 22:54:07', null, null, null);
INSERT INTO `quizsections` VALUES ('11', 'True or False', '8', '6', '2', '2017-12-30 22:54:16', null, null, null);
INSERT INTO `quizsections` VALUES ('12', 'Short Answers', '8', '2', '3', '2017-12-30 22:54:22', null, null, null);
INSERT INTO `quizsections` VALUES ('13', 'Long Answers', '8', '3', '4', '2017-12-30 22:54:28', null, null, null);
INSERT INTO `quizsections` VALUES ('14', 'Multiple Choice', '8', '4', '5', '2017-12-30 22:54:34', null, null, null);
INSERT INTO `quizsections` VALUES ('15', 'Match the column', '8', '5', '6', '2017-12-30 22:54:41', null, null, null);
INSERT INTO `quizsections` VALUES ('16', 'Fill in the blanks 2018', '9', '1', '1', '2018-01-21 21:58:16', '2018-02-02 22:31:47', null, null);
INSERT INTO `quizsections` VALUES ('17', 'Fill in the blanks', '10', '1', '1', '2018-01-21 22:34:40', '2018-02-02 22:31:45', null, null);
INSERT INTO `quizsections` VALUES ('18', 'Fill in the blanks', '11', '1', '1', '2018-03-12 20:31:05', null, null, null);
INSERT INTO `quizsections` VALUES ('19', 'Multiple Choice', '11', '4', '2', '2018-03-12 20:31:15', null, null, null);

-- ----------------------------
-- Table structure for quizzes
-- ----------------------------
DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `scategoryid` int(11) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `parentquizid` int(11) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `showmarks` varchar(255) DEFAULT 'After End Date',
  `print` varchar(255) DEFAULT 'No',
  `description` text,
  `email` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizzes
-- ----------------------------
INSERT INTO `quizzes` VALUES ('1', 'Maths 2016 HD', '3', '3', '1', null, '2017-09-30 10:00:00', '2017-09-30 11:00:00', 'After End Date', 'No', null, null, '2017-09-22 03:35:58', '2017-10-23 01:24:50', '2', '2');
INSERT INTO `quizzes` VALUES ('2', 'A Level English', '2', '2', '2', null, '2017-10-23 00:00:00', '2017-10-23 12:30:00', 'Never', 'No', null, null, '2017-09-29 01:20:10', '2017-10-23 02:15:53', '4', '4');
INSERT INTO `quizzes` VALUES ('3', 'Maths Beginner', '1', '1', '2', null, '2017-11-19 15:00:00', '2017-11-20 17:00:00', 'After Marking', 'No', null, null, '2017-09-29 01:52:47', '2017-11-19 17:15:51', '4', '4');
INSERT INTO `quizzes` VALUES ('4', 'Advanced Mathematics Paper 1', '1', '2', '2', null, '2018-09-29 18:00:00', '2018-09-29 19:42:00', 'Never', 'No', '', '', '2017-10-23 01:32:05', '2018-09-29 19:41:10', '4', '4');
INSERT INTO `quizzes` VALUES ('5', 'Maths Level 1 Paper 1', '1', '1', '2', null, '2018-09-01 18:15:00', '2018-09-01 18:19:00', 'After End Date', 'Yes', 'A really really really really really really really reallyreally really really reallyreally really really reallyreally really really reallyreally really really reallyreally really really reallyreally really really really\r\n', 'shakirmole@gmail.com', '2017-11-19 17:22:22', '2018-09-01 19:47:51', '4', '4');
INSERT INTO `quizzes` VALUES ('6', 'English Level 2 Paper 1', '2', '2', '2', null, '2019-01-26 19:00:00', '2019-01-27 20:00:00', 'After End Date', 'No', '', '', '2017-12-27 20:15:40', '2019-01-25 22:41:13', '4', '4');
INSERT INTO `quizzes` VALUES ('7', 'Maths 2017', '5', '5', '7', null, '2017-12-31 21:00:00', '2017-12-31 23:00:00', 'After Marking', 'No', null, null, '2017-12-30 22:27:35', '2017-12-31 23:30:02', '18', '18');
INSERT INTO `quizzes` VALUES ('8', 'Science', '5', '5', '7', null, '2017-12-30 21:30:00', '2017-12-30 22:00:00', 'After Marking', 'No', null, null, '2017-12-30 22:53:21', '2017-12-30 22:59:51', '18', '18');
INSERT INTO `quizzes` VALUES ('9', 'Maths 2018', '6', '6', '8', null, '2018-02-02 22:15:00', '2018-02-02 23:00:00', 'After Marking', 'Yes', 'This is a sample test', 'fazleabbas.bhimani@gmail.com', '2018-01-21 21:53:07', '2018-02-02 22:30:28', '27', '27');
INSERT INTO `quizzes` VALUES ('10', 'Geography Jan 2018', '6', '6', '8', null, '2018-01-21 21:45:00', '2018-01-21 22:30:00', 'After Marking', 'Yes', 'alkfdj', 'fazleabbas.bhimani@gmail.com', '2018-01-21 22:32:55', '2018-01-21 22:34:27', '27', '27');
INSERT INTO `quizzes` VALUES ('11', 'Maths', '7', '7', '9', null, '2018-03-18 14:15:00', '2018-03-18 20:30:00', 'After Marking', 'Yes', 'Some description', 'fazleabbas.bhimani@gmail.com', '2018-03-12 20:30:25', '2018-03-18 14:14:51', '37', '37');

-- ----------------------------
-- Table structure for saanswers
-- ----------------------------
DROP TABLE IF EXISTS `saanswers`;
CREATE TABLE `saanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text,
  `answerid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of saanswers
-- ----------------------------
INSERT INTO `saanswers` VALUES ('1', 'Nothing much to say here too', '3', '2017-10-14 17:11:52', null, null, null);
INSERT INTO `saanswers` VALUES ('2', 'The second letter', '4', '2017-10-14 17:11:52', null, null, null);
INSERT INTO `saanswers` VALUES ('3', 'Nothing much to say here too', '15', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `saanswers` VALUES ('4', 'The second letter', '16', '2017-10-14 18:18:15', null, null, null);
INSERT INTO `saanswers` VALUES ('39', 'ALLA', '233', '2017-10-21 02:20:36', null, null, null);
INSERT INTO `saanswers` VALUES ('40', 'Nothing', '234', '2017-10-21 02:20:36', null, null, null);
INSERT INTO `saanswers` VALUES ('61', 'asd', '309', '2017-11-21 01:04:53', '2017-12-25 22:16:46', null, null);
INSERT INTO `saanswers` VALUES ('62', 'zxc', '310', '2017-11-21 01:04:53', '2017-12-25 22:16:57', null, null);
INSERT INTO `saanswers` VALUES ('63', 'qwe', '311', '2017-11-21 01:04:53', '2017-12-25 22:16:58', null, null);
INSERT INTO `saanswers` VALUES ('64', 'jkl', '312', '2017-11-21 01:04:53', '2017-12-25 22:17:00', null, null);
INSERT INTO `saanswers` VALUES ('65', 'I dont know', '324', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `saanswers` VALUES ('66', 'Please', '325', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `saanswers` VALUES ('67', 'its something', '326', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `saanswers` VALUES ('68', 'a shape', '327', '2017-12-27 23:00:38', null, null, null);
INSERT INTO `saanswers` VALUES ('69', 'short answer', '362', '2017-12-30 23:02:13', null, null, null);
INSERT INTO `saanswers` VALUES ('70', '', '401', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `saanswers` VALUES ('71', '', '402', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `saanswers` VALUES ('72', '', '403', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `saanswers` VALUES ('73', '', '404', '2018-02-02 22:26:47', null, null, null);
INSERT INTO `saanswers` VALUES ('94', '', '478', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `saanswers` VALUES ('95', '', '479', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `saanswers` VALUES ('96', '', '480', '2018-09-01 19:49:13', null, null, null);
INSERT INTO `saanswers` VALUES ('97', 'all sides equal', '481', '2018-09-01 19:49:13', null, null, null);

-- ----------------------------
-- Table structure for schoolpackages
-- ----------------------------
DROP TABLE IF EXISTS `schoolpackages`;
CREATE TABLE `schoolpackages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schoolid` int(11) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `maxstd` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `enddate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schoolpackages
-- ----------------------------
INSERT INTO `schoolpackages` VALUES ('4', '6', '0', '2', '15', '0', '2017-12-29 02:13:50', '2017-12-29 02:13:50', '0', '2017-12-29 03:23:32', '2017-12-29 03:43:50', '1', null);
INSERT INTO `schoolpackages` VALUES ('5', '2', '0', '100', '15', '0', '2018-02-16 16:31:30', '2018-02-16 16:31:30', '0', '2017-12-29 03:26:37', '2018-02-16 17:01:30', null, null);
INSERT INTO `schoolpackages` VALUES ('6', '1', '0', '100', '15', '0', '2018-02-16 16:31:40', '2018-02-16 16:31:40', '0', '2017-12-29 03:26:38', '2018-02-16 17:01:40', null, null);
INSERT INTO `schoolpackages` VALUES ('7', '6', '1', '5', '30', 'TSH 50,000', '2017-12-29 02:18:30', '2017-12-29 02:18:30', '0', '2017-12-29 03:43:02', '2017-12-29 03:48:30', '1', null);
INSERT INTO `schoolpackages` VALUES ('10', '6', '2', '10', '30', 'TSH 80,000', '2018-04-14 18:07:57', '2018-04-14 18:07:57', '0', '2017-12-29 03:48:30', '2018-04-14 18:07:57', '1', null);
INSERT INTO `schoolpackages` VALUES ('11', '7', '0', '2', '15', '0', '2017-12-30 20:53:21', '2017-12-30 20:53:21', '0', '2017-12-30 22:22:31', '2017-12-30 22:23:21', '1', null);
INSERT INTO `schoolpackages` VALUES ('12', '7', '1', '5', '30', 'TSH 50,000', '2018-05-26 17:54:19', '2018-05-26 17:54:19', '0', '2017-12-30 22:23:21', '2018-05-26 19:24:19', '1', null);
INSERT INTO `schoolpackages` VALUES ('13', '8', '0', '2', '15', '0', '2018-01-21 20:41:46', '2018-01-21 20:41:46', '0', '2018-01-21 21:41:35', '2018-01-21 21:41:46', '1', null);
INSERT INTO `schoolpackages` VALUES ('14', '8', '2', '10', '30', 'TSH 80,000', '2018-04-14 18:08:02', '2018-04-14 18:08:02', '0', '2018-01-21 21:41:46', '2018-04-14 18:08:02', '1', null);
INSERT INTO `schoolpackages` VALUES ('15', '2', '2', '10', '30', 'TSH 80,000', '2018-02-16 16:33:07', '2018-02-16 16:33:07', '0', '2018-02-16 17:01:30', '2018-02-16 17:03:07', '1', null);
INSERT INTO `schoolpackages` VALUES ('16', '1', '2', '10', '30', 'TSH 80,000', '2018-04-14 18:07:47', '2018-04-14 18:07:47', '0', '2018-02-16 17:01:40', '2018-04-14 18:07:47', '1', null);
INSERT INTO `schoolpackages` VALUES ('17', '2', '3', '20', '30', 'TSH 120,000', '2018-04-14 18:07:52', '2018-04-14 18:07:52', '0', '2018-02-16 17:03:07', '2018-04-14 18:07:52', '1', null);
INSERT INTO `schoolpackages` VALUES ('18', '9', '0', '2', '15', '0', '2018-03-12 19:55:45', '2018-03-12 19:55:45', '0', '2018-03-12 20:24:34', '2018-03-12 20:25:45', '1', null);
INSERT INTO `schoolpackages` VALUES ('19', '9', '2', '10', '30', 'TSH 80,000', '2018-04-14 18:08:06', '2018-04-14 18:08:06', '0', '2018-03-12 20:25:45', '2018-04-14 18:08:06', '1', null);
INSERT INTO `schoolpackages` VALUES ('20', '1', '3', '20', '30', 'TSH 120,000', '2018-05-26 17:51:47', '2018-05-26 17:51:47', '0', '2018-04-14 18:07:47', '2018-05-26 19:21:47', '1', null);
INSERT INTO `schoolpackages` VALUES ('21', '2', '3', '20', '30', 'TSH 120,000', '2018-05-26 17:51:51', '2018-05-26 17:51:51', '0', '2018-04-14 18:07:52', '2018-05-26 19:21:51', '1', null);
INSERT INTO `schoolpackages` VALUES ('22', '6', '3', '20', '30', 'TSH 120,000', '2018-05-26 17:52:16', '2018-05-26 17:52:16', '0', '2018-04-14 18:07:57', '2018-05-26 19:22:16', '1', null);
INSERT INTO `schoolpackages` VALUES ('23', '8', '3', '20', '30', 'TSH 120,000', '2018-05-26 17:54:25', '2018-05-26 17:54:25', '0', '2018-04-14 18:08:02', '2018-05-26 19:24:25', '1', null);
INSERT INTO `schoolpackages` VALUES ('24', '9', '3', '20', '30', 'TSH 120,000', '2018-05-26 17:54:32', '2018-05-26 17:54:32', '0', '2018-04-14 18:08:06', '2018-05-26 19:24:32', '1', null);
INSERT INTO `schoolpackages` VALUES ('25', '1', '3', '20', '30', 'TSH 120,000', '2018-07-20 19:30:15', '2018-07-20 19:30:15', '0', '2018-05-26 20:51:47', '2018-07-20 21:00:15', '1', null);
INSERT INTO `schoolpackages` VALUES ('26', '2', '3', '20', '30', 'TSH 120,000', '2018-07-20 19:30:22', '2018-07-20 19:30:22', '0', '2018-05-26 20:51:51', '2018-07-20 21:00:22', '1', null);
INSERT INTO `schoolpackages` VALUES ('27', '6', '3', '20', '30', 'TSH 120,000', '2018-07-20 19:30:27', '2018-07-20 19:30:27', '0', '2018-05-26 20:52:16', '2018-07-20 21:00:27', '1', null);
INSERT INTO `schoolpackages` VALUES ('28', '7', '3', '20', '30', 'TSH 120,000', '2018-10-14 00:08:04', '2018-10-14 00:08:04', '0', '2018-05-26 20:54:19', '2018-10-14 00:08:04', '1', null);
INSERT INTO `schoolpackages` VALUES ('29', '8', '1', '5', '30', 'TSH 50,000', '2018-10-14 00:08:09', '2018-10-14 00:08:09', '0', '2018-05-26 20:54:25', '2018-10-14 00:08:09', '1', null);
INSERT INTO `schoolpackages` VALUES ('30', '9', '3', '20', '30', 'TSH 120,000', '2018-10-14 00:08:15', '2018-10-14 00:08:15', '0', '2018-05-26 20:54:32', '2018-10-14 00:08:15', '1', null);
INSERT INTO `schoolpackages` VALUES ('31', '1', '4', '100', '120', 'TSH 80,000', '2019-01-25 21:57:43', '2019-01-25 21:57:43', '0', '2018-07-20 21:00:15', '2019-01-25 21:57:43', '1', null);
INSERT INTO `schoolpackages` VALUES ('32', '2', '4', '100', '120', 'TSH 80,000', '2019-01-25 21:57:49', '2019-01-25 21:57:49', '0', '2018-07-20 21:00:22', '2019-01-25 21:57:49', '1', null);
INSERT INTO `schoolpackages` VALUES ('33', '6', '4', '100', '120', 'TSH 80,000', '2018-07-20 19:30:27', '2018-11-17 19:30:27', '1', '2018-07-20 21:00:27', null, '1', null);
INSERT INTO `schoolpackages` VALUES ('34', '7', '4', '100', '120', 'TSH 80,000', '2018-10-13 23:38:04', '2019-02-10 23:38:04', '1', '2018-10-13 23:38:04', null, '1', null);
INSERT INTO `schoolpackages` VALUES ('35', '8', '4', '100', '120', 'TSH 80,000', '2018-10-13 23:38:09', '2019-02-10 23:38:09', '1', '2018-10-13 23:38:09', null, '1', null);
INSERT INTO `schoolpackages` VALUES ('36', '9', '4', '100', '120', 'TSH 80,000', '2018-10-13 23:38:15', '2019-02-10 23:38:15', '1', '2018-10-13 23:38:15', null, '1', null);
INSERT INTO `schoolpackages` VALUES ('37', '1', '4', '100', '120', 'TSH 80,000', '2019-01-25 21:27:43', '2019-05-25 21:27:43', '1', '2019-01-25 21:27:43', null, '1', null);
INSERT INTO `schoolpackages` VALUES ('38', '2', '4', '100', '120', 'TSH 80,000', '2019-01-25 21:27:49', '2019-05-25 21:27:49', '1', '2019-01-25 21:27:49', null, '1', null);

-- ----------------------------
-- Table structure for schools
-- ----------------------------
DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schools
-- ----------------------------
INSERT INTO `schools` VALUES ('1', 'Al Muntazir', null, '2017-09-20 02:59:44', null, '1', null);
INSERT INTO `schools` VALUES ('2', 'Mzizima', '2-slogo.png', '2017-09-20 02:59:48', '2018-01-14 23:27:58', '1', null);
INSERT INTO `schools` VALUES ('6', 'Ifinida', null, '2017-12-29 03:23:32', null, '1', null);
INSERT INTO `schools` VALUES ('7', 'Al Hilal Primary School', null, '2017-12-30 22:22:31', null, '1', null);
INSERT INTO `schools` VALUES ('8', 'Fine School of Tanzania', '8-slogo.png', '2018-01-21 21:41:35', '2018-01-21 21:54:54', '1', null);
INSERT INTO `schools` VALUES ('9', 'Nice School of India', null, '2018-03-12 20:24:34', null, '1', null);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `details` text,
  `logo` varchar(255) DEFAULT NULL,
  `dmaxstd` int(11) DEFAULT NULL,
  `dduration` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'Quiz System', 'Quiz System', 'logo.png', '2', '15', '2017-07-13 23:07:51', '2017-12-29 03:14:06', '1', '1');

-- ----------------------------
-- Table structure for shortanswers
-- ----------------------------
DROP TABLE IF EXISTS `shortanswers`;
CREATE TABLE `shortanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text,
  `questionid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shortanswers
-- ----------------------------
INSERT INTO `shortanswers` VALUES ('2', 'Nothing much to say here too', '2', '2017-10-04 01:29:26', null, '4', null);
INSERT INTO `shortanswers` VALUES ('3', 'The second letter', '14', '2017-10-14 00:31:16', null, '4', null);
INSERT INTO `shortanswers` VALUES ('4', '', '39', '2017-11-20 00:33:27', null, '4', null);
INSERT INTO `shortanswers` VALUES ('6', '', '24', '2017-11-20 00:33:44', null, '4', null);
INSERT INTO `shortanswers` VALUES ('7', '', '25', '2017-11-20 00:34:02', null, '4', null);
INSERT INTO `shortanswers` VALUES ('8', 'It is a square common', '23', '2017-12-27 21:31:33', null, '4', null);
INSERT INTO `shortanswers` VALUES ('9', 'short answer', '63', '2017-12-30 22:58:23', null, '18', null);

-- ----------------------------
-- Table structure for staffs
-- ----------------------------
DROP TABLE IF EXISTS `staffs`;
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of staffs
-- ----------------------------
INSERT INTO `staffs` VALUES ('1', 'Ali', '123', 'ali@gmail.com', '1', '3', '2017-09-20 03:02:02', '2017-09-20 03:17:22', '1', '1');
INSERT INTO `staffs` VALUES ('2', 'Ahmad', '56', 'ahmad@gmail.com', '1', '2', '2017-09-20 03:07:37', null, '1', null);
INSERT INTO `staffs` VALUES ('3', 'Mohamed', '942', 'mohamed@gmail.com', '2', '4', '2017-09-20 03:10:04', '2017-09-20 03:10:38', '1', '1');
INSERT INTO `staffs` VALUES ('4', 'Ifinada', '123', 'ifinada@gmail.com', '6', '17', '2017-12-29 04:25:40', null, '1', null);
INSERT INTO `staffs` VALUES ('5', 'Farooq', '76576567', 'farooq@gmail.com', '7', '18', '2017-12-30 22:25:28', '2017-12-31 23:29:24', '1', '1');
INSERT INTO `staffs` VALUES ('6', 'Fine Staff', '98798', 'fazleabbas.bhimani@gmail.com', '8', '27', '2018-01-21 21:42:40', null, '1', null);
INSERT INTO `staffs` VALUES ('7', 'Nice School', '97987897', 'nice@gmail.com', '9', '37', '2018-03-12 20:25:13', '2018-10-14 00:05:36', '1', '1');

-- ----------------------------
-- Table structure for studentquizzes
-- ----------------------------
DROP TABLE IF EXISTS `studentquizzes`;
CREATE TABLE `studentquizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) DEFAULT NULL,
  `quizid` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT '0',
  `marked` int(11) DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentquizzes
-- ----------------------------
INSERT INTO `studentquizzes` VALUES ('1', '6', '3', '33', '1', '2017-10-14 16:50:50', '2017-10-23 01:02:47', '6', '6');
INSERT INTO `studentquizzes` VALUES ('2', '5', '3', '43', '1', '2017-10-14 18:18:14', '2017-10-15 02:08:33', '5', null);
INSERT INTO `studentquizzes` VALUES ('3', '8', '3', null, '1', '2017-10-21 01:43:01', '2018-07-20 21:09:47', '8', '8');
INSERT INTO `studentquizzes` VALUES ('4', '6', '2', '8', '1', '2017-10-23 01:49:21', '2017-10-23 01:50:17', '6', '6');
INSERT INTO `studentquizzes` VALUES ('5', '6', '5', '24', '1', '2017-11-21 00:13:51', '2017-12-27 21:04:47', '6', '6');
INSERT INTO `studentquizzes` VALUES ('6', '5', '5', '14', '1', '2017-12-27 23:00:37', '2018-04-14 19:06:14', '5', '5');
INSERT INTO `studentquizzes` VALUES ('7', '19', '7', '9', '1', '2017-12-30 22:41:25', '2017-12-30 22:44:45', '19', '19');
INSERT INTO `studentquizzes` VALUES ('8', '19', '8', '9', '1', '2017-12-30 23:02:12', '2017-12-30 23:02:41', '19', '19');
INSERT INTO `studentquizzes` VALUES ('9', '28', '9', '3', '1', '2018-01-21 22:19:03', '2018-01-21 22:29:53', '28', '28');
INSERT INTO `studentquizzes` VALUES ('10', '29', '9', '3', '1', '2018-01-21 22:37:38', '2018-01-21 22:39:44', '29', '29');
INSERT INTO `studentquizzes` VALUES ('11', '30', '9', '5', '1', '2018-01-21 22:38:40', '2018-01-21 22:39:48', '30', '30');
INSERT INTO `studentquizzes` VALUES ('12', '8', '5', '0', '0', '2018-02-02 22:26:46', null, '8', '8');
INSERT INTO `studentquizzes` VALUES ('13', '12', '5', '0', '0', '2018-09-01 19:41:59', null, '12', '12');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `regno` varchar(255) DEFAULT NULL,
  `gradeid` int(11) DEFAULT NULL,
  `divisionid` int(11) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'Mehj', '482', 'mehj@gmail.com', '4391194', '3', '1', '2', '5', '2017-09-20 03:52:26', '2018-01-15 00:50:25', '4', '4');
INSERT INTO `students` VALUES ('2', 'Mahi', '', '', '049', '3', '2', '2', '6', '2017-09-20 03:52:46', '2018-01-15 00:50:26', '4', '6');
INSERT INTO `students` VALUES ('3', 'Anito', '', 'anito@gmail.com', '139', '1', '3', '1', '7', '2017-09-20 03:53:54', '2018-01-15 00:49:34', '2', '2');
INSERT INTO `students` VALUES ('4', 'Angular', '123', 'angular@gmail.com', '123', '3', '1', '2', '8', '2017-10-21 01:39:22', '2018-01-15 00:52:48', '4', '4');
INSERT INTO `students` VALUES ('5', 'Beta', '345', 'beta@gmail.com', '345', '3', '2', '2', '9', '2017-10-21 01:39:23', '2018-01-15 00:50:27', '4', null);
INSERT INTO `students` VALUES ('6', 'Apple', '', '', 'Gild', '4', '1', '2', '10', '2017-12-28 17:29:29', '2018-01-19 21:21:06', '4', '4');
INSERT INTO `students` VALUES ('7', 'Banana', '', '', '', '3', '2', '2', '11', '2017-12-28 17:29:29', '2018-01-15 00:50:28', '4', null);
INSERT INTO `students` VALUES ('8', 'Cinamon', '', '', '12381', '3', '1', '2', '12', '2017-12-28 17:29:29', '2018-09-01 19:29:21', '4', '4');
INSERT INTO `students` VALUES ('9', 'Dino', '', '', '', '3', '2', '2', '13', '2017-12-28 17:34:14', '2018-01-15 00:50:29', '4', null);
INSERT INTO `students` VALUES ('10', 'Mutt', '', '', '', '3', '1', '2', '14', '2017-12-28 17:34:14', '2018-01-15 00:50:29', '4', null);
INSERT INTO `students` VALUES ('11', 'Ultra', '', '', '', '3', '2', '2', '15', '2017-12-28 17:34:14', '2018-01-15 00:50:29', '4', null);
INSERT INTO `students` VALUES ('12', 'Extra', '', '', 'Gilo', '4', '1', '2', '16', '2017-12-28 17:34:14', '2018-01-19 21:21:13', '4', '4');
INSERT INTO `students` VALUES ('13', 'A', '98789', 'a@a.com', '1111', '2', '5', '7', '19', '2017-12-30 22:37:32', '2018-01-15 00:50:34', '18', null);
INSERT INTO `students` VALUES ('14', 'B', '678678', 'b@b.com', '2222', '2', '5', '7', '20', '2017-12-30 22:37:32', '2018-01-15 00:50:34', '18', null);
INSERT INTO `students` VALUES ('15', 'C', '76786', 'c@c.com', '76876', '2', '5', '7', '21', '2017-12-30 22:37:33', '2018-01-15 00:50:34', '18', null);
INSERT INTO `students` VALUES ('16', 'D', '76786', 'd@d.com', '76876', '2', '5', '7', '22', '2017-12-30 22:37:33', '2018-01-15 00:50:34', '18', null);
INSERT INTO `students` VALUES ('17', 'E', '76786', 'e@e.com', '76876', '2', '5', '7', '23', '2017-12-30 22:37:33', '2018-01-15 00:50:35', '18', null);
INSERT INTO `students` VALUES ('18', 'F', '57656', 'f@f.com', '5665', '2', '5', '7', '24', '2017-12-30 22:37:33', '2018-01-15 00:50:35', '18', null);
INSERT INTO `students` VALUES ('19', 'hansel', '12', 'hansel@gmail.com', '3', '3', '1', '2', '25', '2018-01-15 00:59:14', null, '4', null);
INSERT INTO `students` VALUES ('20', 'grater', '43', 'grater@gmail.com', '42', '3', '1', '2', '26', '2018-01-15 00:59:14', null, '4', null);
INSERT INTO `students` VALUES ('21', 'AA', '123', 'aa@gmail.com', 'aa', '5', '6', '8', '28', '2018-01-21 21:51:42', null, '27', null);
INSERT INTO `students` VALUES ('22', 'BB', '12', 'bb@gmail.com', 'bb', '5', '6', '8', '29', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `students` VALUES ('23', 'CC', '12', 'cc@gmail.com', 'cc', '5', '6', '8', '30', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `students` VALUES ('24', 'DD', '12', 'dd@gmail.com', 'dd', '5', '6', '8', '31', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `students` VALUES ('25', 'EE', '12', 'ee@gmail.com', 'ee', '5', '6', '8', '32', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `students` VALUES ('26', 'FF', '12', 'ff@gmail.com', 'ff', '5', '6', '8', '33', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `students` VALUES ('27', 'hisham', '', '', '1324', '3', '1', '2', '34', '2018-02-16 17:04:58', null, '4', null);
INSERT INTO `students` VALUES ('28', 'albert', '', '', '3452', '3', '1', '2', '35', '2018-02-16 17:04:58', null, '4', null);
INSERT INTO `students` VALUES ('29', 'poolo', '', '', '14', '3', '1', '2', '36', '2018-02-16 17:04:58', null, '4', null);
INSERT INTO `students` VALUES ('30', 'aaaa', '1111', 'aaaa@gmail.com', 'aaaa1', '6', '7', '9', '38', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `students` VALUES ('31', 'bbbb', '2222', 'bbbb@gmail.com', 'bbbb2', '6', '7', '9', '39', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `students` VALUES ('32', 'cccc', '3333', 'cccc@gmail.com', 'cccc3', '6', '7', '9', '40', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `students` VALUES ('33', 'dddd', '4444', 'dddd@gmail.com', 'dddd4', '6', '7', '9', '41', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `students` VALUES ('34', 'eeee', '5555', 'eeee@gmail.com', 'eeee5', '6', '7', '9', '42', '2018-03-12 20:29:30', '2018-03-18 14:15:30', '37', '37');

-- ----------------------------
-- Table structure for subcategories
-- ----------------------------
DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subcategories
-- ----------------------------
INSERT INTO `subcategories` VALUES ('1', 'Level 1', '2', '2017-09-22 03:16:36', '2017-09-22 03:17:20', '4', '4');
INSERT INTO `subcategories` VALUES ('2', 'Level 2', '2', '2017-09-22 03:17:25', null, '4', null);
INSERT INTO `subcategories` VALUES ('3', 'Higher Division', '1', '2017-09-22 03:19:18', null, '2', null);
INSERT INTO `subcategories` VALUES ('4', 'Lower Division', '1', '2017-09-22 03:19:21', '2017-09-22 03:19:25', '2', '2');
INSERT INTO `subcategories` VALUES ('5', 'Monthly', '7', '2017-12-30 22:27:07', null, '18', null);
INSERT INTO `subcategories` VALUES ('6', 'Monthly', '8', '2018-01-21 21:52:06', null, '27', null);
INSERT INTO `subcategories` VALUES ('7', 'Jan 2018', '9', '2018-03-12 20:26:35', null, '37', null);
INSERT INTO `subcategories` VALUES ('8', 'Mar 2018', '9', '2018-03-12 20:26:50', null, '37', null);

-- ----------------------------
-- Table structure for submenus
-- ----------------------------
DROP TABLE IF EXISTS `submenus`;
CREATE TABLE `submenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of submenus
-- ----------------------------
INSERT INTO `submenus` VALUES ('1', '2', 'Staffs', 'users', 'staffs', '1', '1');
INSERT INTO `submenus` VALUES ('2', '2', 'Students', 'users', 'students', '2', '1');
INSERT INTO `submenus` VALUES ('3', '3', 'Schools', 'masters', 'schools', '1', '1');
INSERT INTO `submenus` VALUES ('4', '3', 'Categories', 'masters', 'categories', '2', '1');
INSERT INTO `submenus` VALUES ('5', '3', 'Subcategories', 'masters', 'subcategories', '3', '1');
INSERT INTO `submenus` VALUES ('6', '5', 'Browse Tests', 'student_quizzes', 'browse', '1', '1');
INSERT INTO `submenus` VALUES ('7', '5', 'My Tests', 'student_quizzes', 'myquizzes', '2', '1');
INSERT INTO `submenus` VALUES ('8', '2', 'Packages', 'masters', 'packages', '4', '1');
INSERT INTO `submenus` VALUES ('9', '3', 'Grades', 'masters', 'grades', '4', '1');
INSERT INTO `submenus` VALUES ('10', '3', 'Divisions', 'masters', 'divisions', '5', '1');

-- ----------------------------
-- Table structure for tfanswers
-- ----------------------------
DROP TABLE IF EXISTS `tfanswers`;
CREATE TABLE `tfanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `answerid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tfanswers
-- ----------------------------
INSERT INTO `tfanswers` VALUES ('1', 'False', '11', '2017-10-14 17:11:53', null, null, null);
INSERT INTO `tfanswers` VALUES ('2', 'False', '12', '2017-10-14 17:11:53', '2017-10-14 18:10:34', null, null);
INSERT INTO `tfanswers` VALUES ('3', 'False', '23', '2017-10-14 18:18:16', null, null, null);
INSERT INTO `tfanswers` VALUES ('4', 'True', '24', '2017-10-14 18:18:16', null, null, null);
INSERT INTO `tfanswers` VALUES ('27', 'True', '241', '2017-10-21 02:20:37', null, null, null);
INSERT INTO `tfanswers` VALUES ('28', 'True', '242', '2017-10-21 02:20:37', '2017-10-23 01:00:57', null, null);
INSERT INTO `tfanswers` VALUES ('30', 'False', '317', '2017-12-25 22:22:11', '2017-12-26 00:04:09', null, null);
INSERT INTO `tfanswers` VALUES ('31', 'False', '338', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `tfanswers` VALUES ('32', 'True', '339', '2017-12-27 23:00:39', null, null, null);
INSERT INTO `tfanswers` VALUES ('33', 'False', '340', '2017-12-27 23:00:40', null, null, null);
INSERT INTO `tfanswers` VALUES ('34', 'True', '341', '2017-12-27 23:00:40', null, null, null);
INSERT INTO `tfanswers` VALUES ('35', 'True', '342', '2017-12-27 23:00:40', null, null, null);
INSERT INTO `tfanswers` VALUES ('41', 'True', '356', '2017-12-30 22:41:34', null, null, null);
INSERT INTO `tfanswers` VALUES ('42', 'True', '357', '2017-12-30 22:41:34', null, null, null);
INSERT INTO `tfanswers` VALUES ('43', 'False', '358', '2017-12-30 22:41:34', null, null, null);
INSERT INTO `tfanswers` VALUES ('44', 'False', '359', '2017-12-30 22:41:35', null, null, null);
INSERT INTO `tfanswers` VALUES ('45', 'True', '360', '2017-12-30 22:41:35', null, null, null);
INSERT INTO `tfanswers` VALUES ('46', 'True', '366', '2017-12-30 23:02:14', null, null, null);
INSERT INTO `tfanswers` VALUES ('49', 'False', '486', '2018-09-01 19:49:13', null, null, null);

-- ----------------------------
-- Table structure for truefalses
-- ----------------------------
DROP TABLE IF EXISTS `truefalses`;
CREATE TABLE `truefalses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `questionid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of truefalses
-- ----------------------------
INSERT INTO `truefalses` VALUES ('4', 'False', '4', '2017-10-04 01:35:09', null, '4', null);
INSERT INTO `truefalses` VALUES ('5', 'True', '12', '2017-10-07 18:18:26', null, '4', null);
INSERT INTO `truefalses` VALUES ('6', 'False', '28', '2017-11-20 00:36:18', null, '4', null);
INSERT INTO `truefalses` VALUES ('7', 'True', '29', '2017-11-20 00:36:28', null, '4', null);
INSERT INTO `truefalses` VALUES ('8', 'True', '30', '2017-11-20 00:36:43', null, '4', null);
INSERT INTO `truefalses` VALUES ('9', 'True', '31', '2017-11-20 00:36:56', null, '4', null);
INSERT INTO `truefalses` VALUES ('10', 'False', '32', '2017-11-20 00:37:18', null, '4', null);
INSERT INTO `truefalses` VALUES ('11', 'True', '51', '2017-12-30 22:33:02', null, '18', null);
INSERT INTO `truefalses` VALUES ('13', 'True', '52', '2017-12-30 22:33:18', null, '18', null);
INSERT INTO `truefalses` VALUES ('14', 'True', '53', '2017-12-30 22:33:39', null, '18', null);
INSERT INTO `truefalses` VALUES ('16', 'False', '54', '2017-12-30 22:34:08', null, '18', null);
INSERT INTO `truefalses` VALUES ('17', 'True', '55', '2017-12-30 22:34:38', null, '18', null);
INSERT INTO `truefalses` VALUES ('18', 'True', '58', '2017-12-30 22:58:08', null, '18', null);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', 'Fill in the Blanks', '2017-09-29 02:30:40', '2017-09-29 02:30:58', '1', null);
INSERT INTO `types` VALUES ('2', 'Short Answers', '2017-09-29 02:30:44', '2017-09-29 02:30:58', '1', null);
INSERT INTO `types` VALUES ('3', 'Long Answers', '2017-09-29 02:30:47', '2017-09-29 02:30:59', '1', null);
INSERT INTO `types` VALUES ('4', 'Multiple Choices', '2017-09-29 02:31:05', '2017-09-29 02:31:16', '1', null);
INSERT INTO `types` VALUES ('5', 'Matching Items', '2017-09-29 02:31:13', '2017-09-29 02:31:17', '1', null);
INSERT INTO `types` VALUES ('6', 'True False', '2017-09-29 02:31:15', '2017-09-29 02:31:17', '1', null);

-- ----------------------------
-- Table structure for userlevelrights
-- ----------------------------
DROP TABLE IF EXISTS `userlevelrights`;
CREATE TABLE `userlevelrights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `submenuid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userlevelrights
-- ----------------------------
INSERT INTO `userlevelrights` VALUES ('1', '1', '1', null, '2017-09-20 03:21:41', '2017-09-20 03:21:52', null, null);
INSERT INTO `userlevelrights` VALUES ('2', '1', '2', '1', '2017-09-20 03:21:54', '2017-09-20 03:22:17', null, null);
INSERT INTO `userlevelrights` VALUES ('3', '1', '3', '3', '2017-09-20 03:21:55', '2017-09-22 03:12:22', null, null);
INSERT INTO `userlevelrights` VALUES ('4', '2', '1', null, '2017-09-20 03:22:28', '2017-09-20 03:22:30', null, null);
INSERT INTO `userlevelrights` VALUES ('5', '2', '2', '2', '2017-09-20 03:24:30', '2017-09-20 03:25:03', null, null);
INSERT INTO `userlevelrights` VALUES ('6', '0', '1', null, '2017-09-22 01:20:09', '2017-09-22 01:20:11', null, null);
INSERT INTO `userlevelrights` VALUES ('7', '2', '3', '4', '2017-09-22 03:12:05', '2017-09-22 03:12:34', null, null);
INSERT INTO `userlevelrights` VALUES ('8', '2', '3', '5', '2017-09-22 03:12:11', '2017-09-22 03:12:34', null, null);
INSERT INTO `userlevelrights` VALUES ('9', '2', '4', null, '2017-09-22 03:26:04', '2017-09-22 03:26:32', null, null);
INSERT INTO `userlevelrights` VALUES ('10', '3', '1', null, '2017-10-06 04:47:46', '2017-10-06 04:47:50', null, null);
INSERT INTO `userlevelrights` VALUES ('11', '3', '5', '6', '2017-10-06 04:52:31', '2017-10-06 04:52:40', null, null);
INSERT INTO `userlevelrights` VALUES ('12', '3', '5', '7', '2017-10-06 04:52:35', '2017-10-06 04:52:40', null, null);
INSERT INTO `userlevelrights` VALUES ('13', '1', '3', '8', '2017-12-29 03:09:43', '2017-12-29 03:09:58', null, null);
INSERT INTO `userlevelrights` VALUES ('14', '2', '3', '9', '2018-01-15 00:26:11', '2018-01-15 00:26:36', null, null);
INSERT INTO `userlevelrights` VALUES ('15', '2', '3', '10', '2018-01-15 00:26:12', '2018-01-15 00:26:37', null, null);

-- ----------------------------
-- Table structure for userrights
-- ----------------------------
DROP TABLE IF EXISTS `userrights`;
CREATE TABLE `userrights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `submenuid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userrights
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `color` varchar(255) DEFAULT 'blue',
  `utypeid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Shakir', 'admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'darkMagenta', '1', '1', '2017-07-27 07:12:29', '2017-09-20 03:14:29', null, '1');
INSERT INTO `users` VALUES ('2', 'Ahmad', 'ahmad', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '2', '1', '2017-07-27 08:09:52', '2017-09-20 03:14:30', '1', null);
INSERT INTO `users` VALUES ('3', 'Ali', 'ali', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '2', '1', '2017-09-20 03:02:02', '2017-09-20 03:17:31', null, null);
INSERT INTO `users` VALUES ('4', 'Mohamed', 'mohamed', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'crimson', '2', '1', '2017-09-20 03:10:04', '2018-02-11 18:07:13', null, null);
INSERT INTO `users` VALUES ('5', 'Mehj', 'm2', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-09-20 03:52:26', '2017-10-06 04:46:12', null, null);
INSERT INTO `users` VALUES ('6', 'Mahi', 'm1', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'darkTeal', '3', '1', '2017-09-20 03:52:46', '2017-10-07 17:39:37', null, null);
INSERT INTO `users` VALUES ('7', 'Anito', 'anito', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-09-20 03:53:54', '2017-10-06 04:46:30', null, null);
INSERT INTO `users` VALUES ('8', 'Angular', 'aaa', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-10-21 01:39:22', null, '4', null);
INSERT INTO `users` VALUES ('9', 'Beta', 'bbb', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-10-21 01:39:23', null, '4', null);
INSERT INTO `users` VALUES ('10', 'Apple', 'aaa87', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-28 17:29:29', null, '4', null);
INSERT INTO `users` VALUES ('11', 'Banana', 'aaa77', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-28 17:29:29', null, '4', null);
INSERT INTO `users` VALUES ('12', 'Cinamon', 'cinamon', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-28 17:29:29', '2018-09-01 19:29:22', '4', null);
INSERT INTO `users` VALUES ('13', 'Dino', 'aaa69', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-28 17:34:14', null, '4', null);
INSERT INTO `users` VALUES ('14', 'Mutt', 'aaaa', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-28 17:34:14', null, '4', null);
INSERT INTO `users` VALUES ('15', 'Ultra', 'bbb60', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-28 17:34:14', null, '4', null);
INSERT INTO `users` VALUES ('16', 'Extra', 'ddd', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-28 17:34:14', null, '4', null);
INSERT INTO `users` VALUES ('17', 'Ifinada', 'ifinada', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '2', '1', '2017-12-29 04:25:40', null, null, null);
INSERT INTO `users` VALUES ('18', 'Farooq', 'farooq', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '2', '1', '2017-12-30 22:25:28', null, null, null);
INSERT INTO `users` VALUES ('19', 'A', 'a', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-30 22:37:32', null, '18', null);
INSERT INTO `users` VALUES ('20', 'B', 'b', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-30 22:37:32', null, '18', null);
INSERT INTO `users` VALUES ('21', 'C', 'c', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-30 22:37:32', null, '18', null);
INSERT INTO `users` VALUES ('22', 'D', 'd', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-30 22:37:33', null, '18', null);
INSERT INTO `users` VALUES ('23', 'E', 'e', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-30 22:37:33', null, '18', null);
INSERT INTO `users` VALUES ('24', 'F', 'f', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2017-12-30 22:37:33', null, '18', null);
INSERT INTO `users` VALUES ('25', 'hansel', 'hansel', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-15 00:59:13', null, '4', null);
INSERT INTO `users` VALUES ('26', 'grater', 'grater', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-15 00:59:14', null, '4', null);
INSERT INTO `users` VALUES ('27', 'Fine Staff', 'fine', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '2', '1', '2018-01-21 21:42:39', null, null, null);
INSERT INTO `users` VALUES ('28', 'AA', 'aa', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-21 21:51:42', null, '27', null);
INSERT INTO `users` VALUES ('29', 'BB', 'bb', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-21 21:51:42', null, '27', null);
INSERT INTO `users` VALUES ('30', 'CC', 'cc', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `users` VALUES ('31', 'DD', 'dd', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `users` VALUES ('32', 'EE', 'ee', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `users` VALUES ('33', 'FF', 'ff', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-01-21 21:51:43', null, '27', null);
INSERT INTO `users` VALUES ('34', 'hisham', 'aaa59', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-02-16 17:04:58', null, '4', null);
INSERT INTO `users` VALUES ('35', 'albert', 'bbb34', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-02-16 17:04:58', null, '4', null);
INSERT INTO `users` VALUES ('36', 'poolo', 'ddd40', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-02-16 17:04:58', null, '4', null);
INSERT INTO `users` VALUES ('37', 'Nice School', 'nice', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '2', '1', '2018-03-12 20:25:13', null, null, null);
INSERT INTO `users` VALUES ('38', 'aaaa', 'aaa6', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `users` VALUES ('39', 'bbbb', 'bbb64', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `users` VALUES ('40', 'cccc', 'ccc', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `users` VALUES ('41', 'dddd', 'ddd86', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-03-12 20:29:29', null, '37', null);
INSERT INTO `users` VALUES ('42', 'eeee', 'eee', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '3', '1', '2018-03-12 20:29:29', null, '37', null);

-- ----------------------------
-- Table structure for usertypes
-- ----------------------------
DROP TABLE IF EXISTS `usertypes`;
CREATE TABLE `usertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usertypes
-- ----------------------------
INSERT INTO `usertypes` VALUES ('1', 'admin', '2017-09-20 03:13:50', null, null, null);
INSERT INTO `usertypes` VALUES ('2', 'staff', '2017-09-20 03:13:54', null, null, null);
INSERT INTO `usertypes` VALUES ('3', 'student', '2017-09-20 03:13:57', null, null, null);
