/*
Navicat PGSQL Data Transfer

Source Server         : MyPostgre
Source Server Version : 80414
Source Host           : localhost:5432
Source Database       : eis
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 80414
File Encoding         : 65001

Date: 2012-12-07 17:11:59
*/


-- ----------------------------
-- Table structure for "absen"
-- ----------------------------
DROP TABLE "absen";
CREATE TABLE "public"."absen" (
"jabatan" varchar(100) DEFAULT NULL NOT NULL,
"tgl" date DEFAULT NULL NOT NULL,
"tidak_hadir" int2 DEFAULT NULL,
"terlambat" int2 DEFAULT NULL,
"hadir" int2 DEFAULT NULL,
CONSTRAINT "absen_pkey" PRIMARY KEY ("jabatan", "tgl")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."absen" OWNER TO "postgres";;

-- ----------------------------
-- Records of absen
-- ----------------------------
INSERT INTO "absen" VALUES ('Deputi Bid. Pembiayaan', '2012-12-06', '5', '4', '6');
INSERT INTO "absen" VALUES ('Deputi Bid. Pengembangan Kawasan', '2012-12-06', '4', '3', '5');
INSERT INTO "absen" VALUES ('Deputi Bid. Perumahan Formal', '2012-12-06', '10', '6', '20');
INSERT INTO "absen" VALUES ('Deputi Bid. Perumahan Swadaya', '2012-12-06', '2', '1', '3');
INSERT INTO "absen" VALUES ('Inspektorat Kementrian', '2012-12-06', '4', '3', '5');
INSERT INTO "absen" VALUES ('Pusat Pembiayaan Perumahan', '2012-12-06', '6', '5', '10');
INSERT INTO "absen" VALUES ('Pusat Pengembangan Perumahan', '2012-12-06', '5', '4', '6');
INSERT INTO "absen" VALUES ('Sekretariat Kementrian', '2012-12-06', '3', '2', '4');

-- ----------------------------
-- Table structure for "agenda"
-- ----------------------------
DROP TABLE "agenda";
CREATE TABLE "public"."agenda" (
"date" int8 DEFAULT NULL NOT NULL,
"type" varchar(20) DEFAULT NULL,
"title" varchar(20) DEFAULT NULL,
"description" varchar(100) DEFAULT NULL,
"url" varchar(30) DEFAULT NULL,
CONSTRAINT "agenda_pkey" PRIMARY KEY ("date")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."agenda" OWNER TO "postgres";;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO "agenda" VALUES ('1353639458000', null, 'Meeting', 'Dengan deputi2', null);
INSERT INTO "agenda" VALUES ('1353813545000', null, 'istirahat', 'Dirumah sajalah', null);
INSERT INTO "agenda" VALUES ('1353900642000', null, 'Keluar', 'jakarta bandung', null);
INSERT INTO "agenda" VALUES ('1353998389000', null, 'Rapat internal', 'KEMENPERA<br />
kikin', null);
INSERT INTO "agenda" VALUES ('1354257000000', null, 'Demo Aplikasi EIS', 'Tempat : Ruang Rapat 2 Lantai 2
Pembahasan: Draft Laporan Akhir dan Presentasi Sistem', null);
INSERT INTO "agenda" VALUES ('1354520545000', null, 'DINAS ', 'Ke Luar Kota', null);

-- ----------------------------
-- Table structure for "anggaran"
-- ----------------------------
DROP TABLE "anggaran";
CREATE TABLE "public"."anggaran" (
"id" int4 DEFAULT NULL NOT NULL,
"tahun" int4 DEFAULT NULL,
"target" int4 DEFAULT NULL,
"tg_anggaran" numeric(12,2) DEFAULT NULL,
"realisasi" int4 DEFAULT NULL,
"re_anggaran" numeric(12,2) DEFAULT NULL,
"id_keg" int4 DEFAULT NULL,
"sasaran" int4 DEFAULT NULL,
CONSTRAINT "anggaran_pkey" PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."anggaran" OWNER TO "postgres";;

-- ----------------------------
-- Records of anggaran
-- ----------------------------
INSERT INTO "anggaran" VALUES ('1', '2012', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO "anggaran" VALUES ('2', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('3', '2012', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO "anggaran" VALUES ('4', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "anggaran" VALUES ('5', '2012', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO "anggaran" VALUES ('6', '2012', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO "anggaran" VALUES ('7', '2012', '20000', '229.71', null, null, '16', null);
INSERT INTO "anggaran" VALUES ('8', '2012', '230000', '1632.69', null, null, '17', null);
INSERT INTO "anggaran" VALUES ('9', '2012', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO "anggaran" VALUES ('10', '2012', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO "anggaran" VALUES ('11', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO "anggaran" VALUES ('12', '2012', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO "anggaran" VALUES ('13', '2012', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO "anggaran" VALUES ('14', '2012', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO "anggaran" VALUES ('15', '2012', null, '600.00', null, null, '27', null);
INSERT INTO "anggaran" VALUES ('16', '2012', null, '108.22', null, '36.13', '28', null);
INSERT INTO "anggaran" VALUES ('17', '2012', null, '35.04', null, '15.51', '30', null);
INSERT INTO "anggaran" VALUES ('18', '2012', null, '179.16', null, null, '31', null);
INSERT INTO "anggaran" VALUES ('19', '2012', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO "anggaran" VALUES ('20', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('22', '2011', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO "anggaran" VALUES ('23', '2011', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('24', '2011', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO "anggaran" VALUES ('25', '2011', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "anggaran" VALUES ('26', '2011', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO "anggaran" VALUES ('27', '2011', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO "anggaran" VALUES ('28', '2011', '20000', '229.71', null, null, '16', null);
INSERT INTO "anggaran" VALUES ('29', '2011', '230000', '1632.69', null, null, '17', null);
INSERT INTO "anggaran" VALUES ('30', '2011', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO "anggaran" VALUES ('31', '2011', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO "anggaran" VALUES ('32', '2011', '9762', '333.50', null, '23.37', '22', null);
INSERT INTO "anggaran" VALUES ('33', '2011', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO "anggaran" VALUES ('34', '2011', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO "anggaran" VALUES ('35', '2011', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO "anggaran" VALUES ('36', '2011', null, '600.00', null, null, '27', null);
INSERT INTO "anggaran" VALUES ('37', '2011', null, '108.22', null, '36.13', '28', null);
INSERT INTO "anggaran" VALUES ('38', '2011', null, '35.04', null, '15.51', '30', null);
INSERT INTO "anggaran" VALUES ('39', '2011', null, '179.16', null, null, '31', null);
INSERT INTO "anggaran" VALUES ('40', '2011', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO "anggaran" VALUES ('41', '2011', '30600', '191.24', null, null, '39', null);
INSERT INTO "anggaran" VALUES ('42', '2010', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO "anggaran" VALUES ('43', '2010', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('44', '2010', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO "anggaran" VALUES ('45', '2010', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "anggaran" VALUES ('46', '2010', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO "anggaran" VALUES ('47', '2010', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO "anggaran" VALUES ('48', '2010', '20000', '229.71', null, null, '16', null);
INSERT INTO "anggaran" VALUES ('49', '2010', '230000', '1632.69', null, null, '17', null);
INSERT INTO "anggaran" VALUES ('50', '2010', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO "anggaran" VALUES ('51', '2010', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO "anggaran" VALUES ('52', '2010', '9762', '333.50', null, '23.37', '22', null);
INSERT INTO "anggaran" VALUES ('53', '2010', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO "anggaran" VALUES ('54', '2010', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO "anggaran" VALUES ('55', '2010', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO "anggaran" VALUES ('56', '2010', null, '600.00', null, null, '27', null);
INSERT INTO "anggaran" VALUES ('57', '2010', null, '108.22', null, '36.13', '28', null);
INSERT INTO "anggaran" VALUES ('58', '2010', null, '35.04', null, '15.51', '30', null);
INSERT INTO "anggaran" VALUES ('59', '2010', null, '179.16', null, null, '31', null);
INSERT INTO "anggaran" VALUES ('60', '2010', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO "anggaran" VALUES ('61', '2010', '30600', '191.24', null, null, '39', null);
INSERT INTO "anggaran" VALUES ('62', null, '1', '1.00', '1', '1.00', null, null);
INSERT INTO "anggaran" VALUES ('63', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('64', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('65', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('66', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('67', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('68', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('69', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('70', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('71', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('72', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('73', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('74', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('75', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('76', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('77', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('78', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('79', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('80', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('81', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('82', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('83', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('84', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('85', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('86', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('87', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO "anggaran" VALUES ('88', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO "anggaran" VALUES ('89', '2012', '0', '0.00', '0', '0.00', '18', null);
INSERT INTO "anggaran" VALUES ('90', '2012', '0', '0.00', '0', '0.00', '18', null);
INSERT INTO "anggaran" VALUES ('91', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "anggaran" VALUES ('92', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('93', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('94', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('95', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "anggaran" VALUES ('96', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('97', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('98', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('99', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('100', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('101', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('102', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('103', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('104', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('105', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('106', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('107', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('108', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('109', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('110', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('111', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "anggaran" VALUES ('112', '2012', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "anggaran" VALUES ('113', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('114', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "anggaran" VALUES ('115', '2012', '30600', '191.24', '0', '0.00', '39', null);

-- ----------------------------
-- Table structure for "ci_sessions"
-- ----------------------------
DROP TABLE "ci_sessions";
CREATE TABLE "public"."ci_sessions" (
"session_id" varchar(40) DEFAULT NULL NOT NULL,
"ip_address" varchar(45) DEFAULT NULL NOT NULL,
"user_agent" varchar(120) DEFAULT NULL NOT NULL,
"last_activity" int8 DEFAULT NULL NOT NULL,
"user_data" text DEFAULT NULL NOT NULL,
CONSTRAINT "ci_sessions_pkey" PRIMARY KEY ("session_id")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."ci_sessions" OWNER TO "postgres";;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO "ci_sessions" VALUES ('b71e7b9f28feb8bf2470734fcc5b9d64', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:16.0) Gecko/20100101 Firefox/16.0', '1354874759', 'a:6:{s:9:"user_data";s:0:"";s:9:"logged_in";i:1;s:7:"id_user";N;s:5:"group";s:5:"Admin";s:8:"username";s:5:"admin";s:12:"nama_lengkap";s:5:"Admin";}');

-- ----------------------------
-- Table structure for "gis"
-- ----------------------------
DROP TABLE "gis";
CREATE TABLE "public"."gis" (
"no" int4 DEFAULT NULL NOT NULL,
"title" varchar(150) DEFAULT NULL,
"x" float8 DEFAULT NULL,
"y" float8 DEFAULT NULL,
"address" varchar(255) DEFAULT NULL,
"ket" varchar(100) DEFAULT NULL,
"id_gis_group" int4 DEFAULT NULL NOT NULL,
"provinsi" varchar(50) DEFAULT NULL,
"kota" varchar(50) DEFAULT NULL,
"nilai" int4 DEFAULT NULL,
CONSTRAINT "gis_pkey" PRIMARY KEY ("no", "id_gis_group")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."gis" OWNER TO "postgres";;

-- ----------------------------
-- Records of gis
-- ----------------------------
INSERT INTO "gis" VALUES ('1', 'PSU Kawasan Perumahan dan Permukiman', '1.098565', '104.030113', 'Kota Batam', null, '39', null, null, null);
INSERT INTO "gis" VALUES ('2', '- Pembangunan baru', '1.559866', '104.498291', 'Kab. Bintan, Kab Tanjung Pinang, Kota Batam, Kota Tanjung Pinang', null, '8', null, null, null);
INSERT INTO "gis" VALUES ('4', '- Pembangunan baru', '4', '5', '3', '7', '8', '1', '2', '6');
INSERT INTO "gis" VALUES ('5', '- Pembangunan baru', '5', '6', '4', '8', '8', '2', '3', '7');
INSERT INTO "gis" VALUES ('6', 'Fasilitasi Pembangunan PSU kawasan Perumahan dan Permukiman', '1.34021', '104.02771', 'Kab. Bintan, Kab. Natuna, Kota batam', null, '11', null, null, null);

-- ----------------------------
-- Table structure for "gis_group"
-- ----------------------------
DROP TABLE "gis_group";
CREATE TABLE "public"."gis_group" (
"id_gis_group" varchar(1) DEFAULT NULL NOT NULL,
"gis_group" varchar(30) DEFAULT NULL,
CONSTRAINT "gis_group_pkey" PRIMARY KEY ("id_gis_group")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."gis_group" OWNER TO "postgres";;

-- ----------------------------
-- Records of gis_group
-- ----------------------------
INSERT INTO "gis_group" VALUES ('1', 'DAK');
INSERT INTO "gis_group" VALUES ('2', 'Rusunawa');
INSERT INTO "gis_group" VALUES ('3', 'PSU');

-- ----------------------------
-- Table structure for "kegiatan"
-- ----------------------------
DROP TABLE "kegiatan";
CREATE TABLE "public"."kegiatan" (
"id" int4 DEFAULT NULL NOT NULL,
"parent_id" int4 DEFAULT NULL NOT NULL,
"no_urut" int4 DEFAULT NULL,
"no" varchar(4) DEFAULT NULL,
"nama" varchar(150) DEFAULT NULL,
"sat" varchar(30) DEFAULT NULL,
"sasaran2" int4 DEFAULT NULL,
"posisi" varchar(255) DEFAULT NULL,
"font" varchar(255) DEFAULT NULL,
CONSTRAINT "kegiatan_pkey" PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."kegiatan" OWNER TO "postgres";;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO "kegiatan" VALUES ('1', '0', '1', 'A', 'BA 091', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('2', '0', '2', 'B', 'BA 999', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('3', '1', '1', 'I', 'PROGRAM DUKUNGAN DAN MANAJEMEN TUGAS TEKNIS LAINNYA', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('4', '3', '1', null, 'Dukungan Manajemen dan Pelaksanaan Tugas Teknis Lainnya', 'Tahun', null, 'parent', 'normal');
INSERT INTO "kegiatan" VALUES ('5', '1', '2', 'II', 'PROGRAM PENGEMBANGAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('6', '5', '1', '1', 'Pembangunan Rumah Susun Sederhana Sewa ', 'TB', '380', 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('7', '6', '1', null, 'a. Penyedia Rusunawa', 'TB', null, null, null);
INSERT INTO "kegiatan" VALUES ('8', '7', '1', null, '- Pembangunan baru', 'TB', null, null, null);
INSERT INTO "kegiatan" VALUES ('9', '7', '2', null, '- Luncuran', 'TB', null, null, null);
INSERT INTO "kegiatan" VALUES ('10', '6', '2', null, 'b. Pusat Pengembangan Perumahan (rehab) ', 'TB', null, null, null);
INSERT INTO "kegiatan" VALUES ('11', '5', '2', '2', 'Fasilitasi Pembangunan PSU kawasan Perumahan dan Permukiman', 'Unit', '700000', 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('12', '5', '3', '3', 'Fasilitasi dan Stimulasi Penataan Lingkungan Permukiman Kumuh', 'Ha', '655', 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('13', '5', '4', '4', 'Pembangunan Rumah Khusus', 'Unit', '5000', 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('14', '5', '5', '5', 'DIREKTIF PRESIDEN', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('15', '14', '1', 'a.', 'Program Pro-Rakyat Klaster IV: Rumah Sangat Murah', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('16', '15', '1', '5.1.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya</i>', 'Unit', '50000', null, null);
INSERT INTO "kegiatan" VALUES ('17', '15', '2', '5.2.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', '50000', null, null);
INSERT INTO "kegiatan" VALUES ('18', '15', '3', '5.3.', '<i>Fasilitasi Pembangunan PSU Perumhan Swadaya</i>', 'Unit', '50000', null, null);
INSERT INTO "kegiatan" VALUES ('19', '15', '4', '5.4.', '<i>Fasilitasi Pra-sertifikasi dan Pendampingan Pasca-sertifikasi</i>', 'Bidang', '30000', null, null);
INSERT INTO "kegiatan" VALUES ('20', '14', '2', 'b. ', 'Penanganan Rumah bagi Warga Baru di Perbatasan Prov NTT - Timor Leste', 'Unit', null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('21', '20', '1', '5.5.', '<i>Pembangunan Rumah Khusus</i> ', 'Unit', null, null, null);
INSERT INTO "kegiatan" VALUES ('22', '20', '2', '5.6.', '<i>Pembanguna PSU Kawasan Perumahan dan Permukiman</i>', 'Unit', null, null, null);
INSERT INTO "kegiatan" VALUES ('23', '20', '3', '5.7.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya (pembangunan baru)</i>', 'Unit', null, null, null);
INSERT INTO "kegiatan" VALUES ('24', '20', '4', '5.8.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', null, null, null);
INSERT INTO "kegiatan" VALUES ('25', '20', '5', '5.9.', '<i>Fasilitasi Pembangunan PSU Perumahan Swadaya</i>', 'Unit', null, null, null);
INSERT INTO "kegiatan" VALUES ('26', '5', '6', '6', 'PENUGASAN KHUSUS', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('27', '26', '1', null, 'Penanganan Ciliwung', null, null, null, null);
INSERT INTO "kegiatan" VALUES ('28', '5', '7', '7', 'Pengembangan Kebijakan dan Koordinasi Pelaksanaan Kebijakan Perumahan dan Permukiman', 'Peraturan Perundangan', '20', 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('29', '1', '3', 'III', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('30', '29', '1', '1', 'Pengembangan kebijakan dan Koordinasi Pelaksanaan Kebijakan Pembiayaan Perumahan dan Permukiman', null, '10', null, null);
INSERT INTO "kegiatan" VALUES ('31', '29', '2', '2', 'PNBP BLU Lukuiditas Pembiayaan Perumahan', null, null, null, null);
INSERT INTO "kegiatan" VALUES ('32', '2', '1', 'I', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('33', '32', '1', '1', 'Masa Transisi', null, '544802', null, null);
INSERT INTO "kegiatan" VALUES ('34', '33', '1', null, '- Rekonsiliasi 2008 dan 2009', null, null, null, null);
INSERT INTO "kegiatan" VALUES ('35', '33', '2', null, '- Tunggakan penerbitan tahun 2009', null, null, null, null);
INSERT INTO "kegiatan" VALUES ('36', '33', '3', null, '- Target 2010 (Rumah Sejahtera Tapak + Sarusunami)', null, null, null, null);
INSERT INTO "kegiatan" VALUES ('37', '32', '2', '2', 'Fasilitas Likuiditas', null, '1350000', null, null);
INSERT INTO "kegiatan" VALUES ('38', '2', '2', 'II', 'DAK BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold');
INSERT INTO "kegiatan" VALUES ('39', '38', '1', '1', 'PSU Kawasan Perumahan dan Permukiman', 'Unit', null, null, null);
INSERT INTO "kegiatan" VALUES ('42', '42', null, '3', '33', '3', '3', 'parent', null);
INSERT INTO "kegiatan" VALUES ('43', '43', null, '4', '4', '4', '4', '', null);

-- ----------------------------
-- Table structure for "kegiatan_mon"
-- ----------------------------
DROP TABLE "kegiatan_mon";
CREATE TABLE "public"."kegiatan_mon" (
"jenis_keg" varchar(15) DEFAULT NULL,
"nama_keg" varchar(200) DEFAULT NULL NOT NULL,
"anggaran" numeric(16) DEFAULT NULL,
"bagian" varchar(30) DEFAULT NULL NOT NULL,
"tahun" int2 DEFAULT NULL NOT NULL,
CONSTRAINT "kegiatan_mon_pkey" PRIMARY KEY ("nama_keg", "tahun", "bagian")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."kegiatan_mon" OWNER TO "postgres";;

-- ----------------------------
-- Records of kegiatan_mon
-- ----------------------------
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Dekonsentrasi Lingkup Kemenpera Tahun 2012', '800000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Dekonsentrasi Lingkup Kemenpera Tahun 2012', '800000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Penerapan E-Procurement Kementerian Perumahan Rakyat', '1328500000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Penerapan Sistem Akuntabilitas Instansi Pemerintah Kemenpera', '750000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Dukungan Kelembagaan Pemangku Kepentingan', '11857870000', 'Anggaran', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Dukungan Operasionalisasi LPSE Kementerian Perumahan Rakyat', '1300000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Dekonsentrasi Lingkup Kemenpera Tahun 2012', '15000000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Dekonsentrasi Lingkup Kemenpera Tahun 2012', '15000000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Kegiatan Kelompok Kerja Perumahan Tahun 2012', '1650000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Kegiatan Kelompok Kerja Perumahan Tahun 2012', '1650000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pengelolaan Data dan Penyajian Informasi', '1327238000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Evaluasi Pelaksanaan Anggaran Tahun Anggaran 2012', '792500000', 'Anggaran', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Fasilitasi dan Koordinasi Pelaksanaan Pembangunan Bidang Perumahan Rakyat Tahun 2012', '3572291000', 'Anggaran', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Koordinasi Perencanaan dan Pelaksanaan Kebijakan, Program dan Kegiatan Pembangunan Perumahan (RAKORPERA) Tahun 2011', '700000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Koordinasi Perencanaan dan Pelaksanaan Kebijakan, Program dan Kegiatan Pembangunan Perumahan (RAKORPERA) Tahun 2011', '700000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Koordinasi Perencanaan Penganggaran Tahun Anggaran 2012', '825000000', 'Anggaran', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Mid-Term Review Pencapaian Sasaran RPJMN dan Renstra 2010-2014', '700000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Mid-Term Review Pencapaian Sasaran RPJMN dan Renstra 2010-2014', '700000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Monitoring dan Evaluasi Kinerja Kementerian Perumahan Rakyat', '670000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Monitoring dan Evaluasi Penyelenggaraan Dekonsentrasi Bidang Perumahan dan Permukiman', '854000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Monitoring dan Evaluasi Penyelenggaraan Dekonsentrasi Bidang Perumahan dan Permukiman Tahun 2012', '854000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Aplikasi Eksekutif (Dashboard)', '850000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Content Management System Kemenpera', '850000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi IT Asset Management', '850000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Lelang (e-Controlling)', '850000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Proyek (e-Progress)', '850000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Perkantoran (e-Office)', '850000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Pembangunan Sistem Informasi Perumahan (e-Housing)', '1795280000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Pembinaan Penyusunan RKA-KL Kemenpera Tahun 2012', '1045000000', 'Anggaran', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Pemeliharaan Sistem Jaringan Teknologi Informasi Kemenpera', '1209500000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Pemeriksaan Keamanan Jaringan TIK', '1279937000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pengembangan Jaringan Informasi Perumahan Berbasis Spasial', '850000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Kontraktual', 'Pengembangan Sistem Informasi Kepegawaian Kementerian Perumahan Rakyat Tahun
Anggaran 2012
', '800000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Pengukuran Kinerja Kemenpera dengan Balanced Scorecard', '1200000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kapasitas Pengelola Jaringan dan Sistem Informasi di Lingkungan Kemenpera', '1426429000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Kegiatan Yang Dibiayai PHLN Tahun Anggaran 2012', '808000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Kegiatan Yang Dibiayai PHLN Tahun Anggaran 2012', '808000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Tahun 2013', '1000000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Tahun 2013', '1000000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Hibah Daerah Bidang Perumahan dan Kawasan Permukiman Tahun Anggaran 2012', '655000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Hibah Daerah Bidang Perumahan dan Kawasan Permukiman Tahun Anggaran 2012', '655000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Kegiatan Dekonsentrasi Lingkup Kemenpera Tahun 2013', '1150000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Kegiatan Dekonsentrasi Lingkup Kemenpera Tahun 2013', '1150000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Evaluasi Kinerja Kementerian Perumahan Rakyat', '600000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Biro Perencanaan dan Anggaran Tahun 2012', '450000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Kementerian Tahun 2012', '470000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Sekretariat Tahun 2012', '360000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Majalah Perumahan dan Permukiman Kemenpera', '600000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Manajemen Pengetahuan dalam Kerangka Persiapan RPJMN 2015-2019', '1250000000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Panduan Evaluasi Kinerja di LIngkungan Kementerian Perumahan Rakyat', '557500000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Rencana Kerja Kementerian Perumahan Rakyat Tahun 2013', '600000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Rencana Kerja Kementerian Perumahan Rakyat Tahun 2013', '600000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Rapat Konsultasi Regional Tahun 2012', '2000000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Rapat Konsultasi Regional Tahun 2012', '2000000000', 'Program', '2013');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Review dan Penyusunan Kebijakan IT', '1455648000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Sosialisasi dan Pelatihan Penyusunan Anggaran TA 2013', '1142500000', 'Anggaran', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Sosialisasi dan Pelatihan Penyusunan Satuan Biaya Keluaran TA 2013', '500000000', 'Anggaran', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Sosialisasi Pengamanan Jaringan Sistem Informasi di Lingkungan Kemenpera', '1467307000', 'Data dan Pelaporan', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Tim Sekretariat pendukung Program Rumah Murah dan Rumah Sangat Murah', '1200000000', 'Program', '2012');
INSERT INTO "kegiatan_mon" VALUES ('Swakelola', 'Tim Sekretariat pendukung Program Rumah Murah dan Rumah Sangat Murah', '1200000000', 'Program', '2013');

-- ----------------------------
-- Table structure for "pengguna"
-- ----------------------------
DROP TABLE "pengguna";
CREATE TABLE "public"."pengguna" (
"nama_lengkap" varchar(100) DEFAULT NULL NOT NULL,
"username" varchar(50) DEFAULT NULL NOT NULL,
"password" varchar(50) DEFAULT NULL NOT NULL,
"group" varchar(20) DEFAULT NULL NOT NULL,
CONSTRAINT "user_pkey" PRIMARY KEY ("username")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."pengguna" OWNER TO "postgres";;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO "pengguna" VALUES ('Admin', 'admin', '9bd5535ba2896d6d8c9a882ad4cd2e83', 'Admin');
INSERT INTO "pengguna" VALUES ('SDM', 'adminsdm', '527d6b6347c450e35208b7bf2686883b', 'SDM');
INSERT INTO "pengguna" VALUES ('Kikin Kusumah', 'kikin', '937dd8a1fa743bae223cd2b31c471b52', 'SDM');
INSERT INTO "pengguna" VALUES ('Bapak Menteri', 'menteri', '0b9c96eb7dd1098cbf7b68ad926ea447', 'Eksekutif');

-- ----------------------------
-- Table structure for "sdm_rekap_jab_jk"
-- ----------------------------
DROP TABLE "sdm_rekap_jab_jk";
CREATE TABLE "public"."sdm_rekap_jab_jk" (
"no" int4 DEFAULT NULL NOT NULL,
"jabatan" varchar(30) DEFAULT NULL,
"jml_pria" int4 DEFAULT NULL,
"jml_wanita" int4 DEFAULT NULL,
CONSTRAINT "rekap_jab_jk_pkey" PRIMARY KEY ("no")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."sdm_rekap_jab_jk" OWNER TO "postgres";;

-- ----------------------------
-- Records of sdm_rekap_jab_jk
-- ----------------------------
INSERT INTO "sdm_rekap_jab_jk" VALUES ('1', 'Eselon I', '8', '2');
INSERT INTO "sdm_rekap_jab_jk" VALUES ('2', 'Eselon II', '20', '6');
INSERT INTO "sdm_rekap_jab_jk" VALUES ('3', 'Eselon III', '56', '15');
INSERT INTO "sdm_rekap_jab_jk" VALUES ('4', 'Eselon IV', '83', '54');
INSERT INTO "sdm_rekap_jab_jk" VALUES ('5', 'Staf / Petugas (Non-Eselon)', '125', '69');
INSERT INTO "sdm_rekap_jab_jk" VALUES ('6', 'Honorer', '263', '110');

-- ----------------------------
-- Table structure for "sdm_rekap_unit_stat"
-- ----------------------------
DROP TABLE "sdm_rekap_unit_stat";
CREATE TABLE "public"."sdm_rekap_unit_stat" (
"no" int2 DEFAULT NULL NOT NULL,
"unit_kerja" varchar(100) DEFAULT NULL,
"jml_pns" int4 DEFAULT NULL,
"jml_honor" int4 DEFAULT NULL,
CONSTRAINT "rekap_unit_stat_pkey" PRIMARY KEY ("no")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."sdm_rekap_unit_stat" OWNER TO "postgres";;

-- ----------------------------
-- Records of sdm_rekap_unit_stat
-- ----------------------------
INSERT INTO "sdm_rekap_unit_stat" VALUES ('1', 'Sekretariat Kementrian', '107', '180');
INSERT INTO "sdm_rekap_unit_stat" VALUES ('2', 'Deputi Bid. Pembiayaan', '69', '26');
INSERT INTO "sdm_rekap_unit_stat" VALUES ('3', 'Deputi Bid. Pengembangan Kawasan', '76', '41');
INSERT INTO "sdm_rekap_unit_stat" VALUES ('4', 'Deputi Bid. Perumahan Swadaya', '76', '42');
INSERT INTO "sdm_rekap_unit_stat" VALUES ('5', 'Deputi Bid. Perumahan Formal', '76', '35');
INSERT INTO "sdm_rekap_unit_stat" VALUES ('6', 'Inspektorat Kementrian', '7', '4');
INSERT INTO "sdm_rekap_unit_stat" VALUES ('7', 'Pusat Pengembangan Perumahan', '13', '23');
INSERT INTO "sdm_rekap_unit_stat" VALUES ('8', 'Pusat Pembiayaan Perumahan', '14', '22');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
