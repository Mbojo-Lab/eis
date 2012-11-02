/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : eis_perpus

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2012-11-02 16:24:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bukutamu`
-- ----------------------------
DROP TABLE IF EXISTS `bukutamu`;
CREATE TABLE `bukutamu` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `perusahaan` varchar(40) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bukutamu
-- ----------------------------
INSERT INTO bukutamu VALUES ('1', '2010-11-02', 'a', null, null, null, null, null);
INSERT INTO bukutamu VALUES ('2', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('3', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('4', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('5', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('6', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('7', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('8', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('9', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('10', '2010-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('11', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('12', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('13', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('14', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('15', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('16', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('17', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('18', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('19', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('20', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('21', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('22', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('23', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('24', '2012-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('25', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('26', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('27', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('28', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('29', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('30', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('31', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('32', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('33', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('34', '2011-11-02', null, null, null, null, null, null);
INSERT INTO bukutamu VALUES ('35', '2011-11-02', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `koleksi`
-- ----------------------------
DROP TABLE IF EXISTS `koleksi`;
CREATE TABLE `koleksi` (
  `kd_buku` varchar(10) NOT NULL DEFAULT '',
  `kategori` varchar(20) DEFAULT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `penerbit` varchar(30) DEFAULT NULL,
  `tahun_terbit` int(4) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  PRIMARY KEY (`kd_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of koleksi
-- ----------------------------
INSERT INTO koleksi VALUES ('AT001', 'Artikel', 'Artikel1', 'erlangga', '2008', '2011-11-02');
INSERT INTO koleksi VALUES ('AT002', 'Artikel', 'Artikel2', 'erlangga', '2008', '2012-11-02');
INSERT INTO koleksi VALUES ('AT003', 'Artikel', 'Artikel3', 'erlangga', '2008', '2012-11-02');
INSERT INTO koleksi VALUES ('BK001', 'Buku', 'buku1', 'erlangga', '2007', '2012-11-02');
INSERT INTO koleksi VALUES ('BK002', 'Buku', 'buku2', 'erlangga', '2007', '2012-11-02');
INSERT INTO koleksi VALUES ('JN001', 'Jurnal', 'Jurnal1', 'erlangga', '2009', '2012-11-02');
INSERT INTO koleksi VALUES ('MJ001', 'Majalah', 'Majalah1', 'erlangga', '2010', '2012-11-02');
