/*
Navicat MySQL Data Transfer

Source Server         : fajar
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : eis

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2012-12-14 15:13:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `absen`
-- ----------------------------
DROP TABLE IF EXISTS `absen`;
CREATE TABLE `absen` (
  `jabatan` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `tidak_hadir` smallint(6) DEFAULT NULL,
  `terlambat` smallint(6) DEFAULT NULL,
  `hadir` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`jabatan`,`tgl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of absen
-- ----------------------------

-- ----------------------------
-- Table structure for `agenda`
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `date` bigint(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES ('1353639458000', null, 'Meeting', 'Dengan deputi2', null);
INSERT INTO `agenda` VALUES ('1353813545000', null, 'istirahat', 'Dirumah sajalah', null);
INSERT INTO `agenda` VALUES ('1353900642000', null, 'Keluar', 'jakarta bandung', null);
INSERT INTO `agenda` VALUES ('1353998389000', null, 'Rapat internal', 'KEMENPERA<br />\r\nkikin', null);
INSERT INTO `agenda` VALUES ('1354257000000', null, 'Demo Aplikasi EIS', 'Tempat : Ruang Rapat 2 Lantai 2\r\nPembahasan: Draft Laporan Akhir dan Presentasi Sistem', null);
INSERT INTO `agenda` VALUES ('1354520545000', null, 'DINAS ', 'Ke Luar Kota Bandung', null);

-- ----------------------------
-- Table structure for `anggaran`
-- ----------------------------
DROP TABLE IF EXISTS `anggaran`;
CREATE TABLE `anggaran` (
  `id` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `tg_anggaran` decimal(12,2) DEFAULT NULL,
  `realisasi` int(11) DEFAULT NULL,
  `re_anggaran` decimal(12,2) DEFAULT NULL,
  `id_keg` int(11) DEFAULT NULL,
  `sasaran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anggaran
-- ----------------------------
INSERT INTO `anggaran` VALUES ('1', '2012', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO `anggaran` VALUES ('3', '2012', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO `anggaran` VALUES ('4', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO `anggaran` VALUES ('5', '2012', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO `anggaran` VALUES ('6', '2012', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO `anggaran` VALUES ('7', '2012', '20000', '229.71', null, null, '16', null);
INSERT INTO `anggaran` VALUES ('8', '2012', '230000', '1632.69', null, null, '17', null);
INSERT INTO `anggaran` VALUES ('9', '2012', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO `anggaran` VALUES ('10', '2012', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO `anggaran` VALUES ('11', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO `anggaran` VALUES ('12', '2012', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO `anggaran` VALUES ('13', '2012', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO `anggaran` VALUES ('14', '2012', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO `anggaran` VALUES ('15', '2012', null, '600.00', null, null, '27', null);
INSERT INTO `anggaran` VALUES ('16', '2012', null, '108.22', null, '36.13', '28', null);
INSERT INTO `anggaran` VALUES ('17', '2012', null, '35.04', null, '15.51', '30', null);
INSERT INTO `anggaran` VALUES ('18', '2012', null, '179.16', null, null, '31', null);
INSERT INTO `anggaran` VALUES ('19', '2012', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO `anggaran` VALUES ('20', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('22', '2011', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO `anggaran` VALUES ('23', '2011', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO `anggaran` VALUES ('24', '2011', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO `anggaran` VALUES ('25', '2011', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO `anggaran` VALUES ('26', '2011', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO `anggaran` VALUES ('27', '2011', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO `anggaran` VALUES ('28', '2011', '20000', '229.71', null, null, '16', null);
INSERT INTO `anggaran` VALUES ('29', '2011', '230000', '1632.69', null, null, '17', null);
INSERT INTO `anggaran` VALUES ('30', '2011', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO `anggaran` VALUES ('31', '2011', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO `anggaran` VALUES ('32', '2011', '9762', '333.50', null, '23.37', '22', null);
INSERT INTO `anggaran` VALUES ('33', '2011', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO `anggaran` VALUES ('34', '2011', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO `anggaran` VALUES ('35', '2011', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO `anggaran` VALUES ('36', '2011', null, '600.00', null, null, '27', null);
INSERT INTO `anggaran` VALUES ('37', '2011', null, '108.22', null, '36.13', '28', null);
INSERT INTO `anggaran` VALUES ('38', '2011', null, '35.04', null, '15.51', '30', null);
INSERT INTO `anggaran` VALUES ('39', '2011', null, '179.16', null, null, '31', null);
INSERT INTO `anggaran` VALUES ('40', '2011', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO `anggaran` VALUES ('41', '2011', '30600', '191.24', null, null, '39', null);
INSERT INTO `anggaran` VALUES ('42', '2010', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO `anggaran` VALUES ('43', '2010', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO `anggaran` VALUES ('44', '2010', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO `anggaran` VALUES ('45', '2010', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO `anggaran` VALUES ('46', '2010', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO `anggaran` VALUES ('47', '2010', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO `anggaran` VALUES ('48', '2010', '20000', '229.71', null, null, '16', null);
INSERT INTO `anggaran` VALUES ('49', '2010', '230000', '1632.69', null, null, '17', null);
INSERT INTO `anggaran` VALUES ('50', '2010', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO `anggaran` VALUES ('51', '2010', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO `anggaran` VALUES ('52', '2010', '9762', '333.50', null, '23.37', '22', null);
INSERT INTO `anggaran` VALUES ('53', '2010', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO `anggaran` VALUES ('54', '2010', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO `anggaran` VALUES ('55', '2010', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO `anggaran` VALUES ('56', '2010', null, '600.00', null, null, '27', null);
INSERT INTO `anggaran` VALUES ('57', '2010', null, '108.22', null, '36.13', '28', null);
INSERT INTO `anggaran` VALUES ('58', '2010', null, '35.04', null, '15.51', '30', null);
INSERT INTO `anggaran` VALUES ('59', '2010', null, '179.16', null, null, '31', null);
INSERT INTO `anggaran` VALUES ('60', '2010', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO `anggaran` VALUES ('61', '2010', '30600', '191.24', null, null, '39', null);
INSERT INTO `anggaran` VALUES ('62', null, '1', '1.00', '1', '1.00', null, null);
INSERT INTO `anggaran` VALUES ('73', '2012', '172', '1162.71', '0', '156.22', '8', '100');
INSERT INTO `anggaran` VALUES ('79', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('80', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('81', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('82', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('83', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('84', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('87', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO `anggaran` VALUES ('88', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO `anggaran` VALUES ('89', '2012', '0', '0.00', '0', '0.00', '18', null);
INSERT INTO `anggaran` VALUES ('90', '2012', '0', '0.00', '0', '0.00', '18', null);
INSERT INTO `anggaran` VALUES ('91', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO `anggaran` VALUES ('93', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('94', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('95', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO `anggaran` VALUES ('96', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('97', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('98', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('99', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('100', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('101', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('102', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('111', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO `anggaran` VALUES ('113', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('114', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO `anggaran` VALUES ('115', '2012', '30600', '191.24', '0', '0.00', '39', null);

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(120) NOT NULL,
  `last_activity` bigint(20) NOT NULL,
  `user_data` longtext NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('69f1168484324308a1012ed3b36c5469', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0', '1355472112', 'a:6:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";i:1;s:7:\"id_user\";N;s:5:\"group\";s:5:\"Admin\";s:8:\"username\";s:5:\"admin\";s:12:\"nama_lengkap\";s:5:\"Admin\";}');

-- ----------------------------
-- Table structure for `gis`
-- ----------------------------
DROP TABLE IF EXISTS `gis`;
CREATE TABLE `gis` (
  `no` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `id_gis_group` int(11) NOT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no`,`id_gis_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gis
-- ----------------------------
INSERT INTO `gis` VALUES ('1', 'PSU Kawasan Perumahan dan Permukiman', '1.098565', '104.030113', 'Kota Batam', null, '39', null, null, null, 'DAK');
INSERT INTO `gis` VALUES ('2', '- Pembangunan baru', '1.559866', '104.498291', 'Kab. Bintan, Kab Tanjung Pinang, Kota Batam, Kota Tanjung Pinang', null, '8', null, null, null, 'Rusunawa');
INSERT INTO `gis` VALUES ('2', 'PSU Kawasan Perumahan dan Permukiman', '-6.191755', '106.848', 'Ciliwung', 'Kegiatan', '39', 'DKI', 'Jakarta', '1000', 'DAK');
INSERT INTO `gis` VALUES ('4', '- Pembangunan baru', '4', '5', '3', '7', '8', '1', '2', '6', 'PSU');
INSERT INTO `gis` VALUES ('6', 'Fasilitasi Pembangunan PSU kawasan Perumahan dan Permukiman', '1.34021', '104.02771', 'Kab. Bintan, Kab. Natuna, Kota batam', null, '11', null, null, null, 'PSU');

-- ----------------------------
-- Table structure for `gis_group`
-- ----------------------------
DROP TABLE IF EXISTS `gis_group`;
CREATE TABLE `gis_group` (
  `id_gis_group` varchar(1) NOT NULL,
  `gis_group` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_gis_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gis_group
-- ----------------------------
INSERT INTO `gis_group` VALUES ('1', 'DAK');
INSERT INTO `gis_group` VALUES ('2', 'Rusunawa');
INSERT INTO `gis_group` VALUES ('3', 'PSU');

-- ----------------------------
-- Table structure for `kegiatan`
-- ----------------------------
DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `no` varchar(4) DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `sat` varchar(30) DEFAULT NULL,
  `sasaran2` int(11) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `font` varchar(255) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO `kegiatan` VALUES ('1', '0', '1', 'A', 'BA 091', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('2', '0', '2', 'B', 'BA 999', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('3', '1', '1', 'I', 'PROGRAM DUKUNGAN DAN MANAJEMEN TUGAS TEKNIS LAINNYA', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('4', '3', '1', null, 'Dukungan Manajemen dan Pelaksanaan Tugas Teknis Lainnya', 'Tahun', null, 'parent', 'normal', null, null);
INSERT INTO `kegiatan` VALUES ('5', '1', '2', 'II', 'PROGRAM PENGEMBANGAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('6', '5', '1', '1', 'Pembangunan Rumah Susun Sederhana Sewa ', 'TB', '380', 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('7', '6', '1', null, 'a. Penyedia Rusunawa', 'TB', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('8', '7', '1', null, '- Pembangunan baru', 'TB', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('9', '7', '2', null, '- Luncuran', 'TB', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('10', '6', '2', null, 'b. Pusat Pengembangan Perumahan (rehab) ', 'TB', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('11', '5', '2', '2', 'Fasilitasi Pembangunan PSU kawasan Perumahan dan Permukiman', 'Unit', '700000', 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('12', '5', '3', '3', 'Fasilitasi dan Stimulasi Penataan Lingkungan Permukiman Kumuh', 'Ha', '655', 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('13', '5', '4', '4', 'Pembangunan Rumah Khusus', 'Unit', '5000', 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('14', '5', '5', '5', 'DIREKTIF PRESIDEN', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('15', '14', '1', 'a.', 'Program Pro-Rakyat Klaster IV: Rumah Sangat Murah', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('16', '15', '1', '5.1.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya</i>', 'Unit', '50000', null, null, null, null);
INSERT INTO `kegiatan` VALUES ('17', '15', '2', '5.2.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', '50000', null, null, null, null);
INSERT INTO `kegiatan` VALUES ('18', '15', '3', '5.3.', '<i>Fasilitasi Pembangunan PSU Perumhan Swadaya</i>', 'Unit', '50000', null, null, null, null);
INSERT INTO `kegiatan` VALUES ('19', '15', '4', '5.4.', '<i>Fasilitasi Pra-sertifikasi dan Pendampingan Pasca-sertifikasi</i>', 'Bidang', '30000', null, null, null, null);
INSERT INTO `kegiatan` VALUES ('20', '14', '2', 'b. ', 'Penanganan Rumah bagi Warga Baru di Perbatasan Prov NTT - Timor Leste', 'Unit', null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('21', '20', '1', '5.5.', '<i>Pembangunan Rumah Khusus</i> ', 'Unit', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('22', '20', '2', '5.6.', '<i>Pembanguna PSU Kawasan Perumahan dan Permukiman</i>', 'Unit', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('23', '20', '3', '5.7.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya (pembangunan baru)</i>', 'Unit', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('24', '20', '4', '5.8.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('25', '20', '5', '5.9.', '<i>Fasilitasi Pembangunan PSU Perumahan Swadaya</i>', 'Unit', null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('26', '5', '6', '6', 'PENUGASAN KHUSUS', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('27', '26', '1', null, 'Penanganan Ciliwung', null, null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('28', '5', '7', '7', 'Pengembangan Kebijakan dan Koordinasi Pelaksanaan Kebijakan Perumahan dan Permukiman', 'Peraturan Perundangan', '20', 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('29', '1', '3', 'III', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('30', '29', '1', '1', 'Pengembangan kebijakan dan Koordinasi Pelaksanaan Kebijakan Pembiayaan Perumahan dan Permukiman', null, '10', null, null, null, null);
INSERT INTO `kegiatan` VALUES ('31', '29', '2', '2', 'PNBP BLU Lukuiditas Pembiayaan Perumahan', null, null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('32', '2', '1', 'I', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);
INSERT INTO `kegiatan` VALUES ('33', '32', '1', '1', 'Masa Transisi', null, '544802', null, null, null, null);
INSERT INTO `kegiatan` VALUES ('34', '33', '1', null, '- Rekonsiliasi 2008 dan 2009', null, null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('35', '33', '2', null, '- Tunggakan penerbitan tahun 2009', null, null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('36', '33', '3', null, '- Target 2010 (Rumah Sejahtera Tapak + Sarusunami)', null, null, null, null, null, null);
INSERT INTO `kegiatan` VALUES ('37', '32', '2', '2', 'Fasilitas Likuiditas', null, '1350000', null, null, null, null);
INSERT INTO `kegiatan` VALUES ('38', '2', '2', 'II', 'DAK BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);

-- ----------------------------
-- Table structure for `kegiatan_mon`
-- ----------------------------
DROP TABLE IF EXISTS `kegiatan_mon`;
CREATE TABLE `kegiatan_mon` (
  `jenis_keg` varchar(15) DEFAULT NULL,
  `nama_keg` varchar(200) NOT NULL,
  `anggaran` decimal(16,0) DEFAULT NULL,
  `bagian` varchar(30) NOT NULL,
  `tahun` smallint(6) NOT NULL,
  `unit_kerja` varchar(50) NOT NULL,
  PRIMARY KEY (`nama_keg`,`bagian`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kegiatan_mon
-- ----------------------------
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Bimbingan Teknis Dekonsentrasi Lingkup Kemenpera Tahun 2012', '800000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Bimbingan Teknis Dekonsentrasi Lingkup Kemenpera Tahun 2012', '800000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Bimbingan Teknis Penerapan E-Procurement Kementerian Perumahan Rakyat', '1328500000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Bimbingan Teknis Penerapan E-Procurement Kementerian Perumahan Rakyat', '1328500000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Bimbingan Teknis Penerapan Sistem Akuntabilitas Instansi Pemerintah Kemenpera', '750000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Bimbingan Teknis Penerapan Sistem Akuntabilitas Instansi Pemerintah Kemenpera', '750000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Kelembagaan Pemangku Kepentingan', '11857870000', 'Anggaran', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Operasionalisasi LPSE Kementerian Perumahan Rakyat', '1300000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Operasionalisasi LPSE Kementerian Perumahan Rakyat', '1300000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Pelaksanaan Dekonsentrasi Lingkup Kemenpera Tahun 2012', '15000000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Pelaksanaan Dekonsentrasi Lingkup Kemenpera Tahun 2012', '15000000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Pelaksanaan Kegiatan Kelompok Kerja Perumahan Tahun 2012', '1650000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Pelaksanaan Kegiatan Kelompok Kerja Perumahan Tahun 2012', '1650000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Pengelolaan Data dan Penyajian Informasi', '1327238000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Dukungan Pengelolaan Data dan Penyajian Informasi', '1327238000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Evaluasi Pelaksanaan Anggaran Tahun Anggaran 2012', '792500000', 'Anggaran', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Fasilitasi dan Koordinasi Pelaksanaan Pembangunan Bidang Perumahan Rakyat Tahun 2012', '3572291000', 'Anggaran', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Koordinasi Perencanaan dan Pelaksanaan Kebijakan, Program dan Kegiatan Pembangunan Perumahan (RAKORPERA) Tahun 2011', '700000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Koordinasi Perencanaan dan Pelaksanaan Kebijakan, Program dan Kegiatan Pembangunan Perumahan (RAKORPERA) Tahun 2011', '700000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Koordinasi Perencanaan Penganggaran Tahun Anggaran 2012', '825000000', 'Anggaran', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Mid-Term Review Pencapaian Sasaran RPJMN dan Renstra 2010-2014', '700000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Mid-Term Review Pencapaian Sasaran RPJMN dan Renstra 2010-2014', '700000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Monitoring dan Evaluasi Kinerja Kementerian Perumahan Rakyat', '670000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Monitoring dan Evaluasi Kinerja Kementerian Perumahan Rakyat', '670000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Monitoring dan Evaluasi Penyelenggaraan Dekonsentrasi Bidang Perumahan dan Permukiman', '854000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Monitoring dan Evaluasi Penyelenggaraan Dekonsentrasi Bidang Perumahan dan Permukiman Tahun 2012', '854000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Monitoring dan Evaluasi Penyelenggaraan Dekonsentrasi Bidang Perumahan dan Permukiman Tahun 2012', '854000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Aplikasi Eksekutif (Dashboard)', '850000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Aplikasi Eksekutif (Dashboard)', '850000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Content Management System Kemenpera', '850000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Content Management System Kemenpera', '850000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi IT Asset Management', '850000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi IT Asset Management', '850000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Lelang (e-Controlling)', '850000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Lelang (e-Controlling)', '850000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Proyek (e-Progress)', '850000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Proyek (e-Progress)', '850000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Perkantoran (e-Office)', '850000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Perkantoran (e-Office)', '850000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pembangunan Sistem Informasi Perumahan (e-Housing)', '1795280000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pembangunan Sistem Informasi Perumahan (e-Housing)', '1795280000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pembinaan Penyusunan RKA-KL Kemenpera Tahun 2012', '1045000000', 'Anggaran', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pemeliharaan Sistem Jaringan Teknologi Informasi Kemenpera', '1209500000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pemeliharaan Sistem Jaringan Teknologi Informasi Kemenpera', '1209500000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pemeriksaan Keamanan Jaringan TIK', '1279937000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pemeriksaan Keamanan Jaringan TIK', '1279937000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pengembangan Jaringan Informasi Perumahan Berbasis Spasial', '850000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pengembangan Jaringan Informasi Perumahan Berbasis Spasial', '850000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pengembangan Sistem Informasi Kepegawaian Kementerian Perumahan Rakyat Tahun\nAnggaran 2012\n', '800000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Kontraktual', 'Pengembangan Sistem Informasi Kepegawaian Kementerian Perumahan Rakyat Tahun\nAnggaran 2012\n', '800000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pengukuran Kinerja Kemenpera dengan Balanced Scorecard', '1200000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Pengukuran Kinerja Kemenpera dengan Balanced Scorecard', '1200000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Peningkatan Kapasitas Pengelola Jaringan dan Sistem Informasi di Lingkungan Kemenpera', '1426429000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Peningkatan Kapasitas Pengelola Jaringan dan Sistem Informasi di Lingkungan Kemenpera', '1426429000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Kegiatan Yang Dibiayai PHLN Tahun Anggaran 2012', '808000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Kegiatan Yang Dibiayai PHLN Tahun Anggaran 2012', '808000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Tahun 2013', '1000000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Tahun 2013', '1000000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyiapan Hibah Daerah Bidang Perumahan dan Kawasan Permukiman Tahun Anggaran 2012', '655000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyiapan Hibah Daerah Bidang Perumahan dan Kawasan Permukiman Tahun Anggaran 2012', '655000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyiapan Kegiatan Dekonsentrasi Lingkup Kemenpera Tahun 2013', '1150000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyiapan Kegiatan Dekonsentrasi Lingkup Kemenpera Tahun 2013', '1150000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Evaluasi Kinerja Kementerian Perumahan Rakyat', '600000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Evaluasi Kinerja Kementerian Perumahan Rakyat', '600000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Biro Perencanaan dan Anggaran Tahun 2012', '450000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Biro Perencanaan dan Anggaran Tahun 2012', '450000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Kementerian Tahun 2012', '470000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Kementerian Tahun 2012', '470000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Sekretariat Tahun 2012', '360000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Sekretariat Tahun 2012', '360000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Majalah Perumahan dan Permukiman Kemenpera', '600000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Majalah Perumahan dan Permukiman Kemenpera', '600000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Manajemen Pengetahuan dalam Kerangka Persiapan RPJMN 2015-2019', '1250000000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Manajemen Pengetahuan dalam Kerangka Persiapan RPJMN 2015-2019', '1250000000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Panduan Evaluasi Kinerja di LIngkungan Kementerian Perumahan Rakyat', '557500000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Panduan Evaluasi Kinerja di LIngkungan Kementerian Perumahan Rakyat', '557500000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Rencana Kerja Kementerian Perumahan Rakyat Tahun 2013', '600000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Penyusunan Rencana Kerja Kementerian Perumahan Rakyat Tahun 2013', '600000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Rapat Konsultasi Regional Tahun 2012', '2000000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Rapat Konsultasi Regional Tahun 2012', '2000000000', 'Program', '2013', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Review dan Penyusunan Kebijakan IT', '1455648000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Review dan Penyusunan Kebijakan IT', '1455648000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Sosialisasi dan Pelatihan Penyusunan Anggaran TA 2013', '1142500000', 'Anggaran', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Sosialisasi dan Pelatihan Penyusunan Satuan Biaya Keluaran TA 2013', '500000000', 'Anggaran', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Sosialisasi Pengamanan Jaringan Sistem Informasi di Lingkungan Kemenpera', '1467307000', 'Data dan Pelaporan', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Sosialisasi Pengamanan Jaringan Sistem Informasi di Lingkungan Kemenpera', '1467307000', 'Data dan Pelaporan', '2014', 'SEKRETARIAT');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Tim Sekretariat pendukung Program Rumah Murah dan Rumah Sangat Murah', '1200000000', 'Program', '2012', '');
INSERT INTO `kegiatan_mon` VALUES ('Swakelola', 'Tim Sekretariat pendukung Program Rumah Murah dan Rumah Sangat Murah', '1200000000', 'Program', '2013', '');

-- ----------------------------
-- Table structure for `kota`
-- ----------------------------
DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nm_kota` varchar(50) DEFAULT NULL,
  `id_prov` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO `kota` VALUES ('1', 'Kabupaten Aceh Barat', '11');
INSERT INTO `kota` VALUES ('2', 'Kabupaten Aceh Barat Daya', '11');
INSERT INTO `kota` VALUES ('3', 'Kabupaten Aceh Besar', '11');
INSERT INTO `kota` VALUES ('4', 'Kabupaten Aceh Jaya', '11');
INSERT INTO `kota` VALUES ('5', 'Kabupaten Aceh Selatan', '11');
INSERT INTO `kota` VALUES ('6', 'Kabupaten Aceh Singkil', '11');
INSERT INTO `kota` VALUES ('7', 'Kabupaten Aceh Tamiang', '11');
INSERT INTO `kota` VALUES ('8', 'Kabupaten Aceh Tengah', '11');
INSERT INTO `kota` VALUES ('9', 'Kabupaten Aceh Tenggara', '11');
INSERT INTO `kota` VALUES ('10', 'Kabupaten Aceh Timur', '11');
INSERT INTO `kota` VALUES ('11', 'Kabupaten Aceh Utara', '11');
INSERT INTO `kota` VALUES ('12', 'Kabupaten Bener Meriah', '11');
INSERT INTO `kota` VALUES ('13', 'Kabupaten Bireun', '11');
INSERT INTO `kota` VALUES ('14', 'Kabupaten Gayo Lues', '11');
INSERT INTO `kota` VALUES ('15', 'Kabupaten Nagan Raya', '11');
INSERT INTO `kota` VALUES ('16', 'Kabupaten Pidie', '11');
INSERT INTO `kota` VALUES ('17', 'Kabupaten Pidie Jaya', '11');
INSERT INTO `kota` VALUES ('18', 'Kabupaten Simelue', '11');
INSERT INTO `kota` VALUES ('19', 'Kota Banda Aceh', '11');
INSERT INTO `kota` VALUES ('20', 'Kota Langsa', '11');
INSERT INTO `kota` VALUES ('21', 'Kota Lhokseumawe', '11');
INSERT INTO `kota` VALUES ('22', 'Kota Sabang', '11');
INSERT INTO `kota` VALUES ('23', 'Kota Subulussalam', '11');
INSERT INTO `kota` VALUES ('24', 'Kabupaten Asahan', '12');
INSERT INTO `kota` VALUES ('25', 'Kabupaten Batubara', '12');
INSERT INTO `kota` VALUES ('26', 'Kabupaten Dairi', '12');
INSERT INTO `kota` VALUES ('27', 'Kabupaten Deli Serdang', '12');
INSERT INTO `kota` VALUES ('28', 'Kabupaten Humbang Hasundutan', '12');
INSERT INTO `kota` VALUES ('29', 'Kabupaten Karo', '12');
INSERT INTO `kota` VALUES ('30', 'Kabupaten Labuhanbatu', '12');
INSERT INTO `kota` VALUES ('31', 'Kabupaten Labuhanbatu Selatan', '12');
INSERT INTO `kota` VALUES ('32', 'Kabupaten Labuhanbatu Utara', '12');
INSERT INTO `kota` VALUES ('33', 'Kabupaten Langkat', '12');
INSERT INTO `kota` VALUES ('34', 'Kabupaten Mandailing Natal', '12');
INSERT INTO `kota` VALUES ('35', 'Kabupaten Nias', '12');
INSERT INTO `kota` VALUES ('36', 'Kabupaten Nias Barat', '12');
INSERT INTO `kota` VALUES ('37', 'Kabupaten Nias Selatan', '12');
INSERT INTO `kota` VALUES ('38', 'Kabupaten Nias Utara', '12');
INSERT INTO `kota` VALUES ('39', 'Kabupaten Padang Lawas', '12');
INSERT INTO `kota` VALUES ('40', 'Kabupaten Padang Lawas Utara', '12');
INSERT INTO `kota` VALUES ('41', 'Kabupaten Pakpak Bharat', '12');
INSERT INTO `kota` VALUES ('42', 'Kabupaten Samosir', '12');
INSERT INTO `kota` VALUES ('43', 'Kabupaten Serdang Begadai', '12');
INSERT INTO `kota` VALUES ('44', 'Kabupaten Simalungun', '12');
INSERT INTO `kota` VALUES ('45', 'Kabupaten Tapanuli Selatan', '12');
INSERT INTO `kota` VALUES ('46', 'Kabupaten Tapanuli Utara', '12');
INSERT INTO `kota` VALUES ('47', 'Kabupaten Toba Samosir', '12');
INSERT INTO `kota` VALUES ('48', 'Kota Binjai', '12');
INSERT INTO `kota` VALUES ('49', 'Kota Gunungsitoli', '12');
INSERT INTO `kota` VALUES ('50', 'Kota Medan', '12');
INSERT INTO `kota` VALUES ('51', 'Kota Padangsidempuan', '12');
INSERT INTO `kota` VALUES ('52', 'Kota Pematangsiantar', '12');
INSERT INTO `kota` VALUES ('53', 'Kota Sibolga', '12');
INSERT INTO `kota` VALUES ('54', 'Kota Tanjungbalai', '12');
INSERT INTO `kota` VALUES ('55', 'Kota Tebing Tinggi', '12');
INSERT INTO `kota` VALUES ('56', 'Kabupaten Agam', '13');
INSERT INTO `kota` VALUES ('57', 'Kabupaten Dhamasraya', '13');
INSERT INTO `kota` VALUES ('58', 'Kabupaten Kepulauan Mentawai', '13');
INSERT INTO `kota` VALUES ('59', 'Kabupaten Lima Puluh Kota', '13');
INSERT INTO `kota` VALUES ('60', 'Kabupaten Padang Pariaman', '13');
INSERT INTO `kota` VALUES ('61', 'Kabupaten Pasaman', '13');
INSERT INTO `kota` VALUES ('62', 'Kabupaten Pasaman Barat', '13');
INSERT INTO `kota` VALUES ('63', 'Kabupaten Pesisir Selatan', '13');
INSERT INTO `kota` VALUES ('64', 'Kabupaten Sijunjung', '13');
INSERT INTO `kota` VALUES ('65', 'Kabupaten Solok', '13');
INSERT INTO `kota` VALUES ('66', 'Kabupaten Solok Selatan', '13');
INSERT INTO `kota` VALUES ('67', 'Kabupaten Tanah Datar', '13');
INSERT INTO `kota` VALUES ('68', 'Kota Bukit Tinggi', '13');
INSERT INTO `kota` VALUES ('69', 'Kota Padang', '13');
INSERT INTO `kota` VALUES ('70', 'Kota Padangpanjang', '13');
INSERT INTO `kota` VALUES ('71', 'Kota Pariaman', '13');
INSERT INTO `kota` VALUES ('72', 'Kota Payakumbuh', '13');
INSERT INTO `kota` VALUES ('73', 'Kota Sawahlunto', '13');
INSERT INTO `kota` VALUES ('74', 'Kota Solok', '13');
INSERT INTO `kota` VALUES ('75', 'Kabupaten Bengkalis', '14');
INSERT INTO `kota` VALUES ('76', 'Kabupaten Indragiri Hilir', '14');
INSERT INTO `kota` VALUES ('77', 'Kabupaten Indragiri Hulu', '14');
INSERT INTO `kota` VALUES ('78', 'Kabupaten Kampar', '14');
INSERT INTO `kota` VALUES ('79', 'Kabupaten Kuantan Singingi', '14');
INSERT INTO `kota` VALUES ('80', 'Kabupaten Pelalawan', '14');
INSERT INTO `kota` VALUES ('81', 'Kabupaten Rokan Hilir', '14');
INSERT INTO `kota` VALUES ('82', 'Kabupaten Rokan Hulu', '14');
INSERT INTO `kota` VALUES ('83', 'Kabupaten Siak', '14');
INSERT INTO `kota` VALUES ('84', 'Kabupaten Kepulauan Meranti', '14');
INSERT INTO `kota` VALUES ('85', 'Kota Dumai', '14');
INSERT INTO `kota` VALUES ('86', 'Kota Pekanbaru', '14');
INSERT INTO `kota` VALUES ('87', 'Kabupaten Batanghari', '15');
INSERT INTO `kota` VALUES ('88', 'Kabupaten Bungo', '15');
INSERT INTO `kota` VALUES ('89', 'Kabupaten Kerinci', '15');
INSERT INTO `kota` VALUES ('90', 'Kabupaten Merangin', '15');
INSERT INTO `kota` VALUES ('91', 'Kabupaten Muaro Jambi', '15');
INSERT INTO `kota` VALUES ('92', 'Kabupaten Sarolangun', '15');
INSERT INTO `kota` VALUES ('93', 'Kabupaten Tanjung Jabung Barat', '15');
INSERT INTO `kota` VALUES ('94', 'Kabupaten Tanjung Jabung Timur', '15');
INSERT INTO `kota` VALUES ('95', 'Kabupaten Tebo', '15');
INSERT INTO `kota` VALUES ('96', 'Kota Jambi', '15');
INSERT INTO `kota` VALUES ('97', 'Kota Sungai Penuh', '15');
INSERT INTO `kota` VALUES ('98', 'Kabupaten Banyasin', '16');
INSERT INTO `kota` VALUES ('99', 'Kabupaten Empat Lawang', '16');
INSERT INTO `kota` VALUES ('100', 'Kabupaten Lahat', '16');
INSERT INTO `kota` VALUES ('101', 'Kabupaten Muara Enim', '16');
INSERT INTO `kota` VALUES ('102', 'Kabupaten Musi Banyuasin', '16');
INSERT INTO `kota` VALUES ('103', 'Kabupaten Musi Rawas', '16');
INSERT INTO `kota` VALUES ('104', 'Kabupaten Ogan Hilir', '16');
INSERT INTO `kota` VALUES ('105', 'Kabupaten Ogan Komering llir', '16');
INSERT INTO `kota` VALUES ('106', 'Kabupaten Ogan Komering Ulu', '16');
INSERT INTO `kota` VALUES ('107', 'Kabupaten Ogan Komering Ulu Selatan', '16');
INSERT INTO `kota` VALUES ('108', 'Kabupaten Ogan Komering Ulu Timur', '16');
INSERT INTO `kota` VALUES ('109', 'Kota Lubuklinggau', '16');
INSERT INTO `kota` VALUES ('110', 'Kota Pagar Alam', '16');
INSERT INTO `kota` VALUES ('111', 'Kota Palembang', '16');
INSERT INTO `kota` VALUES ('112', 'Kota Prabumulih', '16');
INSERT INTO `kota` VALUES ('113', 'Kabupaten Bengkulu Selatan', '17');
INSERT INTO `kota` VALUES ('114', 'Kabupaten Bengkulu Tengah', '17');
INSERT INTO `kota` VALUES ('115', 'Kabupaten Bengkulu Utara', '17');
INSERT INTO `kota` VALUES ('116', 'Kabupaten Kaur', '17');
INSERT INTO `kota` VALUES ('117', 'Kabupaten Kepahiang', '17');
INSERT INTO `kota` VALUES ('118', 'Kabupaten Lebong', '17');
INSERT INTO `kota` VALUES ('119', 'Kabupaten Mukomuko', '17');
INSERT INTO `kota` VALUES ('120', 'Kabupaten Rejang Lebong', '17');
INSERT INTO `kota` VALUES ('121', 'Kabupaten Seluma', '17');
INSERT INTO `kota` VALUES ('122', 'Kota Bengkulu', '17');
INSERT INTO `kota` VALUES ('123', 'Kabupaten Lampung Barat', '18');
INSERT INTO `kota` VALUES ('124', 'Kabupaten Lampung Selatan', '18');
INSERT INTO `kota` VALUES ('125', 'Kabupaten Lampung Tengah', '18');
INSERT INTO `kota` VALUES ('126', 'Kabupaten Lampung Timur', '18');
INSERT INTO `kota` VALUES ('127', 'Kabupaten Lampung Utara', '18');
INSERT INTO `kota` VALUES ('128', 'Kabupaten Mesuji', '18');
INSERT INTO `kota` VALUES ('129', 'Kabupaten Pesawaran', '18');
INSERT INTO `kota` VALUES ('130', 'Kabupaten Pringsewu', '18');
INSERT INTO `kota` VALUES ('131', 'Kabupaten Tanggamus', '18');
INSERT INTO `kota` VALUES ('132', 'Kabupaten Tulang Bawang', '18');
INSERT INTO `kota` VALUES ('133', 'Kabupaten Tulang Bawang Barat', '18');
INSERT INTO `kota` VALUES ('134', 'Kabupaten Way Kanan', '18');
INSERT INTO `kota` VALUES ('135', 'Kota Bandar Lampung', '18');
INSERT INTO `kota` VALUES ('136', 'Kota Metro', '18');
INSERT INTO `kota` VALUES ('137', 'Kabupaten Pesisir Barat', '18');
INSERT INTO `kota` VALUES ('138', 'Kabupaten Bangka', '19');
INSERT INTO `kota` VALUES ('139', 'Kabupaten Bangka Barat', '19');
INSERT INTO `kota` VALUES ('140', 'Kabupaten Bangka Selatan', '19');
INSERT INTO `kota` VALUES ('141', 'Kabupaten Bangka Tengah', '19');
INSERT INTO `kota` VALUES ('142', 'Kabupaten Belitung', '19');
INSERT INTO `kota` VALUES ('143', 'Kabupaten Belitung Timur', '19');
INSERT INTO `kota` VALUES ('144', 'Kota Pangkal Pinang', '19');
INSERT INTO `kota` VALUES ('145', 'Kabupaten Bintan', '21');
INSERT INTO `kota` VALUES ('146', 'Kabupaten Karimun', '21');
INSERT INTO `kota` VALUES ('147', 'Kabupaten Kepulauan Anambas', '21');
INSERT INTO `kota` VALUES ('148', 'Kabupaten Lingga', '21');
INSERT INTO `kota` VALUES ('149', 'Kabupaten Natuna', '21');
INSERT INTO `kota` VALUES ('150', 'Kota Batam', '21');
INSERT INTO `kota` VALUES ('151', 'Kota Tanjung Pinang', '21');
INSERT INTO `kota` VALUES ('152', 'Kabupaten Administrasi Kepulauan Seribu', '31');
INSERT INTO `kota` VALUES ('153', 'Kota Administrasi Jakarta Barat', '31');
INSERT INTO `kota` VALUES ('154', 'Kota Administrasi Jakarta Pusat', '31');
INSERT INTO `kota` VALUES ('155', 'Kota Administrasi Jakarta Selatan', '31');
INSERT INTO `kota` VALUES ('156', 'Kota Administrasi Jakarta Timur', '31');
INSERT INTO `kota` VALUES ('157', 'Kota Administrasi Jakarta Utara', '31');
INSERT INTO `kota` VALUES ('158', 'Kabupaten Bandung', '32');
INSERT INTO `kota` VALUES ('159', 'Kabupaten Bandung Barat', '32');
INSERT INTO `kota` VALUES ('160', 'Kabupaten Bekasi', '32');
INSERT INTO `kota` VALUES ('161', 'Kabupaten Bogor', '32');
INSERT INTO `kota` VALUES ('162', 'Kabupaten Ciamis', '32');
INSERT INTO `kota` VALUES ('163', 'Kabupaten Cianjur', '32');
INSERT INTO `kota` VALUES ('164', 'Kabupaten Cirebon', '32');
INSERT INTO `kota` VALUES ('165', 'Kabupaten Garut', '32');
INSERT INTO `kota` VALUES ('166', 'Kabupaten Indramayu', '32');
INSERT INTO `kota` VALUES ('167', 'Kabupaten Karawang', '32');
INSERT INTO `kota` VALUES ('168', 'Kabupaten Kuningan', '32');
INSERT INTO `kota` VALUES ('169', 'Kabupaten Majalengka', '32');
INSERT INTO `kota` VALUES ('170', 'Kabupaten Purwakarta', '32');
INSERT INTO `kota` VALUES ('171', 'Kabupaten Subang', '32');
INSERT INTO `kota` VALUES ('172', 'Kabupaten Sukabumi', '32');
INSERT INTO `kota` VALUES ('173', 'Kabupaten Sumedang', '32');
INSERT INTO `kota` VALUES ('174', 'Kabupaten Tasikmalaya', '32');
INSERT INTO `kota` VALUES ('175', 'Kota Bandung', '32');
INSERT INTO `kota` VALUES ('176', 'Kota Banjar', '32');
INSERT INTO `kota` VALUES ('177', 'Kota Bekasi', '32');
INSERT INTO `kota` VALUES ('178', 'Kota Bogor', '32');
INSERT INTO `kota` VALUES ('179', 'Kota Cimahi', '32');
INSERT INTO `kota` VALUES ('180', 'Kota Cirebon', '32');
INSERT INTO `kota` VALUES ('181', 'Kota Depok', '32');
INSERT INTO `kota` VALUES ('182', 'Kota Sukabumi', '32');
INSERT INTO `kota` VALUES ('183', 'Kota Tasikmalaya', '32');
INSERT INTO `kota` VALUES ('184', 'Kabupaten Pangandaran', '32');
INSERT INTO `kota` VALUES ('185', 'Kabupaten Banjarnegara', '33');
INSERT INTO `kota` VALUES ('186', 'Kabupaten Banyumas', '33');
INSERT INTO `kota` VALUES ('187', 'Kabupaten Batang', '33');
INSERT INTO `kota` VALUES ('188', 'Kabupaten Blora', '33');
INSERT INTO `kota` VALUES ('189', 'Kabupaten Boyolali', '33');
INSERT INTO `kota` VALUES ('190', 'Kabupaten Brebes', '33');
INSERT INTO `kota` VALUES ('191', 'Kabupaten Cilacap', '33');
INSERT INTO `kota` VALUES ('192', 'Kabupaten Demak', '33');
INSERT INTO `kota` VALUES ('193', 'Kabupaten Grobogan', '33');
INSERT INTO `kota` VALUES ('194', 'kabupaten Jepara', '33');
INSERT INTO `kota` VALUES ('195', 'Kabupaten Karanganyar', '33');
INSERT INTO `kota` VALUES ('196', 'Kabupaten Kebumen', '33');
INSERT INTO `kota` VALUES ('197', 'Kabupaten Kendal', '33');
INSERT INTO `kota` VALUES ('198', 'Kabupaten Klaten', '33');
INSERT INTO `kota` VALUES ('199', 'Kabupaten Kudus', '33');
INSERT INTO `kota` VALUES ('200', 'Kabupaten Magelang', '33');
INSERT INTO `kota` VALUES ('201', 'Kabupaten Pati', '33');
INSERT INTO `kota` VALUES ('202', 'Kabupaten Pekalongan', '33');
INSERT INTO `kota` VALUES ('203', 'Kabupaten Pemalang', '33');
INSERT INTO `kota` VALUES ('204', 'Kabupaten Purbalingga', '33');
INSERT INTO `kota` VALUES ('205', 'Kabupaten Purworejo', '33');
INSERT INTO `kota` VALUES ('206', 'Kabupaten Rembang', '33');
INSERT INTO `kota` VALUES ('207', 'Kabupaten Semarang', '33');
INSERT INTO `kota` VALUES ('208', 'Kabupaten Sragen', '33');
INSERT INTO `kota` VALUES ('209', 'Kabupaten Sukoharjo', '33');
INSERT INTO `kota` VALUES ('210', 'Kabupaten Tegal', '33');
INSERT INTO `kota` VALUES ('211', 'Kabupaten Temanggung', '33');
INSERT INTO `kota` VALUES ('212', 'Kabupaten Wonogiri', '33');
INSERT INTO `kota` VALUES ('213', 'Kabupaten Wonosobo', '33');
INSERT INTO `kota` VALUES ('214', 'Kota Magelang', '33');
INSERT INTO `kota` VALUES ('215', 'Kota Pekalongan', '33');
INSERT INTO `kota` VALUES ('216', 'Kota Salatiga', '33');
INSERT INTO `kota` VALUES ('217', 'Kota Semarang', '33');
INSERT INTO `kota` VALUES ('218', 'Kota Surakarta', '33');
INSERT INTO `kota` VALUES ('219', 'Kota Tegal', '33');
INSERT INTO `kota` VALUES ('220', 'Kabupaten Bantul', '34');
INSERT INTO `kota` VALUES ('221', 'Kabupaten Gunung Kidul', '34');
INSERT INTO `kota` VALUES ('222', 'Kabupaten Kulon Progo', '34');
INSERT INTO `kota` VALUES ('223', 'Kabupaten Sleman', '34');
INSERT INTO `kota` VALUES ('224', 'Kota Yogyakarta', '34');
INSERT INTO `kota` VALUES ('225', 'Kabupaten Bangkalan', '35');
INSERT INTO `kota` VALUES ('226', 'Kabupaten Banyuwangi', '35');
INSERT INTO `kota` VALUES ('227', 'Kabupaten Blitar', '35');
INSERT INTO `kota` VALUES ('228', 'Kabupaten Bojonegoro', '35');
INSERT INTO `kota` VALUES ('229', 'Kabupaten Bondowoso', '35');
INSERT INTO `kota` VALUES ('230', 'Kabupaten Gresik', '35');
INSERT INTO `kota` VALUES ('231', 'Kabupaten Jember', '35');
INSERT INTO `kota` VALUES ('232', 'Kabupaten Jombang', '35');
INSERT INTO `kota` VALUES ('233', 'Kabupaten Kediri', '35');
INSERT INTO `kota` VALUES ('234', 'Kabupaten Lamongan', '35');
INSERT INTO `kota` VALUES ('235', 'Kabupaten Lumajang', '35');
INSERT INTO `kota` VALUES ('236', 'Kabupaten Madiun', '35');
INSERT INTO `kota` VALUES ('237', 'Kabupaten Magetan', '35');
INSERT INTO `kota` VALUES ('238', 'Kabupaten Malang', '35');
INSERT INTO `kota` VALUES ('239', 'Kabupaten Mojokerto', '35');
INSERT INTO `kota` VALUES ('240', 'Kabupaten Nganjuk', '35');
INSERT INTO `kota` VALUES ('241', 'Kabupaten Ngawi', '35');
INSERT INTO `kota` VALUES ('242', 'Kabupaten Pacitan', '35');
INSERT INTO `kota` VALUES ('243', 'Kabupaten Pamekasan', '35');
INSERT INTO `kota` VALUES ('244', 'Kabupaten Pasuruan', '35');
INSERT INTO `kota` VALUES ('245', 'Kabupaten Ponorogo', '35');
INSERT INTO `kota` VALUES ('246', 'Kabupaten Probolinggo', '35');
INSERT INTO `kota` VALUES ('247', 'Kabupaten Sampang', '35');
INSERT INTO `kota` VALUES ('248', 'Kabupaten Sidoarjo', '35');
INSERT INTO `kota` VALUES ('249', 'Kabupaten Situbondo', '35');
INSERT INTO `kota` VALUES ('250', 'Kabupaten Sumenep', '35');
INSERT INTO `kota` VALUES ('251', 'Kabupaten Trenggalek', '35');
INSERT INTO `kota` VALUES ('252', 'Kabupaten Tuban', '35');
INSERT INTO `kota` VALUES ('253', 'Kabupaten Tulungagung', '35');
INSERT INTO `kota` VALUES ('254', 'Kota Batu', '35');
INSERT INTO `kota` VALUES ('255', 'Kota Blitar', '35');
INSERT INTO `kota` VALUES ('256', 'Kota Kediri', '35');
INSERT INTO `kota` VALUES ('257', 'Kota Madiun', '35');
INSERT INTO `kota` VALUES ('258', 'Kota Malang', '35');
INSERT INTO `kota` VALUES ('259', 'Kota Mojokerto', '35');
INSERT INTO `kota` VALUES ('260', 'Kota Pasuruan', '35');
INSERT INTO `kota` VALUES ('261', 'Kota Probolinggo', '35');
INSERT INTO `kota` VALUES ('262', 'Kota Surabaya', '35');
INSERT INTO `kota` VALUES ('263', 'Kabupaten Tangerang', '36');
INSERT INTO `kota` VALUES ('264', 'Kabupaten Serang', '36');
INSERT INTO `kota` VALUES ('265', 'Kabupaten Lebak', '36');
INSERT INTO `kota` VALUES ('266', 'Kabupaten Pandeglang', '36');
INSERT INTO `kota` VALUES ('267', 'Kota Tangerang', '36');
INSERT INTO `kota` VALUES ('268', 'Kota Serang', '36');
INSERT INTO `kota` VALUES ('269', 'Kota Cilegon', '36');
INSERT INTO `kota` VALUES ('270', 'Kota Tangerang Selatan', '36');
INSERT INTO `kota` VALUES ('271', 'Kabupaten Badung', '51');
INSERT INTO `kota` VALUES ('272', 'Kabupaten Bangli', '51');
INSERT INTO `kota` VALUES ('273', 'Kabupaten Buleleng', '51');
INSERT INTO `kota` VALUES ('274', 'Kabupaten Gianyar', '51');
INSERT INTO `kota` VALUES ('275', 'Kabupaten Jembrana', '51');
INSERT INTO `kota` VALUES ('276', 'Kabupaten Karangasem', '51');
INSERT INTO `kota` VALUES ('277', 'Kabupaten Klungkung', '51');
INSERT INTO `kota` VALUES ('278', 'Kabupaten Tabanan', '51');
INSERT INTO `kota` VALUES ('279', 'Kota Denpasar', '51');
INSERT INTO `kota` VALUES ('280', 'Kabupaten Bima', '52');
INSERT INTO `kota` VALUES ('281', 'Kabupaten Dompu', '52');
INSERT INTO `kota` VALUES ('282', 'Kabupaten Lombok Barat', '52');
INSERT INTO `kota` VALUES ('283', 'Kabupaten Lombok Tengah', '52');
INSERT INTO `kota` VALUES ('284', 'Kabupaten Lombok Timur', '52');
INSERT INTO `kota` VALUES ('285', 'Kabupaten Lombok Utara', '52');
INSERT INTO `kota` VALUES ('286', 'Kabupaten Sumbawa', '52');
INSERT INTO `kota` VALUES ('287', 'Kabupaten Sumbawa Barat', '52');
INSERT INTO `kota` VALUES ('288', 'Kota Bima', '52');
INSERT INTO `kota` VALUES ('289', 'Kota Mataram', '52');
INSERT INTO `kota` VALUES ('290', 'Kabupaten Alor', '53');
INSERT INTO `kota` VALUES ('291', 'Kabupaten Belu', '53');
INSERT INTO `kota` VALUES ('292', 'Kabupaten Ende', '53');
INSERT INTO `kota` VALUES ('293', 'Kabupaten Flores Timur', '53');
INSERT INTO `kota` VALUES ('294', 'Kabupaten Kupang', '53');
INSERT INTO `kota` VALUES ('295', 'Kabupaten Lembata', '53');
INSERT INTO `kota` VALUES ('296', 'Kabupaten Manggarai', '53');
INSERT INTO `kota` VALUES ('297', 'Kabupaten Manggarai Barat', '53');
INSERT INTO `kota` VALUES ('298', 'Kabupaten Manggarai Timur', '53');
INSERT INTO `kota` VALUES ('299', 'Kabupaten Ngada', '53');
INSERT INTO `kota` VALUES ('300', 'Kabupaten Nagekeo', '53');
INSERT INTO `kota` VALUES ('301', 'Kabupaten Rote Ndao', '53');
INSERT INTO `kota` VALUES ('302', 'Kabupaten Sabu Raijua', '53');
INSERT INTO `kota` VALUES ('303', 'Kabupaten Sikka', '53');
INSERT INTO `kota` VALUES ('304', 'Kabupaten Sumba Barat', '53');
INSERT INTO `kota` VALUES ('305', 'Kabupaten Sumba Barat Daya', '53');
INSERT INTO `kota` VALUES ('306', 'Kabupaten Sumba Tengah', '53');
INSERT INTO `kota` VALUES ('307', 'Kabupaten Sumba Timur', '53');
INSERT INTO `kota` VALUES ('308', 'Kabupaten Timor Tengah Selatan', '53');
INSERT INTO `kota` VALUES ('309', 'Kabupaten Timor Tengah Utara', '53');
INSERT INTO `kota` VALUES ('310', 'Kota Kupang', '53');
INSERT INTO `kota` VALUES ('311', 'Kabupaten Bengkayang', '61');
INSERT INTO `kota` VALUES ('312', 'Kabupaten Kapuas Hulu', '61');
INSERT INTO `kota` VALUES ('313', 'Kabupaten Kayong Utara', '61');
INSERT INTO `kota` VALUES ('314', 'Kabupaten Ketapang', '61');
INSERT INTO `kota` VALUES ('315', 'Kabupaten Kubu Raya', '61');
INSERT INTO `kota` VALUES ('316', 'Kabupaten Landak', '61');
INSERT INTO `kota` VALUES ('317', 'Kabupaten Melawi', '61');
INSERT INTO `kota` VALUES ('318', 'Kabupaten Pontianak', '61');
INSERT INTO `kota` VALUES ('319', 'Kabupaten Sambas', '61');
INSERT INTO `kota` VALUES ('320', 'Kabupaten Sanggau', '61');
INSERT INTO `kota` VALUES ('321', 'Kabupaten Sekadau', '61');
INSERT INTO `kota` VALUES ('322', 'Kabupaten Sintang', '61');
INSERT INTO `kota` VALUES ('323', 'Kota Pontianak', '61');
INSERT INTO `kota` VALUES ('324', 'Kota Singkawang', '61');
INSERT INTO `kota` VALUES ('325', 'Kabupaten Barito Selatan', '62');
INSERT INTO `kota` VALUES ('326', 'Kabupaten Barito Timur', '62');
INSERT INTO `kota` VALUES ('327', 'Kabupaten Barito Utara', '62');
INSERT INTO `kota` VALUES ('328', 'Kabupaten Gunung Mas', '62');
INSERT INTO `kota` VALUES ('329', 'Kabupaten Kapuas', '62');
INSERT INTO `kota` VALUES ('330', 'Kabupaten Katingan', '62');
INSERT INTO `kota` VALUES ('331', 'Kabupaten Kotawaringin Barat', '62');
INSERT INTO `kota` VALUES ('332', 'Kabupaten Kotawaringin Timur', '62');
INSERT INTO `kota` VALUES ('333', 'Kabupaten Lamandau', '62');
INSERT INTO `kota` VALUES ('334', 'Kabupaten Murung Raya', '62');
INSERT INTO `kota` VALUES ('335', 'Kabupaten Pulau Pisau', '62');
INSERT INTO `kota` VALUES ('336', 'Kabupaten Sukamara', '62');
INSERT INTO `kota` VALUES ('337', 'Kabupaten Seruyan', '62');
INSERT INTO `kota` VALUES ('338', 'Kota Palangkaraya', '62');
INSERT INTO `kota` VALUES ('339', 'Kabupaten Balangan', '63');
INSERT INTO `kota` VALUES ('340', 'Kabupaten Banjar', '63');
INSERT INTO `kota` VALUES ('341', 'Kabupaten Barito Kuala', '63');
INSERT INTO `kota` VALUES ('342', 'Kabupaten Hulu Sungai Selatan', '63');
INSERT INTO `kota` VALUES ('343', 'Kabupaten Hulu Sungai Tengah', '63');
INSERT INTO `kota` VALUES ('344', 'Kabupaten Hulu Sungai Utara', '63');
INSERT INTO `kota` VALUES ('345', 'Kabupaten Kotabaru', '63');
INSERT INTO `kota` VALUES ('346', 'Kabupaten Tabalong', '63');
INSERT INTO `kota` VALUES ('347', 'Kabupaten Tanah Bumbu', '63');
INSERT INTO `kota` VALUES ('348', 'Kabupaten Tanah Laut', '63');
INSERT INTO `kota` VALUES ('349', 'Kabupaten Tapin', '63');
INSERT INTO `kota` VALUES ('350', 'Kota Banjarbaru', '63');
INSERT INTO `kota` VALUES ('351', 'Kota Banjarmasin', '63');
INSERT INTO `kota` VALUES ('352', 'Kabupaten Berau', '64');
INSERT INTO `kota` VALUES ('353', 'Kabupaten Kutai Barat', '64');
INSERT INTO `kota` VALUES ('354', 'Kabupaten Kutai Kartanegara', '64');
INSERT INTO `kota` VALUES ('355', 'Kabupaten Kutai Timur', '64');
INSERT INTO `kota` VALUES ('356', 'Kabupaten Paser', '64');
INSERT INTO `kota` VALUES ('357', 'Kabupaten Penajam Paser Utara', '64');
INSERT INTO `kota` VALUES ('358', 'Kota Balikpapan', '64');
INSERT INTO `kota` VALUES ('359', 'Kota Bontang', '64');
INSERT INTO `kota` VALUES ('360', 'Kota Samarinda', '64');
INSERT INTO `kota` VALUES ('361', 'Kabupaten Bulungan', '65');
INSERT INTO `kota` VALUES ('362', 'Kabupaten Malinau', '65');
INSERT INTO `kota` VALUES ('363', 'Kabupaten Nunukan', '65');
INSERT INTO `kota` VALUES ('364', 'Kabupaten Tana Tidung', '65');
INSERT INTO `kota` VALUES ('365', 'Kota Tarakan', '65');
INSERT INTO `kota` VALUES ('366', 'Kabupaten Bolaang Mongondow', '71');
INSERT INTO `kota` VALUES ('367', 'Kabupaten Bolaang Mongondow Selatan', '71');
INSERT INTO `kota` VALUES ('368', 'Kabupaten Bolaang Mongondow Timur', '71');
INSERT INTO `kota` VALUES ('369', 'Kabupaten Bolaang Mongondow Utara', '71');
INSERT INTO `kota` VALUES ('370', 'Kabupaten Kepulauan Sangihe', '71');
INSERT INTO `kota` VALUES ('371', 'Kabupaten Kepulauan Siau Tagulandang Biaro', '71');
INSERT INTO `kota` VALUES ('372', 'Kabupaten Kepulauan Talaud', '71');
INSERT INTO `kota` VALUES ('373', 'Kabupaten Minahasa', '71');
INSERT INTO `kota` VALUES ('374', 'Kabupaten Minahasa Selatan', '71');
INSERT INTO `kota` VALUES ('375', 'Kabupaten Minahasa Tenggara', '71');
INSERT INTO `kota` VALUES ('376', 'Kabupaten Minahasa Utara', '71');
INSERT INTO `kota` VALUES ('377', 'Kota Bitung', '71');
INSERT INTO `kota` VALUES ('378', 'Kota Kotamobagu', '71');
INSERT INTO `kota` VALUES ('379', 'Kota Manado', '71');
INSERT INTO `kota` VALUES ('380', 'Kota Tomohon', '71');
INSERT INTO `kota` VALUES ('381', 'Kabupaten Banggai', '72');
INSERT INTO `kota` VALUES ('382', 'Kabupaten Banggai Kepulauan', '72');
INSERT INTO `kota` VALUES ('383', 'Kabupaten Buol', '72');
INSERT INTO `kota` VALUES ('384', 'Kabupaten Donggala', '72');
INSERT INTO `kota` VALUES ('385', 'Kabupaten Morowali', '72');
INSERT INTO `kota` VALUES ('386', 'Kabupaten Parigi Muotong', '72');
INSERT INTO `kota` VALUES ('387', 'Kabupaten Poso', '72');
INSERT INTO `kota` VALUES ('388', 'Kabupaten Tojo Una-Una', '72');
INSERT INTO `kota` VALUES ('389', 'Kabupaten Toli-Toli', '72');
INSERT INTO `kota` VALUES ('390', 'Kabupaten Sigi', '72');
INSERT INTO `kota` VALUES ('391', 'Kota Palu', '72');
INSERT INTO `kota` VALUES ('392', 'Kabupaten Bantaeng', '73');
INSERT INTO `kota` VALUES ('393', 'Kabupaten Barru', '73');
INSERT INTO `kota` VALUES ('394', 'Kabupaten Bone', '73');
INSERT INTO `kota` VALUES ('395', 'Kabupaten Bulukumba', '73');
INSERT INTO `kota` VALUES ('396', 'Kabupaten Enrekang', '73');
INSERT INTO `kota` VALUES ('397', 'Kabupaten Gowa', '73');
INSERT INTO `kota` VALUES ('398', 'Kabupaten Jeneponto', '73');
INSERT INTO `kota` VALUES ('399', 'Kabupaten Kepulauan Selayar', '73');
INSERT INTO `kota` VALUES ('400', 'Kabupaten Luwu', '73');
INSERT INTO `kota` VALUES ('401', 'Kabupaten Luwu Timur', '73');
INSERT INTO `kota` VALUES ('402', 'Kabupaten Luwu Utara', '73');
INSERT INTO `kota` VALUES ('403', 'Kabupaten Maros', '73');
INSERT INTO `kota` VALUES ('404', 'Kabupaten Pangkajene dan Kepulauan', '73');
INSERT INTO `kota` VALUES ('405', 'Kabupaten Pinrang', '73');
INSERT INTO `kota` VALUES ('406', 'Kabupaten Sidenreng Rappang', '73');
INSERT INTO `kota` VALUES ('407', 'Kabupaten Sinjai', '73');
INSERT INTO `kota` VALUES ('408', 'Kabupaten Soppeng', '73');
INSERT INTO `kota` VALUES ('409', 'Kabupaten Takalar', '73');
INSERT INTO `kota` VALUES ('410', 'Kabupaten Tana Toraja', '73');
INSERT INTO `kota` VALUES ('411', 'Kabupaten Toraja Utara', '73');
INSERT INTO `kota` VALUES ('412', 'Kabupaten Wajo', '73');
INSERT INTO `kota` VALUES ('413', 'Kota Makassar', '73');
INSERT INTO `kota` VALUES ('414', 'Kota Palopo', '73');
INSERT INTO `kota` VALUES ('415', 'Kota Parepare', '73');
INSERT INTO `kota` VALUES ('416', 'Kabupaten Bombana', '74');
INSERT INTO `kota` VALUES ('417', 'Kabupaten Buton', '74');
INSERT INTO `kota` VALUES ('418', 'Kabupaten Buton Utara', '74');
INSERT INTO `kota` VALUES ('419', 'Kabupaten Kolaka', '74');
INSERT INTO `kota` VALUES ('420', 'Kabupaten Kolaka Utara', '74');
INSERT INTO `kota` VALUES ('421', 'Kabupaten Konawe', '74');
INSERT INTO `kota` VALUES ('422', 'Kabupaten Konawe Selatan', '74');
INSERT INTO `kota` VALUES ('423', 'Kabupaten Konawe Utara', '74');
INSERT INTO `kota` VALUES ('424', 'Kabupaten Muna', '74');
INSERT INTO `kota` VALUES ('425', 'Kabupaten Wakatobi', '74');
INSERT INTO `kota` VALUES ('426', 'Kota Bau-Bau', '74');
INSERT INTO `kota` VALUES ('427', 'Kota Kendari', '74');
INSERT INTO `kota` VALUES ('428', 'Kabupaten Boalemo', '75');
INSERT INTO `kota` VALUES ('429', 'Kabupaten Bone Bolango', '75');
INSERT INTO `kota` VALUES ('430', 'Kabupaten Gorontalo', '75');
INSERT INTO `kota` VALUES ('431', 'Kabupaten Gorontalo Utara', '75');
INSERT INTO `kota` VALUES ('432', 'Kabupaten Pohuwato', '75');
INSERT INTO `kota` VALUES ('433', 'Kota Gorontalo', '75');
INSERT INTO `kota` VALUES ('434', 'Kabupaten Majene', '75');
INSERT INTO `kota` VALUES ('435', 'Kabupaten Mamasa', '75');
INSERT INTO `kota` VALUES ('436', 'Kabupaten Mamuju', '75');
INSERT INTO `kota` VALUES ('437', 'Kabupaten Mamuju Utara', '75');
INSERT INTO `kota` VALUES ('438', 'Kabupaten Polewali Mandar', '75');
INSERT INTO `kota` VALUES ('439', 'Kabupaten Buru', '81');
INSERT INTO `kota` VALUES ('440', 'Kabupaten Buru Selatan', '81');
INSERT INTO `kota` VALUES ('441', 'Kabupaten Kepulauan Aru', '81');
INSERT INTO `kota` VALUES ('442', 'Kabupaten Maluku Barat Daya', '81');
INSERT INTO `kota` VALUES ('443', 'Kabupaten Maluku Tengah', '81');
INSERT INTO `kota` VALUES ('444', 'Kabupaten Maluku Tenggara', '81');
INSERT INTO `kota` VALUES ('445', 'Kabupaten Maluku Tenggara Barat', '81');
INSERT INTO `kota` VALUES ('446', 'Kabupaten Seram Bagian Barat', '81');
INSERT INTO `kota` VALUES ('447', 'Kabupaten Seram Bagian Timur', '81');
INSERT INTO `kota` VALUES ('448', 'Kota Ambon', '81');
INSERT INTO `kota` VALUES ('449', 'Kota Tual', '81');
INSERT INTO `kota` VALUES ('450', 'Kabupaten Halmahera Barat', '82');
INSERT INTO `kota` VALUES ('451', 'Kabupaten Halmahera Tengah', '82');
INSERT INTO `kota` VALUES ('452', 'Kabupaten Halmahera Utara', '82');
INSERT INTO `kota` VALUES ('453', 'Kabupaten Halmahera Selatan', '82');
INSERT INTO `kota` VALUES ('454', 'Kabupaten Kepulauan Sula', '82');
INSERT INTO `kota` VALUES ('455', 'Kabupaten Halmahera Timur', '82');
INSERT INTO `kota` VALUES ('456', 'Kabupaten Pulau Morotai', '82');
INSERT INTO `kota` VALUES ('457', 'Kota Ternate', '82');
INSERT INTO `kota` VALUES ('458', 'Kota Tidore Kepulauan', '82');
INSERT INTO `kota` VALUES ('459', 'Kabupaten Fakfak', '91');
INSERT INTO `kota` VALUES ('460', 'Kabupaten Kaimana', '91');
INSERT INTO `kota` VALUES ('461', 'Kabupaten Manokwari', '91');
INSERT INTO `kota` VALUES ('462', 'Kabupaten Maybrat', '91');
INSERT INTO `kota` VALUES ('463', 'Kabupaten Raja Ampat', '91');
INSERT INTO `kota` VALUES ('464', 'Kabupaten Sorong', '91');
INSERT INTO `kota` VALUES ('465', 'Kabupaten Sorong Selatan', '91');
INSERT INTO `kota` VALUES ('466', 'Kabupaten Tambrauw', '91');
INSERT INTO `kota` VALUES ('467', 'Kabupaten Teluk Bintuni', '91');
INSERT INTO `kota` VALUES ('468', 'Kabupaten Teluk Wondama', '91');
INSERT INTO `kota` VALUES ('469', 'Kota Sorong', '91');
INSERT INTO `kota` VALUES ('470', 'Kabupaten Manokwari Selatan', '91');
INSERT INTO `kota` VALUES ('471', 'Kabupaten Manokwari Arfak', '91');
INSERT INTO `kota` VALUES ('472', 'Kabupaten Asmat', '94');
INSERT INTO `kota` VALUES ('473', 'Kabupaten Biak Numfor', '94');
INSERT INTO `kota` VALUES ('474', 'Kabupaten Boven Digoel', '94');
INSERT INTO `kota` VALUES ('475', 'Kabupaten Deiyai', '94');
INSERT INTO `kota` VALUES ('476', 'Kabupaten Dogiyai', '94');
INSERT INTO `kota` VALUES ('477', 'Kabupaten Intan Jaya', '94');
INSERT INTO `kota` VALUES ('478', 'Kabupaten Jayapura', '94');
INSERT INTO `kota` VALUES ('479', 'Kabupaten Jayawijaya', '94');
INSERT INTO `kota` VALUES ('480', 'Kabupaten Keerom', '94');
INSERT INTO `kota` VALUES ('481', 'Kabupaten Kepulauan Yapen', '94');
INSERT INTO `kota` VALUES ('482', 'Kabupaten Lanny Jaya', '94');
INSERT INTO `kota` VALUES ('483', 'Kabupaten Memberamo Raya', '94');
INSERT INTO `kota` VALUES ('484', 'Kabupaten Mamberamo Tengah', '94');
INSERT INTO `kota` VALUES ('485', 'Kabupaten Mappi', '94');
INSERT INTO `kota` VALUES ('486', 'Kabupaten Merauke', '94');
INSERT INTO `kota` VALUES ('487', 'Kabupaten Mimika', '94');
INSERT INTO `kota` VALUES ('488', 'Kabupaten Nabire', '94');
INSERT INTO `kota` VALUES ('489', 'Kabupaten Nduga', '94');
INSERT INTO `kota` VALUES ('490', 'Kabupaten Paniai', '94');
INSERT INTO `kota` VALUES ('491', 'Kabupaten Pegunungan Bintang', '94');
INSERT INTO `kota` VALUES ('492', 'Kabupaten Puncak', '94');
INSERT INTO `kota` VALUES ('493', 'Kabupaten Puncak Jaya', '94');
INSERT INTO `kota` VALUES ('494', 'Kabupaten Sarmi', '94');
INSERT INTO `kota` VALUES ('495', 'Kabupaten Supiori', '94');
INSERT INTO `kota` VALUES ('496', 'Kabupaten Tolikara', '94');
INSERT INTO `kota` VALUES ('497', 'Kabupaten Waropen', '94');
INSERT INTO `kota` VALUES ('498', 'Kabupaten Yahukimo', '94');
INSERT INTO `kota` VALUES ('499', 'Kabupaten Yalimo', '94');
INSERT INTO `kota` VALUES ('500', 'Kota Jayapura', '94');

-- ----------------------------
-- Table structure for `pengguna`
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna` (
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `group` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES ('Admin', 'admin', '9bd5535ba2896d6d8c9a882ad4cd2e83', 'Admin');
INSERT INTO `pengguna` VALUES ('SDM', 'adminsdm', '527d6b6347c450e35208b7bf2686883b', 'SDM');
INSERT INTO `pengguna` VALUES ('Kikin Kusumah', 'kikin', '937dd8a1fa743bae223cd2b31c471b52', 'SDM');
INSERT INTO `pengguna` VALUES ('Bapak Menteri', 'menteri', '0b9c96eb7dd1098cbf7b68ad926ea447', 'Eksekutif');
INSERT INTO `pengguna` VALUES ('Fajar', 'oenyil', '9bd5535ba2896d6d8c9a882ad4cd2e83', 'Admin');

-- ----------------------------
-- Table structure for `provinsi`
-- ----------------------------
DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi` (
  `id` int(5) NOT NULL,
  `nm_prov` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO `provinsi` VALUES ('11', 'Aceh');
INSERT INTO `provinsi` VALUES ('12', 'Sumatera Utara');
INSERT INTO `provinsi` VALUES ('13', 'Sumatera Barat');
INSERT INTO `provinsi` VALUES ('14', 'Riau');
INSERT INTO `provinsi` VALUES ('15', 'Jambi');
INSERT INTO `provinsi` VALUES ('16', 'Sumatera Selatan');
INSERT INTO `provinsi` VALUES ('17', 'Bengkulu');
INSERT INTO `provinsi` VALUES ('18', 'Lampung');
INSERT INTO `provinsi` VALUES ('19', 'Kep. Bangka Belitung');
INSERT INTO `provinsi` VALUES ('21', 'Kep. Riau');
INSERT INTO `provinsi` VALUES ('31', 'DKI Jakarta');
INSERT INTO `provinsi` VALUES ('32', 'Jawa Barat');
INSERT INTO `provinsi` VALUES ('33', 'Jawa Tengah');
INSERT INTO `provinsi` VALUES ('34', 'Yogyakarta');
INSERT INTO `provinsi` VALUES ('35', 'Jawa Timur');
INSERT INTO `provinsi` VALUES ('36', 'Banten');
INSERT INTO `provinsi` VALUES ('51', 'Bali');
INSERT INTO `provinsi` VALUES ('52', 'Nusa Tenggara Barat');
INSERT INTO `provinsi` VALUES ('53', 'Nusa Tenggara Timur');
INSERT INTO `provinsi` VALUES ('61', 'Kalimantan Barat');
INSERT INTO `provinsi` VALUES ('62', 'Kalimantan Tengah');
INSERT INTO `provinsi` VALUES ('63', 'Kalimantan Selatan');
INSERT INTO `provinsi` VALUES ('64', 'Kalimantan Timur');
INSERT INTO `provinsi` VALUES ('65', 'Kalimantan Utara');
INSERT INTO `provinsi` VALUES ('71', 'Sulawesi Utara');
INSERT INTO `provinsi` VALUES ('72', 'Sulawesi Tengah');
INSERT INTO `provinsi` VALUES ('73', 'Sulawesi Selatan');
INSERT INTO `provinsi` VALUES ('74', 'Sulawesi Tenggara');
INSERT INTO `provinsi` VALUES ('75', 'Gorontalo');
INSERT INTO `provinsi` VALUES ('76', 'Sulawesi Barat');
INSERT INTO `provinsi` VALUES ('81', 'Maluku');
INSERT INTO `provinsi` VALUES ('82', 'Maluku Utara');
INSERT INTO `provinsi` VALUES ('91', 'Papua Barat');
INSERT INTO `provinsi` VALUES ('94', 'Papua');

-- ----------------------------
-- Table structure for `sdm_rekap_jab_jk`
-- ----------------------------
DROP TABLE IF EXISTS `sdm_rekap_jab_jk`;
CREATE TABLE `sdm_rekap_jab_jk` (
  `no` int(11) NOT NULL,
  `jabatan` varchar(30) DEFAULT NULL,
  `jml_pria` int(11) DEFAULT NULL,
  `jml_wanita` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sdm_rekap_jab_jk
-- ----------------------------
INSERT INTO `sdm_rekap_jab_jk` VALUES ('1', 'Eselon I', '8', '2');
INSERT INTO `sdm_rekap_jab_jk` VALUES ('2', 'Eselon II', '20', '6');
INSERT INTO `sdm_rekap_jab_jk` VALUES ('3', 'Eselon III', '56', '15');
INSERT INTO `sdm_rekap_jab_jk` VALUES ('4', 'Eselon IV', '83', '54');
INSERT INTO `sdm_rekap_jab_jk` VALUES ('5', 'Staf / Petugas (Non-Eselon)', '125', '69');
INSERT INTO `sdm_rekap_jab_jk` VALUES ('6', 'Staf Khusus', '100', '10');
INSERT INTO `sdm_rekap_jab_jk` VALUES ('7', 'Honorer', '263', '110');

-- ----------------------------
-- Table structure for `sdm_rekap_unit_stat`
-- ----------------------------
DROP TABLE IF EXISTS `sdm_rekap_unit_stat`;
CREATE TABLE `sdm_rekap_unit_stat` (
  `no` smallint(6) NOT NULL,
  `unit_kerja` varchar(100) DEFAULT NULL,
  `jml_pns` int(11) DEFAULT NULL,
  `jml_honor` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sdm_rekap_unit_stat
-- ----------------------------
INSERT INTO `sdm_rekap_unit_stat` VALUES ('1', 'Sekretariat Kementrian', '107', '180');
INSERT INTO `sdm_rekap_unit_stat` VALUES ('2', 'Deputi Bid. Pembiayaan', '69', '26');
INSERT INTO `sdm_rekap_unit_stat` VALUES ('3', 'Deputi Bid. Pengembangan Kawasan', '76', '41');
INSERT INTO `sdm_rekap_unit_stat` VALUES ('4', 'Deputi Bid. Perumahan Swadaya', '76', '42');
INSERT INTO `sdm_rekap_unit_stat` VALUES ('5', 'Deputi Bid. Perumahan Formal', '76', '35');
INSERT INTO `sdm_rekap_unit_stat` VALUES ('6', 'Inspektorat Kementrian', '7', '4');
INSERT INTO `sdm_rekap_unit_stat` VALUES ('7', 'Pusat Pengembangan Perumahan', '13', '23');
INSERT INTO `sdm_rekap_unit_stat` VALUES ('8', 'Pusat Pembiayaan Perumahan', '14', '22');

-- ----------------------------
-- Table structure for `unit_kerja`
-- ----------------------------
DROP TABLE IF EXISTS `unit_kerja`;
CREATE TABLE `unit_kerja` (
  `unit_kerja` varchar(50) NOT NULL DEFAULT '',
  `keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`unit_kerja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unit_kerja
-- ----------------------------
INSERT INTO `unit_kerja` VALUES ('BLU', 'BADAN LAYANAN UMUM (BLU)');
INSERT INTO `unit_kerja` VALUES ('FORMAL', 'PERUMAHAN FORMAL');
INSERT INTO `unit_kerja` VALUES ('INSPEKTORAT', 'INSPEKTORAT KEMENPERA');
INSERT INTO `unit_kerja` VALUES ('KAWASAN', 'PENGEMBANGAN KAWASAN');
INSERT INTO `unit_kerja` VALUES ('PEMBIAYAAN', 'PEMBIAYAAN PERUMAHAN');
INSERT INTO `unit_kerja` VALUES ('PUSAT PEMBIAYAAN PERUMAHAN', 'BLU PUSAT PEMBIAYAAN PERUMAHAN');
INSERT INTO `unit_kerja` VALUES ('PUSAT PENGEMBANGAN PERUMAHAN', 'BLU PUSAT PENGEMBANGAN PERUMAHAN');
INSERT INTO `unit_kerja` VALUES ('SEKRETARIAT', 'SEKRETARIAT KEMENPERA');
INSERT INTO `unit_kerja` VALUES ('SWADAYA', 'PERUMAHAN SWADAYA');
