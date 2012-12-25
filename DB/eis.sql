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

Date: 2012-12-21 17:10:34
*/


-- ----------------------------
-- Table structure for "public"."absen"
-- ----------------------------
DROP TABLE "public"."absen";
CREATE TABLE "public"."absen" (
"jabatan" varchar(100) DEFAULT NULL::character varying NOT NULL,
"tgl" date NOT NULL,
"tidak_hadir" int2,
"terlambat" int2,
"hadir" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of absen
-- ----------------------------
INSERT INTO "public"."absen" VALUES ('Deputi Bid. Pembiayaan', '2012-12-14', '5', '4', '6');
INSERT INTO "public"."absen" VALUES ('Deputi Bid. Pengembangan Kawasan', '2012-12-14', '4', '3', '5');
INSERT INTO "public"."absen" VALUES ('Deputi Bid. Perumahan Formal', '2012-12-14', '10', '6', '20');
INSERT INTO "public"."absen" VALUES ('Deputi Bid. Perumahan Swadaya', '2012-12-14', '2', '1', '3');
INSERT INTO "public"."absen" VALUES ('Inspektorat Kementrian', '2012-12-14', '4', '3', '5');
INSERT INTO "public"."absen" VALUES ('Pusat Pembiayaan Perumahan', '2012-12-14', '6', '5', '10');
INSERT INTO "public"."absen" VALUES ('Pusat Pengembangan Perumahan', '2012-12-14', '5', '4', '6');
INSERT INTO "public"."absen" VALUES ('Sekretariat Kementrian', '2012-12-14', '3', '2', '4');

-- ----------------------------
-- Table structure for "public"."absensi"
-- ----------------------------
DROP TABLE "public"."absensi";
CREATE TABLE "public"."absensi" (
"nip" varchar(16) DEFAULT NULL::character varying NOT NULL,
"nama" varchar(40) DEFAULT NULL::character varying,
"unitkerja" varchar(40) DEFAULT NULL::character varying,
"masuk" varchar(8) DEFAULT NULL::character varying,
"tgl_absen" date NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of absensi
-- ----------------------------
INSERT INTO "public"."absensi" VALUES ('101349', 'Dwi Restu Suyitno ', 'Sekretariat', '07:35:22', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('101349', 'Dwi Restu Suyitno ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('1195607291983032', 'Amin Mirna ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('1195607291983032', 'Amin Mirna ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195112011978111', 'Prawoto Sukarso ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195112011978111', 'Prawoto Sukarso ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195201291984031', 'Henry Fauzi ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195201291984031', 'Henry Fauzi ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195204031985031', 'Eddy Pudjianto ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195204031985031', 'Eddy Pudjianto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195302261986031', 'Susilo Ardimarwoto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195302261986031', 'Susilo Ardimarwoto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195308121982121', 'A. Budi Susilo Sadiman ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195308121982121', 'A. Budi Susilo Sadiman ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195311071982022', 'Hetty Adriasih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195311071982022', 'Hetty Adriasih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195406051986031', 'Bambang Hariadi ', 'Swadaya', '07:31:52', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195406051986031', 'Bambang Hariadi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195409161986031', 'Indra Tarigan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195409161986031', 'Indra Tarigan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195502081982121', 'Nugraha Soedjana ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195502081982121', 'Nugraha Soedjana ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195502121982031', 'Handoko ', 'Kawasan', '07:32:33', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195502121982031', 'Handoko ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195508211985031', 'Rudy Hermanto Nandar ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195508211985031', 'Rudy Hermanto Nandar ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195509251985011', 'Hazaddin Tende Sitepu ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195509251985011', 'Hazaddin Tende Sitepu ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195603041985012', 'Dewi Gayatri Bujonowati ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195603041985012', 'Dewi Gayatri Bujonowati ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195603041985031', 'Pangihutan Marpaung ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195603041985031', 'Pangihutan Marpaung ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195603271982121', 'Parpunguan Sianipar ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195603271982121', 'Parpunguan Sianipar ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195604011987031', 'R. Mochamad Subagio ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195604011987031', 'R. Mochamad Subagio ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195604081990031', 'I Ketut Ramawisada ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195604081990031', 'I Ketut Ramawisada ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195604211986012', 'Joke Kartinah ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195604211986012', 'Joke Kartinah ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195605261982121', 'Satriadi ', 'Kawasan', '02:19:29', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195605261982121', 'Satriadi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195606241983021', 'Djedjen Nurdjaman ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195606241983021', 'Djedjen Nurdjaman ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195607051977091', 'Hermansyah ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195607051977091', 'Hermansyah ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195607161986031', 'Iskandar Saleh ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195607161986031', 'Iskandar Saleh ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195608051991031', 'Parlaungan Situmeang ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195608051991031', 'Parlaungan Situmeang ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195608121982111', 'Warsono ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195608121982111', 'Warsono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195608161985031', 'Nur Maksudi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195608161985031', 'Nur Maksudi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195608191978031', 'Hamdullah Fikri ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195608191978031', 'Hamdullah Fikri ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195608221986032', 'Nafisah ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195608221986032', 'Nafisah ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195609071978031', 'Sudjoko Wardojo ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195609071978031', 'Sudjoko Wardojo ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195609091987021', 'Hady Mulyono ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195609091987021', 'Hady Mulyono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195610191986032', 'Olivia Palinggi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195610191986032', 'Olivia Palinggi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195611161987021', 'Suradi ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195611161987021', 'Suradi ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195701161981031', 'Ismu Rahardjo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195701161981031', 'Ismu Rahardjo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195701261981032', 'Siti Budihartati ', 'Kawasan', '07:37:04', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195701261981032', 'Siti Budihartati ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195701281987021', 'Kriya Arsjah Sjahrir ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195701281987021', 'Kriya Arsjah Sjahrir ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195703081981031', 'Ngumar ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195703081981031', 'Ngumar ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195703181989031', 'Saifudin ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195703181989031', 'Saifudin ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195703231982111', 'Arifin Sihombing ', 'Pembiayaan', '07:01:08', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195703231982111', 'Arifin Sihombing ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195704081986031', 'Bernaldy ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195704081986031', 'Bernaldy ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195705051984111', 'Agus Suharto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195705051984111', 'Agus Suharto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195705131986031', 'Sinung Yuwono ', 'Pembiayaan', '07:14:50', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195705131986031', 'Sinung Yuwono ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195706141988021', 'Bambang Purwanto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195706141988021', 'Bambang Purwanto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195706231982121', 'Rebo Widodo ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195706231982121', 'Rebo Widodo ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195707061986011', 'Taruh ', 'Swadaya', '07:28:23', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195707061986011', 'Taruh ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195707171985021', 'Odong Saputra ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195707171985021', 'Odong Saputra ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195707241988031', 'Syah Junaedi ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195707241988031', 'Syah Junaedi ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195708051979031', 'Agus Sumargiarto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195708051979031', 'Agus Sumargiarto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195708291985031', 'Intut Witriagnoto ', 'Kawasan', '07:20:33', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195708291985031', 'Intut Witriagnoto ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195709191985032', 'Fanny Palebangan ', 'Swadaya', '07:37:54', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195709191985032', 'Fanny Palebangan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195710151985031', 'Jamil Ansari ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195710151985031', 'Jamil Ansari ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195711221982121', 'Arief Santoso Utomo ', 'Pusat Pembiayaan Perumahan', '06:44:10', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195711221982121', 'Arief Santoso Utomo ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195711231980121', 'Abu Supeno ', 'Pembiayaan', '06:19:17', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195711231980121', 'Abu Supeno ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195711241993022', 'Tity Nestri Kusumawardhani ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195711241993022', 'Tity Nestri Kusumawardhani ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195801041983032', 'Triantini ', 'Kawasan', '08:19:56', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195801041983032', 'Triantini ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195801121991021', 'Manahan Sinaga ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195801121991021', 'Manahan Sinaga ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195802011986031', 'Sudarman ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195802011986031', 'Sudarman ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195802061986031', 'Herman Guskamaril ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195802061986031', 'Herman Guskamaril ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195802261991031', 'Lita Matongan ', 'Kawasan', '07:07:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195802261991031', 'Lita Matongan ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195804271990032', 'Widiani Sekarningsih ', 'Kawasan', '07:32:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195804271990032', 'Widiani Sekarningsih ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195805241983031', 'Bambang Nusantara ', 'Pembiayaan', '07:28:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195805241983031', 'Bambang Nusantara ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195805311986031', 'Sri Hartoyo ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195805311986031', 'Sri Hartoyo ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195805311988032', 'Dyah Saraswati ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195805311988032', 'Dyah Saraswati ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195806051985032', 'Sri Nurhayati ', 'Swadaya', '07:38:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195806051985032', 'Sri Nurhayati ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195806071985011', 'Hendi Hendarmin ', 'Pembiayaan', '07:17:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195806071985011', 'Hendi Hendarmin ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195806111980111', 'Muhammad Asrori ', 'Sekretariat', '06:53:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195806111980111', 'Muhammad Asrori ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195806131989121', 'Totok Kunto Prabowo ', 'Formal', '06:53:24', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195806131989121', 'Totok Kunto Prabowo ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195806161985032', 'Sri Haryati ', 'Kawasan', '07:38:17', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195806161985032', 'Sri Haryati ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195806281986021', 'Nanang Sofwan Santosa ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195806281986021', 'Nanang Sofwan Santosa ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195807111990031', 'Hardi Simamora ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195807111990031', 'Hardi Simamora ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195807171985011', 'Amran ', 'Swadaya', '02:43:59', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195807171985011', 'Amran ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195807281986011', 'Endang Juanda ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195807281986011', 'Endang Juanda ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195808161988031', 'Bambang Sucipto Yuwono ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195808161988031', 'Bambang Sucipto Yuwono ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195809121986032', 'Baby Setiawati Dipokusumo, Ir, ', 'Pembiayaan', '08:35:53', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195809121986032', 'Baby Setiawati Dipokusumo, Ir, ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195809221986032', 'Lana Winayanti ', 'Pembiayaan', '07:27:54', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195809221986032', 'Lana Winayanti ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195810101982121', 'Riyadi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195810101982121', 'Riyadi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195810121982111', 'Budiyono ', 'Kawasan', '08:02:55', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195810121982111', 'Budiyono ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195812091986031', 'Poltak Sibuea ', 'Swadaya', '07:44:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195812091986031', 'Poltak Sibuea ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195901141991011', 'Mardjuki ', 'Formal', '05:52:47', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195901141991011', 'Mardjuki ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195901311991032', 'Tejowati Kusumaningrum ', 'Pembiayaan', '07:03:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195901311991032', 'Tejowati Kusumaningrum ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195902081993032', 'Romlah ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195902081993032', 'Romlah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195903231985031', 'Zahrullo ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195903231985031', 'Zahrullo ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195903291986031', 'Edy Rianto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195903291986031', 'Edy Rianto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195904041989031', 'priyo Puryanto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195904041989031', 'priyo Puryanto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195904091983031', 'Sugiyamto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195904091983031', 'Sugiyamto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195904271987032', 'Sri Dewantri ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195904271987032', 'Sri Dewantri ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195905141980122', 'Rd. Rr. Erna Irjanti ', 'Sekretariat', '06:59:11', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195905141980122', 'Rd. Rr. Erna Irjanti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195906061990031', 'Rohmatu ', 'Formal', '07:04:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195906061990031', 'Rohmatu ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195907171981121', 'Tri Prijana ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195907171981121', 'Tri Prijana ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195907171982121', 'Tatang Haris ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195907171982121', 'Tatang Haris ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195907241983011', 'Paryadi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195907241983011', 'Paryadi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195908021988032', 'Soraya ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195908021988032', 'Soraya ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195908071982111', 'Muhlisun ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195908071982111', 'Muhlisun ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195909081983011', 'Subardi ', 'Formal', '07:56:17', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195909081983011', 'Subardi ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195909101989011', 'Sunardi ', 'Sekretariat', '07:46:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195909101989011', 'Sunardi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195910041991021', 'Roch Dianto ', 'Swadaya', '06:31:51', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195910041991021', 'Roch Dianto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195910071986031', 'Mochamad Anwar ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195910071986031', 'Mochamad Anwar ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195910121989022', 'Maritje Wattimena ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195910121989022', 'Maritje Wattimena ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195910211982121', 'FX Budi Prasetyo ', 'Kawasan', '07:39:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195910211982121', 'FX Budi Prasetyo ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195910291994031', 'Tubagus Ronni Mulyadi ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195910291994031', 'Tubagus Ronni Mulyadi ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195911051989032', 'Lavinia Adiyati ', 'Swadaya', '06:10:16', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195911051989032', 'Lavinia Adiyati ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195912041982031', 'Rahendra ', 'Formal', '07:04:09', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195912041982031', 'Rahendra ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195912171984021', 'Muhammad Dimyati ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195912171984021', 'Muhammad Dimyati ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('195912181991032', 'Anastasia Alexandriana ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('195912181991032', 'Anastasia Alexandriana ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196001091989031', 'H. Syarif Burhanuddin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196001091989031', 'H. Syarif Burhanuddin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196001201982031', 'Supoyo, ', 'Swadaya', '08:28:34', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196001201982031', 'Supoyo, ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196003041989011', 'Marsudi ', 'Sekretariat', '07:26:19', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196003041989011', 'Marsudi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196003061983031', 'Likin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196003061983031', 'Likin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196003121985101', 'Rifaid Muhamad Nur ', 'Pembiayaan', '06:55:38', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196003121985101', 'Rifaid Muhamad Nur ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196003141984121', 'Arwan Setiawan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196003141984121', 'Arwan Setiawan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196003151982102', 'Kurniasih ', 'Pembiayaan', '07:33:27', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196003151982102', 'Kurniasih ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196003151984022', 'Nanik Setiawati ', 'Sekretariat', '06:04:03', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196003151984022', 'Nanik Setiawati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196003311991031', 'Didik Sunardi ', 'Pembiayaan', '07:09:09', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196003311991031', 'Didik Sunardi ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196004111983032', 'Dwi Sunarti ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196004111983032', 'Dwi Sunarti ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196004211989111', 'Iwan ', 'Pembiayaan', '06:47:43', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196004211989111', 'Iwan ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196004221985011', 'Wahyurip ', 'Pembiayaan', '08:02:35', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196004221985011', 'Wahyurip ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196004291990031', 'Kadino Trimono ', 'Pembiayaan', '07:39:33', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196004291990031', 'Kadino Trimono ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196005241990032', 'Merlina Rubiyati ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196005241990032', 'Merlina Rubiyati ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196006041988031', 'Lukman Hakim ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196006041988031', 'Lukman Hakim ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196006061982112', 'Tukilah ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196006061982112', 'Tukilah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196006101982121', 'Gatot Hanif ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196006101982121', 'Gatot Hanif ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196007111989031', 'Mochamad Fadella ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196007111989031', 'Mochamad Fadella ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196007231987021', 'Tris Yunarto ', 'Sekretariat', '06:50:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196007231987021', 'Tris Yunarto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196008011990031', 'Adang Sutara ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196008011990031', 'Adang Sutara ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196008131983011', 'Udi Indriyonoto ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196008131983011', 'Udi Indriyonoto ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196009051994031', 'Efendi Manurung ', 'Formal', '07:45:15', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196009051994031', 'Efendi Manurung ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196009111991011', 'Sutriyono ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196009111991011', 'Sutriyono ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196009252006041', 'Sukiman ', 'Sekretariat', '07:35:43', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196009252006041', 'Sukiman ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196010161984122', 'Budi Suliyanti ', 'Sekretariat', '07:46:48', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196010161984122', 'Budi Suliyanti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196010181985022', 'Evi Sofia Rachmawati ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196010181985022', 'Evi Sofia Rachmawati ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196011211991031', 'Lilik Priyanto Hartadi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196011211991031', 'Lilik Priyanto Hartadi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196012271982121', 'Pamularso ', 'Pembiayaan', '06:37:52', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196012271982121', 'Pamularso ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196012311982111', 'I Nyoman sutama ', 'Sekretariat', '06:47:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196012311982111', 'I Nyoman sutama ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196101011989032', 'Cut Lisa ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196101011989032', 'Cut Lisa ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196103041989031', 'Dedi Sunardi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196103041989031', 'Dedi Sunardi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196103071992031', 'Slamet ', 'Kawasan', '06:04:52', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196103071992031', 'Slamet ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196103081981091', 'Ismail Datau ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196103081981091', 'Ismail Datau ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196103161990121', 'Karsino ', 'Swadaya', '07:03:52', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196103161990121', 'Karsino ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196104011989031', 'Iskandar Zulkarnaen ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196104011989031', 'Iskandar Zulkarnaen ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196104011991011', 'Suparmo ', 'Kawasan', '03:00:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196104011991011', 'Suparmo ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196104041990011', 'Kukuh Firmanto ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196104041990011', 'Kukuh Firmanto ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196104051981031', 'Irwan Pujilaksana ', 'Kawasan', '07:57:39', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196104051981031', 'Irwan Pujilaksana ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196105101992032', 'Irma Yanti ', 'Kawasan', '07:12:04', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196105101992032', 'Irma Yanti ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196105221981032', 'Saptarini ', 'Sekretariat', '07:20:52', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196105221981032', 'Saptarini ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196107021994011', 'Bhayu Gyotomo Dhiwa ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196107021994011', 'Bhayu Gyotomo Dhiwa ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196107121989121', 'Eko Heripoerwanto ', 'Swadaya', '08:03:55', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196107121989121', 'Eko Heripoerwanto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196108081989032', 'Patria Satyawati P ', 'Pembiayaan', '07:25:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196108081989032', 'Patria Satyawati P ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196110071986011', 'Budi Yatno ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196110071986011', 'Budi Yatno ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196111042007011', 'Ngadimin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196111042007011', 'Ngadimin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196111161990081', 'Budi Winarno ', 'Kawasan', '07:45:50', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196111161990081', 'Budi Winarno ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196111281987022', 'Rr. Gunarti ', 'Swadaya', '08:01:31', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196111281987022', 'Rr. Gunarti ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196112121982112', 'Efi Alfiah ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196112121982112', 'Efi Alfiah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196112291993031', 'Sutarno ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196112291993031', 'Sutarno ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196201221984121', 'Jaelani ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196201221984121', 'Jaelani ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196201272007011', 'Eka Widodo ', 'Sekretariat', '07:11:04', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196201272007011', 'Eka Widodo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196202211987021', 'Kamaluddin ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196202211987021', 'Kamaluddin ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196203011991022', 'Rumini ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196203011991022', 'Rumini ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196203211997031', 'Firmawan Edwin Tardianto ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196203211997031', 'Firmawan Edwin Tardianto ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196204041993011', 'Pidin Hapidin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196204041993011', 'Pidin Hapidin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196205091985031', 'Agusny Gunawan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196205091985031', 'Agusny Gunawan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196205111987022', 'Sri Rusmiati ', 'Kawasan', '06:25:10', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196205111987022', 'Sri Rusmiati ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196205151996031', 'Hairul Sitepu ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196205151996031', 'Hairul Sitepu ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196206051986011', 'Arief Karyawan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196206051986011', 'Arief Karyawan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196206101981031', 'Warijan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196206101981031', 'Warijan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196207072007101', 'Soetrisno ', 'Pembiayaan', '07:46:58', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196207072007101', 'Soetrisno ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196207241989111', 'Mundjin ', 'Sekretariat', '05:47:29', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196207241989111', 'Mundjin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196207281987021', 'Muhammad Abdul Syukur Mulyowibowo ', 'Pembiayaan', '07:03:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196207281987021', 'Muhammad Abdul Syukur Mulyowibowo ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196208211992031', 'Rinza Ekoyanto ', 'Formal', '07:04:29', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196208211992031', 'Rinza Ekoyanto ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196208281992021', 'Kaswandi ', 'Sekretariat', '06:37:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196208281992021', 'Kaswandi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196209151987022', 'Suprapti ', 'Kawasan', '08:05:34', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196209151987022', 'Suprapti ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196209211999032', 'Niken Nawangsasi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196209211999032', 'Niken Nawangsasi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196209271987032', 'Tuti Hernawati ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196209271987032', 'Tuti Hernawati ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196210121989032', 'Atik Nierani ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196210121989032', 'Atik Nierani ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196210201997031', 'Erizal ', 'Kawasan', '07:30:24', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196210201997031', 'Erizal ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196210251987021', 'Heru Cokro ', 'Swadaya', '08:08:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196210251987021', 'Heru Cokro ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196211121990031', 'Kuswardono ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196211121990031', 'Kuswardono ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196303152002121', 'Sutendi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196303152002121', 'Sutendi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196303291994031', 'Zufri Zetkas Siregar ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196303291994031', 'Zufri Zetkas Siregar ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196304061993121', 'Andi Silmi Safril ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196304061993121', 'Andi Silmi Safril ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196305161986031', 'Dwi Suryadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196305161986031', 'Dwi Suryadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196305221987031', 'Saiful Anwar ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196305221987031', 'Saiful Anwar ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196305281985031', 'Muhammad Yusuf ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196305281985031', 'Muhammad Yusuf ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196306011992031', 'Agus Salim ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196306011992031', 'Agus Salim ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196306161998031', 'Omri Sianturi ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196306161998031', 'Omri Sianturi ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196307081989031', 'Haris Sudaryono ', 'Swadaya', '07:03:24', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196307081989031', 'Haris Sudaryono ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196307241991012', 'Early Chofiaty ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196307241991012', 'Early Chofiaty ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196307301987032', 'Saptiati Prihastuti ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196307301987032', 'Saptiati Prihastuti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196308311991032', 'Wara Novela ', 'Sekretariat', '07:04:00', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196308311991032', 'Wara Novela ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196309111991021', 'Tofik Khaerudin ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196309111991021', 'Tofik Khaerudin ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196309181999032', 'Rita Komalasari ', 'Kawasan', '07:33:17', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196309181999032', 'Rita Komalasari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196309281986031', 'Suradi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196309281986031', 'Suradi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196310072007012', 'Cicih Nurnaningsih ', 'Formal', '06:37:08', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196310072007012', 'Cicih Nurnaningsih ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196310141993031', 'Firdaus ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196310141993031', 'Firdaus ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196310231985032', 'Retno Pudjiastuti ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196310231985032', 'Retno Pudjiastuti ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196311071990031', 'Bambang Triatmoko ', 'Pembiayaan', '07:19:47', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196311071990031', 'Bambang Triatmoko ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196311191996032', 'Sri Handayani ', 'Formal', '08:25:26', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196311191996032', 'Sri Handayani ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196311291992031', 'Iwan Nurwanto ', 'Pembiayaan', '07:18:49', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196311291992031', 'Iwan Nurwanto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196312311990031', 'Sakino ', 'Swadaya', '07:03:17', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196312311990031', 'Sakino ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196403041989031', 'Kristofel ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196403041989031', 'Kristofel ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196404231994031', 'Sukowiyono ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196404231994031', 'Sukowiyono ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196404271990032', 'Bertua Aprilyn Saraswaty ', 'Sekretariat', '02:19:36', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196404271990032', 'Bertua Aprilyn Saraswaty ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196405201990091', 'Abidin ', 'Sekretariat', '07:19:26', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196405201990091', 'Abidin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196405281996031', 'Edo Iskandar ', 'Kawasan', '07:23:46', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196405281996031', 'Edo Iskandar ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196407011987031', 'Eko Supartono ', 'Pembiayaan', '07:35:54', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196407011987031', 'Eko Supartono ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196407281991012', 'Lies Indriati ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196407281991012', 'Lies Indriati ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196408061989031', 'Rahmat ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196408061989031', 'Rahmat ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196408281992031', 'Arviansyah ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196408281992031', 'Arviansyah ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196409141993031', 'Khairuddin Thabrani ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196409141993031', 'Khairuddin Thabrani ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196409191989032', 'Roem Indraningsih ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196409191989032', 'Roem Indraningsih ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196409192002121', 'Katman ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196409192002121', 'Katman ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196411101989032', 'Nurcahaya ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196411101989032', 'Nurcahaya ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196411102009111', 'Mochamad Ngudiyo Suroso ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196411102009111', 'Mochamad Ngudiyo Suroso ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196412051987031', 'Muryata ', 'Sekretariat', '07:05:36', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196412051987031', 'Muryata ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196412312009111', 'Kisnoto ', 'Pembiayaan', '07:25:57', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196412312009111', 'Kisnoto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196501181989032', 'Nurlaili ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196501181989032', 'Nurlaili ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196501221992032', 'Diah Parahita ', 'Sekretariat', '06:45:09', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196501221992032', 'Diah Parahita ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196501281992032', 'Wahyu Widayati ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196501281992032', 'Wahyu Widayati ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196502201989032', 'Krisnawati ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196502201989032', 'Krisnawati ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196503101989031', 'Tatang Supiatna ', 'Kawasan', '06:40:49', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196503101989031', 'Tatang Supiatna ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196503121987032', 'Tri Pudji Astuti ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196503121987032', 'Tri Pudji Astuti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196503131985032', 'Sumarni ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196503131985032', 'Sumarni ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196504051992031', 'Didiek Hardijanto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196504051992031', 'Didiek Hardijanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196504061985032', 'Suharlin ', 'Kawasan', '06:54:57', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196504061985032', 'Suharlin ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196504281994032', 'Vikari Soelandjari ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196504281994032', 'Vikari Soelandjari ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196506121998022', 'Hanny Junita Salendu ', 'Pembiayaan', '07:20:28', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196506121998022', 'Hanny Junita Salendu ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196506281993032', 'Sutji Mintarti ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196506281993032', 'Sutji Mintarti ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196507012005021', 'Ngatmin ', 'Sekretariat', '07:03:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196507012005021', 'Ngatmin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196507091989111', 'Muslih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196507091989111', 'Muslih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196507191985031', 'Mujiyono ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196507191985031', 'Mujiyono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196507251992021', 'Tridadi ', 'Sekretariat', '08:34:17', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196507251992021', 'Tridadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196508081994031', 'Arbai ', 'Kawasan', '08:02:52', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196508081994031', 'Arbai ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196508171989031', 'Agus Sutamin ', 'Formal', '06:49:21', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196508171989031', 'Agus Sutamin ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196508201992031', 'Rustomo ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196508201992031', 'Rustomo ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196508251996031', 'Soni ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196508251996031', 'Soni ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196509061987021', 'Sumadiyono ', 'Sekretariat', '07:06:47', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196509061987021', 'Sumadiyono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196509102007011', 'Naman Suherman ', 'Sekretariat', '07:05:05', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196509102007011', 'Naman Suherman ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196509191998032', 'Endang Sumarmi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196509191998032', 'Endang Sumarmi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196510231990102', 'Conefianti ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196510231990102', 'Conefianti ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196511031991011', 'Sudiya Permana ', 'Sekretariat', '07:21:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196511031991011', 'Sudiya Permana ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196601032005021', 'Romlih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196601032005021', 'Romlih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196603021996031', 'Heri Gunawan ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196603021996031', 'Heri Gunawan ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196603171990091', 'Acep Atmaja ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196603171990091', 'Acep Atmaja ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196603231990031', 'Udung Herman ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196603231990031', 'Udung Herman ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196605071989111', 'Ahmad Surojo ', 'Sekretariat', '07:20:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196605071989111', 'Ahmad Surojo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196607021994031', 'Arma Abdullah ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196607021994031', 'Arma Abdullah ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196609182003122', 'Aisah Dewi Setyawati ', 'Pusat Pembiayaan Perumahan', '07:10:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196609182003122', 'Aisah Dewi Setyawati ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196609252008122', 'Istiarini ', 'Kawasan', '06:43:51', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196609252008122', 'Istiarini ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196610031992032', 'Dahlia Napitupulu ', 'Pembiayaan', '07:03:33', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196610031992032', 'Dahlia Napitupulu ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196610181995031', 'Samson Sibarani ', 'Pembiayaan', '07:19:58', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196610181995031', 'Samson Sibarani ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196611011990031', 'Sukimin ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196611011990031', 'Sukimin ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196611221994032', 'Fina Sjafinas ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196611221994032', 'Fina Sjafinas ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196612161996031', 'R. Budiono Subambang ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196612161996031', 'R. Budiono Subambang ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196701031991012', 'Asri Bonita ', 'Kawasan', '06:21:57', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196701031991012', 'Asri Bonita ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196702191991021', 'Kethut Djadi Hervianianto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196702191991021', 'Kethut Djadi Hervianianto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196703131998031', 'Jaffri ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196703131998031', 'Jaffri ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196704191994031', 'Fitrah Nur ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196704191994031', 'Fitrah Nur ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196706191995021', 'Dedy Slamet Budisusetyo ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196706191995021', 'Dedy Slamet Budisusetyo ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196706221997032', 'Dwi Hanani Setyawati ', 'Pembiayaan', '06:59:27', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196706221997032', 'Dwi Hanani Setyawati ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196706291993032', 'Suminarti ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196706291993032', 'Suminarti ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196708091998031', 'Bambang Irawan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196708091998031', 'Bambang Irawan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196710171991031', 'Mokhamad Subkhan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196710171991031', 'Mokhamad Subkhan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196712031998031', 'Renaldy ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196712031998031', 'Renaldy ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196801012007011', 'Alim Nurhadi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196801012007011', 'Alim Nurhadi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196801071999032', 'Muria Istamtiah ', 'Kawasan', '07:52:38', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196801071999032', 'Muria Istamtiah ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196803191996031', 'Bisma Staniarto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196803191996031', 'Bisma Staniarto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196804211989031', 'Rubiyo ', 'Sekretariat', '07:39:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196804211989031', 'Rubiyo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196807041990032', 'Jannata Nanda ', 'Sekretariat', '07:21:39', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196807041990032', 'Jannata Nanda ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196807061994031', 'Tri Wahyusidi ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196807061994031', 'Tri Wahyusidi ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196807081994011', 'Renggo Pitijo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196807081994011', 'Renggo Pitijo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196808271997031', 'Agus Sulaeman ', 'Pembiayaan', '08:41:54', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196808271997031', 'Agus Sulaeman ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196810312002121', 'Kasno ', 'Sekretariat', '07:48:39', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196810312002121', 'Kasno ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196811051997031', 'Andri Yusandra ', 'Sekretariat', '08:26:23', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196811051997031', 'Andri Yusandra ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196812061997032', 'Sitti Roosilawati ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196812061997032', 'Sitti Roosilawati ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196812161996031', 'Toni Rusmarsidik B. Ekoputro ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196812161996031', 'Toni Rusmarsidik B. Ekoputro ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196812201993121', 'Mochamad Yusuf Hariagung ', 'Pusat Pembiayaan Perumahan', '07:06:18', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196812201993121', 'Mochamad Yusuf Hariagung ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196901011996031', 'Eko Suhendratma ', 'Pembiayaan', '07:42:23', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196901011996031', 'Eko Suhendratma ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196901261994011', 'Iwan Gunawan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196901261994011', 'Iwan Gunawan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196904172001121', 'Kreshnariza Harahap ', 'Pembiayaan', '07:43:50', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196904172001121', 'Kreshnariza Harahap ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196905012000031', 'Bent Brando ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196905012000031', 'Bent Brando ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196905132002121', 'Sumarno ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196905132002121', 'Sumarno ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196905261994031', 'Agus Subiantoro ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196905261994031', 'Agus Subiantoro ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196908121998031', 'Binsar Jeffri Sirait ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196908121998031', 'Binsar Jeffri Sirait ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196909302009111', 'Iwan Setiawan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196909302009111', 'Iwan Setiawan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('196910181996032', 'Reni Ahiantini ', 'Pembiayaan', '07:52:21', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('196910181996032', 'Reni Ahiantini ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197003012008121', 'Marsudi ', 'Sekretariat', '06:38:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197003012008121', 'Marsudi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197003262008122', 'Martha Samosir ', 'Pembiayaan', '06:58:55', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197003262008122', 'Martha Samosir ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197003271991032', 'Triwi Umi Martati ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197003271991032', 'Triwi Umi Martati ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197006221997031', 'Nostra Tarigan ', 'Sekretariat', '08:16:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197006221997031', 'Nostra Tarigan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197008201997031', 'R. Haryo Bekti Martoyoedo ', 'Pembiayaan', '07:42:26', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197008201997031', 'R. Haryo Bekti Martoyoedo ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197009022008121', 'Agung Siswanto ', 'Sekretariat', '07:22:01', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197009022008121', 'Agung Siswanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197011241992031', 'Mendung Sunarno ', 'Sekretariat', '07:23:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197011241992031', 'Mendung Sunarno ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197012301998031', 'Teddy Paul H Siagian ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197012301998031', 'Teddy Paul H Siagian ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197101012007011', 'Sahri ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197101012007011', 'Sahri ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197101291996032', 'Mariani ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197101291996032', 'Mariani ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197103231996031', 'Martanto Boedi Joewono ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197103231996031', 'Martanto Boedi Joewono ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197104082002121', 'Aswan Nizar ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197104082002121', 'Aswan Nizar ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197104091998032', 'Ariandini Jektiningsih ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197104091998032', 'Ariandini Jektiningsih ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197105172002121', 'Ade Suryadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197105172002121', 'Ade Suryadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197105231994031', 'Rudhy Ardhya Nanto ', 'Sekretariat', '07:50:51', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197105231994031', 'Rudhy Ardhya Nanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197107151996032', 'Julin Fiftina ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197107151996032', 'Julin Fiftina ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197110072000032', 'Oktavia Asril ', 'Kawasan', '07:55:16', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197110072000032', 'Oktavia Asril ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197205081997031', 'Poniman ', 'Sekretariat', '07:34:13', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197205081997031', 'Poniman ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197207052001121', 'SN Permana Lazuardy ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197207052001121', 'SN Permana Lazuardy ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197207292002121', 'Julian Fernando Nainggolan ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197207292002121', 'Julian Fernando Nainggolan ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197207301999011', 'Andri Dirgantara ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197207301999011', 'Andri Dirgantara ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197209062001122', 'Mitha Hasti Suryani ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197209062001122', 'Mitha Hasti Suryani ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197210061998032', 'Chandra Dewi Soewoko ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197210061998032', 'Chandra Dewi Soewoko ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197212141999011', 'Diaz Rossano ', 'Kawasan', '08:29:14', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197212141999011', 'Diaz Rossano ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197301142005022', 'Nila Kusumastuti ', 'Pembiayaan', '08:36:01', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197301142005022', 'Nila Kusumastuti ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197301252006041', 'Risyudi Yudi ', 'Sekretariat', '07:43:28', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197301252006041', 'Risyudi Yudi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197303012008121', 'Sumardi ', 'Pembiayaan', '07:28:07', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197303012008121', 'Sumardi ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197303202007012', 'Dwi Kurniati ', 'Sekretariat', '07:03:50', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197303202007012', 'Dwi Kurniati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197306061998032', 'Letha Fitriana ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197306061998032', 'Letha Fitriana ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197310222005022', 'Arum Prihati Musyarofa ', 'Inspektorat', '07:33:41', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197310222005022', 'Arum Prihati Musyarofa ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197312192003121', 'Wahyudi ', 'Swadaya', '07:35:33', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197312192003121', 'Wahyudi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197401032009111', 'Sukirno ', 'Sekretariat', '07:43:57', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197401032009111', 'Sukirno ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197401292000031', 'Ade Rifadli ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197401292000031', 'Ade Rifadli ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197405152008121', 'Sulistio ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197405152008121', 'Sulistio ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197407022009012', 'Rika Andriani ', 'Pembiayaan', '07:51:18', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197407022009012', 'Rika Andriani ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197407082008022', 'Dian Yulia ', 'Swadaya', '07:27:00', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197407082008022', 'Dian Yulia ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197409142009112', 'Wiwin Nurbaenah ', 'Pembiayaan', '07:23:13', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197409142009112', 'Wiwin Nurbaenah ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197410142002121', 'Hotman Sahat Gayus ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197410142002121', 'Hotman Sahat Gayus ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197411172009012', 'Savitry Nofianti Simatupang ', 'Pembiayaan', '06:51:08', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197411172009012', 'Savitry Nofianti Simatupang ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197412082003122', 'Siti Ridawiyah ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197412082003122', 'Siti Ridawiyah ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197503062009111', 'Aap ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197503062009111', 'Aap ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197503172009121', 'Simon Suban Kuma ', 'Sekretariat', '07:34:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197503172009121', 'Simon Suban Kuma ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197505112002122', 'Soelistianing Kusumawati ', 'Swadaya', '08:01:49', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197505112002122', 'Soelistianing Kusumawati ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197506192001122', 'Sinta Nur Aini ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197506192001122', 'Sinta Nur Aini ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197506232008022', 'Afiah ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197506232008022', 'Afiah ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197506292002122', 'Ratna Iswari Utoro ', 'Pembiayaan', '07:24:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197506292002122', 'Ratna Iswari Utoro ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197507112008021', 'Deddy Gusnadi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197507112008021', 'Deddy Gusnadi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197508142008021', 'Irwan Agus Mulyana ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197508142008021', 'Irwan Agus Mulyana ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197508312008022', 'Dyah Kusumahandayani ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197508312008022', 'Dyah Kusumahandayani ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197511102009012', 'Novriyanti Harol ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197511102009012', 'Novriyanti Harol ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197512072010121', 'Emanuel Pati Libak ', 'Sekretariat', '07:24:07', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197512072010121', 'Emanuel Pati Libak ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197602162002122', 'Musrifah ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197602162002122', 'Musrifah ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197602202009122', 'Dewi Eka ', 'Swadaya', '06:51:13', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197602202009122', 'Dewi Eka ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197605092009011', 'Hendro Sulistyo Pamungkas ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197605092009011', 'Hendro Sulistyo Pamungkas ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197606212008021', 'Tomi Ferdiansah ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197606212008021', 'Tomi Ferdiansah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197606232001121', 'Yudha Rommell Sibero ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197606232001121', 'Yudha Rommell Sibero ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197606262005022', 'Linda Haryanti ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197606262005022', 'Linda Haryanti ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197606272006041', 'Yustinus Yogi Hendraswor Santoso ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197606272006041', 'Yustinus Yogi Hendraswor Santoso ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197609092008122', 'Ratna Wahyu Purbasari ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197609092008122', 'Ratna Wahyu Purbasari ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197610072010122', 'Naniek Widyaningsih ', 'Kawasan', '07:04:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197610072010122', 'Naniek Widyaningsih ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197705032005011', 'Adi Femiliandri ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197705032005011', 'Adi Femiliandri ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197705132009012', 'Rita Meilina Sari ', 'Swadaya', '07:41:08', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197705132009012', 'Rita Meilina Sari ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197705172000032', 'Any Dweyana ', 'Formal', '07:30:42', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197705172000032', 'Any Dweyana ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197707122010121', 'Diana Suryana Putra ', 'Sekretariat', '08:18:50', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197707122010121', 'Diana Suryana Putra ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197708282009011', 'Deny Ananda ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197708282009011', 'Deny Ananda ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197712082008022', 'Napolisa ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197712082008022', 'Napolisa ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197712122009121', 'Mufti Mulyawan ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197712122009121', 'Mufti Mulyawan ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197801032010121', 'Catur Budi Satriawan ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197801032010121', 'Catur Budi Satriawan ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197805242010121', 'Achmad Hendrico Irwan ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197805242010121', 'Achmad Hendrico Irwan ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197806122009121', 'Teuku Ahmad Ridhauddin ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197806122009121', 'Teuku Ahmad Ridhauddin ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197808292009122', 'Dyah Anggraini ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197808292009122', 'Dyah Anggraini ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197810052008021', 'Oki Riyartono ', 'Formal', '07:26:38', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197810052008021', 'Oki Riyartono ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197902192010122', 'Ita Kurniasih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197902192010122', 'Ita Kurniasih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197903222008021', 'Prakarsa Yoga ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197903222008021', 'Prakarsa Yoga ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197904042005021', 'Sufial Siddik Harahap ', 'Formal', '07:31:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197904042005021', 'Sufial Siddik Harahap ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197905202009011', 'Yoke Radius Akbar ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197905202009011', 'Yoke Radius Akbar ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197906132008022', 'Ragees Matonak Mirakelia ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197906132008022', 'Ragees Matonak Mirakelia ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197909192010122', 'Estinar Ambarita ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197909192010122', 'Estinar Ambarita ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197911102009012', 'Shanti Sujitno ', 'Kawasan', '07:12:14', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197911102009012', 'Shanti Sujitno ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('197911172009111', 'Mochamad Resya Choriawan ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('197911172009111', 'Mochamad Resya Choriawan ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198001102009122', 'Vania Ikeamanda ', 'Sekretariat', '07:54:56', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198001102009122', 'Vania Ikeamanda ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198001212009121', 'Satrio Yudarianto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198001212009121', 'Satrio Yudarianto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198001222009121', 'Anggoro Widyastika ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198001222009121', 'Anggoro Widyastika ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198003102010121', 'Suhendra ', 'Sekretariat', '07:59:59', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198003102010121', 'Suhendra ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198004032009111', 'Suryanto ', 'Inspektorat', '08:04:22', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198004032009111', 'Suryanto ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198005032008022', 'Tati Meilani Kacaribu ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198005032008022', 'Tati Meilani Kacaribu ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198007272008022', 'Nanik Yulia Widiyanti ', 'Pembiayaan', '07:33:09', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198007272008022', 'Nanik Yulia Widiyanti ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198012312009122', 'Vien Sulistyorini ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198012312009122', 'Vien Sulistyorini ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198102272009121', 'Purwadi Ari Minanto ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198102272009121', 'Purwadi Ari Minanto ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198102282010121', 'Rio Febrianto Moroisa ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198102282010121', 'Rio Febrianto Moroisa ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198103022010121', 'Imron Affandi ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198103022010121', 'Imron Affandi ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198103072009121', 'Mahendra Dewantara ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198103072009121', 'Mahendra Dewantara ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198103112009122', 'Nurul Fauzia ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198103112009122', 'Nurul Fauzia ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198104252008022', 'Noely Ardya Paramitha ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198104252008022', 'Noely Ardya Paramitha ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198105122010121', 'Wahyu Adi Satriawan ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198105122010121', 'Wahyu Adi Satriawan ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198105202009121', 'Satriadi Utomo ', 'Kawasan', '07:38:14', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198105202009121', 'Satriadi Utomo ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198105242006041', 'Muhammad Kadri ', 'Swadaya', '08:32:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198105242006041', 'Muhammad Kadri ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198106052009121', 'Joko Tri Kusnanto ', 'Pembiayaan', '07:55:46', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198106052009121', 'Joko Tri Kusnanto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198106282010121', 'Indro Utomo Nugroho Putro ', 'Sekretariat', '07:56:53', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198106282010121', 'Indro Utomo Nugroho Putro ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198107182009122', 'Dina Nuzulia ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198107182009122', 'Dina Nuzulia ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198108032009011', 'Bayu Kusuma Dwi Chan Sarie ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198108032009011', 'Bayu Kusuma Dwi Chan Sarie ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198109202010122', 'Poni Hidayu ', 'Formal', '07:19:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198109202010122', 'Poni Hidayu ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198109272010121', 'Mohammad Adzkasyah ', 'Sekretariat', '08:07:27', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198109272010121', 'Mohammad Adzkasyah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198109302009121', 'Mochamad Agung Sumassetiyadi ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198109302009121', 'Mochamad Agung Sumassetiyadi ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198110252009012', 'Citra Edhytya Pratami ', 'Kawasan', '07:36:57', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198110252009012', 'Citra Edhytya Pratami ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198201142009121', 'Ridha Fauzy ', 'Sekretariat', '07:38:31', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198201142009121', 'Ridha Fauzy ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198202172003122', 'Siti Briliani Putri ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198202172003122', 'Siti Briliani Putri ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198202192009031', 'Rizaldi Andi Atjo ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198202192009031', 'Rizaldi Andi Atjo ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198203112009012', 'Rina Utami ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198203112009012', 'Rina Utami ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198203172008022', 'Fanidya ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198203172008022', 'Fanidya ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198206132010121', 'Maulana Ibrahim ', 'Sekretariat', '07:19:38', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198206132010121', 'Maulana Ibrahim ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198207072008021', 'Gatot Virgianto ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198207072008021', 'Gatot Virgianto ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198207132008021', 'Samsul Bahri ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198207132008021', 'Samsul Bahri ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198208042009012', 'Ringgy Masuin ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198208042009012', 'Ringgy Masuin ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198208072009121', 'Ardhian Bina Putra ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198208072009121', 'Ardhian Bina Putra ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198209132010121', 'R. Rifi Firdaus Lustika ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198209132010121', 'R. Rifi Firdaus Lustika ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198209212009011', 'Ditya Adipurna ', 'Swadaya', '07:19:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198209212009011', 'Ditya Adipurna ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198210012009122', 'Tian Susilowati ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198210012009122', 'Tian Susilowati ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198210102009122', 'Irna Irnawati ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198210102009122', 'Irna Irnawati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198210262010121', 'Haryo Wacono ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198210262010121', 'Haryo Wacono ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198211222009012', 'Reny Novianti ', 'Pusat Pembiayaan Perumahan', '07:56:59', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198211222009012', 'Reny Novianti ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198211272009121', 'Andi Sulham ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198211272009121', 'Andi Sulham ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198212272008022', 'Handini Lestari ', 'Pembiayaan', '07:29:05', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198212272008022', 'Handini Lestari ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198302072009011', 'Ervin Supriyanto ', 'Pembiayaan', '07:19:13', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198302072009011', 'Ervin Supriyanto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198302122009121', 'Mochamad Iwan Febrianto ', 'Formal', '07:46:44', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198302122009121', 'Mochamad Iwan Febrianto ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198303182009011', 'Mustofa Otfan ', 'Pembiayaan', '07:20:44', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198303182009011', 'Mustofa Otfan ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198304162010122', 'Ariestina Nurlita Putri ', 'Inspektorat', '07:40:54', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198304162010122', 'Ariestina Nurlita Putri ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198304302009122', 'Frila Isabella Siregar ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198304302009122', 'Frila Isabella Siregar ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198305052010122', 'Lutfia Herawati ', 'Pusat Pembiayaan Perumahan', '07:47:57', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198305052010122', 'Lutfia Herawati ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198306182009122', 'Ratih Punia Dewi ', 'Kawasan', '06:35:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198306182009122', 'Ratih Punia Dewi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198308082009122', 'Fitriana Ayu Ningrum ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198308082009122', 'Fitriana Ayu Ningrum ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198309232010121', 'Angga Ditya Kusuma ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198309232010121', 'Angga Ditya Kusuma ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198310282009122', 'Sri Rahmi Purnamasari ', 'Sekretariat', '08:25:16', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198310282009122', 'Sri Rahmi Purnamasari ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198311032009121', 'Ishaq Al Kindy ', 'Pembiayaan', '08:13:53', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198311032009121', 'Ishaq Al Kindy ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198311302010121', 'Marendi Rahman ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198311302010121', 'Marendi Rahman ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198312032009121', 'Deny Dwi Susanto ', 'Kawasan', '08:23:24', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198312032009121', 'Deny Dwi Susanto ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198404062008022', 'Marga Ayu Aprillia ', 'Pembiayaan', '07:31:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198404062008022', 'Marga Ayu Aprillia ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198405142008022', 'Fitri Ami Handayani ', 'Sekretariat', '07:36:04', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198405142008022', 'Fitri Ami Handayani ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198405292009122', 'Fenty Meilisya Syafril ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198405292009122', 'Fenty Meilisya Syafril ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198406092009121', 'Manda Machyus ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198406092009121', 'Manda Machyus ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198407182008022', 'Ariastuti ', 'Pembiayaan', '07:35:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198407182008022', 'Ariastuti ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198408012009122', 'Mala Hayati Rahayu ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198408012009122', 'Mala Hayati Rahayu ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198408132009122', 'Ika Agus Pawiyarti ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198408132009122', 'Ika Agus Pawiyarti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198408222009011', 'Akbar Pandu Pratamalistya ', 'Sekretariat', '07:46:31', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198408222009011', 'Akbar Pandu Pratamalistya ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198409062009122', 'Ratna Indriani ', 'Pembiayaan', '07:46:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198409062009122', 'Ratna Indriani ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198410142010121', 'Ristyan Mega Putra ', 'Sekretariat', '07:51:51', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198410142010121', 'Ristyan Mega Putra ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198501222010121', 'Rezky Gauthama ', 'Formal', '07:20:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198501222010121', 'Rezky Gauthama ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198502162009121', 'Agung Bhakti Utama ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198502162009121', 'Agung Bhakti Utama ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198502272008021', 'Ditto Ferakhim ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198502272008021', 'Ditto Ferakhim ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198504042010121', 'Rizki Eko Prabowo ', 'Sekretariat', '08:09:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198504042010121', 'Rizki Eko Prabowo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198504092010121', 'Arief Sulistyawan ', 'Pembiayaan', '06:14:19', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198504092010121', 'Arief Sulistyawan ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198504252010122', 'Dian Arika ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198504252010122', 'Dian Arika ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198506232009121', 'Bayu Adi Putranto ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198506232009121', 'Bayu Adi Putranto ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198507272010121', 'Gede Yoga Mahendra ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198507272010121', 'Gede Yoga Mahendra ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198509162009012', 'Rahmawati Waluyaningsih ', 'Pembiayaan', '08:21:00', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198509162009012', 'Rahmawati Waluyaningsih ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198509232009122', 'Devy Wardhani ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198509232009122', 'Devy Wardhani ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198510182009121', 'Arif Widianto ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198510182009121', 'Arif Widianto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198510262009122', 'Norma Pradipta ', 'Kawasan', '04:43:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198510262009122', 'Norma Pradipta ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198512222008022', 'Natalia Pertiwi Ginting ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198512222008022', 'Natalia Pertiwi Ginting ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198602112010122', 'Mia Aryanti ', 'Inspektorat', '07:41:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198602112010122', 'Mia Aryanti ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198602222009121', 'Tantra Rifai ', 'Sekretariat', '07:35:50', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198602222009121', 'Tantra Rifai ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198608132010122', 'Pustika Chandra Kasih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198608132010122', 'Pustika Chandra Kasih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198609292009122', 'Kingkin Fitoriani ', 'Pembiayaan', '08:24:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198609292009122', 'Kingkin Fitoriani ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198704162010122', 'Eka Nisfiasari ', 'Pembiayaan', '07:31:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198704162010122', 'Eka Nisfiasari ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198705082010121', 'Widy Atmojokusumo ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198705082010121', 'Widy Atmojokusumo ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198710122010121', 'Nandaka Ekacarana ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198710122010121', 'Nandaka Ekacarana ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198710172010122', 'Maria Widya Sahara ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198710172010122', 'Maria Widya Sahara ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('198710222010121', 'Octavianus Siahaan ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('198710222010121', 'Octavianus Siahaan ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('350000783', 'Rahmat Hidayat ', 'Pembiayaan', '06:59:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('350000783', 'Rahmat Hidayat ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('480119597', 'Ridwan Dibya Sudartha ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('480119597', 'Ridwan Dibya Sudartha ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('501013', 'Ismail ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('501013', 'Ismail ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('501014', 'Rinto Tristiadi ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('501014', 'Rinto Tristiadi ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('701091', 'Andri Fuadhy ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('701091', 'Andri Fuadhy ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('750003192', 'Ruswanto ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('750003192', 'Ruswanto ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('750006763', 'R. Bambang Triantoro ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('750006763', 'R. Bambang Triantoro ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991000', 'Sigit Sasongko ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991000', 'Sigit Sasongko ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991001', 'Rusdi Yulianto ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991001', 'Rusdi Yulianto ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991002', 'Acu Nurahman ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991002', 'Acu Nurahman ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991003', 'Aya Aditya ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991003', 'Aya Aditya ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991004', 'Eko Darsono ', 'Sekretariat', '07:45:22', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991004', 'Eko Darsono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991005', 'Farida ', 'Sekretariat', '07:46:27', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991005', 'Farida ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991006', 'Jadima Lumban Raja ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991006', 'Jadima Lumban Raja ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991007', 'Junita ', 'Sekretariat', '08:33:41', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991007', 'Junita ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991008', 'Nurjanah ', 'Sekretariat', '06:42:27', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991008', 'Nurjanah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991009', 'Perawati ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991009', 'Perawati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991010', 'Teguh Arise Saputra ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991010', 'Teguh Arise Saputra ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991011', 'Ade Triandani ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991011', 'Ade Triandani ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991012', 'Andhita Setia Budi ', 'Sekretariat', '08:10:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991012', 'Andhita Setia Budi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991013', 'Aris Karnadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991013', 'Aris Karnadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991014', 'Fransisca Sari ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991014', 'Fransisca Sari ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991016', 'Ananda Yuda Mahardika ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991016', 'Ananda Yuda Mahardika ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991017', 'Angga Dwijayanti ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991017', 'Angga Dwijayanti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991018', 'Ciptaning Kinasih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991018', 'Ciptaning Kinasih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991019', 'David Agus Sagita ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991019', 'David Agus Sagita ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991020', 'Dimas Rizal ', 'Sekretariat', '08:03:46', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991020', 'Dimas Rizal ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991022', 'Endry Febriansyah Mahmud ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991022', 'Endry Febriansyah Mahmud ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991023', 'Erwin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991023', 'Erwin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991024', 'Five Nurhasanah ', 'Sekretariat', '08:01:44', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991024', 'Five Nurhasanah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991025', 'Juli Hartini ', 'Sekretariat', '08:13:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991025', 'Juli Hartini ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991027', 'Muhammad Yusuf ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991027', 'Muhammad Yusuf ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991029', 'Rini Febriyanti ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991029', 'Rini Febriyanti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991031', 'Rossi Dwi Apriawan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991031', 'Rossi Dwi Apriawan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991032', 'Gazali Rusydi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991032', 'Gazali Rusydi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991033', 'Sintya Nurwahyuni ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991033', 'Sintya Nurwahyuni ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991034', 'Zhein A. Mahendra Setiawan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991034', 'Zhein A. Mahendra Setiawan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991035', 'Erniyawati ', 'Sekretariat', '07:08:23', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991035', 'Erniyawati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991036', 'Leonardus Paskah H ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991036', 'Leonardus Paskah H ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991037', 'Puji Astuti ', 'Sekretariat', '07:49:23', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991037', 'Puji Astuti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991038', 'Hari Hartono ', 'Sekretariat', '07:18:35', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991038', 'Hari Hartono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991039', 'Zaenal Abidin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991039', 'Zaenal Abidin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991041', 'August P. Hurry ', 'Sekretariat', '07:38:48', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991041', 'August P. Hurry ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991042', 'Sri Haryanti ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991042', 'Sri Haryanti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991043', 'Iin Nurdin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991043', 'Iin Nurdin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991044', 'Sogimin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991044', 'Sogimin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991045', 'Sulyono ', 'Sekretariat', '07:28:43', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991045', 'Sulyono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991047', 'agus Kholidin ', 'Sekretariat', '07:46:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991047', 'agus Kholidin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991048', 'Agus Prayitno ', 'Sekretariat', '08:08:28', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991048', 'Agus Prayitno ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991049', 'Agus Riswanto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991049', 'Agus Riswanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991050', 'Akhmad Sudibyo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991050', 'Akhmad Sudibyo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991051', 'Alfano Prayogi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991051', 'Alfano Prayogi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991052', 'Andi Sukmawan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991052', 'Andi Sukmawan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991053', 'Andre Yoga ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991053', 'Andre Yoga ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991054', 'Bakti Sayoga ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991054', 'Bakti Sayoga ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991056', 'Castim ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991056', 'Castim ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991057', 'Deni Suswandi ', 'Sekretariat', '08:10:53', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991057', 'Deni Suswandi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991058', 'Didi Priyambodo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991058', 'Didi Priyambodo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991059', 'Didit Alam Suhendra ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991059', 'Didit Alam Suhendra ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991060', 'Doni Aditya ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991060', 'Doni Aditya ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991061', 'Dwi Ari Hastuti ', 'Sekretariat', '08:16:23', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991061', 'Dwi Ari Hastuti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991062', 'Dwi Priyono ', 'Sekretariat', '07:40:46', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991062', 'Dwi Priyono ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991063', 'Edyanto ', 'Sekretariat', '07:39:11', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991063', 'Edyanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991064', 'Fathu Rohman Achmadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991064', 'Fathu Rohman Achmadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991065', 'Fedrik Rudiyanto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991065', 'Fedrik Rudiyanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991066', 'Feriansyah ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991066', 'Feriansyah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991067', 'Ferry Hidayat ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991067', 'Ferry Hidayat ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991068', 'Gunawan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991068', 'Gunawan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991069', 'Hariyanto ', 'Sekretariat', '06:22:15', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991069', 'Hariyanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991071', 'Haryadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991071', 'Haryadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991073', 'Herman tatang ', 'Sekretariat', '07:15:54', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991073', 'Herman tatang ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991075', 'Imam Sumantri ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991075', 'Imam Sumantri ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991076', 'Irwan Munandar ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991076', 'Irwan Munandar ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991077', 'Jaka Ramadhan ', 'Sekretariat', '08:08:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991077', 'Jaka Ramadhan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991078', 'Jimmy ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991078', 'Jimmy ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991079', 'Julaiha', 'Sekretariat', '08:08:51', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991079', 'Julaiha', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991080', 'Junaidi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991080', 'Junaidi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991081', 'Komarudin ', 'Sekretariat', '07:42:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991081', 'Komarudin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991082', 'Mansyur ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991082', 'Mansyur ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991083', 'Maruan ', 'Sekretariat', '06:04:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991083', 'Maruan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991084', 'Mohammad Ferli ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991084', 'Mohammad Ferli ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991085', 'Muhamad Muklis ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991085', 'Muhamad Muklis ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991086', 'Muhammad Fazri ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991086', 'Muhammad Fazri ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991087', 'Muhammad Kharisun ', 'Sekretariat', '07:05:39', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991087', 'Muhammad Kharisun ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991088', 'Muhammad Rapii ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991088', 'Muhammad Rapii ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991089', 'Nia Septianawati ', 'Sekretariat', '07:58:28', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991089', 'Nia Septianawati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991091', 'Novianto ', 'Sekretariat', '07:56:21', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991091', 'Novianto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991092', 'Putri Asiah ', 'Sekretariat', '07:53:24', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991092', 'Putri Asiah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991093', 'Rahadiyan Fadli ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991093', 'Rahadiyan Fadli ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991094', 'Rahmat Hidayat ', 'Sekretariat', '07:53:24', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991094', 'Rahmat Hidayat ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991095', 'Randi Diswantoro ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991095', 'Randi Diswantoro ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991096', 'Ricky Defrimon ', 'Sekretariat', '07:54:54', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991096', 'Ricky Defrimon ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991097', 'Ridwan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991097', 'Ridwan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991098', 'Ruby Marchellinus Suryadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991098', 'Ruby Marchellinus Suryadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991099', 'Saring Santoso ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991099', 'Saring Santoso ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991102', 'Soni Anggadita ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991102', 'Soni Anggadita ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991104', 'Sucipto Waluyo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991104', 'Sucipto Waluyo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991105', 'Suhadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991105', 'Suhadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991106', 'Supardan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991106', 'Supardan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991107', 'Suroto ', 'Sekretariat', '06:00:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991107', 'Suroto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991108', 'Teguh Santoso ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991108', 'Teguh Santoso ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991109', 'Tobirin ', 'Sekretariat', '07:48:18', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991109', 'Tobirin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991111', 'Tri Atmaja ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991111', 'Tri Atmaja ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991112', 'Unan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991112', 'Unan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991113', 'Untung ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991113', 'Untung ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991114', 'Wahyu Hidayat ', 'Sekretariat', '07:48:09', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991114', 'Wahyu Hidayat ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991116', 'Warih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991116', 'Warih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991117', 'Windu Utama ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991117', 'Windu Utama ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991118', 'Wuriyanto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991118', 'Wuriyanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991119', 'Yustika Danu Laksana ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991119', 'Yustika Danu Laksana ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991120', 'Zaenal Arifin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991120', 'Zaenal Arifin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991121', 'Abdul Khair ', 'Sekretariat', '08:03:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991121', 'Abdul Khair ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991122', 'Bangun Waspodo ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991122', 'Bangun Waspodo ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991123', 'Feby Kharisma Darmasakti ', 'Sekretariat', '07:16:21', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991123', 'Feby Kharisma Darmasakti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991124', 'Irma Handayani ', 'Sekretariat', '08:19:16', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991124', 'Irma Handayani ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991125', 'Tri Marchellia Utami ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991125', 'Tri Marchellia Utami ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991126', 'Agung Jadi Prakoso ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991126', 'Agung Jadi Prakoso ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991127', 'Argo Setiani Prastuti ', 'Sekretariat', '07:01:47', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991127', 'Argo Setiani Prastuti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991128', 'Budianto ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991128', 'Budianto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991130', 'Denny Bisentianto Handoyo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991130', 'Denny Bisentianto Handoyo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991131', 'Dwiastuti Wahyuningsih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991131', 'Dwiastuti Wahyuningsih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991132', 'Eko Prabowo ', 'Sekretariat', '08:26:22', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991132', 'Eko Prabowo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991133', 'Esa Agung Hartono ', 'Inspektorat', '08:10:43', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991133', 'Esa Agung Hartono ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991134', 'Fidah Hayati ', 'Sekretariat', '07:53:59', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991134', 'Fidah Hayati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991135', 'Indra Seftiawan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991135', 'Indra Seftiawan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991136', 'Ivo Fredda Martastuty ', 'Sekretariat', '08:18:58', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991136', 'Ivo Fredda Martastuty ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991137', 'Khoirul Anwar ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991137', 'Khoirul Anwar ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991138', 'Norman Iswahyudi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991138', 'Norman Iswahyudi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991139', 'Nurul Prihatin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991139', 'Nurul Prihatin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991141', 'Putri Octarina ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991141', 'Putri Octarina ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991142', 'Riesa Anadya Elfitra ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991142', 'Riesa Anadya Elfitra ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991143', 'Rosalinda Yahya ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991143', 'Rosalinda Yahya ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991144', 'Rudi Ariansyah ', 'Sekretariat', '07:33:58', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991144', 'Rudi Ariansyah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991145', 'Tanti Widjayanti ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991145', 'Tanti Widjayanti ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991146', 'Tina Perdanawati ', 'Sekretariat', '07:23:09', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991146', 'Tina Perdanawati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991148', 'Devi Ismiyanti ', 'Sekretariat', '08:33:11', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991148', 'Devi Ismiyanti ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991149', 'Dedy Ahmad ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991149', 'Dedy Ahmad ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991150', 'Fitri Meisari ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991150', 'Fitri Meisari ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991151', 'Iwan Suandi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991151', 'Iwan Suandi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991152', 'Kiki Zakaria ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991152', 'Kiki Zakaria ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991153', 'Muhamad Yusuf Ali ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991153', 'Muhamad Yusuf Ali ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991154', 'Rieke Mutisari ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991154', 'Rieke Mutisari ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991155', 'Ronald Kastro Nababan ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991155', 'Ronald Kastro Nababan ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991156', 'Elly Susilyawati ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991156', 'Elly Susilyawati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991157', 'Lia Susanah ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991157', 'Lia Susanah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991158', 'Nika Syariana ', 'Swadaya', '07:59:11', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991158', 'Nika Syariana ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991159', 'Ricca Alexandra Noer Arynda ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991159', 'Ricca Alexandra Noer Arynda ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991160', 'Elvanirman ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991160', 'Elvanirman ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991161', 'Anjas Rakasi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991161', 'Anjas Rakasi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991162', 'Ihsan ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991162', 'Ihsan ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991163', 'Eko Prasetyo Basri ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991163', 'Eko Prasetyo Basri ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991164', 'Eli Arianti ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991164', 'Eli Arianti ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991165', 'Dede ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991165', 'Dede ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991166', 'Bowo ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991166', 'Bowo ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991167', 'Robi ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991167', 'Robi ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991168', 'Sanuri ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991168', 'Sanuri ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991169', 'Megarini Ayuningtyas ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991169', 'Megarini Ayuningtyas ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991170', 'Guntur ', 'Pusat Pembiayaan Perumahan', '07:18:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991170', 'Guntur ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991171', 'Achwan ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991171', 'Achwan ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991172', 'Isromli Yusuf ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991172', 'Isromli Yusuf ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991173', 'Nisfunilarasi ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991173', 'Nisfunilarasi ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991174', 'Putri Dian Hapsari ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991174', 'Putri Dian Hapsari ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991175', 'Putri Sarah Vitriani ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991175', 'Putri Sarah Vitriani ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991176', 'Ruknan ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991176', 'Ruknan ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991177', 'Setiawan Zandroto ', 'Pusat Pembiayaan Perumahan', '07:51:11', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991177', 'Setiawan Zandroto ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991178', 'Unang Irawan ', 'Pusat Pembiayaan Perumahan', '07:23:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991178', 'Unang Irawan ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991179', 'Hana Amalia ', 'Pusat Pembiayaan Perumahan', '08:06:00', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991179', 'Hana Amalia ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991180', 'Yudo Waluyo ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991180', 'Yudo Waluyo ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991181', 'Anthoni Sinaga ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991181', 'Anthoni Sinaga ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991182', 'Dwinanto ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991182', 'Dwinanto ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991183', 'Nurlaeli ', 'Pusat Pembiayaan Perumahan', '07:35:43', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991183', 'Nurlaeli ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991184', 'Randi Ajie Nugraha ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991184', 'Randi Ajie Nugraha ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991185', 'Rita Kamelia ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991185', 'Rita Kamelia ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991186', 'Tri Wahyuningsih ', 'Pusat Pembiayaan Perumahan', '07:37:59', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991186', 'Tri Wahyuningsih ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991187', 'Erinta Mariana ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991187', 'Erinta Mariana ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991188', 'Feni Ratna Kusuma ', 'Pembiayaan', '07:57:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991188', 'Feni Ratna Kusuma ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991189', 'Haerul Anwar ', 'Pembiayaan', '08:05:41', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991189', 'Haerul Anwar ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991190', 'Daphne Hariyati R ', 'Pembiayaan', '08:04:07', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991190', 'Daphne Hariyati R ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991191', 'Suryo Apriyanto ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991191', 'Suryo Apriyanto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991192', 'Zulfahmi ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991192', 'Zulfahmi ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991193', 'Endang Rusmaya ', 'Pembiayaan', '07:39:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991193', 'Endang Rusmaya ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991194', 'Asti Septianti ', 'Pembiayaan', '07:46:09', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991194', 'Asti Septianti ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991195', 'Kurniawan Tri Utomo ', 'Sekretariat', '08:17:48', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991195', 'Kurniawan Tri Utomo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991196', 'Achmid ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991196', 'Achmid ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991197', 'Mujiran ', 'Pembiayaan', '07:24:34', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991197', 'Mujiran ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991198', 'Karyoto ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991198', 'Karyoto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991199', 'Sardi ', 'Pembiayaan', '07:22:21', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991199', 'Sardi ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991200', 'Andi Achmad ', 'Pembiayaan', '07:21:01', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991200', 'Andi Achmad ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991201', 'Karsun ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991201', 'Karsun ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991202', 'Nugroho Dwi Kuncoro ', 'Pembiayaan', '08:06:06', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991202', 'Nugroho Dwi Kuncoro ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991203', 'Raymond ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991203', 'Raymond ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991204', 'Warto ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991204', 'Warto ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991205', 'Mochammad Ihsan ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991205', 'Mochammad Ihsan ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991206', 'Praditya,S.Sos ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991206', 'Praditya,S.Sos ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991207', 'Vincentius Vega Riangkoso ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991207', 'Vincentius Vega Riangkoso ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991208', 'Andrian Sukarmianto ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991208', 'Andrian Sukarmianto ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991209', 'Deswinda Wulandari ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991209', 'Deswinda Wulandari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991210', 'Haryadi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991210', 'Haryadi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991211', 'Rina Mustikasari ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991211', 'Rina Mustikasari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991212', 'Taufik Hidayat ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991212', 'Taufik Hidayat ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991213', 'Sri Septia Purwo Untari ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991213', 'Sri Septia Purwo Untari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991214', 'Boby Hari Yagung ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991214', 'Boby Hari Yagung ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991215', 'Mochammad Ashari ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991215', 'Mochammad Ashari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991216', 'Sinta Yuliawati ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991216', 'Sinta Yuliawati ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991217', 'Tri Hargo Prabowo ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991217', 'Tri Hargo Prabowo ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991218', 'Yunis Dwi Setiawaty ', 'Kawasan', '04:44:01', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991218', 'Yunis Dwi Setiawaty ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991219', 'Fahrul ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991219', 'Fahrul ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991220', 'Edi Surjono ', 'Kawasan', '08:16:17', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991220', 'Edi Surjono ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991221', 'Manaor Valmai Hadalena ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991221', 'Manaor Valmai Hadalena ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991222', 'Angga Yudhistira Saputra ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991222', 'Angga Yudhistira Saputra ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991223', 'Mulyanah ', 'Kawasan', '08:16:15', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991223', 'Mulyanah ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991224', 'Bandini Kameswari ', 'Kawasan', '07:52:38', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991224', 'Bandini Kameswari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991225', 'Husniawan Jaya ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991225', 'Husniawan Jaya ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991226', 'Muhammad Firdaus ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991226', 'Muhammad Firdaus ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991227', 'Vicka Evryanti ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991227', 'Vicka Evryanti ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991228', 'Isna Fikasari ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991228', 'Isna Fikasari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991229', 'Ade Sri Yuliani ', 'Kawasan', '04:43:48', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991229', 'Ade Sri Yuliani ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991230', 'ade Suhendi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991230', 'ade Suhendi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991231', 'Ari Kurnia Sari ', 'Kawasan', '07:51:41', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991231', 'Ari Kurnia Sari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991232', 'Asmawi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991232', 'Asmawi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991233', 'Dwi Mahyudi ', 'Kawasan', '08:13:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991233', 'Dwi Mahyudi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991234', 'Faradina Lubis ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991234', 'Faradina Lubis ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991235', 'Huri Herwoko ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991235', 'Huri Herwoko ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991236', 'Jhon Anderson Nababan ', 'Kawasan', '07:38:28', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991236', 'Jhon Anderson Nababan ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991237', 'Lutfi ', 'Kawasan', '08:16:13', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991237', 'Lutfi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991238', 'Octafiana Santi Dwihapsari ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991238', 'Octafiana Santi Dwihapsari ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991239', 'Rossy Febriani ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991239', 'Rossy Febriani ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991240', 'Sri Hartanti ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991240', 'Sri Hartanti ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991241', 'Sutarto Sukma Marsiana ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991241', 'Sutarto Sukma Marsiana ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991242', 'Triana Prastiwi ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991242', 'Triana Prastiwi ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991244', 'Reza ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991244', 'Reza ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991245', 'Ade Amelia Anas ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991245', 'Ade Amelia Anas ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991246', 'Adhi Satrio Utomo ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991246', 'Adhi Satrio Utomo ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991247', 'Ahmad Fahmi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991247', 'Ahmad Fahmi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991248', 'Arief Prihatmoko W ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991248', 'Arief Prihatmoko W ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991249', 'Duwi Adriyani ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991249', 'Duwi Adriyani ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991250', 'Faisal Febrianto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991250', 'Faisal Febrianto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991252', 'Kasdali ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991252', 'Kasdali ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991254', 'Novrialdi ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991254', 'Novrialdi ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991255', 'Retno Andriyani ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991255', 'Retno Andriyani ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991256', 'Rizka Arum Wulan ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991256', 'Rizka Arum Wulan ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991258', 'Teguh Murtopo Eri ', 'Swadaya', '08:10:18', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991258', 'Teguh Murtopo Eri ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991259', 'Yusnini Amelia ', 'Swadaya', '07:42:20', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991259', 'Yusnini Amelia ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991260', 'Adrian Kurniant Budiman ', 'Kawasan', '06:52:25', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991260', 'Adrian Kurniant Budiman ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991261', 'Agus ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991261', 'Agus ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991263', 'Muhammad Yamin ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991263', 'Muhammad Yamin ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991264', 'Didin Muslihat ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991264', 'Didin Muslihat ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991266', 'Mesir ', 'Swadaya', '06:57:46', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991266', 'Mesir ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991267', 'Muhammad Firdaus ', 'Kawasan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991267', 'Muhammad Firdaus ', 'Kawasan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991268', 'Rendi Susanto Tri ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991268', 'Rendi Susanto Tri ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991269', 'Riswanto ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991269', 'Riswanto ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991270', 'Sri Setianingsih ', 'Swadaya', '05:59:35', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991270', 'Sri Setianingsih ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991271', 'Benny Valayo ', 'Swadaya', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991271', 'Benny Valayo ', 'Swadaya', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991272', 'Arry Septiana ', 'Formal', '07:58:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991272', 'Arry Septiana ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991273', 'Asep Sunarya ', 'Formal', '08:19:05', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991273', 'Asep Sunarya ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991274', 'Ismail ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991274', 'Ismail ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991275', 'Muhammad Rafki ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991275', 'Muhammad Rafki ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991276', 'Nikko Pebriyan, S.Kom ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991276', 'Nikko Pebriyan, S.Kom ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991278', 'Haryanti ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991278', 'Haryanti ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991279', 'Muhammad Akbar Purwanto ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991279', 'Muhammad Akbar Purwanto ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991280', 'Rahmadini ', 'Formal', '08:23:21', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991280', 'Rahmadini ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991281', 'Sofi Maryanti ', 'Formal', '07:37:08', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991281', 'Sofi Maryanti ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991282', 'Ahmad Miko ', 'Formal', '06:59:42', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991282', 'Ahmad Miko ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991283', 'Pang Reksa Anuraga ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991283', 'Pang Reksa Anuraga ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991284', 'Wahyudi Panggabean ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991284', 'Wahyudi Panggabean ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991285', 'Jaelani ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991285', 'Jaelani ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991286', 'Amalia Nurul Hidayah ', 'Formal', '08:08:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991286', 'Amalia Nurul Hidayah ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991287', 'Eky Maulana Pratama ', 'Formal', '08:29:30', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991287', 'Eky Maulana Pratama ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991288', 'Fourancy Noverita ', 'Formal', '07:49:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991288', 'Fourancy Noverita ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991289', 'Junita Kartika Sari ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991289', 'Junita Kartika Sari ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991290', 'Martdiyan Puspi Dewi ', 'Formal', '08:23:32', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991290', 'Martdiyan Puspi Dewi ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991316', 'Junaidi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991316', 'Junaidi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991319', 'Budiarti, BSc ', 'Pusat Pembiayaan Perumahan', '06:59:30', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991319', 'Budiarti, BSc ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991321', 'Hermawan ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991321', 'Hermawan ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991322', 'Koko Windianto ', 'Inspektorat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991322', 'Koko Windianto ', 'Inspektorat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991348', 'Yunar Vica ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991348', 'Yunar Vica ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991349', 'Seselima Olva ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991349', 'Seselima Olva ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991350', 'Naufal Muhammad ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991350', 'Naufal Muhammad ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991351', 'Sari Permata Rizki ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991351', 'Sari Permata Rizki ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991352', 'Ramandhani Astuti Tri ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991352', 'Ramandhani Astuti Tri ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991353', 'Ikhsan Rifa ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991353', 'Ikhsan Rifa ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991354', 'Ardanareswari Aisyah ', 'Pusat Pengembangan Perumahan', '07:55:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991354', 'Ardanareswari Aisyah ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991355', 'Ryandika ', 'Pusat Pengembangan Perumahan', '07:42:40', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991355', 'Ryandika ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991356', 'Putra Adi Prawira ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991356', 'Putra Adi Prawira ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991357', 'Gresita Nandia ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991357', 'Gresita Nandia ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991358', 'Ahmadi Airlangga Muhammad ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991358', 'Ahmadi Airlangga Muhammad ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991359', 'Chairunnisa ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991359', 'Chairunnisa ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991360', 'Budiman ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991360', 'Budiman ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991361', 'Harsono Mulyo Agus ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991361', 'Harsono Mulyo Agus ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991362', 'Wahyudi Iwan ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991362', 'Wahyudi Iwan ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991363', 'Saal ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991363', 'Saal ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991364', 'Sulistyo Adi Wahyu ', 'Pusat Pengembangan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991364', 'Sulistyo Adi Wahyu ', 'Pusat Pengembangan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991366', 'Waluyo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991366', 'Waluyo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991368', 'Junaidi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991368', 'Junaidi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991372', 'Indriati ', 'Sekretariat', '07:35:26', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991372', 'Indriati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991373', 'Mukhammad Priosusilo, SE ', 'Sekretariat', '07:16:02', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991373', 'Mukhammad Priosusilo, SE ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991374', 'Ade Triandini ', 'Sekretariat', '07:03:43', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991374', 'Ade Triandini ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991375', 'Alfanita Exacty Okterina, ST,MT ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991375', 'Alfanita Exacty Okterina, ST,MT ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991376', 'Ahmad Zaki Zayadi Fikri ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991376', 'Ahmad Zaki Zayadi Fikri ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991377', 'Rendy Trigantara,SH ', 'Sekretariat', '01:31:59', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991377', 'Rendy Trigantara,SH ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991378', 'Luwi Wahyu Adi ', 'Sekretariat', '07:39:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991378', 'Luwi Wahyu Adi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991379', 'Puspa Yunita ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991379', 'Puspa Yunita ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991380', 'Novy Kusumaningrum, ', 'Sekretariat', '07:52:45', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991380', 'Novy Kusumaningrum, ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991381', 'Aditya Maulana ', 'Sekretariat', '07:39:10', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991381', 'Aditya Maulana ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991382', 'Muhammad Nauval, ST, MSi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991382', 'Muhammad Nauval, ST, MSi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991383', 'Kartika Septiana, S.E.I ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991383', 'Kartika Septiana, S.E.I ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991384', 'Erwan Adiwijaya ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991384', 'Erwan Adiwijaya ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991385', 'Galuh Sekar Ratri ', 'Sekretariat', '07:36:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991385', 'Galuh Sekar Ratri ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991386', 'Isyana Gusdiannisa ', 'Sekretariat', '08:11:47', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991386', 'Isyana Gusdiannisa ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991387', 'Akhmad Rifgi ', 'Sekretariat', '01:31:39', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991387', 'Akhmad Rifgi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991388', 'Budi Setiawan ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991388', 'Budi Setiawan ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991389', 'Hendra Rumara,SE ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991389', 'Hendra Rumara,SE ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991392', 'Anissa Larasati ', 'Sekretariat', '07:09:43', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991392', 'Anissa Larasati ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991393', 'Nurwanto Wahyu ', 'Sekretariat', '07:09:31', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991393', 'Nurwanto Wahyu ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991394', 'Rendy Rahadian ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991394', 'Rendy Rahadian ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991395', 'Aris Apriyansah Mohamad ', 'Sekretariat', '06:53:12', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991395', 'Aris Apriyansah Mohamad ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991396', 'Dedik Haryanto ', 'Sekretariat', '07:48:07', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991396', 'Dedik Haryanto ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991397', 'Edwin Muldiana,S.Kom ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991397', 'Edwin Muldiana,S.Kom ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991398', 'Haryati Marbun', 'Sekretariat', '07:03:55', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991398', 'Haryati Marbun', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991399', 'Emir Suryo Guritno ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991399', 'Emir Suryo Guritno ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991400', 'Aris Kusnanto,SE ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991400', 'Aris Kusnanto,SE ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991408', 'Ivo Fredda Martastuty,S.Ik ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991408', 'Ivo Fredda Martastuty,S.Ik ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991409', 'Sunaryadi ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991409', 'Sunaryadi ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991410', 'Jeihan Nabila ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991410', 'Jeihan Nabila ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991411', 'Esty Shyntia ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991411', 'Esty Shyntia ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991412', 'Yudi Dian Syah ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991412', 'Yudi Dian Syah ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991413', 'Junita Kartika Sari ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991413', 'Junita Kartika Sari ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991415', 'Muhaza Liebenlito ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991415', 'Muhaza Liebenlito ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991417', 'Endang Rusmaya ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991417', 'Endang Rusmaya ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991418', 'Karsun ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991418', 'Karsun ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991419', 'Leonardo Marpaung ', 'Formal', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991419', 'Leonardo Marpaung ', 'Formal', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991420', 'Teguh Santoso ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991420', 'Teguh Santoso ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991421', 'Ahmad Kurtubi ', 'Pembiayaan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991421', 'Ahmad Kurtubi ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991422', 'Sucipto Waluyo ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991422', 'Sucipto Waluyo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991424', 'Akhmad Sudibyo ', 'Sekretariat', '08:20:37', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991424', 'Akhmad Sudibyo ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991425', 'Dasikun ', 'Pembiayaan', '07:32:04', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991425', 'Dasikun ', 'Pembiayaan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991428', 'Ciptaning Kinasih ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991428', 'Ciptaning Kinasih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991429', 'Erwin ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991429', 'Erwin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991430', 'Endry Febriansyah Mahmud ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991430', 'Endry Febriansyah Mahmud ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991431', 'Tanta Dewandharu ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991431', 'Tanta Dewandharu ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991432', 'Asmoro Bonang Asmoro ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991432', 'Asmoro Bonang Asmoro ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991433', 'Adam Zulfikar ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991433', 'Adam Zulfikar ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991435', 'Marlinah ', 'Sekretariat', '06:38:53', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991435', 'Marlinah ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991437', 'Desiana ', 'Sekretariat', '05:59:15', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991437', 'Desiana ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991438', 'Rojak ', 'Sekretariat', '06:10:15', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991438', 'Rojak ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991445', 'Mochammad Moro Asih ', 'Sekretariat', '06:22:19', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991445', 'Mochammad Moro Asih ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991446', 'Yossie Selviana.P, SH, ', 'Sekretariat', '08:09:47', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991446', 'Yossie Selviana.P, SH, ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991447', 'Firly Andrisetiani Permata,SH ', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991447', 'Firly Andrisetiani Permata,SH ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991448', 'Yasri ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991448', 'Yasri ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991449', 'Rendi Anugrah Anugrah Butar B ', 'Pusat Pembiayaan Perumahan', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991449', 'Rendi Anugrah Anugrah Butar B ', 'Pusat Pembiayaan Perumahan', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991454', 'Sogimin ', 'Sekretariat', '08:21:49', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991454', 'Sogimin ', 'Sekretariat', '', '2012-12-20');
INSERT INTO "public"."absensi" VALUES ('991460', 'Juwita Debby', 'Sekretariat', '', '2012-12-14');
INSERT INTO "public"."absensi" VALUES ('991460', 'Juwita Debby', 'Sekretariat', '', '2012-12-20');

-- ----------------------------
-- Table structure for "public"."agenda"
-- ----------------------------
DROP TABLE "public"."agenda";
CREATE TABLE "public"."agenda" (
"date" int8 NOT NULL,
"type" varchar(20) DEFAULT NULL::character varying,
"title" varchar(20) DEFAULT NULL::character varying,
"description" varchar(100) DEFAULT NULL::character varying,
"url" varchar(30) DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO "public"."agenda" VALUES ('1353639458000', null, 'Meeting', 'Dengan deputi2', null);
INSERT INTO "public"."agenda" VALUES ('1353813545000', null, 'istirahat', 'Dirumah sajalah', null);
INSERT INTO "public"."agenda" VALUES ('1353900642000', null, 'Keluar', 'jakarta bandung', null);
INSERT INTO "public"."agenda" VALUES ('1353998389000', null, 'Rapat internal', 'KEMENPERA<br />
kikin', null);
INSERT INTO "public"."agenda" VALUES ('1354257000000', null, 'Demo Aplikasi EIS', 'Tempat : Ruang Rapat 2 Lantai 2
Pembahasan: Draft Laporan Akhir dan Presentasi Sistem', null);
INSERT INTO "public"."agenda" VALUES ('1354520545000', null, 'DINAS ', 'Ke Luar Kota', null);

-- ----------------------------
-- Table structure for "public"."anggaran"
-- ----------------------------
DROP TABLE "public"."anggaran";
CREATE TABLE "public"."anggaran" (
"id" int4 NOT NULL,
"tahun" int4,
"target" int4,
"tg_anggaran" numeric(12,2) DEFAULT NULL::numeric,
"realisasi" int4,
"re_anggaran" numeric(12,2) DEFAULT NULL::numeric,
"id_keg" int4,
"sasaran" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of anggaran
-- ----------------------------
INSERT INTO "public"."anggaran" VALUES ('1', '2012', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO "public"."anggaran" VALUES ('3', '2012', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO "public"."anggaran" VALUES ('4', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "public"."anggaran" VALUES ('5', '2012', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO "public"."anggaran" VALUES ('6', '2012', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO "public"."anggaran" VALUES ('7', '2012', '20000', '229.71', null, null, '16', null);
INSERT INTO "public"."anggaran" VALUES ('8', '2012', '230000', '1632.69', null, null, '17', null);
INSERT INTO "public"."anggaran" VALUES ('9', '2012', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO "public"."anggaran" VALUES ('10', '2012', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO "public"."anggaran" VALUES ('11', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO "public"."anggaran" VALUES ('12', '2012', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO "public"."anggaran" VALUES ('13', '2012', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO "public"."anggaran" VALUES ('14', '2012', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO "public"."anggaran" VALUES ('15', '2012', null, '600.00', null, null, '27', null);
INSERT INTO "public"."anggaran" VALUES ('16', '2012', null, '108.22', null, '36.13', '28', null);
INSERT INTO "public"."anggaran" VALUES ('17', '2012', null, '35.04', null, '15.51', '30', null);
INSERT INTO "public"."anggaran" VALUES ('18', '2012', null, '179.16', null, null, '31', null);
INSERT INTO "public"."anggaran" VALUES ('19', '2012', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO "public"."anggaran" VALUES ('20', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('22', '2011', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO "public"."anggaran" VALUES ('23', '2011', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "public"."anggaran" VALUES ('24', '2011', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO "public"."anggaran" VALUES ('25', '2011', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "public"."anggaran" VALUES ('26', '2011', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO "public"."anggaran" VALUES ('27', '2011', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO "public"."anggaran" VALUES ('28', '2011', '20000', '229.71', null, null, '16', null);
INSERT INTO "public"."anggaran" VALUES ('29', '2011', '230000', '1632.69', null, null, '17', null);
INSERT INTO "public"."anggaran" VALUES ('30', '2011', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO "public"."anggaran" VALUES ('31', '2011', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO "public"."anggaran" VALUES ('32', '2011', '9762', '333.50', null, '23.37', '22', null);
INSERT INTO "public"."anggaran" VALUES ('33', '2011', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO "public"."anggaran" VALUES ('34', '2011', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO "public"."anggaran" VALUES ('35', '2011', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO "public"."anggaran" VALUES ('36', '2011', null, '600.00', null, null, '27', null);
INSERT INTO "public"."anggaran" VALUES ('37', '2011', null, '108.22', null, '36.13', '28', null);
INSERT INTO "public"."anggaran" VALUES ('38', '2011', null, '35.04', null, '15.51', '30', null);
INSERT INTO "public"."anggaran" VALUES ('39', '2011', null, '179.16', null, null, '31', null);
INSERT INTO "public"."anggaran" VALUES ('40', '2011', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO "public"."anggaran" VALUES ('41', '2011', '30600', '191.24', null, null, '39', null);
INSERT INTO "public"."anggaran" VALUES ('42', '2010', '1', '187.14', '1', '59.73', '4', null);
INSERT INTO "public"."anggaran" VALUES ('43', '2010', '172', '1162.71', '0', '156.22', '8', null);
INSERT INTO "public"."anggaran" VALUES ('44', '2010', '64', '45.51', '0', '0.00', '10', null);
INSERT INTO "public"."anggaran" VALUES ('45', '2010', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "public"."anggaran" VALUES ('46', '2010', '150', '252.00', '0', '0.00', '12', null);
INSERT INTO "public"."anggaran" VALUES ('47', '2010', '1057', '72.98', '0', '1.09', '13', null);
INSERT INTO "public"."anggaran" VALUES ('48', '2010', '20000', '229.71', null, null, '16', null);
INSERT INTO "public"."anggaran" VALUES ('49', '2010', '230000', '1632.69', null, null, '17', null);
INSERT INTO "public"."anggaran" VALUES ('50', '2010', '7500', '3.45', null, '0.83', '19', null);
INSERT INTO "public"."anggaran" VALUES ('51', '2010', '7762', '252.29', null, '5.06', '21', null);
INSERT INTO "public"."anggaran" VALUES ('52', '2010', '9762', '333.50', null, '23.37', '22', null);
INSERT INTO "public"."anggaran" VALUES ('53', '2010', '2020', '38.07', null, '2.90', '23', null);
INSERT INTO "public"."anggaran" VALUES ('54', '2010', '13160', '81.33', null, '4.07', '24', null);
INSERT INTO "public"."anggaran" VALUES ('55', '2010', '15180', '60.72', null, '3.75', '25', null);
INSERT INTO "public"."anggaran" VALUES ('56', '2010', null, '600.00', null, null, '27', null);
INSERT INTO "public"."anggaran" VALUES ('57', '2010', null, '108.22', null, '36.13', '28', null);
INSERT INTO "public"."anggaran" VALUES ('58', '2010', null, '35.04', null, '15.51', '30', null);
INSERT INTO "public"."anggaran" VALUES ('59', '2010', null, '179.16', null, null, '31', null);
INSERT INTO "public"."anggaran" VALUES ('60', '2010', '189166', '7091.12', null, '530.16', '37', null);
INSERT INTO "public"."anggaran" VALUES ('61', '2010', '30600', '191.24', null, null, '39', null);
INSERT INTO "public"."anggaran" VALUES ('62', null, '1', '1.00', '1', '1.00', null, null);
INSERT INTO "public"."anggaran" VALUES ('73', '2012', '172', '1162.71', '0', '156.22', '8', '100');
INSERT INTO "public"."anggaran" VALUES ('79', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('80', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('81', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('82', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('83', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('84', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('87', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO "public"."anggaran" VALUES ('88', '2012', '9762', '333.50', '0', '23.37', '22', null);
INSERT INTO "public"."anggaran" VALUES ('89', '2012', '0', '0.00', '0', '0.00', '18', null);
INSERT INTO "public"."anggaran" VALUES ('90', '2012', '0', '0.00', '0', '0.00', '18', null);
INSERT INTO "public"."anggaran" VALUES ('91', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "public"."anggaran" VALUES ('93', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('94', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('95', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "public"."anggaran" VALUES ('96', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('97', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('98', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('99', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('100', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('101', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('102', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('111', '2012', '95904', '653.93', '0', '0.00', '11', null);
INSERT INTO "public"."anggaran" VALUES ('113', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('114', '2012', '30600', '191.24', '0', '0.00', '39', null);
INSERT INTO "public"."anggaran" VALUES ('115', '2012', '30600', '191.24', '0', '0.00', '39', null);

-- ----------------------------
-- Table structure for "public"."ci_sessions"
-- ----------------------------
DROP TABLE "public"."ci_sessions";
CREATE TABLE "public"."ci_sessions" (
"session_id" varchar(40) DEFAULT NULL::character varying NOT NULL,
"ip_address" varchar(45) DEFAULT NULL::character varying NOT NULL,
"user_agent" varchar(120) DEFAULT NULL::character varying NOT NULL,
"last_activity" int8 NOT NULL,
"user_data" text NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO "public"."ci_sessions" VALUES ('1c5b1059d4f61e6cbffc7c62bb25e5c1', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:16.0) Gecko/20100101 Firefox/16.0', '1356083684', 'a:6:{s:9:"user_data";s:0:"";s:9:"logged_in";i:1;s:7:"id_user";N;s:5:"group";s:5:"Admin";s:8:"username";s:5:"admin";s:12:"nama_lengkap";s:5:"Admin";}');

-- ----------------------------
-- Table structure for "public"."gis"
-- ----------------------------
DROP TABLE "public"."gis";
CREATE TABLE "public"."gis" (
"no" int4 NOT NULL,
"title" varchar(150) DEFAULT NULL::character varying,
"x" float8,
"y" float8,
"address" varchar(255) DEFAULT NULL::character varying,
"ket" varchar(100) DEFAULT NULL::character varying,
"id_gis_group" int4 NOT NULL,
"provinsi" varchar(50) DEFAULT NULL::character varying,
"kota" varchar(50) DEFAULT NULL::character varying,
"nilai" int4,
"icon" varchar(50) DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of gis
-- ----------------------------
INSERT INTO "public"."gis" VALUES ('1', 'PSU Kawasan Perumahan dan Permukiman', '1.098565', '104.030113', 'Kota Batam', null, '39', null, null, null, null);
INSERT INTO "public"."gis" VALUES ('2', '- Pembangunan baru', '1.559866', '104.498291', 'Kab. Bintan, Kab Tanjung Pinang, Kota Batam, Kota Tanjung Pinang', null, '8', null, null, null, null);
INSERT INTO "public"."gis" VALUES ('2', 'PSU Kawasan Perumahan dan Permukiman', '-6.191755', '106.848', 'Ciliwung', 'Kegiatan', '39', 'DKI', 'Jakarta', '1000', null);
INSERT INTO "public"."gis" VALUES ('4', '- Pembangunan baru', '4', '5', '3', '7', '8', '1', '2', '6', null);
INSERT INTO "public"."gis" VALUES ('6', 'Fasilitasi Pembangunan PSU kawasan Perumahan dan Permukiman', '1.34021', '104.02771', 'Kab. Bintan, Kab. Natuna, Kota batam', null, '11', null, null, null, null);

-- ----------------------------
-- Table structure for "public"."gis_group"
-- ----------------------------
DROP TABLE "public"."gis_group";
CREATE TABLE "public"."gis_group" (
"id_gis_group" varchar(1) DEFAULT NULL::character varying NOT NULL,
"gis_group" varchar(30) DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of gis_group
-- ----------------------------
INSERT INTO "public"."gis_group" VALUES ('1', 'DAK');
INSERT INTO "public"."gis_group" VALUES ('2', 'Rusunawa');
INSERT INTO "public"."gis_group" VALUES ('3', 'PSU');

-- ----------------------------
-- Table structure for "public"."kegiatan"
-- ----------------------------
DROP TABLE "public"."kegiatan";
CREATE TABLE "public"."kegiatan" (
"id" int4 NOT NULL,
"parent_id" int4 NOT NULL,
"no_urut" int4,
"no" varchar(4) DEFAULT NULL::character varying,
"nama" varchar(150) DEFAULT NULL::character varying,
"sat" varchar(30) DEFAULT NULL::character varying,
"sasaran2" int4,
"posisi" varchar(255) DEFAULT NULL::character varying,
"font" varchar(255) DEFAULT NULL::character varying,
"kategori" varchar(50) DEFAULT NULL::character varying,
"status" varchar(10) DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO "public"."kegiatan" VALUES ('1', '0', '1', 'A', 'BA 091', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('2', '0', '2', 'B', 'BA 999', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('3', '1', '1', 'I', 'PROGRAM DUKUNGAN DAN MANAJEMEN TUGAS TEKNIS LAINNYA', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('4', '3', '1', null, 'Dukungan Manajemen dan Pelaksanaan Tugas Teknis Lainnya', 'Tahun', null, 'parent', 'normal', null, null);
INSERT INTO "public"."kegiatan" VALUES ('5', '1', '2', 'II', 'PROGRAM PENGEMBANGAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('6', '5', '1', '1', 'Pembangunan Rumah Susun Sederhana Sewa ', 'TB', '380', 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('7', '6', '1', null, 'a. Penyedia Rusunawa', 'TB', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('8', '7', '1', null, '- Pembangunan baru', 'TB', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('9', '7', '2', null, '- Luncuran', 'TB', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('10', '6', '2', null, 'b. Pusat Pengembangan Perumahan (rehab) ', 'TB', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('11', '5', '2', '2', 'Fasilitasi Pembangunan PSU kawasan Perumahan dan Permukiman', 'Unit', '700000', 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('12', '5', '3', '3', 'Fasilitasi dan Stimulasi Penataan Lingkungan Permukiman Kumuh', 'Ha', '655', 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('13', '5', '4', '4', 'Pembangunan Rumah Khusus', 'Unit', '5000', 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('14', '5', '5', '5', 'DIREKTIF PRESIDEN', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('15', '14', '1', 'a.', 'Program Pro-Rakyat Klaster IV: Rumah Sangat Murah', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('16', '15', '1', '5.1.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya</i>', 'Unit', '50000', null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('17', '15', '2', '5.2.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', '50000', null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('18', '15', '3', '5.3.', '<i>Fasilitasi Pembangunan PSU Perumhan Swadaya</i>', 'Unit', '50000', null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('19', '15', '4', '5.4.', '<i>Fasilitasi Pra-sertifikasi dan Pendampingan Pasca-sertifikasi</i>', 'Bidang', '30000', null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('20', '14', '2', 'b. ', 'Penanganan Rumah bagi Warga Baru di Perbatasan Prov NTT - Timor Leste', 'Unit', null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('21', '20', '1', '5.5.', '<i>Pembangunan Rumah Khusus</i> ', 'Unit', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('22', '20', '2', '5.6.', '<i>Pembanguna PSU Kawasan Perumahan dan Permukiman</i>', 'Unit', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('23', '20', '3', '5.7.', '<i>Fasilitasi dan Stimulasi Pembangunan Perumahan Swadaya (pembangunan baru)</i>', 'Unit', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('24', '20', '4', '5.8.', '<i>Fasilitasi dan Stimulasi Peningkatan Kualitas Perumahan Swadaya</i>', 'Unit', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('25', '20', '5', '5.9.', '<i>Fasilitasi Pembangunan PSU Perumahan Swadaya</i>', 'Unit', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('26', '5', '6', '6', 'PENUGASAN KHUSUS', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('27', '26', '1', null, 'Penanganan Ciliwung', null, null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('28', '5', '7', '7', 'Pengembangan Kebijakan dan Koordinasi Pelaksanaan Kebijakan Perumahan dan Permukiman', 'Peraturan Perundangan', '20', 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('29', '1', '3', 'III', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('30', '29', '1', '1', 'Pengembangan kebijakan dan Koordinasi Pelaksanaan Kebijakan Pembiayaan Perumahan dan Permukiman', null, '10', null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('31', '29', '2', '2', 'PNBP BLU Lukuiditas Pembiayaan Perumahan', null, null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('32', '2', '1', 'I', 'PROGRAM PENGEMBANGAN PEMBIAYAAN PERUMAHAN DAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('33', '32', '1', '1', 'Masa Transisi', null, '544802', null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('34', '33', '1', null, '- Rekonsiliasi 2008 dan 2009', null, null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('35', '33', '2', null, '- Tunggakan penerbitan tahun 2009', null, null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('36', '33', '3', null, '- Target 2010 (Rumah Sejahtera Tapak + Sarusunami)', null, null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('37', '32', '2', '2', 'Fasilitas Likuiditas', null, '1350000', null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('38', '2', '2', 'II', 'DAK BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN', null, null, 'parent', 'bold', null, null);
INSERT INTO "public"."kegiatan" VALUES ('39', '38', '1', '1', 'PSU Kawasan Perumahan dan Permukiman', 'Unit', null, null, null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('42', '42', null, '3', '33', '3', '3', 'parent', null, null, null);
INSERT INTO "public"."kegiatan" VALUES ('43', '43', null, '4', '4', '4', '4', '', null, null, null);

-- ----------------------------
-- Table structure for "public"."kegiatan_mon"
-- ----------------------------
DROP TABLE "public"."kegiatan_mon";
CREATE TABLE "public"."kegiatan_mon" (
"jenis_keg" varchar(15) DEFAULT NULL::character varying,
"nama_keg" varchar(200) DEFAULT NULL::character varying NOT NULL,
"anggaran" numeric(16) DEFAULT NULL::numeric,
"bagian" varchar(30) DEFAULT NULL::character varying NOT NULL,
"tahun" int2 NOT NULL,
"unit_kerja" varchar(50) DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of kegiatan_mon
-- ----------------------------
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Dekonsentrasi Lingkup Kemenpera Tahun 2012', '800000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Dekonsentrasi Lingkup Kemenpera Tahun 2012', '800000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Penerapan E-Procurement Kementerian Perumahan Rakyat', '1328500000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Bimbingan Teknis Penerapan Sistem Akuntabilitas Instansi Pemerintah Kemenpera', '750000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Dukungan Kelembagaan Pemangku Kepentingan', '11857870000', 'Anggaran', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Dukungan Operasionalisasi LPSE Kementerian Perumahan Rakyat', '1300000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Dekonsentrasi Lingkup Kemenpera Tahun 2012', '15000000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Dekonsentrasi Lingkup Kemenpera Tahun 2012', '15000000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Kegiatan Kelompok Kerja Perumahan Tahun 2012', '1650000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pelaksanaan Kegiatan Kelompok Kerja Perumahan Tahun 2012', '1650000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Dukungan Pengelolaan Data dan Penyajian Informasi', '1327238000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Evaluasi Pelaksanaan Anggaran Tahun Anggaran 2012', '792500000', 'Anggaran', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Fasilitasi dan Koordinasi Pelaksanaan Pembangunan Bidang Perumahan Rakyat Tahun 2012', '3572291000', 'Anggaran', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Koordinasi Perencanaan dan Pelaksanaan Kebijakan, Program dan Kegiatan Pembangunan Perumahan (RAKORPERA) Tahun 2011', '700000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Koordinasi Perencanaan dan Pelaksanaan Kebijakan, Program dan Kegiatan Pembangunan Perumahan (RAKORPERA) Tahun 2011', '700000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Koordinasi Perencanaan Penganggaran Tahun Anggaran 2012', '825000000', 'Anggaran', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Mid-Term Review Pencapaian Sasaran RPJMN dan Renstra 2010-2014', '700000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Mid-Term Review Pencapaian Sasaran RPJMN dan Renstra 2010-2014', '700000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Monitoring dan Evaluasi Kinerja Kementerian Perumahan Rakyat', '670000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Monitoring dan Evaluasi Penyelenggaraan Dekonsentrasi Bidang Perumahan dan Permukiman', '854000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Monitoring dan Evaluasi Penyelenggaraan Dekonsentrasi Bidang Perumahan dan Permukiman Tahun 2012', '854000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Aplikasi Eksekutif (Dashboard)', '850000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Content Management System Kemenpera', '850000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi IT Asset Management', '850000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Lelang (e-Controlling)', '850000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Monitoring Proyek (e-Progress)', '850000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pembangunan Sistem Informasi Perkantoran (e-Office)', '850000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Pembangunan Sistem Informasi Perumahan (e-Housing)', '1795280000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Pembinaan Penyusunan RKA-KL Kemenpera Tahun 2012', '1045000000', 'Anggaran', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Pemeliharaan Sistem Jaringan Teknologi Informasi Kemenpera', '1209500000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Pemeriksaan Keamanan Jaringan TIK', '1279937000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pengembangan Jaringan Informasi Perumahan Berbasis Spasial', '850000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Kontraktual', 'Pengembangan Sistem Informasi Kepegawaian Kementerian Perumahan Rakyat Tahun
Anggaran 2012
', '800000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Pengukuran Kinerja Kemenpera dengan Balanced Scorecard', '1200000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kapasitas Pengelola Jaringan dan Sistem Informasi di Lingkungan Kemenpera', '1426429000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Kegiatan Yang Dibiayai PHLN Tahun Anggaran 2012', '808000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Kegiatan Yang Dibiayai PHLN Tahun Anggaran 2012', '808000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Tahun 2013', '1000000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Peningkatan Kualitas Perencanaan Tahun 2013', '1000000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Hibah Daerah Bidang Perumahan dan Kawasan Permukiman Tahun Anggaran 2012', '655000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Hibah Daerah Bidang Perumahan dan Kawasan Permukiman Tahun Anggaran 2012', '655000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Kegiatan Dekonsentrasi Lingkup Kemenpera Tahun 2013', '1150000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyiapan Kegiatan Dekonsentrasi Lingkup Kemenpera Tahun 2013', '1150000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Evaluasi Kinerja Kementerian Perumahan Rakyat', '600000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Biro Perencanaan dan Anggaran Tahun 2012', '450000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Kementerian Tahun 2012', '470000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah Sekretariat Tahun 2012', '360000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Majalah Perumahan dan Permukiman Kemenpera', '600000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Manajemen Pengetahuan dalam Kerangka Persiapan RPJMN 2015-2019', '1250000000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Panduan Evaluasi Kinerja di LIngkungan Kementerian Perumahan Rakyat', '557500000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Rencana Kerja Kementerian Perumahan Rakyat Tahun 2013', '600000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Penyusunan Rencana Kerja Kementerian Perumahan Rakyat Tahun 2013', '600000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Rapat Konsultasi Regional Tahun 2012', '2000000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Rapat Konsultasi Regional Tahun 2012', '2000000000', 'Program', '2013', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Review dan Penyusunan Kebijakan IT', '1455648000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Sosialisasi dan Pelatihan Penyusunan Anggaran TA 2013', '1142500000', 'Anggaran', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Sosialisasi dan Pelatihan Penyusunan Satuan Biaya Keluaran TA 2013', '500000000', 'Anggaran', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Sosialisasi Pengamanan Jaringan Sistem Informasi di Lingkungan Kemenpera', '1467307000', 'Data dan Pelaporan', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Tim Sekretariat pendukung Program Rumah Murah dan Rumah Sangat Murah', '1200000000', 'Program', '2012', null);
INSERT INTO "public"."kegiatan_mon" VALUES ('Swakelola', 'Tim Sekretariat pendukung Program Rumah Murah dan Rumah Sangat Murah', '1200000000', 'Program', '2013', null);

-- ----------------------------
-- Table structure for "public"."kota"
-- ----------------------------
DROP TABLE "public"."kota";
CREATE TABLE "public"."kota" (
"id" int4 NOT NULL,
"nm_kota" varchar(50) DEFAULT NULL::character varying,
"id_prov" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO "public"."kota" VALUES ('1', 'Kabupaten Aceh Barat', '11');
INSERT INTO "public"."kota" VALUES ('2', 'Kabupaten Aceh Barat Daya', '11');
INSERT INTO "public"."kota" VALUES ('3', 'Kabupaten Aceh Besar', '11');
INSERT INTO "public"."kota" VALUES ('4', 'Kabupaten Aceh Jaya', '11');
INSERT INTO "public"."kota" VALUES ('5', 'Kabupaten Aceh Selatan', '11');
INSERT INTO "public"."kota" VALUES ('6', 'Kabupaten Aceh Singkil', '11');
INSERT INTO "public"."kota" VALUES ('7', 'Kabupaten Aceh Tamiang', '11');
INSERT INTO "public"."kota" VALUES ('8', 'Kabupaten Aceh Tengah', '11');
INSERT INTO "public"."kota" VALUES ('9', 'Kabupaten Aceh Tenggara', '11');
INSERT INTO "public"."kota" VALUES ('10', 'Kabupaten Aceh Timur', '11');
INSERT INTO "public"."kota" VALUES ('11', 'Kabupaten Aceh Utara', '11');
INSERT INTO "public"."kota" VALUES ('12', 'Kabupaten Bener Meriah', '11');
INSERT INTO "public"."kota" VALUES ('13', 'Kabupaten Bireun', '11');
INSERT INTO "public"."kota" VALUES ('14', 'Kabupaten Gayo Lues', '11');
INSERT INTO "public"."kota" VALUES ('15', 'Kabupaten Nagan Raya', '11');
INSERT INTO "public"."kota" VALUES ('16', 'Kabupaten Pidie', '11');
INSERT INTO "public"."kota" VALUES ('17', 'Kabupaten Pidie Jaya', '11');
INSERT INTO "public"."kota" VALUES ('18', 'Kabupaten Simelue', '11');
INSERT INTO "public"."kota" VALUES ('19', 'Kota Banda Aceh', '11');
INSERT INTO "public"."kota" VALUES ('20', 'Kota Langsa', '11');
INSERT INTO "public"."kota" VALUES ('21', 'Kota Lhokseumawe', '11');
INSERT INTO "public"."kota" VALUES ('22', 'Kota Sabang', '11');
INSERT INTO "public"."kota" VALUES ('23', 'Kota Subulussalam', '11');
INSERT INTO "public"."kota" VALUES ('24', 'Kabupaten Asahan', '12');
INSERT INTO "public"."kota" VALUES ('25', 'Kabupaten Batubara', '12');
INSERT INTO "public"."kota" VALUES ('26', 'Kabupaten Dairi', '12');
INSERT INTO "public"."kota" VALUES ('27', 'Kabupaten Deli Serdang', '12');
INSERT INTO "public"."kota" VALUES ('28', 'Kabupaten Humbang Hasundutan', '12');
INSERT INTO "public"."kota" VALUES ('29', 'Kabupaten Karo', '12');
INSERT INTO "public"."kota" VALUES ('30', 'Kabupaten Labuhanbatu', '12');
INSERT INTO "public"."kota" VALUES ('31', 'Kabupaten Labuhanbatu Selatan', '12');
INSERT INTO "public"."kota" VALUES ('32', 'Kabupaten Labuhanbatu Utara', '12');
INSERT INTO "public"."kota" VALUES ('33', 'Kabupaten Langkat', '12');
INSERT INTO "public"."kota" VALUES ('34', 'Kabupaten Mandailing Natal', '12');
INSERT INTO "public"."kota" VALUES ('35', 'Kabupaten Nias', '12');
INSERT INTO "public"."kota" VALUES ('36', 'Kabupaten Nias Barat', '12');
INSERT INTO "public"."kota" VALUES ('37', 'Kabupaten Nias Selatan', '12');
INSERT INTO "public"."kota" VALUES ('38', 'Kabupaten Nias Utara', '12');
INSERT INTO "public"."kota" VALUES ('39', 'Kabupaten Padang Lawas', '12');
INSERT INTO "public"."kota" VALUES ('40', 'Kabupaten Padang Lawas Utara', '12');
INSERT INTO "public"."kota" VALUES ('41', 'Kabupaten Pakpak Bharat', '12');
INSERT INTO "public"."kota" VALUES ('42', 'Kabupaten Samosir', '12');
INSERT INTO "public"."kota" VALUES ('43', 'Kabupaten Serdang Begadai', '12');
INSERT INTO "public"."kota" VALUES ('44', 'Kabupaten Simalungun', '12');
INSERT INTO "public"."kota" VALUES ('45', 'Kabupaten Tapanuli Selatan', '12');
INSERT INTO "public"."kota" VALUES ('46', 'Kabupaten Tapanuli Utara', '12');
INSERT INTO "public"."kota" VALUES ('47', 'Kabupaten Toba Samosir', '12');
INSERT INTO "public"."kota" VALUES ('48', 'Kota Binjai', '12');
INSERT INTO "public"."kota" VALUES ('49', 'Kota Gunungsitoli', '12');
INSERT INTO "public"."kota" VALUES ('50', 'Kota Medan', '12');
INSERT INTO "public"."kota" VALUES ('51', 'Kota Padangsidempuan', '12');
INSERT INTO "public"."kota" VALUES ('52', 'Kota Pematangsiantar', '12');
INSERT INTO "public"."kota" VALUES ('53', 'Kota Sibolga', '12');
INSERT INTO "public"."kota" VALUES ('54', 'Kota Tanjungbalai', '12');
INSERT INTO "public"."kota" VALUES ('55', 'Kota Tebing Tinggi', '12');
INSERT INTO "public"."kota" VALUES ('56', 'Kabupaten Agam', '13');
INSERT INTO "public"."kota" VALUES ('57', 'Kabupaten Dhamasraya', '13');
INSERT INTO "public"."kota" VALUES ('58', 'Kabupaten Kepulauan Mentawai', '13');
INSERT INTO "public"."kota" VALUES ('59', 'Kabupaten Lima Puluh Kota', '13');
INSERT INTO "public"."kota" VALUES ('60', 'Kabupaten Padang Pariaman', '13');
INSERT INTO "public"."kota" VALUES ('61', 'Kabupaten Pasaman', '13');
INSERT INTO "public"."kota" VALUES ('62', 'Kabupaten Pasaman Barat', '13');
INSERT INTO "public"."kota" VALUES ('63', 'Kabupaten Pesisir Selatan', '13');
INSERT INTO "public"."kota" VALUES ('64', 'Kabupaten Sijunjung', '13');
INSERT INTO "public"."kota" VALUES ('65', 'Kabupaten Solok', '13');
INSERT INTO "public"."kota" VALUES ('66', 'Kabupaten Solok Selatan', '13');
INSERT INTO "public"."kota" VALUES ('67', 'Kabupaten Tanah Datar', '13');
INSERT INTO "public"."kota" VALUES ('68', 'Kota Bukit Tinggi', '13');
INSERT INTO "public"."kota" VALUES ('69', 'Kota Padang', '13');
INSERT INTO "public"."kota" VALUES ('70', 'Kota Padangpanjang', '13');
INSERT INTO "public"."kota" VALUES ('71', 'Kota Pariaman', '13');
INSERT INTO "public"."kota" VALUES ('72', 'Kota Payakumbuh', '13');
INSERT INTO "public"."kota" VALUES ('73', 'Kota Sawahlunto', '13');
INSERT INTO "public"."kota" VALUES ('74', 'Kota Solok', '13');
INSERT INTO "public"."kota" VALUES ('75', 'Kabupaten Bengkalis', '14');
INSERT INTO "public"."kota" VALUES ('76', 'Kabupaten Indragiri Hilir', '14');
INSERT INTO "public"."kota" VALUES ('77', 'Kabupaten Indragiri Hulu', '14');
INSERT INTO "public"."kota" VALUES ('78', 'Kabupaten Kampar', '14');
INSERT INTO "public"."kota" VALUES ('79', 'Kabupaten Kuantan Singingi', '14');
INSERT INTO "public"."kota" VALUES ('80', 'Kabupaten Pelalawan', '14');
INSERT INTO "public"."kota" VALUES ('81', 'Kabupaten Rokan Hilir', '14');
INSERT INTO "public"."kota" VALUES ('82', 'Kabupaten Rokan Hulu', '14');
INSERT INTO "public"."kota" VALUES ('83', 'Kabupaten Siak', '14');
INSERT INTO "public"."kota" VALUES ('84', 'Kabupaten Kepulauan Meranti', '14');
INSERT INTO "public"."kota" VALUES ('85', 'Kota Dumai', '14');
INSERT INTO "public"."kota" VALUES ('86', 'Kota Pekanbaru', '14');
INSERT INTO "public"."kota" VALUES ('87', 'Kabupaten Batanghari', '15');
INSERT INTO "public"."kota" VALUES ('88', 'Kabupaten Bungo', '15');
INSERT INTO "public"."kota" VALUES ('89', 'Kabupaten Kerinci', '15');
INSERT INTO "public"."kota" VALUES ('90', 'Kabupaten Merangin', '15');
INSERT INTO "public"."kota" VALUES ('91', 'Kabupaten Muaro Jambi', '15');
INSERT INTO "public"."kota" VALUES ('92', 'Kabupaten Sarolangun', '15');
INSERT INTO "public"."kota" VALUES ('93', 'Kabupaten Tanjung Jabung Barat', '15');
INSERT INTO "public"."kota" VALUES ('94', 'Kabupaten Tanjung Jabung Timur', '15');
INSERT INTO "public"."kota" VALUES ('95', 'Kabupaten Tebo', '15');
INSERT INTO "public"."kota" VALUES ('96', 'Kota Jambi', '15');
INSERT INTO "public"."kota" VALUES ('97', 'Kota Sungai Penuh', '15');
INSERT INTO "public"."kota" VALUES ('98', 'Kabupaten Banyasin', '16');
INSERT INTO "public"."kota" VALUES ('99', 'Kabupaten Empat Lawang', '16');
INSERT INTO "public"."kota" VALUES ('100', 'Kabupaten Lahat', '16');
INSERT INTO "public"."kota" VALUES ('101', 'Kabupaten Muara Enim', '16');
INSERT INTO "public"."kota" VALUES ('102', 'Kabupaten Musi Banyuasin', '16');
INSERT INTO "public"."kota" VALUES ('103', 'Kabupaten Musi Rawas', '16');
INSERT INTO "public"."kota" VALUES ('104', 'Kabupaten Ogan Hilir', '16');
INSERT INTO "public"."kota" VALUES ('105', 'Kabupaten Ogan Komering llir', '16');
INSERT INTO "public"."kota" VALUES ('106', 'Kabupaten Ogan Komering Ulu', '16');
INSERT INTO "public"."kota" VALUES ('107', 'Kabupaten Ogan Komering Ulu Selatan', '16');
INSERT INTO "public"."kota" VALUES ('108', 'Kabupaten Ogan Komering Ulu Timur', '16');
INSERT INTO "public"."kota" VALUES ('109', 'Kota Lubuklinggau', '16');
INSERT INTO "public"."kota" VALUES ('110', 'Kota Pagar Alam', '16');
INSERT INTO "public"."kota" VALUES ('111', 'Kota Palembang', '16');
INSERT INTO "public"."kota" VALUES ('112', 'Kota Prabumulih', '16');
INSERT INTO "public"."kota" VALUES ('113', 'Kabupaten Bengkulu Selatan', '17');
INSERT INTO "public"."kota" VALUES ('114', 'Kabupaten Bengkulu Tengah', '17');
INSERT INTO "public"."kota" VALUES ('115', 'Kabupaten Bengkulu Utara', '17');
INSERT INTO "public"."kota" VALUES ('116', 'Kabupaten Kaur', '17');
INSERT INTO "public"."kota" VALUES ('117', 'Kabupaten Kepahiang', '17');
INSERT INTO "public"."kota" VALUES ('118', 'Kabupaten Lebong', '17');
INSERT INTO "public"."kota" VALUES ('119', 'Kabupaten Mukomuko', '17');
INSERT INTO "public"."kota" VALUES ('120', 'Kabupaten Rejang Lebong', '17');
INSERT INTO "public"."kota" VALUES ('121', 'Kabupaten Seluma', '17');
INSERT INTO "public"."kota" VALUES ('122', 'Kota Bengkulu', '17');
INSERT INTO "public"."kota" VALUES ('123', 'Kabupaten Lampung Barat', '18');
INSERT INTO "public"."kota" VALUES ('124', 'Kabupaten Lampung Selatan', '18');
INSERT INTO "public"."kota" VALUES ('125', 'Kabupaten Lampung Tengah', '18');
INSERT INTO "public"."kota" VALUES ('126', 'Kabupaten Lampung Timur', '18');
INSERT INTO "public"."kota" VALUES ('127', 'Kabupaten Lampung Utara', '18');
INSERT INTO "public"."kota" VALUES ('128', 'Kabupaten Mesuji', '18');
INSERT INTO "public"."kota" VALUES ('129', 'Kabupaten Pesawaran', '18');
INSERT INTO "public"."kota" VALUES ('130', 'Kabupaten Pringsewu', '18');
INSERT INTO "public"."kota" VALUES ('131', 'Kabupaten Tanggamus', '18');
INSERT INTO "public"."kota" VALUES ('132', 'Kabupaten Tulang Bawang', '18');
INSERT INTO "public"."kota" VALUES ('133', 'Kabupaten Tulang Bawang Barat', '18');
INSERT INTO "public"."kota" VALUES ('134', 'Kabupaten Way Kanan', '18');
INSERT INTO "public"."kota" VALUES ('135', 'Kota Bandar Lampung', '18');
INSERT INTO "public"."kota" VALUES ('136', 'Kota Metro', '18');
INSERT INTO "public"."kota" VALUES ('137', 'Kabupaten Pesisir Barat', '18');
INSERT INTO "public"."kota" VALUES ('138', 'Kabupaten Bangka', '19');
INSERT INTO "public"."kota" VALUES ('139', 'Kabupaten Bangka Barat', '19');
INSERT INTO "public"."kota" VALUES ('140', 'Kabupaten Bangka Selatan', '19');
INSERT INTO "public"."kota" VALUES ('141', 'Kabupaten Bangka Tengah', '19');
INSERT INTO "public"."kota" VALUES ('142', 'Kabupaten Belitung', '19');
INSERT INTO "public"."kota" VALUES ('143', 'Kabupaten Belitung Timur', '19');
INSERT INTO "public"."kota" VALUES ('144', 'Kota Pangkal Pinang', '19');
INSERT INTO "public"."kota" VALUES ('145', 'Kabupaten Bintan', '21');
INSERT INTO "public"."kota" VALUES ('146', 'Kabupaten Karimun', '21');
INSERT INTO "public"."kota" VALUES ('147', 'Kabupaten Kepulauan Anambas', '21');
INSERT INTO "public"."kota" VALUES ('148', 'Kabupaten Lingga', '21');
INSERT INTO "public"."kota" VALUES ('149', 'Kabupaten Natuna', '21');
INSERT INTO "public"."kota" VALUES ('150', 'Kota Batam', '21');
INSERT INTO "public"."kota" VALUES ('151', 'Kota Tanjung Pinang', '21');
INSERT INTO "public"."kota" VALUES ('152', 'Kabupaten Administrasi Kepulauan Seribu', '31');
INSERT INTO "public"."kota" VALUES ('153', 'Kota Administrasi Jakarta Barat', '31');
INSERT INTO "public"."kota" VALUES ('154', 'Kota Administrasi Jakarta Pusat', '31');
INSERT INTO "public"."kota" VALUES ('155', 'Kota Administrasi Jakarta Selatan', '31');
INSERT INTO "public"."kota" VALUES ('156', 'Kota Administrasi Jakarta Timur', '31');
INSERT INTO "public"."kota" VALUES ('157', 'Kota Administrasi Jakarta Utara', '31');
INSERT INTO "public"."kota" VALUES ('158', 'Kabupaten Bandung', '32');
INSERT INTO "public"."kota" VALUES ('159', 'Kabupaten Bandung Barat', '32');
INSERT INTO "public"."kota" VALUES ('160', 'Kabupaten Bekasi', '32');
INSERT INTO "public"."kota" VALUES ('161', 'Kabupaten Bogor', '32');
INSERT INTO "public"."kota" VALUES ('162', 'Kabupaten Ciamis', '32');
INSERT INTO "public"."kota" VALUES ('163', 'Kabupaten Cianjur', '32');
INSERT INTO "public"."kota" VALUES ('164', 'Kabupaten Cirebon', '32');
INSERT INTO "public"."kota" VALUES ('165', 'Kabupaten Garut', '32');
INSERT INTO "public"."kota" VALUES ('166', 'Kabupaten Indramayu', '32');
INSERT INTO "public"."kota" VALUES ('167', 'Kabupaten Karawang', '32');
INSERT INTO "public"."kota" VALUES ('168', 'Kabupaten Kuningan', '32');
INSERT INTO "public"."kota" VALUES ('169', 'Kabupaten Majalengka', '32');
INSERT INTO "public"."kota" VALUES ('170', 'Kabupaten Purwakarta', '32');
INSERT INTO "public"."kota" VALUES ('171', 'Kabupaten Subang', '32');
INSERT INTO "public"."kota" VALUES ('172', 'Kabupaten Sukabumi', '32');
INSERT INTO "public"."kota" VALUES ('173', 'Kabupaten Sumedang', '32');
INSERT INTO "public"."kota" VALUES ('174', 'Kabupaten Tasikmalaya', '32');
INSERT INTO "public"."kota" VALUES ('175', 'Kota Bandung', '32');
INSERT INTO "public"."kota" VALUES ('176', 'Kota Banjar', '32');
INSERT INTO "public"."kota" VALUES ('177', 'Kota Bekasi', '32');
INSERT INTO "public"."kota" VALUES ('178', 'Kota Bogor', '32');
INSERT INTO "public"."kota" VALUES ('179', 'Kota Cimahi', '32');
INSERT INTO "public"."kota" VALUES ('180', 'Kota Cirebon', '32');
INSERT INTO "public"."kota" VALUES ('181', 'Kota Depok', '32');
INSERT INTO "public"."kota" VALUES ('182', 'Kota Sukabumi', '32');
INSERT INTO "public"."kota" VALUES ('183', 'Kota Tasikmalaya', '32');
INSERT INTO "public"."kota" VALUES ('184', 'Kabupaten Pangandaran', '32');
INSERT INTO "public"."kota" VALUES ('185', 'Kabupaten Banjarnegara', '33');
INSERT INTO "public"."kota" VALUES ('186', 'Kabupaten Banyumas', '33');
INSERT INTO "public"."kota" VALUES ('187', 'Kabupaten Batang', '33');
INSERT INTO "public"."kota" VALUES ('188', 'Kabupaten Blora', '33');
INSERT INTO "public"."kota" VALUES ('189', 'Kabupaten Boyolali', '33');
INSERT INTO "public"."kota" VALUES ('190', 'Kabupaten Brebes', '33');
INSERT INTO "public"."kota" VALUES ('191', 'Kabupaten Cilacap', '33');
INSERT INTO "public"."kota" VALUES ('192', 'Kabupaten Demak', '33');
INSERT INTO "public"."kota" VALUES ('193', 'Kabupaten Grobogan', '33');
INSERT INTO "public"."kota" VALUES ('194', 'kabupaten Jepara', '33');
INSERT INTO "public"."kota" VALUES ('195', 'Kabupaten Karanganyar', '33');
INSERT INTO "public"."kota" VALUES ('196', 'Kabupaten Kebumen', '33');
INSERT INTO "public"."kota" VALUES ('197', 'Kabupaten Kendal', '33');
INSERT INTO "public"."kota" VALUES ('198', 'Kabupaten Klaten', '33');
INSERT INTO "public"."kota" VALUES ('199', 'Kabupaten Kudus', '33');
INSERT INTO "public"."kota" VALUES ('200', 'Kabupaten Magelang', '33');
INSERT INTO "public"."kota" VALUES ('201', 'Kabupaten Pati', '33');
INSERT INTO "public"."kota" VALUES ('202', 'Kabupaten Pekalongan', '33');
INSERT INTO "public"."kota" VALUES ('203', 'Kabupaten Pemalang', '33');
INSERT INTO "public"."kota" VALUES ('204', 'Kabupaten Purbalingga', '33');
INSERT INTO "public"."kota" VALUES ('205', 'Kabupaten Purworejo', '33');
INSERT INTO "public"."kota" VALUES ('206', 'Kabupaten Rembang', '33');
INSERT INTO "public"."kota" VALUES ('207', 'Kabupaten Semarang', '33');
INSERT INTO "public"."kota" VALUES ('208', 'Kabupaten Sragen', '33');
INSERT INTO "public"."kota" VALUES ('209', 'Kabupaten Sukoharjo', '33');
INSERT INTO "public"."kota" VALUES ('210', 'Kabupaten Tegal', '33');
INSERT INTO "public"."kota" VALUES ('211', 'Kabupaten Temanggung', '33');
INSERT INTO "public"."kota" VALUES ('212', 'Kabupaten Wonogiri', '33');
INSERT INTO "public"."kota" VALUES ('213', 'Kabupaten Wonosobo', '33');
INSERT INTO "public"."kota" VALUES ('214', 'Kota Magelang', '33');
INSERT INTO "public"."kota" VALUES ('215', 'Kota Pekalongan', '33');
INSERT INTO "public"."kota" VALUES ('216', 'Kota Salatiga', '33');
INSERT INTO "public"."kota" VALUES ('217', 'Kota Semarang', '33');
INSERT INTO "public"."kota" VALUES ('218', 'Kota Surakarta', '33');
INSERT INTO "public"."kota" VALUES ('219', 'Kota Tegal', '33');
INSERT INTO "public"."kota" VALUES ('220', 'Kabupaten Bantul', '34');
INSERT INTO "public"."kota" VALUES ('221', 'Kabupaten Gunung Kidul', '34');
INSERT INTO "public"."kota" VALUES ('222', 'Kabupaten Kulon Progo', '34');
INSERT INTO "public"."kota" VALUES ('223', 'Kabupaten Sleman', '34');
INSERT INTO "public"."kota" VALUES ('224', 'Kota Yogyakarta', '34');
INSERT INTO "public"."kota" VALUES ('225', 'Kabupaten Bangkalan', '35');
INSERT INTO "public"."kota" VALUES ('226', 'Kabupaten Banyuwangi', '35');
INSERT INTO "public"."kota" VALUES ('227', 'Kabupaten Blitar', '35');
INSERT INTO "public"."kota" VALUES ('228', 'Kabupaten Bojonegoro', '35');
INSERT INTO "public"."kota" VALUES ('229', 'Kabupaten Bondowoso', '35');
INSERT INTO "public"."kota" VALUES ('230', 'Kabupaten Gresik', '35');
INSERT INTO "public"."kota" VALUES ('231', 'Kabupaten Jember', '35');
INSERT INTO "public"."kota" VALUES ('232', 'Kabupaten Jombang', '35');
INSERT INTO "public"."kota" VALUES ('233', 'Kabupaten Kediri', '35');
INSERT INTO "public"."kota" VALUES ('234', 'Kabupaten Lamongan', '35');
INSERT INTO "public"."kota" VALUES ('235', 'Kabupaten Lumajang', '35');
INSERT INTO "public"."kota" VALUES ('236', 'Kabupaten Madiun', '35');
INSERT INTO "public"."kota" VALUES ('237', 'Kabupaten Magetan', '35');
INSERT INTO "public"."kota" VALUES ('238', 'Kabupaten Malang', '35');
INSERT INTO "public"."kota" VALUES ('239', 'Kabupaten Mojokerto', '35');
INSERT INTO "public"."kota" VALUES ('240', 'Kabupaten Nganjuk', '35');
INSERT INTO "public"."kota" VALUES ('241', 'Kabupaten Ngawi', '35');
INSERT INTO "public"."kota" VALUES ('242', 'Kabupaten Pacitan', '35');
INSERT INTO "public"."kota" VALUES ('243', 'Kabupaten Pamekasan', '35');
INSERT INTO "public"."kota" VALUES ('244', 'Kabupaten Pasuruan', '35');
INSERT INTO "public"."kota" VALUES ('245', 'Kabupaten Ponorogo', '35');
INSERT INTO "public"."kota" VALUES ('246', 'Kabupaten Probolinggo', '35');
INSERT INTO "public"."kota" VALUES ('247', 'Kabupaten Sampang', '35');
INSERT INTO "public"."kota" VALUES ('248', 'Kabupaten Sidoarjo', '35');
INSERT INTO "public"."kota" VALUES ('249', 'Kabupaten Situbondo', '35');
INSERT INTO "public"."kota" VALUES ('250', 'Kabupaten Sumenep', '35');
INSERT INTO "public"."kota" VALUES ('251', 'Kabupaten Trenggalek', '35');
INSERT INTO "public"."kota" VALUES ('252', 'Kabupaten Tuban', '35');
INSERT INTO "public"."kota" VALUES ('253', 'Kabupaten Tulungagung', '35');
INSERT INTO "public"."kota" VALUES ('254', 'Kota Batu', '35');
INSERT INTO "public"."kota" VALUES ('255', 'Kota Blitar', '35');
INSERT INTO "public"."kota" VALUES ('256', 'Kota Kediri', '35');
INSERT INTO "public"."kota" VALUES ('257', 'Kota Madiun', '35');
INSERT INTO "public"."kota" VALUES ('258', 'Kota Malang', '35');
INSERT INTO "public"."kota" VALUES ('259', 'Kota Mojokerto', '35');
INSERT INTO "public"."kota" VALUES ('260', 'Kota Pasuruan', '35');
INSERT INTO "public"."kota" VALUES ('261', 'Kota Probolinggo', '35');
INSERT INTO "public"."kota" VALUES ('262', 'Kota Surabaya', '35');
INSERT INTO "public"."kota" VALUES ('263', 'Kabupaten Tangerang', '36');
INSERT INTO "public"."kota" VALUES ('264', 'Kabupaten Serang', '36');
INSERT INTO "public"."kota" VALUES ('265', 'Kabupaten Lebak', '36');
INSERT INTO "public"."kota" VALUES ('266', 'Kabupaten Pandeglang', '36');
INSERT INTO "public"."kota" VALUES ('267', 'Kota Tangerang', '36');
INSERT INTO "public"."kota" VALUES ('268', 'Kota Serang', '36');
INSERT INTO "public"."kota" VALUES ('269', 'Kota Cilegon', '36');
INSERT INTO "public"."kota" VALUES ('270', 'Kota Tangerang Selatan', '36');
INSERT INTO "public"."kota" VALUES ('271', 'Kabupaten Badung', '51');
INSERT INTO "public"."kota" VALUES ('272', 'Kabupaten Bangli', '51');
INSERT INTO "public"."kota" VALUES ('273', 'Kabupaten Buleleng', '51');
INSERT INTO "public"."kota" VALUES ('274', 'Kabupaten Gianyar', '51');
INSERT INTO "public"."kota" VALUES ('275', 'Kabupaten Jembrana', '51');
INSERT INTO "public"."kota" VALUES ('276', 'Kabupaten Karangasem', '51');
INSERT INTO "public"."kota" VALUES ('277', 'Kabupaten Klungkung', '51');
INSERT INTO "public"."kota" VALUES ('278', 'Kabupaten Tabanan', '51');
INSERT INTO "public"."kota" VALUES ('279', 'Kota Denpasar', '51');
INSERT INTO "public"."kota" VALUES ('280', 'Kabupaten Bima', '52');
INSERT INTO "public"."kota" VALUES ('281', 'Kabupaten Dompu', '52');
INSERT INTO "public"."kota" VALUES ('282', 'Kabupaten Lombok Barat', '52');
INSERT INTO "public"."kota" VALUES ('283', 'Kabupaten Lombok Tengah', '52');
INSERT INTO "public"."kota" VALUES ('284', 'Kabupaten Lombok Timur', '52');
INSERT INTO "public"."kota" VALUES ('285', 'Kabupaten Lombok Utara', '52');
INSERT INTO "public"."kota" VALUES ('286', 'Kabupaten Sumbawa', '52');
INSERT INTO "public"."kota" VALUES ('287', 'Kabupaten Sumbawa Barat', '52');
INSERT INTO "public"."kota" VALUES ('288', 'Kota Bima', '52');
INSERT INTO "public"."kota" VALUES ('289', 'Kota Mataram', '52');
INSERT INTO "public"."kota" VALUES ('290', 'Kabupaten Alor', '53');
INSERT INTO "public"."kota" VALUES ('291', 'Kabupaten Belu', '53');
INSERT INTO "public"."kota" VALUES ('292', 'Kabupaten Ende', '53');
INSERT INTO "public"."kota" VALUES ('293', 'Kabupaten Flores Timur', '53');
INSERT INTO "public"."kota" VALUES ('294', 'Kabupaten Kupang', '53');
INSERT INTO "public"."kota" VALUES ('295', 'Kabupaten Lembata', '53');
INSERT INTO "public"."kota" VALUES ('296', 'Kabupaten Manggarai', '53');
INSERT INTO "public"."kota" VALUES ('297', 'Kabupaten Manggarai Barat', '53');
INSERT INTO "public"."kota" VALUES ('298', 'Kabupaten Manggarai Timur', '53');
INSERT INTO "public"."kota" VALUES ('299', 'Kabupaten Ngada', '53');
INSERT INTO "public"."kota" VALUES ('300', 'Kabupaten Nagekeo', '53');
INSERT INTO "public"."kota" VALUES ('301', 'Kabupaten Rote Ndao', '53');
INSERT INTO "public"."kota" VALUES ('302', 'Kabupaten Sabu Raijua', '53');
INSERT INTO "public"."kota" VALUES ('303', 'Kabupaten Sikka', '53');
INSERT INTO "public"."kota" VALUES ('304', 'Kabupaten Sumba Barat', '53');
INSERT INTO "public"."kota" VALUES ('305', 'Kabupaten Sumba Barat Daya', '53');
INSERT INTO "public"."kota" VALUES ('306', 'Kabupaten Sumba Tengah', '53');
INSERT INTO "public"."kota" VALUES ('307', 'Kabupaten Sumba Timur', '53');
INSERT INTO "public"."kota" VALUES ('308', 'Kabupaten Timor Tengah Selatan', '53');
INSERT INTO "public"."kota" VALUES ('309', 'Kabupaten Timor Tengah Utara', '53');
INSERT INTO "public"."kota" VALUES ('310', 'Kota Kupang', '53');
INSERT INTO "public"."kota" VALUES ('311', 'Kabupaten Bengkayang', '61');
INSERT INTO "public"."kota" VALUES ('312', 'Kabupaten Kapuas Hulu', '61');
INSERT INTO "public"."kota" VALUES ('313', 'Kabupaten Kayong Utara', '61');
INSERT INTO "public"."kota" VALUES ('314', 'Kabupaten Ketapang', '61');
INSERT INTO "public"."kota" VALUES ('315', 'Kabupaten Kubu Raya', '61');
INSERT INTO "public"."kota" VALUES ('316', 'Kabupaten Landak', '61');
INSERT INTO "public"."kota" VALUES ('317', 'Kabupaten Melawi', '61');
INSERT INTO "public"."kota" VALUES ('318', 'Kabupaten Pontianak', '61');
INSERT INTO "public"."kota" VALUES ('319', 'Kabupaten Sambas', '61');
INSERT INTO "public"."kota" VALUES ('320', 'Kabupaten Sanggau', '61');
INSERT INTO "public"."kota" VALUES ('321', 'Kabupaten Sekadau', '61');
INSERT INTO "public"."kota" VALUES ('322', 'Kabupaten Sintang', '61');
INSERT INTO "public"."kota" VALUES ('323', 'Kota Pontianak', '61');
INSERT INTO "public"."kota" VALUES ('324', 'Kota Singkawang', '61');
INSERT INTO "public"."kota" VALUES ('325', 'Kabupaten Barito Selatan', '62');
INSERT INTO "public"."kota" VALUES ('326', 'Kabupaten Barito Timur', '62');
INSERT INTO "public"."kota" VALUES ('327', 'Kabupaten Barito Utara', '62');
INSERT INTO "public"."kota" VALUES ('328', 'Kabupaten Gunung Mas', '62');
INSERT INTO "public"."kota" VALUES ('329', 'Kabupaten Kapuas', '62');
INSERT INTO "public"."kota" VALUES ('330', 'Kabupaten Katingan', '62');
INSERT INTO "public"."kota" VALUES ('331', 'Kabupaten Kotawaringin Barat', '62');
INSERT INTO "public"."kota" VALUES ('332', 'Kabupaten Kotawaringin Timur', '62');
INSERT INTO "public"."kota" VALUES ('333', 'Kabupaten Lamandau', '62');
INSERT INTO "public"."kota" VALUES ('334', 'Kabupaten Murung Raya', '62');
INSERT INTO "public"."kota" VALUES ('335', 'Kabupaten Pulau Pisau', '62');
INSERT INTO "public"."kota" VALUES ('336', 'Kabupaten Sukamara', '62');
INSERT INTO "public"."kota" VALUES ('337', 'Kabupaten Seruyan', '62');
INSERT INTO "public"."kota" VALUES ('338', 'Kota Palangkaraya', '62');
INSERT INTO "public"."kota" VALUES ('339', 'Kabupaten Balangan', '63');
INSERT INTO "public"."kota" VALUES ('340', 'Kabupaten Banjar', '63');
INSERT INTO "public"."kota" VALUES ('341', 'Kabupaten Barito Kuala', '63');
INSERT INTO "public"."kota" VALUES ('342', 'Kabupaten Hulu Sungai Selatan', '63');
INSERT INTO "public"."kota" VALUES ('343', 'Kabupaten Hulu Sungai Tengah', '63');
INSERT INTO "public"."kota" VALUES ('344', 'Kabupaten Hulu Sungai Utara', '63');
INSERT INTO "public"."kota" VALUES ('345', 'Kabupaten Kotabaru', '63');
INSERT INTO "public"."kota" VALUES ('346', 'Kabupaten Tabalong', '63');
INSERT INTO "public"."kota" VALUES ('347', 'Kabupaten Tanah Bumbu', '63');
INSERT INTO "public"."kota" VALUES ('348', 'Kabupaten Tanah Laut', '63');
INSERT INTO "public"."kota" VALUES ('349', 'Kabupaten Tapin', '63');
INSERT INTO "public"."kota" VALUES ('350', 'Kota Banjarbaru', '63');
INSERT INTO "public"."kota" VALUES ('351', 'Kota Banjarmasin', '63');
INSERT INTO "public"."kota" VALUES ('352', 'Kabupaten Berau', '64');
INSERT INTO "public"."kota" VALUES ('353', 'Kabupaten Kutai Barat', '64');
INSERT INTO "public"."kota" VALUES ('354', 'Kabupaten Kutai Kartanegara', '64');
INSERT INTO "public"."kota" VALUES ('355', 'Kabupaten Kutai Timur', '64');
INSERT INTO "public"."kota" VALUES ('356', 'Kabupaten Paser', '64');
INSERT INTO "public"."kota" VALUES ('357', 'Kabupaten Penajam Paser Utara', '64');
INSERT INTO "public"."kota" VALUES ('358', 'Kota Balikpapan', '64');
INSERT INTO "public"."kota" VALUES ('359', 'Kota Bontang', '64');
INSERT INTO "public"."kota" VALUES ('360', 'Kota Samarinda', '64');
INSERT INTO "public"."kota" VALUES ('361', 'Kabupaten Bulungan', '65');
INSERT INTO "public"."kota" VALUES ('362', 'Kabupaten Malinau', '65');
INSERT INTO "public"."kota" VALUES ('363', 'Kabupaten Nunukan', '65');
INSERT INTO "public"."kota" VALUES ('364', 'Kabupaten Tana Tidung', '65');
INSERT INTO "public"."kota" VALUES ('365', 'Kota Tarakan', '65');
INSERT INTO "public"."kota" VALUES ('366', 'Kabupaten Bolaang Mongondow', '71');
INSERT INTO "public"."kota" VALUES ('367', 'Kabupaten Bolaang Mongondow Selatan', '71');
INSERT INTO "public"."kota" VALUES ('368', 'Kabupaten Bolaang Mongondow Timur', '71');
INSERT INTO "public"."kota" VALUES ('369', 'Kabupaten Bolaang Mongondow Utara', '71');
INSERT INTO "public"."kota" VALUES ('370', 'Kabupaten Kepulauan Sangihe', '71');
INSERT INTO "public"."kota" VALUES ('371', 'Kabupaten Kepulauan Siau Tagulandang Biaro', '71');
INSERT INTO "public"."kota" VALUES ('372', 'Kabupaten Kepulauan Talaud', '71');
INSERT INTO "public"."kota" VALUES ('373', 'Kabupaten Minahasa', '71');
INSERT INTO "public"."kota" VALUES ('374', 'Kabupaten Minahasa Selatan', '71');
INSERT INTO "public"."kota" VALUES ('375', 'Kabupaten Minahasa Tenggara', '71');
INSERT INTO "public"."kota" VALUES ('376', 'Kabupaten Minahasa Utara', '71');
INSERT INTO "public"."kota" VALUES ('377', 'Kota Bitung', '71');
INSERT INTO "public"."kota" VALUES ('378', 'Kota Kotamobagu', '71');
INSERT INTO "public"."kota" VALUES ('379', 'Kota Manado', '71');
INSERT INTO "public"."kota" VALUES ('380', 'Kota Tomohon', '71');
INSERT INTO "public"."kota" VALUES ('381', 'Kabupaten Banggai', '72');
INSERT INTO "public"."kota" VALUES ('382', 'Kabupaten Banggai Kepulauan', '72');
INSERT INTO "public"."kota" VALUES ('383', 'Kabupaten Buol', '72');
INSERT INTO "public"."kota" VALUES ('384', 'Kabupaten Donggala', '72');
INSERT INTO "public"."kota" VALUES ('385', 'Kabupaten Morowali', '72');
INSERT INTO "public"."kota" VALUES ('386', 'Kabupaten Parigi Muotong', '72');
INSERT INTO "public"."kota" VALUES ('387', 'Kabupaten Poso', '72');
INSERT INTO "public"."kota" VALUES ('388', 'Kabupaten Tojo Una-Una', '72');
INSERT INTO "public"."kota" VALUES ('389', 'Kabupaten Toli-Toli', '72');
INSERT INTO "public"."kota" VALUES ('390', 'Kabupaten Sigi', '72');
INSERT INTO "public"."kota" VALUES ('391', 'Kota Palu', '72');
INSERT INTO "public"."kota" VALUES ('392', 'Kabupaten Bantaeng', '73');
INSERT INTO "public"."kota" VALUES ('393', 'Kabupaten Barru', '73');
INSERT INTO "public"."kota" VALUES ('394', 'Kabupaten Bone', '73');
INSERT INTO "public"."kota" VALUES ('395', 'Kabupaten Bulukumba', '73');
INSERT INTO "public"."kota" VALUES ('396', 'Kabupaten Enrekang', '73');
INSERT INTO "public"."kota" VALUES ('397', 'Kabupaten Gowa', '73');
INSERT INTO "public"."kota" VALUES ('398', 'Kabupaten Jeneponto', '73');
INSERT INTO "public"."kota" VALUES ('399', 'Kabupaten Kepulauan Selayar', '73');
INSERT INTO "public"."kota" VALUES ('400', 'Kabupaten Luwu', '73');
INSERT INTO "public"."kota" VALUES ('401', 'Kabupaten Luwu Timur', '73');
INSERT INTO "public"."kota" VALUES ('402', 'Kabupaten Luwu Utara', '73');
INSERT INTO "public"."kota" VALUES ('403', 'Kabupaten Maros', '73');
INSERT INTO "public"."kota" VALUES ('404', 'Kabupaten Pangkajene dan Kepulauan', '73');
INSERT INTO "public"."kota" VALUES ('405', 'Kabupaten Pinrang', '73');
INSERT INTO "public"."kota" VALUES ('406', 'Kabupaten Sidenreng Rappang', '73');
INSERT INTO "public"."kota" VALUES ('407', 'Kabupaten Sinjai', '73');
INSERT INTO "public"."kota" VALUES ('408', 'Kabupaten Soppeng', '73');
INSERT INTO "public"."kota" VALUES ('409', 'Kabupaten Takalar', '73');
INSERT INTO "public"."kota" VALUES ('410', 'Kabupaten Tana Toraja', '73');
INSERT INTO "public"."kota" VALUES ('411', 'Kabupaten Toraja Utara', '73');
INSERT INTO "public"."kota" VALUES ('412', 'Kabupaten Wajo', '73');
INSERT INTO "public"."kota" VALUES ('413', 'Kota Makassar', '73');
INSERT INTO "public"."kota" VALUES ('414', 'Kota Palopo', '73');
INSERT INTO "public"."kota" VALUES ('415', 'Kota Parepare', '73');
INSERT INTO "public"."kota" VALUES ('416', 'Kabupaten Bombana', '74');
INSERT INTO "public"."kota" VALUES ('417', 'Kabupaten Buton', '74');
INSERT INTO "public"."kota" VALUES ('418', 'Kabupaten Buton Utara', '74');
INSERT INTO "public"."kota" VALUES ('419', 'Kabupaten Kolaka', '74');
INSERT INTO "public"."kota" VALUES ('420', 'Kabupaten Kolaka Utara', '74');
INSERT INTO "public"."kota" VALUES ('421', 'Kabupaten Konawe', '74');
INSERT INTO "public"."kota" VALUES ('422', 'Kabupaten Konawe Selatan', '74');
INSERT INTO "public"."kota" VALUES ('423', 'Kabupaten Konawe Utara', '74');
INSERT INTO "public"."kota" VALUES ('424', 'Kabupaten Muna', '74');
INSERT INTO "public"."kota" VALUES ('425', 'Kabupaten Wakatobi', '74');
INSERT INTO "public"."kota" VALUES ('426', 'Kota Bau-Bau', '74');
INSERT INTO "public"."kota" VALUES ('427', 'Kota Kendari', '74');
INSERT INTO "public"."kota" VALUES ('428', 'Kabupaten Boalemo', '75');
INSERT INTO "public"."kota" VALUES ('429', 'Kabupaten Bone Bolango', '75');
INSERT INTO "public"."kota" VALUES ('430', 'Kabupaten Gorontalo', '75');
INSERT INTO "public"."kota" VALUES ('431', 'Kabupaten Gorontalo Utara', '75');
INSERT INTO "public"."kota" VALUES ('432', 'Kabupaten Pohuwato', '75');
INSERT INTO "public"."kota" VALUES ('433', 'Kota Gorontalo', '75');
INSERT INTO "public"."kota" VALUES ('434', 'Kabupaten Majene', '75');
INSERT INTO "public"."kota" VALUES ('435', 'Kabupaten Mamasa', '75');
INSERT INTO "public"."kota" VALUES ('436', 'Kabupaten Mamuju', '75');
INSERT INTO "public"."kota" VALUES ('437', 'Kabupaten Mamuju Utara', '75');
INSERT INTO "public"."kota" VALUES ('438', 'Kabupaten Polewali Mandar', '75');
INSERT INTO "public"."kota" VALUES ('439', 'Kabupaten Buru', '81');
INSERT INTO "public"."kota" VALUES ('440', 'Kabupaten Buru Selatan', '81');
INSERT INTO "public"."kota" VALUES ('441', 'Kabupaten Kepulauan Aru', '81');
INSERT INTO "public"."kota" VALUES ('442', 'Kabupaten Maluku Barat Daya', '81');
INSERT INTO "public"."kota" VALUES ('443', 'Kabupaten Maluku Tengah', '81');
INSERT INTO "public"."kota" VALUES ('444', 'Kabupaten Maluku Tenggara', '81');
INSERT INTO "public"."kota" VALUES ('445', 'Kabupaten Maluku Tenggara Barat', '81');
INSERT INTO "public"."kota" VALUES ('446', 'Kabupaten Seram Bagian Barat', '81');
INSERT INTO "public"."kota" VALUES ('447', 'Kabupaten Seram Bagian Timur', '81');
INSERT INTO "public"."kota" VALUES ('448', 'Kota Ambon', '81');
INSERT INTO "public"."kota" VALUES ('449', 'Kota Tual', '81');
INSERT INTO "public"."kota" VALUES ('450', 'Kabupaten Halmahera Barat', '82');
INSERT INTO "public"."kota" VALUES ('451', 'Kabupaten Halmahera Tengah', '82');
INSERT INTO "public"."kota" VALUES ('452', 'Kabupaten Halmahera Utara', '82');
INSERT INTO "public"."kota" VALUES ('453', 'Kabupaten Halmahera Selatan', '82');
INSERT INTO "public"."kota" VALUES ('454', 'Kabupaten Kepulauan Sula', '82');
INSERT INTO "public"."kota" VALUES ('455', 'Kabupaten Halmahera Timur', '82');
INSERT INTO "public"."kota" VALUES ('456', 'Kabupaten Pulau Morotai', '82');
INSERT INTO "public"."kota" VALUES ('457', 'Kota Ternate', '82');
INSERT INTO "public"."kota" VALUES ('458', 'Kota Tidore Kepulauan', '82');
INSERT INTO "public"."kota" VALUES ('459', 'Kabupaten Fakfak', '91');
INSERT INTO "public"."kota" VALUES ('460', 'Kabupaten Kaimana', '91');
INSERT INTO "public"."kota" VALUES ('461', 'Kabupaten Manokwari', '91');
INSERT INTO "public"."kota" VALUES ('462', 'Kabupaten Maybrat', '91');
INSERT INTO "public"."kota" VALUES ('463', 'Kabupaten Raja Ampat', '91');
INSERT INTO "public"."kota" VALUES ('464', 'Kabupaten Sorong', '91');
INSERT INTO "public"."kota" VALUES ('465', 'Kabupaten Sorong Selatan', '91');
INSERT INTO "public"."kota" VALUES ('466', 'Kabupaten Tambrauw', '91');
INSERT INTO "public"."kota" VALUES ('467', 'Kabupaten Teluk Bintuni', '91');
INSERT INTO "public"."kota" VALUES ('468', 'Kabupaten Teluk Wondama', '91');
INSERT INTO "public"."kota" VALUES ('469', 'Kota Sorong', '91');
INSERT INTO "public"."kota" VALUES ('470', 'Kabupaten Manokwari Selatan', '91');
INSERT INTO "public"."kota" VALUES ('471', 'Kabupaten Manokwari Arfak', '91');
INSERT INTO "public"."kota" VALUES ('472', 'Kabupaten Asmat', '94');
INSERT INTO "public"."kota" VALUES ('473', 'Kabupaten Biak Numfor', '94');
INSERT INTO "public"."kota" VALUES ('474', 'Kabupaten Boven Digoel', '94');
INSERT INTO "public"."kota" VALUES ('475', 'Kabupaten Deiyai', '94');
INSERT INTO "public"."kota" VALUES ('476', 'Kabupaten Dogiyai', '94');
INSERT INTO "public"."kota" VALUES ('477', 'Kabupaten Intan Jaya', '94');
INSERT INTO "public"."kota" VALUES ('478', 'Kabupaten Jayapura', '94');
INSERT INTO "public"."kota" VALUES ('479', 'Kabupaten Jayawijaya', '94');
INSERT INTO "public"."kota" VALUES ('480', 'Kabupaten Keerom', '94');
INSERT INTO "public"."kota" VALUES ('481', 'Kabupaten Kepulauan Yapen', '94');
INSERT INTO "public"."kota" VALUES ('482', 'Kabupaten Lanny Jaya', '94');
INSERT INTO "public"."kota" VALUES ('483', 'Kabupaten Memberamo Raya', '94');
INSERT INTO "public"."kota" VALUES ('484', 'Kabupaten Mamberamo Tengah', '94');
INSERT INTO "public"."kota" VALUES ('485', 'Kabupaten Mappi', '94');
INSERT INTO "public"."kota" VALUES ('486', 'Kabupaten Merauke', '94');
INSERT INTO "public"."kota" VALUES ('487', 'Kabupaten Mimika', '94');
INSERT INTO "public"."kota" VALUES ('488', 'Kabupaten Nabire', '94');
INSERT INTO "public"."kota" VALUES ('489', 'Kabupaten Nduga', '94');
INSERT INTO "public"."kota" VALUES ('490', 'Kabupaten Paniai', '94');
INSERT INTO "public"."kota" VALUES ('491', 'Kabupaten Pegunungan Bintang', '94');
INSERT INTO "public"."kota" VALUES ('492', 'Kabupaten Puncak', '94');
INSERT INTO "public"."kota" VALUES ('493', 'Kabupaten Puncak Jaya', '94');
INSERT INTO "public"."kota" VALUES ('494', 'Kabupaten Sarmi', '94');
INSERT INTO "public"."kota" VALUES ('495', 'Kabupaten Supiori', '94');
INSERT INTO "public"."kota" VALUES ('496', 'Kabupaten Tolikara', '94');
INSERT INTO "public"."kota" VALUES ('497', 'Kabupaten Waropen', '94');
INSERT INTO "public"."kota" VALUES ('498', 'Kabupaten Yahukimo', '94');
INSERT INTO "public"."kota" VALUES ('499', 'Kabupaten Yalimo', '94');
INSERT INTO "public"."kota" VALUES ('500', 'Kota Jayapura', '94');

-- ----------------------------
-- Table structure for "public"."pengguna"
-- ----------------------------
DROP TABLE "public"."pengguna";
CREATE TABLE "public"."pengguna" (
"nama_lengkap" varchar(100) DEFAULT NULL::character varying NOT NULL,
"username" varchar(50) DEFAULT NULL::character varying NOT NULL,
"password" varchar(50) DEFAULT NULL::character varying NOT NULL,
"group" varchar(20) DEFAULT NULL::character varying NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO "public"."pengguna" VALUES ('Admin', 'admin', '9bd5535ba2896d6d8c9a882ad4cd2e83', 'Admin');
INSERT INTO "public"."pengguna" VALUES ('SDM', 'adminsdm', '527d6b6347c450e35208b7bf2686883b', 'SDM');
INSERT INTO "public"."pengguna" VALUES ('Kikin Kusumah', 'kikin', '937dd8a1fa743bae223cd2b31c471b52', 'SDM');
INSERT INTO "public"."pengguna" VALUES ('Bapak Menteri', 'menteri', '0b9c96eb7dd1098cbf7b68ad926ea447', 'Eksekutif');

-- ----------------------------
-- Table structure for "public"."provinsi"
-- ----------------------------
DROP TABLE "public"."provinsi";
CREATE TABLE "public"."provinsi" (
"id" int4 NOT NULL,
"nm_prov" varchar(50) DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO "public"."provinsi" VALUES ('11', 'Aceh');
INSERT INTO "public"."provinsi" VALUES ('12', 'Sumatera Utara');
INSERT INTO "public"."provinsi" VALUES ('13', 'Sumatera Barat');
INSERT INTO "public"."provinsi" VALUES ('14', 'Riau');
INSERT INTO "public"."provinsi" VALUES ('15', 'Jambi');
INSERT INTO "public"."provinsi" VALUES ('16', 'Sumatera Selatan');
INSERT INTO "public"."provinsi" VALUES ('17', 'Bengkulu');
INSERT INTO "public"."provinsi" VALUES ('18', 'Lampung');
INSERT INTO "public"."provinsi" VALUES ('19', 'Kep. Bangka Belitung');
INSERT INTO "public"."provinsi" VALUES ('21', 'Kep. Riau');
INSERT INTO "public"."provinsi" VALUES ('31', 'DKI Jakarta');
INSERT INTO "public"."provinsi" VALUES ('32', 'Jawa Barat');
INSERT INTO "public"."provinsi" VALUES ('33', 'Jawa Tengah');
INSERT INTO "public"."provinsi" VALUES ('34', 'Yogyakarta');
INSERT INTO "public"."provinsi" VALUES ('35', 'Jawa Timur');
INSERT INTO "public"."provinsi" VALUES ('36', 'Banten');
INSERT INTO "public"."provinsi" VALUES ('51', 'Bali');
INSERT INTO "public"."provinsi" VALUES ('52', 'Nusa Tenggara Barat');
INSERT INTO "public"."provinsi" VALUES ('53', 'Nusa Tenggara Timur');
INSERT INTO "public"."provinsi" VALUES ('61', 'Kalimantan Barat');
INSERT INTO "public"."provinsi" VALUES ('62', 'Kalimantan Tengah');
INSERT INTO "public"."provinsi" VALUES ('63', 'Kalimantan Selatan');
INSERT INTO "public"."provinsi" VALUES ('64', 'Kalimantan Timur');
INSERT INTO "public"."provinsi" VALUES ('65', 'Kalimantan Utara');
INSERT INTO "public"."provinsi" VALUES ('71', 'Sulawesi Utara');
INSERT INTO "public"."provinsi" VALUES ('72', 'Sulawesi Tengah');
INSERT INTO "public"."provinsi" VALUES ('73', 'Sulawesi Selatan');
INSERT INTO "public"."provinsi" VALUES ('74', 'Sulawesi Tenggara');
INSERT INTO "public"."provinsi" VALUES ('75', 'Gorontalo');
INSERT INTO "public"."provinsi" VALUES ('76', 'Sulawesi Barat');
INSERT INTO "public"."provinsi" VALUES ('81', 'Maluku');
INSERT INTO "public"."provinsi" VALUES ('82', 'Maluku Utara');
INSERT INTO "public"."provinsi" VALUES ('91', 'Papua Barat');
INSERT INTO "public"."provinsi" VALUES ('94', 'Papua');

-- ----------------------------
-- Table structure for "public"."sdm_rekap_jab_jk"
-- ----------------------------
DROP TABLE "public"."sdm_rekap_jab_jk";
CREATE TABLE "public"."sdm_rekap_jab_jk" (
"no" int4 NOT NULL,
"jabatan" varchar(30) DEFAULT NULL::character varying,
"jml_pria" int4,
"jml_wanita" int4,
"tahun" int2 NOT NULL,
"sisa" int2,
"pensiun" int2,
"bulan" int2 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sdm_rekap_jab_jk
-- ----------------------------
INSERT INTO "public"."sdm_rekap_jab_jk" VALUES ('1', 'Eselon I', '8', '2', '2012', '10', '0', '12');
INSERT INTO "public"."sdm_rekap_jab_jk" VALUES ('2', 'Eselon II', '20', '6', '2012', '26', '0', '12');
INSERT INTO "public"."sdm_rekap_jab_jk" VALUES ('3', 'Eselon III', '56', '15', '2012', '71', '3', '12');
INSERT INTO "public"."sdm_rekap_jab_jk" VALUES ('4', 'Eselon IV', '83', '54', '2012', '137', '2', '12');
INSERT INTO "public"."sdm_rekap_jab_jk" VALUES ('5', 'Staf / Petugas (Non-Eselon)', '125', '69', '2012', '194', '0', '12');
INSERT INTO "public"."sdm_rekap_jab_jk" VALUES ('6', 'Staf Khusus', '10', '5', '2012', null, null, '12');
INSERT INTO "public"."sdm_rekap_jab_jk" VALUES ('7', 'Honorer', '263', '110', '2012', null, null, '12');

-- ----------------------------
-- Table structure for "public"."sdm_rekap_unit_stat"
-- ----------------------------
DROP TABLE "public"."sdm_rekap_unit_stat";
CREATE TABLE "public"."sdm_rekap_unit_stat" (
"no" int2 NOT NULL,
"unit_kerja" varchar(100) DEFAULT NULL::character varying,
"jml_pns" int4,
"jml_honor" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sdm_rekap_unit_stat
-- ----------------------------
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('1', 'Sekretariat Kementrian', '107', '180');
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('2', 'Deputi Bid. Pembiayaan', '69', '26');
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('3', 'Deputi Bid. Pengembangan Kawasan', '76', '41');
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('4', 'Deputi Bid. Perumahan Swadaya', '76', '42');
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('5', 'Deputi Bid. Perumahan Formal', '76', '35');
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('6', 'Inspektorat Kementrian', '7', '4');
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('7', 'Pusat Pengembangan Perumahan', '13', '23');
INSERT INTO "public"."sdm_rekap_unit_stat" VALUES ('8', 'Pusat Pembiayaan Perumahan', '14', '22');

-- ----------------------------
-- Table structure for "public"."unit_kerja"
-- ----------------------------
DROP TABLE "public"."unit_kerja";
CREATE TABLE "public"."unit_kerja" (
"unit_kerja" varchar(50) DEFAULT NULL::character varying NOT NULL,
"keterangan" varchar(50) DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of unit_kerja
-- ----------------------------
INSERT INTO "public"."unit_kerja" VALUES ('BLU', 'BADAN LAYANAN UMUM (BLU)');
INSERT INTO "public"."unit_kerja" VALUES ('FORMAL', 'PERUMAHAN FORMAL');
INSERT INTO "public"."unit_kerja" VALUES ('INSPEKTORAT', 'INSPEKTORAT KEMENPERA');
INSERT INTO "public"."unit_kerja" VALUES ('KAWASAN', 'PENGEMBANGAN KAWASAN');
INSERT INTO "public"."unit_kerja" VALUES ('PEMBIAYAAN', 'PEMBIAYAAN PERUMAHAN');
INSERT INTO "public"."unit_kerja" VALUES ('PUSAT PEMBIAYAAN PERUMAHAN', 'BLU PUSAT PEMBIAYAAN PERUMAHAN');
INSERT INTO "public"."unit_kerja" VALUES ('PUSAT PENGEMBANGAN PERUMAHAN', 'BLU PUSAT PENGEMBANGAN PERUMAHAN');
INSERT INTO "public"."unit_kerja" VALUES ('SEKRETARIAT', 'SEKRETARIAT KEMENPERA');
INSERT INTO "public"."unit_kerja" VALUES ('SWADAYA', 'PERUMAHAN SWADAYA');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "public"."absen"
-- ----------------------------
ALTER TABLE "public"."absen" ADD PRIMARY KEY ("jabatan", "tgl");

-- ----------------------------
-- Primary Key structure for table "public"."absensi"
-- ----------------------------
ALTER TABLE "public"."absensi" ADD PRIMARY KEY ("nip", "tgl_absen");

-- ----------------------------
-- Primary Key structure for table "public"."agenda"
-- ----------------------------
ALTER TABLE "public"."agenda" ADD PRIMARY KEY ("date");

-- ----------------------------
-- Primary Key structure for table "public"."anggaran"
-- ----------------------------
ALTER TABLE "public"."anggaran" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."ci_sessions"
-- ----------------------------
ALTER TABLE "public"."ci_sessions" ADD PRIMARY KEY ("session_id");

-- ----------------------------
-- Primary Key structure for table "public"."gis"
-- ----------------------------
ALTER TABLE "public"."gis" ADD PRIMARY KEY ("no", "id_gis_group");

-- ----------------------------
-- Primary Key structure for table "public"."gis_group"
-- ----------------------------
ALTER TABLE "public"."gis_group" ADD PRIMARY KEY ("id_gis_group");

-- ----------------------------
-- Primary Key structure for table "public"."kegiatan"
-- ----------------------------
ALTER TABLE "public"."kegiatan" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."kegiatan_mon"
-- ----------------------------
ALTER TABLE "public"."kegiatan_mon" ADD PRIMARY KEY ("nama_keg", "tahun", "bagian");

-- ----------------------------
-- Primary Key structure for table "public"."pengguna"
-- ----------------------------
ALTER TABLE "public"."pengguna" ADD PRIMARY KEY ("username");

-- ----------------------------
-- Primary Key structure for table "public"."sdm_rekap_jab_jk"
-- ----------------------------
ALTER TABLE "public"."sdm_rekap_jab_jk" ADD PRIMARY KEY ("no", "tahun", "bulan");

-- ----------------------------
-- Primary Key structure for table "public"."sdm_rekap_unit_stat"
-- ----------------------------
ALTER TABLE "public"."sdm_rekap_unit_stat" ADD PRIMARY KEY ("no");
