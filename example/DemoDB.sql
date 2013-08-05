/*
Navicat MySQL Data Transfer

Source Server         : 192.168.16.249
Source Server Version : 50528
Source Host           : 192.168.16.249:3306
Source Database       : NewICMS

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2013-08-05 09:50:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `map_path`
-- ----------------------------
DROP TABLE IF EXISTS `map_path`;
CREATE TABLE `map_path` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_pid` int(8) DEFAULT NULL,
  `end_pid` int(8) DEFAULT NULL,
  `length` int(8) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of map_path
-- ----------------------------
INSERT INTO `map_path` VALUES ('1', '1', '2', '50', '');
INSERT INTO `map_path` VALUES ('2', '1', '3', '29', '');
INSERT INTO `map_path` VALUES ('3', '2', '4', '41', '');
INSERT INTO `map_path` VALUES ('4', '4', '5', '15', '');
INSERT INTO `map_path` VALUES ('5', '5', '6', '32', '');
INSERT INTO `map_path` VALUES ('6', '6', '7', '19', '');
INSERT INTO `map_path` VALUES ('7', '7', '8', '34', '');
INSERT INTO `map_path` VALUES ('8', '8', '9', '42', '');
INSERT INTO `map_path` VALUES ('9', '9', '10', '43', '');
INSERT INTO `map_path` VALUES ('10', '10', '11', '51', '');
INSERT INTO `map_path` VALUES ('11', '11', '12', '69', '');
INSERT INTO `map_path` VALUES ('12', '12', '13', '69', '');
INSERT INTO `map_path` VALUES ('13', '13', '14', '77', '');
INSERT INTO `map_path` VALUES ('14', '13', '15', '80', '');
INSERT INTO `map_path` VALUES ('15', '14', '16', '83', '');
INSERT INTO `map_path` VALUES ('16', '16', '17', '42', '');
INSERT INTO `map_path` VALUES ('17', '17', '18', '31', '');
INSERT INTO `map_path` VALUES ('18', '18', '19', '22', '');
INSERT INTO `map_path` VALUES ('19', '19', '20', '31', '');
INSERT INTO `map_path` VALUES ('20', '19', '21', '51', '');
INSERT INTO `map_path` VALUES ('21', '20', '22', '56', '');
INSERT INTO `map_path` VALUES ('22', '22', '23', '57', '');
INSERT INTO `map_path` VALUES ('23', '23', '24', '42', '');
INSERT INTO `map_path` VALUES ('24', '24', '25', '29', '');
INSERT INTO `map_path` VALUES ('25', '25', '26', '29', '');
INSERT INTO `map_path` VALUES ('26', '25', '27', '55', '');
INSERT INTO `map_path` VALUES ('27', '26', '28', '53', '');
INSERT INTO `map_path` VALUES ('28', '28', '29', '44', '');
INSERT INTO `map_path` VALUES ('29', '29', '17', '65', '');
INSERT INTO `map_path` VALUES ('30', '30', '24', '42', '');
INSERT INTO `map_path` VALUES ('31', '30', '23', '46', '');
INSERT INTO `map_path` VALUES ('32', '30', '31', '58', '');
INSERT INTO `map_path` VALUES ('33', '31', '32', '56', '');
INSERT INTO `map_path` VALUES ('34', '32', '33', '60', '');
INSERT INTO `map_path` VALUES ('35', '33', '34', '64', '');
INSERT INTO `map_path` VALUES ('36', '34', '35', '63', '');
INSERT INTO `map_path` VALUES ('37', '35', '36', '47', '');
INSERT INTO `map_path` VALUES ('38', '36', '37', '75', '');
INSERT INTO `map_path` VALUES ('39', '37', '38', '65', '');
INSERT INTO `map_path` VALUES ('40', '38', '39', '52', '');
INSERT INTO `map_path` VALUES ('41', '39', '40', '165', '');
INSERT INTO `map_path` VALUES ('42', '3', '41', '32', '');
INSERT INTO `map_path` VALUES ('43', '41', '42', '29', '');
INSERT INTO `map_path` VALUES ('44', '42', '43', '46', '');
INSERT INTO `map_path` VALUES ('45', '43', '44', '26', '');
INSERT INTO `map_path` VALUES ('46', '44', '45', '57', '');
INSERT INTO `map_path` VALUES ('47', '45', '46', '67', '');
INSERT INTO `map_path` VALUES ('48', '46', '47', '46', '');
INSERT INTO `map_path` VALUES ('49', '47', '48', '61', '');
INSERT INTO `map_path` VALUES ('50', '48', '49', '40', '');
INSERT INTO `map_path` VALUES ('51', '49', '50', '47', '');
INSERT INTO `map_path` VALUES ('52', '50', '51', '69', '');
INSERT INTO `map_path` VALUES ('53', '51', '52', '54', '');
INSERT INTO `map_path` VALUES ('54', '52', '53', '42', '');
INSERT INTO `map_path` VALUES ('55', '53', '54', '49', '');
INSERT INTO `map_path` VALUES ('56', '54', '55', '76', '');
INSERT INTO `map_path` VALUES ('57', '55', '56', '60', '');
INSERT INTO `map_path` VALUES ('58', '56', '57', '46', '');
INSERT INTO `map_path` VALUES ('59', '57', '58', '85', '');
INSERT INTO `map_path` VALUES ('60', '58', '59', '73', '');
INSERT INTO `map_path` VALUES ('61', '59', '60', '98', '');
INSERT INTO `map_path` VALUES ('62', '60', '35', '110', '');
INSERT INTO `map_path` VALUES ('63', '27', '61', '70', '');
INSERT INTO `map_path` VALUES ('64', '61', '62', '65', '');
INSERT INTO `map_path` VALUES ('65', '62', '63', '106', '');
INSERT INTO `map_path` VALUES ('66', '63', '64', '69', '');
INSERT INTO `map_path` VALUES ('67', '64', '65', '123', '');
INSERT INTO `map_path` VALUES ('68', '64', '66', '75', '');
INSERT INTO `map_path` VALUES ('69', '64', '67', '85', '');
INSERT INTO `map_path` VALUES ('70', '65', '68', '161', '');
INSERT INTO `map_path` VALUES ('71', '68', '69', '164', '');
INSERT INTO `map_path` VALUES ('72', '66', '70', '118', '');
INSERT INTO `map_path` VALUES ('73', '70', '71', '107', '');
INSERT INTO `map_path` VALUES ('74', '71', '72', '105', '');
INSERT INTO `map_path` VALUES ('75', '72', '73', '85', '');
INSERT INTO `map_path` VALUES ('76', '73', '74', '86', '');
INSERT INTO `map_path` VALUES ('77', '74', '75', '67', '');
INSERT INTO `map_path` VALUES ('78', '75', '76', '148', '');
INSERT INTO `map_path` VALUES ('79', '76', '77', '101', '');
INSERT INTO `map_path` VALUES ('80', '77', '11', '92', '');
INSERT INTO `map_path` VALUES ('81', '77', '78', '98', '');
INSERT INTO `map_path` VALUES ('82', '78', '79', '39', '');
INSERT INTO `map_path` VALUES ('83', '79', '80', '88', '');
INSERT INTO `map_path` VALUES ('84', '80', '81', '118', '');
INSERT INTO `map_path` VALUES ('85', '81', '82', '88', '');
INSERT INTO `map_path` VALUES ('86', '82', '83', '47', '');
INSERT INTO `map_path` VALUES ('87', '83', '84', '35', '');
INSERT INTO `map_path` VALUES ('88', '84', '85', '35', '');
INSERT INTO `map_path` VALUES ('89', '85', '86', '70', '');
INSERT INTO `map_path` VALUES ('90', '86', '87', '108', '');
INSERT INTO `map_path` VALUES ('91', '87', '45', '72', '');
INSERT INTO `map_path` VALUES ('92', '67', '88', '63', '');
INSERT INTO `map_path` VALUES ('93', '88', '89', '97', '');
INSERT INTO `map_path` VALUES ('94', '89', '90', '73', '');
INSERT INTO `map_path` VALUES ('95', '90', '91', '68', '');
INSERT INTO `map_path` VALUES ('96', '91', '92', '69', '');
INSERT INTO `map_path` VALUES ('97', '92', '93', '71', '');
INSERT INTO `map_path` VALUES ('98', '93', '94', '63', '');
INSERT INTO `map_path` VALUES ('99', '94', '95', '59', '');
INSERT INTO `map_path` VALUES ('100', '95', '96', '63', '');
INSERT INTO `map_path` VALUES ('101', '96', '97', '127', '');
INSERT INTO `map_path` VALUES ('102', '97', '98', '73', '');
INSERT INTO `map_path` VALUES ('103', '98', '99', '74', '');
INSERT INTO `map_path` VALUES ('104', '99', '100', '111', '');
INSERT INTO `map_path` VALUES ('105', '100', '35', '64', '');
INSERT INTO `map_path` VALUES ('106', '21', '101', '91', '');
INSERT INTO `map_path` VALUES ('107', '101', '102', '116', '');
INSERT INTO `map_path` VALUES ('108', '102', '49', '78', '');
INSERT INTO `map_path` VALUES ('109', '15', '103', '63', '');
INSERT INTO `map_path` VALUES ('110', '103', '104', '44', '');
INSERT INTO `map_path` VALUES ('111', '103', '105', '56', '');
INSERT INTO `map_path` VALUES ('112', '104', '106', '30', '');
INSERT INTO `map_path` VALUES ('113', '106', '107', '60', '');
INSERT INTO `map_path` VALUES ('114', '107', '108', '88', '');
INSERT INTO `map_path` VALUES ('115', '108', '109', '17', '');
INSERT INTO `map_path` VALUES ('116', '109', '110', '38', '');
INSERT INTO `map_path` VALUES ('117', '110', '111', '44', '');
INSERT INTO `map_path` VALUES ('118', '111', '72', '31', '');
INSERT INTO `map_path` VALUES ('119', '105', '112', '49', '');
INSERT INTO `map_path` VALUES ('120', '112', '113', '66', '');
INSERT INTO `map_path` VALUES ('121', '113', '114', '91', '');
INSERT INTO `map_path` VALUES ('122', '114', '115', '86', '');
INSERT INTO `map_path` VALUES ('123', '115', '116', '102', '');
INSERT INTO `map_path` VALUES ('124', '116', '66', '59', '');

-- ----------------------------
-- Table structure for `map_point`
-- ----------------------------
DROP TABLE IF EXISTS `map_point`;
CREATE TABLE `map_point` (
  `point_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(32) DEFAULT NULL,
  `point_x` int(11) NOT NULL,
  `point_y` int(11) NOT NULL,
  `is_delete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`point_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of map_point
-- ----------------------------
INSERT INTO `map_point` VALUES ('1', '', '2322', '1003', '');
INSERT INTO `map_point` VALUES ('2', '', '2279', '976', '');
INSERT INTO `map_point` VALUES ('3', '', '2342', '1024', '');
INSERT INTO `map_point` VALUES ('4', '', '2244', '954', '');
INSERT INTO `map_point` VALUES ('5', '', '2230', '947', '');
INSERT INTO `map_point` VALUES ('6', '', '2253', '924', '');
INSERT INTO `map_point` VALUES ('7', '', '2259', '905', '');
INSERT INTO `map_point` VALUES ('8', '', '2226', '895', '');
INSERT INTO `map_point` VALUES ('9', '', '2186', '882', '');
INSERT INTO `map_point` VALUES ('10', '', '2143', '873', '');
INSERT INTO `map_point` VALUES ('11', '', '2093', '861', '');
INSERT INTO `map_point` VALUES ('12', '', '2033', '897', '');
INSERT INTO `map_point` VALUES ('13', '', '1975', '935', '');
INSERT INTO `map_point` VALUES ('14', '', '1910', '977', '');
INSERT INTO `map_point` VALUES ('15', '', '1895', '936', '');
INSERT INTO `map_point` VALUES ('16', '', '1845', '1030', '');
INSERT INTO `map_point` VALUES ('17', '', '1809', '1052', '');
INSERT INTO `map_point` VALUES ('18', '', '1812', '1083', '');
INSERT INTO `map_point` VALUES ('19', '', '1810', '1105', '');
INSERT INTO `map_point` VALUES ('20', '', '1791', '1130', '');
INSERT INTO `map_point` VALUES ('21', '', '1854', '1132', '');
INSERT INTO `map_point` VALUES ('22', '', '1742', '1158', '');
INSERT INTO `map_point` VALUES ('23', '', '1685', '1150', '');
INSERT INTO `map_point` VALUES ('24', '', '1653', '1122', '');
INSERT INTO `map_point` VALUES ('25', '', '1647', '1093', '');
INSERT INTO `map_point` VALUES ('26', '', '1652', '1064', '');
INSERT INTO `map_point` VALUES ('27', '', '1598', '1066', '');
INSERT INTO `map_point` VALUES ('28', '', '1701', '1043', '');
INSERT INTO `map_point` VALUES ('29', '', '1745', '1040', '');
INSERT INTO `map_point` VALUES ('30', '', '1640', '1162', '');
INSERT INTO `map_point` VALUES ('31', '', '1597', '1202', '');
INSERT INTO `map_point` VALUES ('32', '', '1561', '1245', '');
INSERT INTO `map_point` VALUES ('33', '', '1521', '1290', '');
INSERT INTO `map_point` VALUES ('34', '', '1482', '1341', '');
INSERT INTO `map_point` VALUES ('35', '', '1442', '1390', '');
INSERT INTO `map_point` VALUES ('36', '', '1405', '1420', '');
INSERT INTO `map_point` VALUES ('37', '', '1348', '1469', '');
INSERT INTO `map_point` VALUES ('38', '', '1302', '1516', '');
INSERT INTO `map_point` VALUES ('39', '', '1261', '1549', '');
INSERT INTO `map_point` VALUES ('40', '', '1143', '1665', '');
INSERT INTO `map_point` VALUES ('41', '', '2360', '1051', '');
INSERT INTO `map_point` VALUES ('42', '', '2332', '1059', '');
INSERT INTO `map_point` VALUES ('43', '', '2286', '1060', '');
INSERT INTO `map_point` VALUES ('44', '', '2287', '1086', '');
INSERT INTO `map_point` VALUES ('45', '', '2294', '1143', '');
INSERT INTO `map_point` VALUES ('46', '', '2233', '1173', '');
INSERT INTO `map_point` VALUES ('47', '', '2194', '1199', '');
INSERT INTO `map_point` VALUES ('48', '', '2143', '1234', '');
INSERT INTO `map_point` VALUES ('49', '', '2111', '1259', '');
INSERT INTO `map_point` VALUES ('50', '', '2084', '1298', '');
INSERT INTO `map_point` VALUES ('51', '', '2047', '1357', '');
INSERT INTO `map_point` VALUES ('52', '', '2021', '1405', '');
INSERT INTO `map_point` VALUES ('53', '', '1995', '1438', '');
INSERT INTO `map_point` VALUES ('54', '', '1956', '1468', '');
INSERT INTO `map_point` VALUES ('55', '', '1886', '1500', '');
INSERT INTO `map_point` VALUES ('56', '', '1828', '1516', '');
INSERT INTO `map_point` VALUES ('57', '', '1782', '1516', '');
INSERT INTO `map_point` VALUES ('58', '', '1697', '1508', '');
INSERT INTO `map_point` VALUES ('59', '', '1631', '1475', '');
INSERT INTO `map_point` VALUES ('60', '', '1548', '1422', '');
INSERT INTO `map_point` VALUES ('61', '', '1545', '1019', '');
INSERT INTO `map_point` VALUES ('62', '', '1496', '975', '');
INSERT INTO `map_point` VALUES ('63', '', '1423', '897', '');
INSERT INTO `map_point` VALUES ('64', '', '1362', '863', '');
INSERT INTO `map_point` VALUES ('65', '', '1247', '819', '');
INSERT INTO `map_point` VALUES ('66', '', '1422', '817', '');
INSERT INTO `map_point` VALUES ('67', '', '1280', '888', '');
INSERT INTO `map_point` VALUES ('68', '', '1116', '724', '');
INSERT INTO `map_point` VALUES ('69', '', '987', '622', '');
INSERT INTO `map_point` VALUES ('70', '', '1515', '743', '');
INSERT INTO `map_point` VALUES ('71', '', '1603', '682', '');
INSERT INTO `map_point` VALUES ('72', '', '1704', '650', '');
INSERT INTO `map_point` VALUES ('73', '', '1789', '649', '');
INSERT INTO `map_point` VALUES ('74', '', '1874', '663', '');
INSERT INTO `map_point` VALUES ('75', '', '1937', '688', '');
INSERT INTO `map_point` VALUES ('76', '', '2071', '753', '');
INSERT INTO `map_point` VALUES ('77', '', '2162', '799', '');
INSERT INTO `map_point` VALUES ('78', '', '2255', '831', '');
INSERT INTO `map_point` VALUES ('79', '', '2291', '847', '');
INSERT INTO `map_point` VALUES ('80', '', '2374', '878', '');
INSERT INTO `map_point` VALUES ('81', '', '2485', '919', '');
INSERT INTO `map_point` VALUES ('82', '', '2560', '966', '');
INSERT INTO `map_point` VALUES ('83', '', '2571', '1012', '');
INSERT INTO `map_point` VALUES ('84', '', '2561', '1046', '');
INSERT INTO `map_point` VALUES ('85', '', '2532', '1067', '');
INSERT INTO `map_point` VALUES ('86', '', '2469', '1098', '');
INSERT INTO `map_point` VALUES ('87', '', '2363', '1122', '');
INSERT INTO `map_point` VALUES ('88', '', '1221', '912', '');
INSERT INTO `map_point` VALUES ('89', '', '1127', '939', '');
INSERT INTO `map_point` VALUES ('90', '', '1057', '961', '');
INSERT INTO `map_point` VALUES ('91', '', '1000', '999', '');
INSERT INTO `map_point` VALUES ('92', '', '957', '1054', '');
INSERT INTO `map_point` VALUES ('93', '', '921', '1116', '');
INSERT INTO `map_point` VALUES ('94', '', '922', '1179', '');
INSERT INTO `map_point` VALUES ('95', '', '962', '1223', '');
INSERT INTO `map_point` VALUES ('96', '', '1019', '1251', '');
INSERT INTO `map_point` VALUES ('97', '', '1144', '1278', '');
INSERT INTO `map_point` VALUES ('98', '', '1216', '1294', '');
INSERT INTO `map_point` VALUES ('99', '', '1288', '1312', '');
INSERT INTO `map_point` VALUES ('100', '', '1393', '1348', '');
INSERT INTO `map_point` VALUES ('101', '', '1939', '1166', '');
INSERT INTO `map_point` VALUES ('102', '', '2042', '1221', '');
INSERT INTO `map_point` VALUES ('103', '', '1863', '881', '');
INSERT INTO `map_point` VALUES ('104', '', '1881', '840', '');
INSERT INTO `map_point` VALUES ('105', '', '1810', '900', '');
INSERT INTO `map_point` VALUES ('106', '', '1871', '811', '');
INSERT INTO `map_point` VALUES ('107', '', '1821', '777', '');
INSERT INTO `map_point` VALUES ('108', '', '1736', '751', '');
INSERT INTO `map_point` VALUES ('109', '', '1732', '734', '');
INSERT INTO `map_point` VALUES ('110', '', '1755', '703', '');
INSERT INTO `map_point` VALUES ('111', '', '1718', '678', '');
INSERT INTO `map_point` VALUES ('112', '', '1764', '919', '');
INSERT INTO `map_point` VALUES ('113', '', '1698', '930', '');
INSERT INTO `map_point` VALUES ('114', '', '1607', '932', '');
INSERT INTO `map_point` VALUES ('115', '', '1534', '886', '');
INSERT INTO `map_point` VALUES ('116', '', '1479', '799', '');
