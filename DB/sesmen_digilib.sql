/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : sesmen_digilib

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2012-11-29 17:15:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `agenda`
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `staf_id` varchar(255) NOT NULL,
  `tanggal_agenda` varchar(255) NOT NULL,
  `jam` varchar(255) NOT NULL,
  `kegiatan` text NOT NULL,
  `diwakilkan` varchar(255) NOT NULL,
  `bahan_atau_pendamping` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `level` varchar(4) NOT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of agenda
-- ----------------------------

-- ----------------------------
-- Table structure for `artikel`
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel` (
  `artikel_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`artikel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of artikel
-- ----------------------------

-- ----------------------------
-- Table structure for `berita`
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `berita_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`berita_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of berita
-- ----------------------------

-- ----------------------------
-- Table structure for `buku`
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku` (
  `buku_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul_buku` text COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`buku_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4656 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO buku VALUES ('4641', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4642', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4643', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4644', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4645', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4646', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4647', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4648', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4649', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4650', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4651', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4652', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4653', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4654', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO buku VALUES ('4655', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `cd`
-- ----------------------------
DROP TABLE IF EXISTS `cd`;
CREATE TABLE `cd` (
  `cd_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_cd` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of cd
-- ----------------------------

-- ----------------------------
-- Table structure for `diklat`
-- ----------------------------
DROP TABLE IF EXISTS `diklat`;
CREATE TABLE `diklat` (
  `diklat_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`diklat_id`),
  KEY `diklat_id` (`diklat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of diklat
-- ----------------------------

-- ----------------------------
-- Table structure for `hitscounter`
-- ----------------------------
DROP TABLE IF EXISTS `hitscounter`;
CREATE TABLE `hitscounter` (
  `hits` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `script` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of hitscounter
-- ----------------------------

-- ----------------------------
-- Table structure for `jejaring`
-- ----------------------------
DROP TABLE IF EXISTS `jejaring`;
CREATE TABLE `jejaring` (
  `jejaring_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`jejaring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of jejaring
-- ----------------------------

-- ----------------------------
-- Table structure for `jurnal`
-- ----------------------------
DROP TABLE IF EXISTS `jurnal`;
CREATE TABLE `jurnal` (
  `jurnal_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_jurnal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`jurnal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of jurnal
-- ----------------------------
INSERT INTO jurnal VALUES ('33', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('34', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('35', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('36', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('37', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('38', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('39', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('40', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('41', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('42', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('43', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('44', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('45', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('46', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('47', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('48', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('49', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('50', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO jurnal VALUES ('51', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `kamus`
-- ----------------------------
DROP TABLE IF EXISTS `kamus`;
CREATE TABLE `kamus` (
  `kamus_id` int(11) NOT NULL AUTO_INCREMENT,
  `istilah` varchar(255) NOT NULL,
  `arti` text NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`kamus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kamus
-- ----------------------------

-- ----------------------------
-- Table structure for `karya_ilmiah`
-- ----------------------------
DROP TABLE IF EXISTS `karya_ilmiah`;
CREATE TABLE `karya_ilmiah` (
  `karya_ilmiah_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_karya_ilmiah` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`karya_ilmiah_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of karya_ilmiah
-- ----------------------------
INSERT INTO karya_ilmiah VALUES ('3', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('4', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('5', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('6', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('7', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('8', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('9', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('10', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('11', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('12', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('13', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('14', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('15', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('16', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('17', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('18', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('19', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO karya_ilmiah VALUES ('20', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `katalog`
-- ----------------------------
DROP TABLE IF EXISTS `katalog`;
CREATE TABLE `katalog` (
  `katalog_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(255) NOT NULL,
  `judul_buku` text NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `halaman` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `bahasa` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `no_klasifikasi` varchar(255) NOT NULL,
  `sumber_pustaka` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `subjek` varchar(255) NOT NULL,
  `abstraksi` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `pengadaan` varchar(255) NOT NULL,
  `no_udc` varchar(255) NOT NULL,
  `x` varchar(1) NOT NULL,
  PRIMARY KEY (`katalog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2729 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of katalog
-- ----------------------------

-- ----------------------------
-- Table structure for `kliping`
-- ----------------------------
DROP TABLE IF EXISTS `kliping`;
CREATE TABLE `kliping` (
  `kliping_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kliping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of kliping
-- ----------------------------

-- ----------------------------
-- Table structure for `konter`
-- ----------------------------
DROP TABLE IF EXISTS `konter`;
CREATE TABLE `konter` (
  `ip` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tanggal` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `waktu` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of konter
-- ----------------------------

-- ----------------------------
-- Table structure for `kunjungan`
-- ----------------------------
DROP TABLE IF EXISTS `kunjungan`;
CREATE TABLE `kunjungan` (
  `kunjungan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kunjungan_id`),
  KEY `kunjungan_id` (`kunjungan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of kunjungan
-- ----------------------------
INSERT INTO kunjungan VALUES ('1', '2012-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('2', '2012-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('3', '2012-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('4', '2012-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('5', '2012-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('6', '2011-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('7', '2011-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('8', '2011-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('9', '2011-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('10', '2011-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('11', '2010-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('12', '2010-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('13', '2010-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('14', '2010-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('15', '2010-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('16', '2012-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('17', '2012-11-09', '', '', '', '');
INSERT INTO kunjungan VALUES ('18', '2011-11-09', '', '', '', '');

-- ----------------------------
-- Table structure for `lainnya`
-- ----------------------------
DROP TABLE IF EXISTS `lainnya`;
CREATE TABLE `lainnya` (
  `lainnya_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`lainnya_id`),
  KEY `lainnya_id` (`lainnya_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of lainnya
-- ----------------------------

-- ----------------------------
-- Table structure for `laporan`
-- ----------------------------
DROP TABLE IF EXISTS `laporan`;
CREATE TABLE `laporan` (
  `laporan_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_laporan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`laporan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of laporan
-- ----------------------------

-- ----------------------------
-- Table structure for `leaflet`
-- ----------------------------
DROP TABLE IF EXISTS `leaflet`;
CREATE TABLE `leaflet` (
  `leaflet_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_leaflet` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`leaflet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of leaflet
-- ----------------------------

-- ----------------------------
-- Table structure for `majalah`
-- ----------------------------
DROP TABLE IF EXISTS `majalah`;
CREATE TABLE `majalah` (
  `majalah_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_majalah` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`majalah_id`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of majalah
-- ----------------------------

-- ----------------------------
-- Table structure for `makalah`
-- ----------------------------
DROP TABLE IF EXISTS `makalah`;
CREATE TABLE `makalah` (
  `makalah_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_makalah` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`makalah_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of makalah
-- ----------------------------
INSERT INTO makalah VALUES ('17', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('18', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('19', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('20', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('21', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('22', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('23', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('24', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('25', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('26', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('27', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('28', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('29', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('30', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('31', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('32', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO makalah VALUES ('33', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `newsletter`
-- ----------------------------
DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE `newsletter` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_newsletter` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of newsletter
-- ----------------------------

-- ----------------------------
-- Table structure for `presentasi`
-- ----------------------------
DROP TABLE IF EXISTS `presentasi`;
CREATE TABLE `presentasi` (
  `presentasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_presentasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`presentasi_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of presentasi
-- ----------------------------

-- ----------------------------
-- Table structure for `prosiding`
-- ----------------------------
DROP TABLE IF EXISTS `prosiding`;
CREATE TABLE `prosiding` (
  `prosiding_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_prosiding` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_induk` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `halaman` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lokasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bahasa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `golongan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_klasifikasi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `sumber_pustaka` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abstraksi` text COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pengadaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_udc` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `x` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`prosiding_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of prosiding
-- ----------------------------
INSERT INTO prosiding VALUES ('8', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO prosiding VALUES ('9', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO prosiding VALUES ('10', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO prosiding VALUES ('11', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO prosiding VALUES ('12', '', '', '2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `resensi`
-- ----------------------------
DROP TABLE IF EXISTS `resensi`;
CREATE TABLE `resensi` (
  `resensi_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`resensi_id`),
  KEY `resensi_id` (`resensi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of resensi
-- ----------------------------

-- ----------------------------
-- Table structure for `saran`
-- ----------------------------
DROP TABLE IF EXISTS `saran`;
CREATE TABLE `saran` (
  `saran_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `pengirim` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `komentar` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`saran_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of saran
-- ----------------------------

-- ----------------------------
-- Table structure for `tahukah`
-- ----------------------------
DROP TABLE IF EXISTS `tahukah`;
CREATE TABLE `tahukah` (
  `tahukah_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`tahukah_id`),
  KEY `tahukah_id` (`tahukah_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of tahukah
-- ----------------------------

-- ----------------------------
-- Table structure for `tamu`
-- ----------------------------
DROP TABLE IF EXISTS `tamu`;
CREATE TABLE `tamu` (
  `tamu_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `pengirim` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `komentar` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`tamu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of tamu
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `useractive` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user` (`username`),
  KEY `id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `usersonline`
-- ----------------------------
DROP TABLE IF EXISTS `usersonline`;
CREATE TABLE `usersonline` (
  `timestamp` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `file` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of usersonline
-- ----------------------------
