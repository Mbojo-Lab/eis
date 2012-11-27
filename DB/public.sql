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

Date: 2012-11-22 15:30:18
*/


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
INSERT INTO "agenda" VALUES ('1353467476000', null, 'tes', ' lkjkjkj lkjlkjklj lkjlkjkj kjlkjlkj lkjlkj', null);
INSERT INTO "agenda" VALUES ('1353639458000', null, 'Meeting', 'Dengan deputi2', null);
INSERT INTO "agenda" VALUES ('1353686416000', 'meeting', 'Demo Aplikasi', 'kikin kusumah kkkkk', 'www.kikinsoft.com');
INSERT INTO "agenda" VALUES ('1353799800000', 'meeting', 'Project A meeting', 'lkjlkjlkjlkjkj', '');
INSERT INTO "agenda" VALUES ('1353813545000', null, 'istirahat', 'Dirumah sajalah', null);
INSERT INTO "agenda" VALUES ('1353900642000', null, 'Keluar', 'jakarta bandung', null);

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
CONSTRAINT "anggaran_pkey" PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."anggaran" OWNER TO "postgres";;

-- ----------------------------
-- Records of anggaran
-- ----------------------------
INSERT INTO "anggaran" VALUES ('1', '2012', '1', '187.14', '1', '59.73', '4');
INSERT INTO "anggaran" VALUES ('2', '2012', '172', '1162.71', '0', '156.22', '8');
INSERT INTO "anggaran" VALUES ('3', '2012', '64', '45.51', '0', '0.00', '10');
INSERT INTO "anggaran" VALUES ('4', '2012', '95904', '653.93', '0', '0.00', '11');
INSERT INTO "anggaran" VALUES ('5', '2012', '150', '252.00', '0', '0.00', '12');
INSERT INTO "anggaran" VALUES ('6', '2012', '1057', '72.98', '0', '1.09', '13');
INSERT INTO "anggaran" VALUES ('7', '2012', '20000', '229.71', null, null, '16');
INSERT INTO "anggaran" VALUES ('8', '2012', '230000', '1632.69', null, null, '17');
INSERT INTO "anggaran" VALUES ('9', '2012', '7500', '3.45', null, '0.83', '19');
INSERT INTO "anggaran" VALUES ('10', '2012', '7762', '252.29', null, '5.06', '21');
INSERT INTO "anggaran" VALUES ('11', '2012', '9762', '333.50', null, '23.37', '22');
INSERT INTO "anggaran" VALUES ('12', '2012', '2020', '38.07', null, '2.90', '23');
INSERT INTO "anggaran" VALUES ('13', '2012', '13160', '81.33', null, '4.07', '24');
INSERT INTO "anggaran" VALUES ('14', '2012', '15180', '60.72', null, '3.75', '25');
INSERT INTO "anggaran" VALUES ('15', '2012', null, '600.00', null, null, '27');
INSERT INTO "anggaran" VALUES ('16', '2012', null, '108.22', null, '36.13', '28');
INSERT INTO "anggaran" VALUES ('17', '2012', null, '35.04', null, '15.51', '30');
INSERT INTO "anggaran" VALUES ('18', '2012', null, '179.16', null, null, '31');
INSERT INTO "anggaran" VALUES ('19', '2012', '189166', '7091.12', null, '530.16', '37');
INSERT INTO "anggaran" VALUES ('20', '2012', '30600', '191.24', null, null, '39');
INSERT INTO "anggaran" VALUES ('22', '2011', '1', '187.14', '1', '59.73', '4');
INSERT INTO "anggaran" VALUES ('23', '2011', '172', '1162.71', '0', '156.22', '8');
INSERT INTO "anggaran" VALUES ('24', '2011', '64', '45.51', '0', '0.00', '10');
INSERT INTO "anggaran" VALUES ('25', '2011', '95904', '653.93', '0', '0.00', '11');
INSERT INTO "anggaran" VALUES ('26', '2011', '150', '252.00', '0', '0.00', '12');
INSERT INTO "anggaran" VALUES ('27', '2011', '1057', '72.98', '0', '1.09', '13');
INSERT INTO "anggaran" VALUES ('28', '2011', '20000', '229.71', null, null, '16');
INSERT INTO "anggaran" VALUES ('29', '2011', '230000', '1632.69', null, null, '17');
INSERT INTO "anggaran" VALUES ('30', '2011', '7500', '3.45', null, '0.83', '19');
INSERT INTO "anggaran" VALUES ('31', '2011', '7762', '252.29', null, '5.06', '21');
INSERT INTO "anggaran" VALUES ('32', '2011', '9762', '333.50', null, '23.37', '22');
INSERT INTO "anggaran" VALUES ('33', '2011', '2020', '38.07', null, '2.90', '23');
INSERT INTO "anggaran" VALUES ('34', '2011', '13160', '81.33', null, '4.07', '24');
INSERT INTO "anggaran" VALUES ('35', '2011', '15180', '60.72', null, '3.75', '25');
INSERT INTO "anggaran" VALUES ('36', '2011', null, '600.00', null, null, '27');
INSERT INTO "anggaran" VALUES ('37', '2011', null, '108.22', null, '36.13', '28');
INSERT INTO "anggaran" VALUES ('38', '2011', null, '35.04', null, '15.51', '30');
INSERT INTO "anggaran" VALUES ('39', '2011', null, '179.16', null, null, '31');
INSERT INTO "anggaran" VALUES ('40', '2011', '189166', '7091.12', null, '530.16', '37');
INSERT INTO "anggaran" VALUES ('41', '2011', '30600', '191.24', null, null, '39');
INSERT INTO "anggaran" VALUES ('42', '2010', '1', '187.14', '1', '59.73', '4');
INSERT INTO "anggaran" VALUES ('43', '2010', '172', '1162.71', '0', '156.22', '8');
INSERT INTO "anggaran" VALUES ('44', '2010', '64', '45.51', '0', '0.00', '10');
INSERT INTO "anggaran" VALUES ('45', '2010', '95904', '653.93', '0', '0.00', '11');
INSERT INTO "anggaran" VALUES ('46', '2010', '150', '252.00', '0', '0.00', '12');
INSERT INTO "anggaran" VALUES ('47', '2010', '1057', '72.98', '0', '1.09', '13');
INSERT INTO "anggaran" VALUES ('48', '2010', '20000', '229.71', null, null, '16');
INSERT INTO "anggaran" VALUES ('49', '2010', '230000', '1632.69', null, null, '17');
INSERT INTO "anggaran" VALUES ('50', '2010', '7500', '3.45', null, '0.83', '19');
INSERT INTO "anggaran" VALUES ('51', '2010', '7762', '252.29', null, '5.06', '21');
INSERT INTO "anggaran" VALUES ('52', '2010', '9762', '333.50', null, '23.37', '22');
INSERT INTO "anggaran" VALUES ('53', '2010', '2020', '38.07', null, '2.90', '23');
INSERT INTO "anggaran" VALUES ('54', '2010', '13160', '81.33', null, '4.07', '24');
INSERT INTO "anggaran" VALUES ('55', '2010', '15180', '60.72', null, '3.75', '25');
INSERT INTO "anggaran" VALUES ('56', '2010', null, '600.00', null, null, '27');
INSERT INTO "anggaran" VALUES ('57', '2010', null, '108.22', null, '36.13', '28');
INSERT INTO "anggaran" VALUES ('58', '2010', null, '35.04', null, '15.51', '30');
INSERT INTO "anggaran" VALUES ('59', '2010', null, '179.16', null, null, '31');
INSERT INTO "anggaran" VALUES ('60', '2010', '189166', '7091.12', null, '530.16', '37');
INSERT INTO "anggaran" VALUES ('61', '2010', '30600', '191.24', null, null, '39');

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
INSERT INTO "ci_sessions" VALUES ('26d992020e76f9b6432e483231202f18', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:16.0) Gecko/20100101 Firefox/16.0', '1353572672', 'a:5:{s:9:"logged_in";i:1;s:7:"id_user";s:1:"1";s:5:"group";s:5:"admin";s:8:"username";s:5:"kikin";s:12:"nama_lengkap";s:13:"Kikin Kusumah";}');

-- ----------------------------
-- Table structure for "datapeta"
-- ----------------------------
DROP TABLE "datapeta";
CREATE TABLE "public"."datapeta" (
"nomor" int4 DEFAULT NULL NOT NULL,
"nmpop" varchar(100) DEFAULT NULL NOT NULL,
"almpop" text DEFAULT NULL NOT NULL,
"lat1" float8 DEFAULT NULL NOT NULL,
"lng1" float8 DEFAULT NULL NOT NULL,
"lat2" float8 DEFAULT NULL NOT NULL,
"lng2" float8 DEFAULT NULL NOT NULL,
"warna" varchar(10) DEFAULT NULL NOT NULL
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."datapeta" OWNER TO "postgres";;

-- ----------------------------
-- Records of datapeta
-- ----------------------------
INSERT INTO "datapeta" VALUES ('1', 'Paskal', 'Pasirkaliki 20', '-6.90057267466266', '107.601125016654', '-6.91130887969027', '107.612454667533', '#0000FF');
INSERT INTO "datapeta" VALUES ('2', 'Bandung Wetan', 'Jl. Taman Bunga 12', '-6.90091351031228', '107.612712159598', '-6.91292781009336', '107.637860551322', '#008000');
INSERT INTO "datapeta" VALUES ('3', 'soeta', 'jalan soeta', '-6.9136520666361', '107.612875238037', '-6.9224282635396', '107.637336984253', '#FFFF00');

-- ----------------------------
-- Table structure for "gis"
-- ----------------------------
DROP TABLE "gis";
CREATE TABLE "public"."gis" (
"no" varchar(10) DEFAULT NULL NOT NULL,
"title" varchar(20) DEFAULT NULL NOT NULL,
"x" float8 DEFAULT NULL NOT NULL,
"y" float8 DEFAULT NULL NOT NULL,
"address" varchar(50) DEFAULT NULL NOT NULL,
"desc" varchar(100) DEFAULT NULL,
"id_gis_group" int4 DEFAULT NULL,
CONSTRAINT "peta_icon_pkey" PRIMARY KEY ("no")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."gis" OWNER TO "postgres";;

-- ----------------------------
-- Records of gis
-- ----------------------------
INSERT INTO "gis" VALUES ('1', 'KEMENPERA', '-6.90700590614187', '107.632616296387', 'Jl. Raden Patah', null, '8');
INSERT INTO "gis" VALUES ('2', 'PSU', '-6.907', '107.6326', 'Jl. PSU', null, '11');

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
"sasaran" int4 DEFAULT NULL,
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

-- ----------------------------
-- Table structure for "pelanggan"
-- ----------------------------
DROP TABLE "pelanggan";
CREATE TABLE "public"."pelanggan" (
"acc_reg" varchar(100) DEFAULT NULL NOT NULL,
"no_reg" varchar(100) DEFAULT NULL NOT NULL,
"alamat" varchar(100) DEFAULT NULL NOT NULL,
"bandwidth" float8 DEFAULT NULL NOT NULL,
"status" varchar(255) DEFAULT NULL NOT NULL,
CONSTRAINT "pelanggan_pkey" PRIMARY KEY ("acc_reg")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."pelanggan" OWNER TO "postgres";;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO "pelanggan" VALUES ('bandung-dsl', '42234323', 'Jl.Bandung No.100', '4', 'Close');
INSERT INTO "pelanggan" VALUES ('buahbatu-dsl', '42234456', 'Jl.Buah Btu No.203', '3', 'Close');
INSERT INTO "pelanggan" VALUES ('fajar-dsl', '432432423', 'cibaduyut 25', '4', 'Close');
INSERT INTO "pelanggan" VALUES ('kopo-dsl', '42234569', 'taman kopo indah', '3', 'Close');
INSERT INTO "pelanggan" VALUES ('lpkia-dsl', '4222001', 'soekarno hatta 456', '5', 'Close');

-- ----------------------------
-- Table structure for "pengguna"
-- ----------------------------
DROP TABLE "pengguna";
CREATE TABLE "public"."pengguna" (
"id_user" int4 DEFAULT NULL NOT NULL,
"nama_lengkap" varchar(100) DEFAULT NULL NOT NULL,
"username" varchar(50) DEFAULT NULL NOT NULL,
"password" varchar(50) DEFAULT NULL NOT NULL,
"group" varchar(20) DEFAULT NULL NOT NULL,
CONSTRAINT "user_pkey" PRIMARY KEY ("id_user")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."pengguna" OWNER TO "postgres";;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO "pengguna" VALUES ('1', 'Kikin Kusumah', 'kikin', 'kikin', 'admin');
INSERT INTO "pengguna" VALUES ('2', 'Admin', 'admin', 'adminkemenpera', 'admin');

-- ----------------------------
-- Table structure for "peta_icon"
-- ----------------------------
DROP TABLE "peta_icon";
CREATE TABLE "public"."peta_icon" (
"no" int4 DEFAULT NULL NOT NULL,
"accreg" varchar(100) DEFAULT NULL NOT NULL,
"jenis" varchar(30) DEFAULT NULL NOT NULL,
"x" float8 DEFAULT NULL NOT NULL,
"y" float8 DEFAULT NULL NOT NULL,
"nmpop" varchar(100) DEFAULT NULL NOT NULL
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."peta_icon" OWNER TO "postgres";;

-- ----------------------------
-- Records of peta_icon
-- ----------------------------
INSERT INTO "peta_icon" VALUES ('1', 'bandung-dsl', 'Veloci', '-6.90444966569503', '107.612188592529', 'soeta');
INSERT INTO "peta_icon" VALUES ('2', 'kopo-dsl', 'Adsl', '-6.90700590614187', '107.632616296387', 'soeta');
INSERT INTO "peta_icon" VALUES ('3', 'buahbatu-dsl', 'Veloci', '-6.90905088855266', '107.616823449707', 'Paskal');
INSERT INTO "peta_icon" VALUES ('4', 'belum milih', 'Adsl', '-6.23659496858678', '106.800619199848', 'Paskal');
INSERT INTO "peta_icon" VALUES ('5', 'belum milih', 'Adsl', '-6.23725621927867', '106.798961594677', 'Bandung');

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
