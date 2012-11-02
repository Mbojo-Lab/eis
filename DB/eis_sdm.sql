/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : eis_sdm

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2012-11-02 16:24:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `karyawan`
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan` (
  `nip` varchar(20) NOT NULL DEFAULT '',
  `nama` varchar(45) DEFAULT NULL,
  `bagian` varchar(30) DEFAULT NULL,
  `eselon` varchar(20) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `jumlah` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO karyawan VALUES ('1', null, 'Sekretariat', '1', 'Pria', '25');
INSERT INTO karyawan VALUES ('10', null, 'Perencanaan', '2', 'Wanita', '12');
INSERT INTO karyawan VALUES ('11', null, 'Perencanaan', '3', 'Pria', '26');
INSERT INTO karyawan VALUES ('12', null, 'Perencanaan', '3', 'Wanita', '13');
INSERT INTO karyawan VALUES ('13', null, 'Perumahan', '1', 'Pria', '22');
INSERT INTO karyawan VALUES ('14', null, 'Perumahan', '1', 'Wanita', '9');
INSERT INTO karyawan VALUES ('15', null, 'Perumahan', '2', 'Pria', '20');
INSERT INTO karyawan VALUES ('16', null, 'Perumahan', '2', 'Wanita', '10');
INSERT INTO karyawan VALUES ('17', null, 'Perumahan', '3', 'Pria', '19');
INSERT INTO karyawan VALUES ('18', null, 'Perumahan', '3', 'Wanita', '8');
INSERT INTO karyawan VALUES ('2', null, 'Sekretariat', '1', 'Wanita', '12');
INSERT INTO karyawan VALUES ('3', null, 'Sekretariat', '2', 'Pria', '30');
INSERT INTO karyawan VALUES ('4', null, 'Sekretariat', '2', 'Wanita', '15');
INSERT INTO karyawan VALUES ('5', null, 'Sekretariat', '3', 'Pria', '44');
INSERT INTO karyawan VALUES ('6', null, 'Sekretariat', '3', 'Wanita', '21');
INSERT INTO karyawan VALUES ('7', null, 'Perencanaan', '1', 'Pria', '23');
INSERT INTO karyawan VALUES ('8', null, 'Perencanaan', '1', 'Wanita', '10');
INSERT INTO karyawan VALUES ('9', null, 'Perencanaan', '2', 'Pria', '24');
