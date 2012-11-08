/*
MySQL Data Transfer
Source Host: localhost
Source Database: sesmen_digilib
Target Host: localhost
Target Database: sesmen_digilib
Date: 11/7/2012 1:40:34 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for agenda
-- ----------------------------
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
-- Table structure for artikel
-- ----------------------------
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
-- Table structure for berita
-- ----------------------------
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
-- Table structure for buku
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=4641 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for cd
-- ----------------------------
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
-- Table structure for diklat
-- ----------------------------
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
-- Table structure for hitscounter
-- ----------------------------
CREATE TABLE `hitscounter` (
  `hits` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `script` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for jejaring
-- ----------------------------
CREATE TABLE `jejaring` (
  `jejaring_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`jejaring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for jurnal
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for kamus
-- ----------------------------
CREATE TABLE `kamus` (
  `kamus_id` int(11) NOT NULL AUTO_INCREMENT,
  `istilah` varchar(255) NOT NULL,
  `arti` text NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`kamus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for karya_ilmiah
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for katalog
-- ----------------------------
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
-- Table structure for kliping
-- ----------------------------
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
-- Table structure for konter
-- ----------------------------
CREATE TABLE `konter` (
  `ip` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tanggal` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `waktu` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for kunjungan
-- ----------------------------
CREATE TABLE `kunjungan` (
  `kunjungan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kunjungan_id`),
  KEY `kunjungan_id` (`kunjungan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for lainnya
-- ----------------------------
CREATE TABLE `lainnya` (
  `lainnya_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`lainnya_id`),
  KEY `lainnya_id` (`lainnya_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for laporan
-- ----------------------------
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
-- Table structure for leaflet
-- ----------------------------
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
-- Table structure for majalah
-- ----------------------------
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
-- Table structure for makalah
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for newsletter
-- ----------------------------
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
-- Table structure for presentasi
-- ----------------------------
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
-- Table structure for prosiding
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for resensi
-- ----------------------------
CREATE TABLE `resensi` (
  `resensi_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`resensi_id`),
  KEY `resensi_id` (`resensi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for saran
-- ----------------------------
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
-- Table structure for tahukah
-- ----------------------------
CREATE TABLE `tahukah` (
  `tahukah_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userfile` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `inti` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`tahukah_id`),
  KEY `tahukah_id` (`tahukah_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for tamu
-- ----------------------------
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
-- Table structure for users
-- ----------------------------
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
-- Table structure for usersonline
-- ----------------------------
CREATE TABLE `usersonline` (
  `timestamp` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `file` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

