/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 100134
Source Host           : localhost:3306
Source Database       : quiz

Target Server Type    : MYSQL
Target Server Version : 100134
File Encoding         : 65001

Date: 2018-08-29 17:37:10
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
INSERT INTO `admins` VALUES ('1', 'Administrator', '1', '2017-09-17 02:28:46', '2018-08-14 22:58:23', null, null);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------

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
INSERT INTO `colors` VALUES ('1', 'black', '2016-11-16 18:38:10', null, null, null);
INSERT INTO `colors` VALUES ('2', 'lime', '2016-11-16 18:38:10', null, null, null);
INSERT INTO `colors` VALUES ('3', 'green', '2016-11-16 18:38:12', null, null, null);
INSERT INTO `colors` VALUES ('4', 'emerald', '2016-11-16 18:38:13', null, null, null);
INSERT INTO `colors` VALUES ('5', 'teal', '2016-11-16 18:38:20', null, null, null);
INSERT INTO `colors` VALUES ('6', 'blue', '2016-11-16 18:38:21', null, null, null);
INSERT INTO `colors` VALUES ('7', 'cyan', '2016-11-16 18:38:23', null, null, null);
INSERT INTO `colors` VALUES ('8', 'cobalt', '2016-11-16 18:38:24', null, null, null);
INSERT INTO `colors` VALUES ('9', 'indigo', '2016-11-16 18:38:26', null, null, null);
INSERT INTO `colors` VALUES ('10', 'violet', '2016-11-16 18:38:27', null, null, null);
INSERT INTO `colors` VALUES ('11', 'pink', '2016-11-16 18:38:28', null, null, null);
INSERT INTO `colors` VALUES ('12', 'magenta', '2016-11-16 18:38:30', null, null, null);
INSERT INTO `colors` VALUES ('13', 'crimson', '2016-11-16 18:38:32', null, null, null);
INSERT INTO `colors` VALUES ('14', 'red', '2016-11-16 18:38:32', null, null, null);
INSERT INTO `colors` VALUES ('15', 'orange', '2016-11-16 18:38:34', null, null, null);
INSERT INTO `colors` VALUES ('16', 'amber', '2016-11-16 18:38:35', null, null, null);
INSERT INTO `colors` VALUES ('17', 'yellow', '2016-11-16 18:38:37', null, null, null);
INSERT INTO `colors` VALUES ('18', 'brown', '2016-11-16 18:38:38', null, null, null);
INSERT INTO `colors` VALUES ('19', 'olive', '2016-11-16 18:38:40', null, null, null);
INSERT INTO `colors` VALUES ('20', 'steel', '2016-11-16 18:38:41', null, null, null);
INSERT INTO `colors` VALUES ('21', 'mauve', '2016-11-16 18:38:43', null, null, null);
INSERT INTO `colors` VALUES ('22', 'taupe', '2016-11-16 18:38:46', null, null, null);
INSERT INTO `colors` VALUES ('23', 'gray', '2016-11-16 18:38:47', null, null, null);
INSERT INTO `colors` VALUES ('24', 'dark', '2016-11-16 18:38:49', null, null, null);
INSERT INTO `colors` VALUES ('25', 'darker', '2016-11-16 18:38:50', null, null, null);
INSERT INTO `colors` VALUES ('26', 'darkBrown', '2016-11-16 18:38:59', null, null, null);
INSERT INTO `colors` VALUES ('27', 'darkCrimson', '2016-11-16 18:39:03', null, null, null);
INSERT INTO `colors` VALUES ('28', 'darkMagenta', '2016-11-16 18:39:06', null, null, null);
INSERT INTO `colors` VALUES ('29', 'darkIndigo', '2016-11-16 18:39:08', null, null, null);
INSERT INTO `colors` VALUES ('30', 'darkCyan', '2016-11-16 18:39:10', null, null, null);
INSERT INTO `colors` VALUES ('31', 'darkCobalt', '2016-11-16 18:39:12', null, null, null);
INSERT INTO `colors` VALUES ('32', 'darkTeal', '2016-11-16 18:39:14', null, null, null);
INSERT INTO `colors` VALUES ('33', 'darkEmerald', '2016-11-16 18:39:18', null, null, null);
INSERT INTO `colors` VALUES ('34', 'darkGreen', '2016-11-16 18:39:21', null, null, null);
INSERT INTO `colors` VALUES ('35', 'darkOrange', '2016-11-16 18:39:23', null, null, null);
INSERT INTO `colors` VALUES ('36', 'darkRed', '2016-11-16 18:39:26', null, null, null);
INSERT INTO `colors` VALUES ('37', 'darkPink', '2016-11-16 18:39:27', null, null, null);
INSERT INTO `colors` VALUES ('38', 'darkViolet', '2016-11-16 18:39:31', null, null, null);
INSERT INTO `colors` VALUES ('39', 'darkBlue', '2016-11-16 18:39:32', null, null, null);
INSERT INTO `colors` VALUES ('40', 'lightBlue', '2016-11-16 18:39:35', null, null, null);
INSERT INTO `colors` VALUES ('41', 'lightRed', '2016-11-16 18:39:39', null, null, null);
INSERT INTO `colors` VALUES ('42', 'lightGreen', '2016-11-16 18:39:43', null, null, null);
INSERT INTO `colors` VALUES ('43', 'lighterBlue', '2016-11-16 18:39:48', null, null, null);
INSERT INTO `colors` VALUES ('44', 'lightTeal', '2016-11-16 18:39:52', null, null, null);
INSERT INTO `colors` VALUES ('45', 'lightOlive', '2016-11-16 18:39:55', null, null, null);
INSERT INTO `colors` VALUES ('46', 'lightOrange', '2016-11-16 18:39:57', null, null, null);
INSERT INTO `colors` VALUES ('47', 'lightPink', '2016-11-16 18:40:00', null, null, null);
INSERT INTO `colors` VALUES ('48', 'grayDark', '2016-11-16 18:40:02', null, null, null);
INSERT INTO `colors` VALUES ('49', 'grayDarker', '2016-11-16 18:40:05', null, null, null);
INSERT INTO `colors` VALUES ('50', 'grayLight', '2016-11-16 18:40:06', null, null, null);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of divisions
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fbanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fillblanks
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grades
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of laanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of longanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of matchingitems
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mcanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mianswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of multiplechoices
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of packages
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizclasses
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizfiles
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizquestions
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizsections
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quizzes
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of saanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schoolpackages
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schools
-- ----------------------------

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
INSERT INTO `settings` VALUES ('1', 'Test System', 'Test System', 'logo.png', '50', '15', '2017-07-13 21:37:51', '2018-08-14 22:59:57', '1', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shortanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of staffs
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentquizzes
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of students
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subcategories
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tfanswers
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of truefalses
-- ----------------------------

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
INSERT INTO `types` VALUES ('1', 'Fill in the Blanks', '2017-09-29 02:00:40', '2017-09-29 02:00:58', '1', null);
INSERT INTO `types` VALUES ('2', 'Short Answers', '2017-09-29 02:00:44', '2017-09-29 02:00:58', '1', null);
INSERT INTO `types` VALUES ('3', 'Long Answers', '2017-09-29 02:00:47', '2017-09-29 02:00:59', '1', null);
INSERT INTO `types` VALUES ('4', 'Multiple Choices', '2017-09-29 02:01:05', '2017-09-29 02:01:16', '1', null);
INSERT INTO `types` VALUES ('5', 'Matching Items', '2017-09-29 02:01:13', '2017-09-29 02:01:17', '1', null);
INSERT INTO `types` VALUES ('6', 'True False', '2017-09-29 02:01:15', '2017-09-29 02:01:17', '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userlevelrights
-- ----------------------------
INSERT INTO `userlevelrights` VALUES ('1', '1', '1', null, '2018-08-29 17:34:07', null, null, null);
INSERT INTO `userlevelrights` VALUES ('2', '1', '3', '3', '2018-08-29 17:34:07', null, null, null);
INSERT INTO `userlevelrights` VALUES ('3', '1', '2', '1', '2018-08-29 17:34:08', null, null, null);
INSERT INTO `userlevelrights` VALUES ('4', '1', '2', '2', '2018-08-29 17:34:08', null, null, null);
INSERT INTO `userlevelrights` VALUES ('5', '1', '2', '8', '2018-08-29 17:34:08', null, null, null);
INSERT INTO `userlevelrights` VALUES ('6', '2', '1', null, '2018-08-29 17:34:24', null, null, null);
INSERT INTO `userlevelrights` VALUES ('7', '2', '4', null, '2018-08-29 17:34:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('8', '2', '3', '4', '2018-08-29 17:34:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('9', '2', '3', '5', '2018-08-29 17:34:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('10', '2', '3', '9', '2018-08-29 17:34:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('11', '2', '3', '10', '2018-08-29 17:34:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('12', '2', '2', '1', '2018-08-29 17:34:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('13', '2', '2', '2', '2018-08-29 17:34:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('14', '3', '1', null, '2018-08-29 17:34:37', null, null, null);
INSERT INTO `userlevelrights` VALUES ('15', '3', '5', '6', '2018-08-29 17:34:37', null, null, null);
INSERT INTO `userlevelrights` VALUES ('16', '3', '5', '7', '2018-08-29 17:34:37', null, null, null);
INSERT INTO `userlevelrights` VALUES ('17', '0', '1', null, '2018-08-29 17:36:40', '2018-08-29 17:36:41', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Administrator', 'admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '1', '2018-08-14 23:00:25', null, null, null);

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
INSERT INTO `usertypes` VALUES ('1', 'admin', '2017-09-20 02:43:50', null, null, null);
INSERT INTO `usertypes` VALUES ('2', 'staff', '2017-09-20 02:43:54', null, null, null);
INSERT INTO `usertypes` VALUES ('3', 'student', '2017-09-20 02:43:57', null, null, null);
