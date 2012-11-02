/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : eis

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2012-11-02 16:24:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `anggaran`
-- ----------------------------
DROP TABLE IF EXISTS `anggaran`;
CREATE TABLE `anggaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) DEFAULT NULL,
  `target` int(9) DEFAULT NULL,
  `tg_anggaran` decimal(12,2) DEFAULT NULL,
  `realisasi` int(9) DEFAULT NULL,
  `re_anggaran` decimal(12,2) DEFAULT NULL,
  `id_keg` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_keg` (`id_keg`),
  CONSTRAINT `anggaran_ibfk_1` FOREIGN KEY (`id_keg`) REFERENCES `kegiatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anggaran
-- ----------------------------
INSERT INTO anggaran VALUES ('1', '2012', '1', '187.14', '1', '59.73', '4');
INSERT INTO anggaran VALUES ('2', '2012', '172', '1162.71', '0', '156.22', '8');
INSERT INTO anggaran VALUES ('3', '2012', '64', '45.51', '0', '0.00', '10');
INSERT INTO anggaran VALUES ('4', '2012', '95904', '653.93', '0', '0.00', '11');
INSERT INTO anggaran VALUES ('5', '2012', '150', '252.00', '0', '0.00', '12');
INSERT INTO anggaran VALUES ('6', '2012', '1057', '72.98', '0', '1.09', '13');
INSERT INTO anggaran VALUES ('7', '2012', '20000', '229.71', null, null, '16');
INSERT INTO anggaran VALUES ('8', '2012', '230000', '1632.69', null, null, '17');
INSERT INTO anggaran VALUES ('9', '2012', '7500', '3.45', null, '0.83', '19');
INSERT INTO anggaran VALUES ('10', '2012', '7762', '252.29', null, '5.06', '21');
INSERT INTO anggaran VALUES ('11', '2012', '9762', '333.50', null, '23.37', '22');
INSERT INTO anggaran VALUES ('12', '2012', '2020', '38.07', null, '2.90', '23');
INSERT INTO anggaran VALUES ('13', '2012', '13160', '81.33', null, '4.07', '24');
INSERT INTO anggaran VALUES ('14', '2012', '15180', '60.72', null, '3.75', '25');
INSERT INTO anggaran VALUES ('15', '2012', null, '600.00', null, null, '27');
INSERT INTO anggaran VALUES ('16', '2012', null, '108.22', null, '36.13', '28');
INSERT INTO anggaran VALUES ('17', '2012', null, '35.04', null, '15.51', '30');
INSERT INTO anggaran VALUES ('18', '2012', null, '179.16', null, null, '31');
INSERT INTO anggaran VALUES ('19', '2012', '189166', '7091.12', null, '530.16', '37');
INSERT INTO anggaran VALUES ('20', '2012', '30600', '191.24', null, null, '39');
INSERT INTO anggaran VALUES ('22', '2011', '1', '187.14', '1', '59.73', '4');
INSERT INTO anggaran VALUES ('23', '2011', '172', '1162.71', '0', '156.22', '8');
INSERT INTO anggaran VALUES ('24', '2011', '64', '45.51', '0', '0.00', '10');
INSERT INTO anggaran VALUES ('25', '2011', '95904', '653.93', '0', '0.00', '11');
INSERT INTO anggaran VALUES ('26', '2011', '150', '252.00', '0', '0.00', '12');
INSERT INTO anggaran VALUES ('27', '2011', '1057', '72.98', '0', '1.09', '13');
INSERT INTO anggaran VALUES ('28', '2011', '20000', '229.71', null, null, '16');
INSERT INTO anggaran VALUES ('29', '2011', '230000', '1632.69', null, null, '17');
INSERT INTO anggaran VALUES ('30', '2011', '7500', '3.45', null, '0.83', '19');
INSERT INTO anggaran VALUES ('31', '2011', '7762', '252.29', null, '5.06', '21');
INSERT INTO anggaran VALUES ('32', '2011', '9762', '333.50', null, '23.37', '22');
INSERT INTO anggaran VALUES ('33', '2011', '2020', '38.07', null, '2.90', '23');
INSERT INTO anggaran VALUES ('34', '2011', '13160', '81.33', null, '4.07', '24');
INSERT INTO anggaran VALUES ('35', '2011', '15180', '60.72', null, '3.75', '25');
INSERT INTO anggaran VALUES ('36', '2011', null, '600.00', null, null, '27');
INSERT INTO anggaran VALUES ('37', '2011', null, '108.22', null, '36.13', '28');
INSERT INTO anggaran VALUES ('38', '2011', null, '35.04', null, '15.51', '30');
INSERT INTO anggaran VALUES ('39', '2011', null, '179.16', null, null, '31');
INSERT INTO anggaran VALUES ('40', '2011', '189166', '7091.12', null, '530.16', '37');
INSERT INTO anggaran VALUES ('41', '2011', '30600', '191.24', null, null, '39');
INSERT INTO anggaran VALUES ('42', '2010', '1', '187.14', '1', '59.73', '4');
INSERT INTO anggaran VALUES ('43', '2010', '172', '1162.71', '0', '156.22', '8');
INSERT INTO anggaran VALUES ('44', '2010', '64', '45.51', '0', '0.00', '10');
INSERT INTO anggaran VALUES ('45', '2010', '95904', '653.93', '0', '0.00', '11');
INSERT INTO anggaran VALUES ('46', '2010', '150', '252.00', '0', '0.00', '12');
INSERT INTO anggaran VALUES ('47', '2010', '1057', '72.98', '0', '1.09', '13');
INSERT INTO anggaran VALUES ('48', '2010', '20000', '229.71', null, null, '16');
INSERT INTO anggaran VALUES ('49', '2010', '230000', '1632.69', null, null, '17');
INSERT INTO anggaran VALUES ('50', '2010', '7500', '3.45', null, '0.83', '19');
INSERT INTO anggaran VALUES ('51', '2010', '7762', '252.29', null, '5.06', '21');
INSERT INTO anggaran VALUES ('52', '2010', '9762', '333.50', null, '23.37', '22');
INSERT INTO anggaran VALUES ('53', '2010', '2020', '38.07', null, '2.90', '23');
INSERT INTO anggaran VALUES ('54', '2010', '13160', '81.33', null, '4.07', '24');
INSERT INTO anggaran VALUES ('55', '2010', '15180', '60.72', null, '3.75', '25');
INSERT INTO anggaran VALUES ('56', '2010', null, '600.00', null, null, '27');
INSERT INTO anggaran VALUES ('57', '2010', null, '108.22', null, '36.13', '28');
INSERT INTO anggaran VALUES ('58', '2010', null, '35.04', null, '15.51', '30');
INSERT INTO anggaran VALUES ('59', '2010', null, '179.16', null, null, '31');
INSERT INTO anggaran VALUES ('60', '2010', '189166', '7091.12', null, '530.16', '37');
INSERT INTO anggaran VALUES ('61', '2010', '30600', '191.24', null, null, '39');

-- ----------------------------
-- Table structure for `kegiatan`
-- ----------------------------
DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL,
  `no_urut` int(10) DEFAULT NULL,
  `no` varchar(4) DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `sat` varchar(30) DEFAULT NULL,
  `sasaran` int(12) DEFAULT NULL,
  `posisi` enum('parent','child') DEFAULT NULL,
  `font` enum('normal','bold') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO kegiatan VALUES ('1', '0', '1', 'A', 'BA 091', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('2', '0', '2', 'B', 'BA 999', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('3', '1', '1', 'I', 'PROGRAM DUKUNGAN DAN MANAJEMEN TUGAS TEKNIS LAINNYA', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('4', '3', '1', null, 'Dukungan Manajemen dan Pelaksanaan Tugas Teknis Lainnya', 'Tahun', null, 'parent', 'normal');
INSERT INTO kegiatan VALUES ('5', '1', '2', 'II', 'PROGRAM PENGEMBANGAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('6', '5', '1', '1', 'Pembangunan Rumah Susun Sederhana Sewa ', 'TB', '380', 'parent', 'bold');
INSERT INTO kegiatan VALUES ('7', '6', '1', null, 'a. Penyedia Rusunawa', 'TB', null, null, null);
INSERT INTO kegiatan VALUES ('8', '7', '1', null, '- Pembangunan baru', 'TB', null, null, null);
INSERT INTO kegiatan VALUES ('9', '7', '2', null, '- Luncuran', 'TB', null, null, null);
INSERT INTO kegiatan VALUES ('10', '6', '2', null, 'b. Pusat Pengembangan Perumahan (rehab) ', 'TB', null, null, null);
INSERT INTO kegiatan VALUES ('11', '5', '2', '2', 'Fasilitasi Pembangunan PSU kawasan Perumahan dan Permukiman', 'Unit', '700000', 'parent', 'bold');
INSERT INTO kegiatan VALUES ('12', '5', '3', '3', 'Fasilitasi dan Stimulasi Penataan Lingkungan Permukiman Kumuh', 'Ha', '655', 'parent', 'bold');
INSERT INTO kegiatan VALUES ('13', '5', '4', '4', 'Pembangunan Rumah Khusus', 'Unit', '5000', 'parent', 'bold');
INSERT INTO kegiatan VALUES ('14', '5', '5', '5', 'DIREKTIF PRESIDEN', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('15', '14', '1', 'a.', 'Program Pro-Rakyat Klaster IV: Rumah Sangat Murah', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('16', '15', '1', '5.1.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya</i>', 'Unit', '50000', null, null);
INSERT INTO kegiatan VALUES ('17', '15', '2', '5.2.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', '50000', null, null);
INSERT INTO kegiatan VALUES ('18', '15', '3', '5.3.', '<i>Fasilitasi Pembangunan PSU Perumhan Swadaya</i>', 'Unit', '50000', null, null);
INSERT INTO kegiatan VALUES ('19', '15', '4', '5.4.', '<i>Fasilitasi Pra-sertifikasi dan Pendampingan Pasca-sertifikasi</i>', 'Bidang', '30000', null, null);
INSERT INTO kegiatan VALUES ('20', '14', '2', 'b. ', 'Penanganan Rumah bagi Warga Baru di Perbatasan Prov NTT - Timor Leste', 'Unit', null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('21', '20', '1', '5.5.', '<i>Pembangunan Rumah Khusus</i> ', 'Unit', null, null, null);
INSERT INTO kegiatan VALUES ('22', '20', '2', '5.6.', '<i>Pembanguna PSU Kawasan Perumahan dan Permukiman</i>', 'Unit', null, null, null);
INSERT INTO kegiatan VALUES ('23', '20', '3', '5.7.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya (pembangunan baru)</i>', 'Unit', null, null, null);
INSERT INTO kegiatan VALUES ('24', '20', '4', '5.8.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', null, null, null);
INSERT INTO kegiatan VALUES ('25', '20', '5', '5.9.', '<i>Fasilitasi Pembangunan PSU Perumahan Swadaya</i>', 'Unit', null, null, null);
INSERT INTO kegiatan VALUES ('26', '5', '6', '6', 'PENUGASAN KHUSUS', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('27', '26', '1', null, 'Penanganan Ciliwung', null, null, null, null);
INSERT INTO kegiatan VALUES ('28', '5', '7', '7', 'Pengembangan Kebijakan dan Koordinasi Pelaksanaan Kebijakan Perumahan dan Permukiman', 'Peraturan Perundangan', '20', 'parent', 'bold');
INSERT INTO kegiatan VALUES ('29', '1', '3', 'III', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('30', '29', '1', '1', 'Pengembangan kebijakan dan Koordinasi Pelaksanaan Kebijakan Pembiayaan Perumahan dan Permukiman', null, '10', null, null);
INSERT INTO kegiatan VALUES ('31', '29', '2', '2', 'PNBP BLU Lukuiditas Pembiayaan Perumahan', null, null, null, null);
INSERT INTO kegiatan VALUES ('32', '2', '1', 'I', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('33', '32', '1', '1', 'Masa Transisi', null, '544802', null, null);
INSERT INTO kegiatan VALUES ('34', '33', '1', null, '- Rekonsiliasi 2008 dan 2009', null, null, null, null);
INSERT INTO kegiatan VALUES ('35', '33', '2', null, '- Tunggakan penerbitan tahun 2009', null, null, null, null);
INSERT INTO kegiatan VALUES ('36', '33', '3', null, '- Target 2010 (Rumah Sejahtera Tapak + Sarusunami)', null, null, null, null);
INSERT INTO kegiatan VALUES ('37', '32', '2', '2', 'Fasilitas Likuiditas', null, '1350000', null, null);
INSERT INTO kegiatan VALUES ('38', '2', '2', 'II', 'DAK BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO kegiatan VALUES ('39', '38', '1', '1', 'PSU Kawasan Perumahan dan Permukiman', 'Unit', null, null, null);
