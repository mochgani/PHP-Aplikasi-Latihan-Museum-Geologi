-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 14 Jun 2016 pada 00.15
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_geologi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arah`
--

CREATE TABLE IF NOT EXISTS `arah` (
  `idarah` int(11) NOT NULL AUTO_INCREMENT,
  `idruangan` int(11) NOT NULL,
  `idruangantujuan` int(11) NOT NULL,
  `maps` varchar(500) NOT NULL,
  PRIMARY KEY (`idarah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `arah`
--

INSERT INTO `arah` (`idarah`, `idruangan`, `idruangantujuan`, `maps`) VALUES
(1, 1, 3, 'upload/arah/1-3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `idkategori` int(11) NOT NULL AUTO_INCREMENT,
  `namakategori` varchar(200) NOT NULL,
  `idsub` int(11) NOT NULL,
  PRIMARY KEY (`idkategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `idsub`) VALUES
(1, 'Pengunjung', 0),
(2, 'User', 0),
(3, 'Koleksi', 0),
(4, 'Asing', 1),
(5, 'Umum', 1),
(6, 'Pelajar', 1),
(7, 'Administrator', 2),
(8, 'Petugas Tiket', 2),
(9, 'Fosil Reptil', 3),
(10, 'Fosil Daun', 3),
(11, 'Fosil DinoSaurus', 3),
(12, 'Evolusi Manusia', 3),
(13, 'Animalia', 3),
(14, 'Mamalia', 3),
(15, 'Akibat Bencana Alam', 3),
(16, 'Sumber Daya Alam', 3),
(17, 'Benda Sejarah', 3),
(18, 'Makhluh Hidup Laut', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_eng`
--

CREATE TABLE IF NOT EXISTS `kategori_eng` (
  `idkategori_eng` int(11) NOT NULL AUTO_INCREMENT,
  `namakategori_eng` varchar(200) NOT NULL,
  `idkategori` int(11) NOT NULL,
  PRIMARY KEY (`idkategori_eng`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `kategori_eng`
--

INSERT INTO `kategori_eng` (`idkategori_eng`, `namakategori_eng`, `idkategori`) VALUES
(1, 'Pengunjung', 1),
(2, 'User', 2),
(3, 'Koleksi', 3),
(4, 'Asing', 4),
(5, 'Umum', 5),
(6, 'Pelajar', 6),
(7, 'Administrator', 7),
(8, 'Petugas Tiket', 8),
(9, 'Reptiles Fossil', 9),
(10, 'Leaves Fossil', 10),
(11, 'Dinosaur Fossils', 11),
(12, 'Human Evolution', 12),
(13, 'Animalia', 13),
(14, 'Mammals', 14),
(15, 'Due to Natural Disasters', 15),
(16, 'Natural Resources', 16),
(17, 'Historical Objects', 17),
(18, 'Living Sea', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi`
--

CREATE TABLE IF NOT EXISTS `koleksi` (
  `idkoleksi` int(11) NOT NULL AUTO_INCREMENT,
  `idkategori` int(11) NOT NULL,
  `namakoleksi` varchar(200) NOT NULL,
  `lokasitemu` varchar(300) NOT NULL DEFAULT '-',
  `tgltemu` varchar(300) NOT NULL DEFAULT '-',
  `penemu` varchar(200) NOT NULL DEFAULT '-',
  `umur` varchar(200) NOT NULL DEFAULT '-',
  `ukuran` varchar(200) NOT NULL DEFAULT '-',
  `deskripsi` varchar(5000) NOT NULL DEFAULT '-',
  `url` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `data_added` datetime NOT NULL,
  `idruangan` int(11) NOT NULL,
  PRIMARY KEY (`idkoleksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `koleksi`
--

INSERT INTO `koleksi` (`idkoleksi`, `idkategori`, `namakoleksi`, `lokasitemu`, `tgltemu`, `penemu`, `umur`, `ukuran`, `deskripsi`, `url`, `gambar`, `data_added`, `idruangan`) VALUES
(1, 9, 'Fosil Ular Python Reticulatus', 'Charuman, Kabupaten Bandung', '', '', 'antara 30.000 sampai dengan 40.000 tahun yang lalu', 'Diameter penampang hewan ini kurang lebih 30cm dan panjangnya diperkirakan lebih dari 5m', 'Fosil ular ini merupakan fosil ular pertama yang ditemukan di Indonesia. Morfologinya mendekati jenis Python (Python reticulatus)', 'api-koleksi/1', 'upload/koleksi/1.jpg', '2014-01-02 22:52:05', 3),
(2, 12, 'Homo Erectus (Manusia Purba Berdiri Tegak)', 'Desa Pucung (Kubah sangiran), Kaliyoso, Kabupaten sragen, Jawa Tengah', '13 September 1969', 'Toekimin', '750.000 tahun lalu (years ago) – Plistosen (Pleistocene)', '', 'Manusia Purba ini dikenal di dunia sebagai Manusia Jawa yang semula oleh Dubois dinamakan Pithecanthropus erectus Dubois (1894). (This early man has known in the world as the Java Man, previously well known as  Pithecanthropus erectus Dubois (1894).', 'api-koleksi/2', 'upload/koleksi/2.jpg', '2013-11-13 10:45:47', 1),
(3, 16, 'Fosil Kayu (Kayu Yang Membatu)', ' ', '', '', 'Berumur Miosen (23,5 â€“ 5,2 Juta tahun yang lalu)', '', 'Proses Pembentukan : Setelah pohon mati, rongga kapiler dalam batang pohon terisi air yang mengandung larutan silikat. Kemudian airnya menguap sehingga silikat tersebut tertinggal didalam batang pohon. Akhirnya seluruh rongga kapiler batang pohon terisi oleh silikat dan pohon tersebut komposisinya berubah menjadi silikat (membantu)', 'api-koleksi/3', 'upload/koleksi/3.jpg', '2013-11-13 10:45:47', 2),
(4, 14, 'Gajah ', ' Papua', '05 November 1993', 'toekimin', '500 tahun yang lalu', '', 'Gajah ini identik dengan gading yang sangat panjang', 'api-koleksi/4', 'upload/koleksi/4.jpg', '2013-11-13 12:33:17', 3),
(5, 18, 'Tridacna gigas (Linnaeus, 1758)', 'Padalarang, Jawa Barat', 'Tahun 1982', 'Andri Kristanto', '-', '-', 'Kerang sudah hidup beratu-ratus tahun lamanya.', 'api-koleksi/5', 'upload/koleksi/5.jpg', '2013-11-12 12:33:14', 4),
(6, 10, 'Pecopteris acuta', 'Gerstweiler, saarbrjcken, German', '-', '-', 'Karbon akhir (Late carboniferous)', '-', 'Fosil daun (Leave Fossil)', 'api-koleksi/6', 'upload/koleksi/6.jpg', '2013-11-12 10:52:14', 5),
(7, 17, 'Replika Hiasan Dada Raja (Replica of King Breastplate)', 'Palembang, Sumatera selatan.', '-', '-', 'Sejak masa zaman kerajaan Sriwijaya', '-', 'Biasanya digunakan oleh raja-raja pada masa itu.', 'api-koleksi/7', 'upload/koleksi/7.jpg', '2013-11-12 10:59:31', 2),
(8, 16, 'Bijih Emas (Gold Ore)', 'Kubang Cicau, Jawa Barat (West Java)', '-', '-', 'Diperkirakan berumur 303 tahun', '-', 'Batu-batuan', 'api-koleksi/8', 'upload/koleksi/8.jpg', '2013-11-12 11:06:14', 2),
(9, 16, 'Batulempung (Clay Stone)', '-', '-', '-', '-', '-', 'Batulempung, apabila terkena air akan mengembang dan mengakibatkan terjadinya longsoran.', 'api-koleksi/9', 'upload/koleksi/9.jpg', '2013-11-12 11:09:19', 2),
(10, 16, 'Sinter Karbonat', 'Cisolok, Sukabumi, Jawa Barat', '-', 'Museum Geologi', '-', '-', 'sinter karbonat merupakan endapan mineral silika disekitar mata air panas yang banyak mengandung unsur karbonat seperti batugamping.', 'api-koleksi/10', 'upload/koleksi/10.jpg', '2013-11-12 11:11:14', 2),
(11, 15, 'Endapan awan Panas (Ash Flow Deposits)', 'Desa Kinaherjo, Yogyakarta.', '2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.', 'api-koleksi/11', 'upload/koleksi/11.jpg', '2013-11-12 11:19:19', 2),
(12, 15, 'Kayu (Wood)', 'Desa Kinaherjo, Yogyakarta', '2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.', 'api-koleksi/12', 'upload/koleksi/12.jpg', '2013-11-12 11:21:14', 2),
(13, 15, 'Sepeda Motor dan Helm (Motorcycle and Helmet)', 'Desa Kinaherjo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.', 'api-koleksi/13', 'upload/koleksi/13.jpg', '2013-11-12 11:25:19', 2),
(14, 15, 'Termos air (Thermos)', 'desa Pangurejo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.', 'api-koleksi/14', 'upload/koleksi/14.jpg', '2013-11-12 11:24:14', 2),
(15, 15, 'Pemasak Nasi (Rice Cooker)', 'desa Pangurejo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010', 'api-koleksi/15', 'upload/koleksi/15.jpg', '2013-11-12 11:30:37', 2),
(16, 15, 'Jerigen (Jerry Can)', 'desa Pangurejo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010', 'api-koleksi/16', 'upload/koleksi/16.jpg', '2013-11-12 11:35:37', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi_eng`
--

CREATE TABLE IF NOT EXISTS `koleksi_eng` (
  `idkoleksi_eng` int(11) NOT NULL AUTO_INCREMENT,
  `idkoleksi` int(11) NOT NULL,
  `namakoleksi_eng` varchar(200) NOT NULL,
  `lokasitemu_eng` varchar(300) NOT NULL DEFAULT '-',
  `tgltemu_eng` varchar(300) NOT NULL DEFAULT '-',
  `penemu_eng` varchar(200) NOT NULL DEFAULT '-',
  `umur_eng` varchar(200) NOT NULL DEFAULT '-',
  `ukuran_eng` varchar(200) NOT NULL DEFAULT '-',
  `deskripsi_eng` varchar(5000) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idkoleksi_eng`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `koleksi_eng`
--

INSERT INTO `koleksi_eng` (`idkoleksi_eng`, `idkoleksi`, `namakoleksi_eng`, `lokasitemu_eng`, `tgltemu_eng`, `penemu_eng`, `umur_eng`, `ukuran_eng`, `deskripsi_eng`) VALUES
(1, 1, 'Fosil Ular Python Reticulatus', 'Charuman, Kabupaten Bandung', '', '', 'antara 30.000 sampai dengan 40.000 tahun yang lalu', 'Diameter penampang hewan ini kurang lebih 30cm dan panjangnya diperkirakan lebih dari 5m', 'Fosil ular ini merupakan fosil ular pertama yang ditemukan di Indonesia. Morfologinya mendekati jenis Python (Python reticulatus)'),
(2, 2, 'Homo Erectus (Ancient Man Standing Upright)', 'Pucung Village (Kubah sangiran), Kaliyoso, Kabupaten sragen, Jawa Tengah', '13 September 1969', 'Toekimin', '750.000 years ago – Pleistocene', '', 'Ancient Man is known worldwide as the Java Man initially by Dubois called Pithecanthropus erectus Dubois (1894). (This early man has known in the world as the Java Man, well Previously known as Pithecanthropus erectus Dubois (1894).'),
(3, 3, 'Fosil Kayu (Kayu Yang Membatu)', ' ', '', '', 'Berumur Miosen (23,5 â€“ 5,2 Juta tahun yang lalu)', '', 'Proses Pembentukan : Setelah pohon mati, rongga kapiler dalam batang pohon terisi air yang mengandung larutan silikat. Kemudian airnya menguap sehingga silikat tersebut tertinggal didalam batang pohon. Akhirnya seluruh rongga kapiler batang pohon terisi oleh silikat dan pohon tersebut komposisinya berubah menjadi silikat (membantu)'),
(4, 4, 'Gajah ', ' Papua', '05 November 1993', 'toekimin', '500 tahun yang lalu', '', 'Gajah ini identik dengan gading yang sangat panjang'),
(5, 5, 'Tridacna gigas (Linnaeus, 1758)', 'Padalarang, Jawa Barat', 'Tahun 1982', 'Andri Kristanto', '-', '-', 'Kerang sudah hidup beratu-ratus tahun lamanya.'),
(6, 6, 'Pecopteris acuta', 'Gerstweiler, saarbrjcken, German', '-', '-', 'Karbon akhir (Late carboniferous)', '-', 'Fosil daun (Leave Fossil)'),
(7, 7, 'Replika Hiasan Dada Raja (Replica of King Breastplate)', 'Palembang, Sumatera selatan.', '-', '-', 'Sejak masa zaman kerajaan Sriwijaya', '-', 'Biasanya digunakan oleh raja-raja pada masa itu.'),
(8, 8, 'Bijih Emas (Gold Ore)', 'Kubang Cicau, Jawa Barat (West Java)', '-', '-', 'Diperkirakan berumur 303 tahun', '-', 'Batu-batuan'),
(9, 9, 'Batulempung (Clay Stone)', '-', '-', '-', '-', '-', 'Batulempung, apabila terkena air akan mengembang dan mengakibatkan terjadinya longsoran.'),
(10, 10, 'Sinter Karbonat', 'Cisolok, Sukabumi, Jawa Barat', '-', 'Museum Geologi', '-', '-', 'sinter karbonat merupakan endapan mineral silika disekitar mata air panas yang banyak mengandung unsur karbonat seperti batugamping.'),
(11, 11, 'Endapan awan Panas (Ash Flow Deposits)', 'Desa Kinaherjo, Yogyakarta.', '2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.'),
(12, 12, 'Kayu (Wood)', 'Desa Kinaherjo, Yogyakarta', '2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.'),
(13, 13, 'Sepeda Motor dan Helm (Motorcycle and Helmet)', 'Desa Kinaherjo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.'),
(14, 14, 'Termos air (Thermos)', 'desa Pangurejo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.'),
(15, 15, 'Pemasak Nasi (Rice Cooker)', 'desa Pangurejo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010'),
(16, 16, 'Jerigen (Jerry Can)', 'desa Pangurejo, Yogyakarta.', 'Tahun 2010', 'Museum Geologi', '-', '-', 'KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan_koleksi`
--

CREATE TABLE IF NOT EXISTS `kunjungan_koleksi` (
  `idkunjungankoleksi` int(11) NOT NULL AUTO_INCREMENT,
  `waktulihat` datetime DEFAULT NULL,
  `no_tiket` int(11) DEFAULT NULL,
  `idkoleksi` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkunjungankoleksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;

--
-- Dumping data untuk tabel `kunjungan_koleksi`
--

INSERT INTO `kunjungan_koleksi` (`idkunjungankoleksi`, `waktulihat`, `no_tiket`, `idkoleksi`) VALUES
(1, '2013-12-01 00:00:00', 123435, 2),
(2, '2013-12-02 00:00:00', 123435, 2),
(3, '2013-12-01 00:00:00', 116968, 2),
(4, '2013-12-01 00:00:00', 123435, 2),
(5, '2013-12-01 00:00:00', 123435, 2),
(6, '2013-12-01 00:00:00', 116968, 2),
(7, '2013-12-01 00:00:00', 116968, 2),
(8, '2013-12-02 00:00:00', 116968, 2),
(9, '2013-12-02 00:00:00', 116968, 2),
(10, '2013-12-01 00:00:00', 116968, 2),
(11, '2013-12-11 00:00:00', 116968, 2),
(12, '2013-12-11 10:12:49', 151617, 2),
(13, '2013-12-11 10:13:26', 118280, 2),
(14, '2013-12-11 10:19:37', 118280, 2),
(15, '2013-12-11 00:00:00', 118280, 2),
(16, '2013-12-11 11:36:03', 151617, 2),
(17, '2013-12-11 11:36:36', 151617, 2),
(18, '2013-12-11 11:36:55', 151617, 2),
(19, '2013-12-11 11:37:13', 151617, 2),
(20, '2013-12-10 00:00:00', 118253, 2),
(21, '2013-12-10 00:00:00', 118251, 2),
(22, '2013-12-10 00:00:00', 118250, 2),
(23, '2013-12-10 00:00:00', 118249, 2),
(24, '2013-12-10 00:00:00', 118247, 2),
(25, '2013-12-10 00:00:00', 118242, 2),
(26, '2013-12-10 00:00:00', 118241, 2),
(27, '2013-12-10 00:00:00', 118240, 2),
(28, '2013-12-10 00:00:00', 118238, 2),
(29, '2013-12-10 00:00:00', 118237, 2),
(30, '2013-12-10 00:00:00', 118235, 2),
(31, '2013-12-10 00:00:00', 118229, 2),
(32, '2013-12-09 00:00:00', 118230, 2),
(33, '2013-12-09 00:00:00', 118236, 2),
(34, '2013-12-09 00:00:00', 118225, 2),
(35, '2013-12-09 00:00:00', 118228, 2),
(36, '2013-12-09 00:00:00', 118227, 2),
(37, '2013-12-09 00:00:00', 118224, 2),
(38, '2013-12-09 00:00:00', 118223, 2),
(39, '2013-12-09 00:00:00', 118215, 2),
(40, '2013-12-09 00:00:00', 118218, 2),
(41, '2013-12-11 12:36:16', 151207, 2),
(42, '2013-12-11 12:37:19', 151207, 1),
(43, '2014-01-06 16:29:52', 1, 4),
(44, '2014-01-24 16:09:40', 10111506, 2),
(45, '2015-05-16 14:50:00', 898989, 1),
(46, '2015-05-16 14:51:06', 898989, 1),
(47, '2015-05-16 14:52:35', 898989, 2),
(48, '2015-05-16 14:52:49', 898989, 4),
(49, '2015-05-16 14:53:05', 898989, 7),
(50, '2015-05-24 09:53:51', 112233, 4),
(51, '2015-05-24 09:54:11', 112233, 5),
(52, '2015-05-24 16:10:44', 112233, 1),
(53, '2015-05-24 16:11:24', 112233, 2),
(54, '2015-05-24 16:11:35', 112233, 9),
(55, '2016-05-14 05:38:28', 140516001, 1),
(56, '2016-05-14 06:27:56', 140516001, 2),
(57, '2016-05-14 06:30:27', 140516001, 2),
(58, '2016-05-19 23:39:39', 140516001, 1),
(59, '2016-05-19 23:51:00', 140516001, 1),
(60, '2016-05-19 23:54:12', 140516001, 1),
(61, '2016-05-19 23:58:54', 140516001, 1),
(62, '2016-05-20 00:00:01', 140516001, 1),
(63, '2016-05-20 00:03:27', 140516001, 1),
(64, '2016-05-20 00:10:24', 140516001, 1),
(65, '2016-05-20 00:15:39', 140516001, 1),
(66, '2016-05-20 00:20:25', 140516001, 1),
(67, '2016-05-20 00:23:06', 140516001, 1),
(68, '2016-05-20 00:24:01', 140516001, 3),
(69, '2016-05-20 00:24:58', 140516001, 2),
(70, '2016-05-20 00:26:11', 140516001, 2),
(71, '2016-05-20 00:51:09', 140516001, 1),
(72, '2016-05-20 01:16:05', 140516001, 1),
(73, '2016-05-20 01:34:39', 140516001, 1),
(74, '2016-05-20 01:35:03', 140516001, 1),
(75, '2016-05-20 01:36:05', 140516001, 1),
(76, '2016-05-20 01:38:27', 140516001, 1),
(77, '2016-05-20 01:44:15', 140516001, 1),
(78, '2016-05-20 01:44:31', 140516001, 1),
(79, '2016-05-20 02:14:35', 140516001, 1),
(80, '2016-05-20 02:16:55', 140516001, 1),
(81, '2016-05-20 02:17:54', 140516001, 1),
(82, '2016-05-20 02:18:32', 140516001, 1),
(83, '2016-05-20 02:21:54', 140516001, 1),
(84, '2016-05-20 02:22:26', 140516001, 1),
(85, '2016-05-20 02:30:32', 140516001, 1),
(86, '2016-05-20 02:34:09', 140516001, 1),
(87, '2016-05-20 02:35:17', 140516001, 1),
(88, '2016-05-20 02:35:57', 140516001, 1),
(89, '2016-05-20 12:44:07', 140516001, 1),
(90, '2016-05-20 12:45:21', 140516001, 1),
(91, '2016-05-20 15:05:04', 140516001, 1),
(92, '2016-05-20 15:05:49', 140516001, 1),
(93, '2016-05-20 15:06:14', 140516001, 2),
(94, '2016-05-20 15:09:57', 140516001, 2),
(95, '2016-05-20 15:10:13', 140516001, 2),
(96, '2016-05-20 15:10:45', 140516001, 1),
(97, '2016-05-20 15:11:32', 140516001, 2),
(98, '2016-05-20 15:12:13', 140516001, 2),
(99, '2016-05-20 23:18:21', 140516001, 1),
(100, '2016-05-20 23:19:53', 140516001, 2),
(101, '2016-05-20 23:22:41', 140516001, 2),
(102, '2016-05-20 23:23:30', 140516001, 2),
(103, '2016-06-02 19:55:24', 1, 1),
(104, '2016-06-11 04:06:02', 1, 1),
(105, '2016-06-11 04:19:15', 1, 1),
(106, '2016-06-11 04:19:29', 2, 1),
(107, '2016-06-11 04:20:00', 1, 2),
(108, '2016-06-11 04:20:05', 1, 2),
(109, '2016-06-11 04:21:12', 1, 2),
(110, '2016-06-11 04:22:38', 1, 2),
(111, '2016-06-11 04:22:52', 1, 2),
(112, '2016-06-11 04:40:12', 1, 2),
(113, '2016-06-11 04:40:34', 1, 2),
(114, '2016-06-11 04:40:57', 1, 2),
(115, '2016-06-11 04:41:15', 1, 2),
(116, '2016-06-11 04:42:37', 1, 2),
(117, '2016-06-11 04:45:00', 1, 2),
(118, '2016-06-11 04:59:29', 1, 2),
(119, '2016-06-11 05:06:08', 1, 2),
(120, '2016-06-11 05:07:00', 1, 2),
(121, '2016-06-11 05:13:50', 1, 2),
(122, '2016-06-11 05:14:12', 1, 2),
(123, '2016-06-11 05:15:29', 1, 2),
(124, '2016-06-11 05:16:04', 1, 2),
(125, '2016-06-14 04:20:13', 1, 2),
(126, '2016-06-14 04:20:46', 1, 2),
(127, '2016-06-14 05:01:38', 1, 2),
(128, '2016-06-14 05:03:07', 1, 2),
(129, '2016-06-14 05:13:54', 1, 2),
(130, '2016-06-14 05:14:29', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan_sejarah`
--

CREATE TABLE IF NOT EXISTS `kunjungan_sejarah` (
  `idkunjungansejarah` int(11) NOT NULL AUTO_INCREMENT,
  `waktulihat` datetime DEFAULT NULL,
  `no_tiket` int(11) DEFAULT NULL,
  `idsejarah` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkunjungansejarah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan_video`
--

CREATE TABLE IF NOT EXISTS `kunjungan_video` (
  `idkunjunganvideo` int(11) NOT NULL AUTO_INCREMENT,
  `waktulihat` datetime DEFAULT NULL,
  `no_tiket` int(11) DEFAULT NULL,
  `idvideo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkunjunganvideo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_query`
--

CREATE TABLE IF NOT EXISTS `log_query` (
  `idlogquery` int(11) NOT NULL AUTO_INCREMENT,
  `isilogquery` varchar(1000) NOT NULL,
  PRIMARY KEY (`idlogquery`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data untuk tabel `log_query`
--

INSERT INTO `log_query` (`idlogquery`, `isilogquery`) VALUES
(1, 'p.nama LIKE ''%gani%'' OR p.asal LIKE ''%gani%'''),
(2, 'p.nama LIKE ''%james%'' OR p.asal LIKE ''%james%'''),
(3, 'p.nama LIKE ''%uni%'' OR p.asal LIKE ''%uni%'''),
(4, 'p.nama LIKE ''%unikom%'' OR p.asal LIKE ''%unikom%'''),
(5, 'p.nama LIKE ''%unikom%'' OR p.asal LIKE ''%unikom%'''),
(6, 'namakoleksi LIKE ''%gajah%'' OR lokasitemu LIKE ''%gajah%'' OR tgltemu LIKE ''%gajah%'' OR penemu LIKE ''%gajah%'' OR umur LIKE ''%gajah%'' OR ukuran LIKE ''%gajah%'' OR deskripsi LIKE ''%gajah%'''),
(7, 'namakoleksi LIKE ''%pengunjung%'' OR lokasitemu LIKE ''%pengunjung%'' OR tgltemu LIKE ''%pengunjung%'' OR penemu LIKE ''%pengunjung%'' OR umur LIKE ''%pengunjung%'' OR ukuran LIKE ''%pengunjung%'' OR deskripsi LIKE ''%pengunjung%'''),
(8, 'namakategori LIKE ''%user%'''),
(9, 'namakategori LIKE ''%fosil%'''),
(10, 'namaruangan LIKE ''%posil%'' OR keterangan LIKE ''%posil%'''),
(14, 'namakoleksi LIKE ''%ular%'' OR lokasitemu LIKE ''%ular%'' OR tgltemu LIKE ''%ular%'' OR penemu LIKE ''%ular%'' OR umur LIKE ''%ular%'' OR ukuran LIKE ''%ular%'' OR deskripsi LIKE ''%ular%'''),
(20, 'p.nama LIKE ''%mochamad gani%'' OR p.asal LIKE ''%mochamad gani%'''),
(21, 'p.nama LIKE ''%%'' OR p.asal LIKE ''%%'''),
(22, 'date_format(kk.waktulihat,''%Y-%m-%d'')>=''01-12-2013'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''10-01-2014'' AND kk.idkoleksi=2'),
(23, 'date_format(kk.waktulihat,''%Y-%m-%d'')>=''2013-11-01'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''2014-01-10'' AND kk.idkoleksi=2'),
(24, 'date_format(kk.waktulihat,''%Y-%m-%d'')>=''2013-12-01'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''2014-01-10'' AND kk.idkoleksi=2'),
(25, 'date_format(kk.waktulihat,''%Y-%m-%d'')>=''2013-12-01'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''2014-01-14'' AND kk.idkoleksi=2'),
(26, 'date_format(kk.waktulihat,''%Y-%m-%d'')>=''2013-12-01'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''2014-01-15'' AND kk.idkoleksi=2'),
(27, 'namakoleksi LIKE ''%fosil%'' OR lokasitemu LIKE ''%fosil%'' OR tgltemu LIKE ''%fosil%'' OR penemu LIKE ''%fosil%'' OR umur LIKE ''%fosil%'' OR ukuran LIKE ''%fosil%'' OR deskripsi LIKE ''%fosil%'''),
(28, 'date_format(kk.waktulihat,''%Y-%m-%d'')>=''2013-12-01'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''2014-01-23'' AND kk.idkoleksi=1'),
(29, 'date_format(kk.waktulihat,''%Y-%m-%d'')>=''2013-12-01'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''2014-01-23'' AND kk.idkoleksi=2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE IF NOT EXISTS `pengunjung` (
  `no_tiket` char(10) NOT NULL,
  `tgl_kunjungan` datetime DEFAULT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `asal` varchar(50) DEFAULT NULL,
  `idtestimoni` int(11) NOT NULL,
  PRIMARY KEY (`no_tiket`),
  KEY `idkategori` (`idkategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`no_tiket`, `tgl_kunjungan`, `idkategori`, `nama`, `asal`, `idtestimoni`) VALUES
('1', '2014-01-06 16:28:34', 5, 'reza', 'dayeuhkolot', 0),
('10111491', '2014-01-24 16:01:40', 6, 'Gani Setiawan', 'Unikom', 0),
('10111506', '2014-01-24 16:03:16', 6, 'Dude', 'Unikom', 214),
('112233', '2015-05-24 09:52:49', 6, 'Gani', 'SMK 2', 217),
('116968', '2013-11-19 10:13:00', 6, 'Mochamad Gani', 'UNIKOM', 1),
('118080', '2013-11-13 11:19:23', 5, 'Amin', 'Surabaya', 2),
('118081', '2013-11-11 20:23:45', 4, 'Martin', 'PNG', 6),
('118082', '2013-11-11 20:24:55', 4, 'Wesley', 'Belanda', 7),
('118083', '2013-11-11 20:26:15', 5, 'Mas Gino', 'Kroyo', 8),
('118084', '2013-11-11 20:27:21', 6, 'Raden', 'ITB', 9),
('118085', '2013-11-11 20:28:07', 5, 'Umam', 'Cimahi', 10),
('118086', '2013-11-11 20:28:49', 5, 'Angga', 'Palembang', 11),
('118087', '2013-11-11 20:29:47', 6, 'Cinta', 'SMKN 6 Cimahi', 12),
('118088', '2013-11-11 20:31:03', 6, 'Yani', 'SMAN 4 Jayapura', 13),
('118090', '2013-11-13 12:27:47', 6, 'dude', 'unikom', 3),
('118091', '2013-11-11 20:34:01', 4, 'Maxwell', 'France', 14),
('118092', '2013-11-11 20:34:53', 6, 'Hidayah Ajeng Aryanti', 'UPN Veteran Jakarta', 15),
('118093', '2013-11-12 20:39:49', 5, 'Ramadhan', 'Buah Batu', 16),
('118094', '2013-11-12 20:41:37', 5, 'Rizki', 'Kalimantan', 17),
('118095', '2013-11-12 20:42:45', 6, 'Pramuyudha', 'ITS', 18),
('118096', '2013-11-12 20:43:16', 6, 'Dwi', 'STT Telkom Bandung', 19),
('118097', '2013-11-12 20:44:23', 5, 'Chaerul', 'Brebes', 20),
('118098', '2013-11-12 20:45:34', 4, 'Ronaldo', 'Portugal', 21),
('118099', '2013-11-12 20:46:25', 4, 'Riberry', 'France', 22),
('118100', '2013-11-12 20:47:59', 5, 'Setiawan', 'Lumbung Padi', 23),
('118101', '2013-11-12 20:49:02', 6, 'Fina', 'SMA N 1 Bandung', 24),
('118102', '2013-11-12 20:49:48', 6, 'Rima', 'SMP N 5 Bandung', 25),
('118103', '2013-11-13 20:51:38', 4, 'Aubomenyang', 'Nigeria', 26),
('118104', '2013-11-13 20:52:57', 4, 'Matuidi', 'Chile', 27),
('118105', '2013-11-13 20:53:30', 5, 'Minie', 'Kopo', 28),
('118106', '2013-11-13 20:54:12', 5, 'Micky', 'Batu Nunggal Indah', 29),
('118107', '2013-11-13 20:54:46', 5, 'Melisa', 'Purbalenyi', 30),
('118108', '2013-11-13 20:55:32', 5, 'Kevin', 'Pasteur', 31),
('118109', '2013-11-13 20:56:14', 6, 'Riyadh', 'UNIKOM', 32),
('118110', '2013-11-13 20:57:03', 6, 'Firdaus', 'Itenas', 33),
('118112', '2013-11-13 21:06:11', 6, 'Maulana', 'UNIKOM', 35),
('118113', '2013-11-13 21:06:58', 6, 'Lana', 'SMAN 1 Bandung', 36),
('118114', '2013-11-13 21:08:03', 6, 'Oki', 'SMAN 1 Bandung', 37),
('118115', '2013-11-13 21:08:54', 5, 'Januar', 'Subang', 38),
('118116', '2013-11-14 21:10:40', 4, 'Lewis', 'Inggris', 39),
('118117', '2013-11-14 21:11:26', 4, 'Nomoto', 'Japan', 40),
('118118', '2013-11-14 21:14:15', 4, 'Kim Bum', 'Korea selatan', 41),
('118119', '2013-11-14 21:15:37', 4, 'Prandew', 'Denmark', 42),
('118120', '2013-11-14 21:16:29', 5, 'Nando', 'Soreang', 43),
('118121', '2013-11-14 21:17:01', 5, 'Sihombing', 'Medan', 44),
('118122', '2013-11-14 21:17:35', 6, 'Ojan', 'SMPN 3 Lampung', 45),
('118123', '2013-11-14 21:18:29', 6, 'Wakijan', 'SMPN 3 Lampung', 46),
('118124', '2013-11-14 21:19:58', 6, 'Taeng', 'SMPN 3 Lampung', 47),
('118125', '2013-11-14 21:20:37', 6, 'Bayu', 'SMPN 3 Lampung', 48),
('118126', '2013-11-14 21:21:19', 6, 'Dani', 'SMPN 3 Lampung', 49),
('118127', '2013-11-14 21:21:50', 6, 'Kaisupi', 'SMPN 3 Lampung', 50),
('118128', '2013-11-14 21:22:41', 6, 'Lila', 'SMPN 3 Lampung', 51),
('118129', '2013-11-14 21:28:11', 4, 'Nagatomo', 'Japan', 52),
('118130', '2013-11-14 21:29:04', 5, 'Meita', 'Manado', 53),
('118131', '2013-11-16 21:30:55', 4, 'Jackson', 'Brazil', 54),
('118132', '2013-11-16 21:31:51', 4, 'Souza', 'Brazil', 55),
('118133', '2013-11-16 21:32:42', 4, 'Owen', 'Inggris', 56),
('118134', '2013-11-16 21:33:29', 4, 'Rooney', 'Inggris', 57),
('118135', '2013-11-16 21:34:14', 4, 'Benzema', 'France', 58),
('118136', '2013-11-16 21:34:44', 4, 'Sako', 'France', 59),
('118137', '2013-11-16 21:35:24', 5, 'Iko', 'Jakarta', 60),
('118138', '2013-11-16 21:36:05', 6, 'Dhelsy', 'UNIKOM', 61),
('118139', '2013-11-16 21:36:54', 6, 'Alin', 'UNIKOM', 62),
('118140', '2013-11-16 21:37:32', 6, 'Grace', 'UNIKOM', 63),
('118141', '2013-11-17 21:46:43', 4, 'Bale', 'Wales', 64),
('118142', '2013-11-17 21:48:43', 4, 'Ramsey', 'Wales', 65),
('118143', '2013-11-17 21:50:20', 5, 'Nur', 'Batu Nunggal Indah', 66),
('118144', '2013-11-17 21:54:04', 5, 'Wahyuni', 'Suci', 67),
('118145', '2013-11-17 21:54:35', 5, 'Andra', 'Sekeloa', 68),
('118146', '2013-11-17 21:55:13', 5, 'Kian', 'Ciroyom', 69),
('118147', '2013-11-17 21:56:20', 5, 'Budi', 'Cicaheum', 70),
('118148', '2013-11-17 21:56:50', 5, 'Gino', 'Cimahi', 71),
('118149', '2013-11-17 21:57:21', 5, 'Edi', 'Cicaheum', 72),
('118150', '2013-11-17 22:04:23', 5, 'Chrisna', 'Banjarmasin', 73),
('118151', '2013-11-17 22:04:57', 6, 'Chaerul', 'STEI ITB', 74),
('118152', '2013-11-17 22:05:46', 6, 'Raden', 'STEI ITB', 75),
('118153', '2013-11-17 22:06:21', 6, 'Mentari', 'UII Yogyakarta', 76),
('118154', '2013-11-17 22:06:55', 6, 'Septi', 'UII Yogyakarta', 77),
('118156', '2013-11-18 22:11:35', 6, 'Fadel', 'UII Yogyakarta', 79),
('118157', '2013-11-18 22:12:34', 6, 'Reni', 'UII Yogyakarta', 80),
('118158', '2013-11-18 22:13:08', 6, 'Riris', 'STT Telkom Bandung', 81),
('118160', '2013-11-18 22:14:25', 6, 'Hendra', 'UNCEN Jayapura', 83),
('118161', '2013-11-18 22:14:54', 4, 'Drogba', 'Pantai Gading', 84),
('118162', '2013-11-18 22:15:36', 4, 'Kone', 'Pantai Gading', 85),
('118163', '2013-11-18 22:16:09', 4, 'Ramsey', 'Wales', 86),
('118164', '2013-11-18 22:17:03', 4, 'Patrick', 'PNG', 87),
('118166', '2013-11-19 22:18:25', 5, 'Katrin', 'Jayapura', 89),
('118167', '2013-11-19 22:18:59', 5, 'Inka', 'Suci', 90),
('118168', '2013-11-19 22:19:32', 5, 'Angga', 'Ciheulang', 91),
('118169', '2013-11-19 22:20:05', 5, 'Abi', 'Bekasi', 92),
('118170', '2013-11-19 22:20:48', 6, 'Eko', 'UNIKOM', 93),
('118171', '2013-11-19 22:23:33', 6, 'Semtoar', 'Widiatama', 94),
('118172', '2013-11-19 22:24:58', 6, 'Bambang', 'USTJ Jayapura', 95),
('118173', '2013-11-19 22:25:53', 6, 'Junaedi', 'UMI Makassar', 96),
('118174', '2013-11-19 22:26:23', 4, 'Luca', 'Italy', 97),
('118175', '2013-11-19 22:26:56', 4, 'Balloteli', 'Italy', 98),
('118177', '2013-11-20 22:29:02', 4, 'Donovan', 'Amerika', 100),
('118178', '2013-11-20 22:29:49', 4, 'Bechkam', 'Inggris', 101),
('118179', '2013-11-20 22:30:13', 5, 'Cinta', 'Dayeuh Kolot', 102),
('118180', '2013-11-20 22:30:57', 5, 'Pipik', 'Cimahi', 103),
('118181', '2013-11-20 22:31:21', 5, 'Marten', 'Tasik', 104),
('118182', '2013-11-20 22:32:12', 6, 'Intan', 'USTJ Jayapura', 105),
('118183', '2013-11-20 22:32:49', 6, 'Dwi', 'USTJ Jayapura', 106),
('118184', '2013-11-20 22:33:15', 6, 'Arief', 'SDN 5 Padalarang', 107),
('118185', '2013-11-20 22:33:52', 6, 'Gino', 'SMKN 3 Cimahi', 108),
('118186', '2013-11-21 22:36:02', 4, 'Chicarito', 'Mexico', 109),
('118187', '2013-11-21 22:37:05', 5, 'Umam', 'Batujajar', 110),
('118188', '2013-11-21 22:38:05', 5, 'Gani', 'Batujajar', 111),
('118189', '2013-11-21 22:38:40', 5, 'Najib', 'Ternate', 112),
('118190', '2013-11-21 22:39:35', 5, 'Januar', 'Subang', 113),
('118191', '2013-11-21 22:40:16', 5, 'Lana', 'Serang', 114),
('118192', '2013-11-21 22:41:17', 6, 'Dika', 'Widiatam', 115),
('118193', '2013-11-21 22:43:24', 6, 'Dita', 'Widiatama', 116),
('118194', '2013-11-21 22:43:57', 6, 'Bayu', 'Widiatama', 117),
('118195', '2013-11-21 22:44:28', 6, 'Anggara', 'Widiatama', 118),
('118196', '2013-11-23 22:49:01', 4, 'Kanoute', 'Mongolia', 119),
('118197', '2013-11-23 22:50:10', 4, 'Messi', 'Argentina', 120),
('118198', '2013-11-23 22:50:46', 4, 'Lorenzo', 'Spanyol', 121),
('118199', '2013-11-23 22:51:50', 5, 'Kikin', 'Tegalega', 122),
('118200', '2013-11-23 22:52:36', 5, 'Koko', 'Dipatiukur', 123),
('118201', '2013-11-23 22:53:54', 5, 'Keke', 'Gerlong', 124),
('118202', '2013-11-23 22:54:48', 6, 'Aan', 'UNCEN Jayapura', 125),
('118203', '2013-11-23 22:55:37', 6, 'Een', 'USTJ Jayapura', 126),
('118204', '2013-11-23 22:56:08', 6, 'Monita', 'ITB', 127),
('118205', '2013-11-23 22:56:41', 6, 'Robby', 'UNIKOM', 128),
('118206', '2013-11-24 22:59:02', 4, 'Ozil', 'Germany', 129),
('118207', '2013-11-24 23:00:29', 4, 'Muller', 'Germany', 130),
('118208', '2013-11-24 23:01:17', 5, 'Elia', 'Toraja', 131),
('118209', '2013-11-24 23:02:28', 5, 'Tiza', 'Toraja', 132),
('118210', '2013-11-24 23:03:07', 6, 'Dude', 'UNIKOM', 133),
('118211', '2013-11-24 23:03:58', 6, 'Bahrul', 'UNPAD', 134),
('118212', '2013-11-25 23:04:31', 4, 'Gomez', 'Germany', 135),
('118213', '2013-11-25 23:05:06', 5, 'Isin', 'Cibiru', 136),
('118214', '2013-11-25 23:05:51', 5, 'Hesty', 'Cibiru', 137),
('118215', '2013-11-25 23:06:14', 5, 'Enci', 'Sukajadi', 138),
('118216', '2013-11-25 23:12:46', 6, 'Aljabar', 'UNPAD', 139),
('118217', '2013-11-25 23:13:37', 6, 'Marten', 'SMAN 6 Bandung', 140),
('118218', '2013-11-25 23:14:35', 6, 'Indey', 'SMAN 1 Bandung', 141),
('118219', '2013-11-25 23:15:25', 6, 'Kaisepo', 'SMAN 6 Bandung', 142),
('118220', '2013-11-26 23:16:31', 4, 'Green', 'Inggris', 143),
('118221', '2013-11-26 23:17:40', 4, 'Ibrahim', 'Arab Saudi', 144),
('118222', '2013-11-26 23:18:16', 4, 'Nizza', 'Dubai', 145),
('118223', '2013-11-26 23:18:42', 4, 'Oke', 'Dubai', 146),
('118224', '2013-11-26 23:19:41', 5, 'Oneng', 'Banjaran', 147),
('118225', '2013-11-26 23:20:39', 6, 'Opik', 'UGM', 148),
('118226', '2013-11-26 23:21:16', 6, 'Agist', 'UGM', 149),
('118227', '2013-11-26 23:21:53', 6, 'Naca', 'UGM', 150),
('118228', '2013-11-26 23:22:33', 6, 'Cece', 'ITHB', 151),
('118229', '2013-11-26 23:23:03', 6, 'Dadin', 'ITHB', 152),
('118230', '2013-11-27 23:35:06', 5, 'Roni', 'Sumbawa', 153),
('118231', '2013-11-27 23:51:10', 5, 'Yuyun', 'Sukabumi', 154),
('118232', '2013-11-27 23:51:51', 5, 'Dadang', 'Garut', 155),
('118233', '2013-11-27 23:53:13', 5, 'Rosada', 'Indramayu', 156),
('118234', '2013-11-27 23:53:33', 5, 'Ridwan', 'Garut', 157),
('118235', '2013-11-27 23:55:15', 6, 'Ardes', 'UNIKOM', 158),
('118236', '2013-11-27 23:55:43', 6, 'Setiawan', 'STSI Bandung', 159),
('118237', '2013-11-27 23:56:05', 6, 'Satrya', 'Universitas Hasanudin', 160),
('118238', '2013-11-28 00:10:37', 4, 'Kamsupay', 'Zimbabwe', 161),
('118239', '2013-11-28 00:15:07', 4, 'Lewandoski', 'Polandia', 162),
('118240', '2013-11-28 00:16:37', 4, 'Modric', 'Kroasia', 163),
('118241', '2013-11-28 00:17:29', 4, 'Sahin', 'Turky', 164),
('118242', '2013-11-28 00:18:41', 4, 'Guarin', 'Colombia', 165),
('118243', '2013-11-28 00:19:54', 5, 'Suraning', 'Pelabuhan Ratu', 166),
('118244', '2013-11-28 00:20:53', 6, 'Firma', 'STSI', 167),
('118245', '2013-11-28 00:21:34', 6, 'Firman', 'UPI', 168),
('118246', '2013-11-28 00:22:23', 6, 'Vigo Van Larnwuy', 'Universitas Patimura', 169),
('118247', '2013-11-30 00:30:01', 4, 'Gonzalez', 'Uruguay', 170),
('118248', '2013-11-30 00:34:31', 5, 'Giri', 'Cipedes', 171),
('118249', '2013-11-30 00:36:51', 5, 'Matew', 'Jayapura', 172),
('118250', '2013-11-30 00:37:17', 5, 'Afdhol', 'Ciroyom', 173),
('118251', '2013-11-30 00:37:59', 5, 'Sugi', 'Sedang Serang', 174),
('118252', '2013-11-30 00:38:22', 6, 'Hamzah', 'UNCEN Jayapura', 175),
('118253', '2013-11-30 00:39:03', 6, 'Yanes', 'UKRIDA', 176),
('118254', '2013-11-30 00:39:39', 6, 'Nurul', 'UPI', 177),
('118255', '2013-12-01 00:41:09', 4, 'Ricky', 'Amerika', 178),
('118256', '2013-12-01 00:41:30', 4, 'Kayame', 'PNG', 179),
('118257', '2013-12-01 00:41:51', 5, 'Indah', 'Wamena', 180),
('118258', '2013-12-01 00:42:17', 5, 'Ria', 'Sorong', 181),
('118259', '2013-12-01 00:42:41', 6, 'Mongol', 'UNSUT', 182),
('118260', '2013-12-01 00:43:35', 6, 'Babe', 'UMI Makassar', 183),
('118261', '2013-12-01 00:44:12', 6, 'Frida', 'UMN', 184),
('118262', '2013-12-01 00:45:14', 6, 'Dera', 'UNIKOM', 185),
('118263', '2013-12-02 00:46:41', 5, 'Ida', 'Banyuwangi', 186),
('118264', '2013-12-02 00:47:16', 5, 'Sumenep', 'Cisarua', 187),
('118265', '2013-12-02 00:48:26', 6, 'Ridan', 'UPI', 188),
('118266', '2013-12-02 00:48:51', 6, 'Koreri', 'UGM', 189),
('118267', '2013-12-02 00:49:21', 6, 'Krey', 'UGM', 190),
('118268', '2013-12-02 00:49:50', 6, 'Rendy', 'Universitas Bakrie', 191),
('118269', '2013-12-03 00:51:25', 4, 'Redondo', 'Portugal', 192),
('118270', '2013-12-03 00:52:06', 4, 'Cavani', 'Uruguay', 193),
('118271', '2013-12-03 00:52:32', 4, 'Datuk', 'Malaysia', 194),
('118272', '2013-12-03 00:53:13', 5, 'Gimin', 'Tanggerang', 195),
('118273', '2013-12-03 00:54:12', 5, 'Wagimin', 'Malang', 196),
('118274', '2013-12-03 00:54:55', 6, 'Setiawan', 'UNIKOM', 197),
('118275', '2013-12-03 00:55:32', 6, 'Odi', 'UPI', 198),
('118276', '2013-12-03 00:55:52', 6, 'Adi', 'USTJ Jayapura', 199),
('118277', '2013-12-03 00:56:22', 6, 'Endah', 'SMAN 2 Bandung', 200),
('118278', '2013-12-04 00:57:54', 4, 'Kane', 'Denmark', 201),
('118279', '2013-12-04 00:58:42', 5, 'Prasetya', 'Pasteur', 202),
('118280', '2013-12-04 00:59:14', 5, 'Tukimin', 'Lembang', 203),
('118281', '2013-12-04 01:00:26', 5, 'Reza', 'UNIKOM', 204),
('118989', '2013-11-13 11:17:55', 4, 'James', 'Australia', 4),
('123435', '2013-12-04 11:30:54', 4, 'Erix', 'Belanda', 5),
('140516001', '2016-05-20 05:37:42', 5, 'Gani', 'BARA', 0),
('151207', '2013-12-11 12:32:13', 5, 'Pace', 'Papua', 0),
('151617', '2013-12-11 10:04:26', 6, 'Gani Setiawan', 'Smk 2 Cimahi', 0),
('191207', '2014-01-02 22:45:00', 5, 'reja', 'Bandung', 0),
('321456', '2014-01-09 21:37:13', 5, 'Gangan', 'Bandung Barat', 213),
('898989', '2015-05-16 14:18:52', 5, 'Gani', 'Bara', 0),
('98765', '2014-01-14 17:59:45', 5, 'James', 'Australia', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `idruangan` int(11) NOT NULL AUTO_INCREMENT,
  `namaruangan` varchar(200) NOT NULL,
  `keterangan` varchar(5000) NOT NULL DEFAULT '-',
  `maps` varchar(200) NOT NULL,
  PRIMARY KEY (`idruangan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`idruangan`, `namaruangan`, `keterangan`, `maps`) VALUES
(1, 'Ruang Evolusi Manusia', 'Ruangan yang didalamnya terdapat semua mengenai evolusi manusia', 'upload/maps/r1.jpg'),
(2, 'Ruangan Posil Sumber Daya Alam', 'Ruangan Posil Sumber Daya Alam', 'upload/maps/r2.jpg'),
(3, 'Ruangan Posil Binatang', 'Ruangan Posil Binatang', 'upload/maps/r3.jpg'),
(4, 'Ruang Fosil atau Makhluk Hidup Lautan', 'Berbagai species makhluk hidup yang hidup dilautan.', 'upload/maps/r4.jpg'),
(5, 'Ruangan Fosil Daun-daunan', 'daun-daunan', 'upload/maps/r5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan_eng`
--

CREATE TABLE IF NOT EXISTS `ruangan_eng` (
  `idruangan_eng` int(11) NOT NULL AUTO_INCREMENT,
  `namaruangan_eng` varchar(200) NOT NULL,
  `keterangan_eng` varchar(5000) NOT NULL DEFAULT '-',
  `idruangan` int(11) NOT NULL,
  PRIMARY KEY (`idruangan_eng`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `ruangan_eng`
--

INSERT INTO `ruangan_eng` (`idruangan_eng`, `namaruangan_eng`, `keterangan_eng`, `idruangan`) VALUES
(1, 'Human Evolution Room', 'The room in which there are all about human evolution', 1),
(2, 'Natural Resources Fossil Room', 'Natural Resources Fossil Room', 2),
(3, 'Beast Fossil Room', 'Beast Fossil Room', 3),
(4, 'Marine Fossils or Living Organisms Room', 'Various species of creatures that lived in the ocean.', 4),
(5, 'Leaves Fossil Room', 'foliage', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE IF NOT EXISTS `sejarah` (
  `idsejarah` int(11) NOT NULL AUTO_INCREMENT,
  `judulsejarah` varchar(31) DEFAULT NULL,
  `judullatinsejarah` varchar(31) DEFAULT NULL,
  `gambarsejarah` varchar(101) DEFAULT NULL,
  `deskripsisejarah` varchar(300) DEFAULT NULL,
  `langkahlangkahsejarah` varchar(500) DEFAULT NULL,
  `idkategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsejarah`),
  KEY `fk_kodekategori2` (`idkategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE IF NOT EXISTS `testimoni` (
  `idtestimoni` int(11) NOT NULL AUTO_INCREMENT,
  `isitestimoni` varchar(500) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  PRIMARY KEY (`idtestimoni`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`idtestimoni`, `isitestimoni`, `waktu`) VALUES
(1, 'Keren nih banyak yang baru disini', '2013-12-09 00:00:00'),
(2, 'Mantap dinosaurusnya', '2013-12-09 00:00:00'),
(3, 'Waww Banyak koleksinya', '2013-12-09 00:00:00'),
(4, 'Enak pelayanannya', '2013-12-09 00:00:00'),
(5, 'Kapan-kapan mau mampir lagi. mudah2an ada koleksi baru.', '2013-12-09 00:00:00'),
(6, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:16:44'),
(7, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:22:56'),
(8, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:23:02'),
(9, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:23:07'),
(10, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:23:11'),
(11, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:23:18'),
(12, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:23:22'),
(14, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:23:51'),
(15, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-11 01:25:21'),
(16, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:26:39'),
(17, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:32:46'),
(18, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:32:50'),
(19, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:32:59'),
(20, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:33:04'),
(21, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:33:08'),
(22, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:33:14'),
(23, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:33:18'),
(24, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:33:24'),
(25, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-12 01:33:30'),
(26, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:34:57'),
(27, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:03'),
(28, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:09'),
(29, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:13'),
(30, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:18'),
(31, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:23'),
(32, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:26'),
(33, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:30'),
(34, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:34'),
(35, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:38'),
(36, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:35:46'),
(37, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:37:06'),
(38, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-13 01:37:10'),
(39, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:37:31'),
(40, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:37:43'),
(41, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:37:50'),
(42, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:37:55'),
(43, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:01'),
(44, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:05'),
(45, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:10'),
(46, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:14'),
(47, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:19'),
(48, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:24'),
(49, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:28'),
(50, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:36'),
(51, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:40'),
(52, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:45'),
(53, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-14 01:38:51'),
(54, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-16 01:39:12'),
(55, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-16 01:39:23'),
(56, 'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.', '2013-11-16 01:39:28'),
(58, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-16 01:44:30'),
(59, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-16 01:44:36'),
(60, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-16 01:44:40'),
(61, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-16 01:44:44'),
(62, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-16 01:44:48'),
(63, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-16 01:45:15'),
(64, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:45:32'),
(65, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:45:39'),
(66, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:45:43'),
(67, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:45:47'),
(68, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:45:51'),
(69, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:45:56'),
(70, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:00'),
(71, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:04'),
(72, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:08'),
(73, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:13'),
(74, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:17'),
(75, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:22'),
(76, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:27'),
(77, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-17 01:46:31'),
(78, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:46:44'),
(79, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:46:52'),
(80, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:04'),
(81, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:08'),
(82, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:12'),
(83, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:16'),
(84, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:20'),
(85, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:24'),
(86, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:29'),
(87, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:34'),
(88, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-18 01:47:38'),
(89, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:48:03'),
(90, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:48:09'),
(91, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:48:13'),
(92, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:48:20'),
(93, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:49:01'),
(94, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:49:06'),
(95, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:49:10'),
(96, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:49:14'),
(97, 'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.', '2013-11-19 01:49:18'),
(98, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-19 01:55:04'),
(99, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:55:36'),
(100, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:55:41'),
(101, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:55:46'),
(102, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:55:51'),
(103, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:55:55'),
(104, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:55:59'),
(105, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:56:06'),
(106, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:56:12'),
(107, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:56:16'),
(108, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-20 01:56:21'),
(109, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:56:40'),
(110, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:56:46'),
(111, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:56:51'),
(112, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:56:55'),
(113, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:57:03'),
(114, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:57:08'),
(115, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:57:14'),
(116, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:57:18'),
(117, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:57:23'),
(118, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-21 01:57:28'),
(119, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:57:45'),
(120, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:57:54'),
(121, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:57:59'),
(122, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:58:08'),
(123, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:58:14'),
(124, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:59:02'),
(125, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:59:21'),
(126, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:59:26'),
(127, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:59:30'),
(128, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-23 01:59:34'),
(129, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-24 01:59:50'),
(130, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-24 01:59:54'),
(131, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-24 01:59:58'),
(132, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-24 02:00:02'),
(133, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-24 02:00:07'),
(134, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-24 02:00:13'),
(135, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-25 02:00:28'),
(136, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-25 02:00:33'),
(137, 'Wow fosil Dinosaurus nya besar sekali, kereeeeeen', '2013-11-25 02:00:38'),
(138, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-25 02:05:26'),
(139, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-25 02:05:34'),
(140, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-25 02:05:43'),
(141, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-25 02:05:48'),
(142, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-25 02:05:53'),
(143, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:20'),
(144, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:26'),
(145, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:30'),
(146, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:34'),
(147, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:39'),
(148, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:43'),
(149, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:48'),
(150, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:53'),
(151, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:06:58'),
(152, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-26 02:07:01'),
(153, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:22'),
(154, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:26'),
(155, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:30'),
(156, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:33'),
(157, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:37'),
(158, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:41'),
(159, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:45'),
(160, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-27 02:07:48'),
(161, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:08'),
(162, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:12'),
(163, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:17'),
(164, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:21'),
(165, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:25'),
(166, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:29'),
(167, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:39'),
(168, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:45'),
(169, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-28 02:08:49'),
(170, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:11'),
(171, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:17'),
(172, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:23'),
(173, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:26'),
(174, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:30'),
(175, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:35'),
(176, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:39'),
(177, 'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.', '2013-11-30 02:09:42'),
(178, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:15:45'),
(179, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:15:48'),
(180, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:15:51'),
(181, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:15:55'),
(182, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:15:57'),
(183, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:16:11'),
(184, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:16:14'),
(185, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-01 02:16:17'),
(186, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-02 02:16:27'),
(187, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-02 02:16:33'),
(188, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-02 02:16:36'),
(189, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-02 02:16:38'),
(190, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-02 02:16:41'),
(191, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-02 02:16:44'),
(192, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:01'),
(193, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:04'),
(194, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:07'),
(195, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:11'),
(196, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:13'),
(197, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:16'),
(198, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:18'),
(199, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:21'),
(200, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-03 02:17:23'),
(201, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-04 02:17:46'),
(202, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-04 02:17:50'),
(203, 'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee', '2013-12-04 02:17:53'),
(204, '', '2014-01-09 20:58:13'),
(205, '', '2014-01-09 21:00:33'),
(206, '', '2014-01-09 21:02:05'),
(207, '22222', '2014-01-09 21:02:42'),
(208, 'hai mantap', '2014-01-09 21:33:21'),
(209, '321456', '2014-01-09 21:58:45'),
(210, 'asik mantap', '2014-01-09 22:03:11'),
(211, 'yuyayu', '2014-01-09 22:05:57'),
(212, 'asik asik asik', '2014-01-09 22:07:18'),
(213, 'keren keren', '2014-01-09 22:10:46'),
(214, 'terima kasih. keren..', '2014-01-24 16:11:32'),
(215, 'geologi makin keren', '2015-05-24 09:55:09'),
(216, 'asik', '2015-05-24 09:55:49'),
(217, 'keren', '2015-05-24 16:15:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(38) COLLATE utf8_bin NOT NULL DEFAULT '',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foto` varchar(200) COLLATE utf8_bin NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `firstname`, `lastname`, `email`, `foto`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'fj9sjs21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Museum', 'mochgani@baradeveloper.com', ' upload/foto/gani1.jpg', '::1', 1, '2013-11-06 09:00:00'),
(2, 4, 'reza', 'fj9sjsb0baee9d279d34fa1dfd71aadb908c3f', 'Reza', 'Pramuyudha', 'user@museum.com', ' upload/foto/gani2.jpg', '::1', 1, '2013-11-13 12:36:32'),
(3, 2, 'userdua', 'fj9sjse10adc3949ba59abbe56e057f20f883e', 'Userdua', 'Museum', 'user2@museum.com', 'upload/foto/stiker-bara.png', '::1', 1, '2013-11-13 08:22:52'),
(4, 3, 'asik', ' fj9sjs08f41424655d5d12e93da19f5de12ea', 'Asik', 'Mamen', 'moch.gani@gmail.com', ' upload/foto/gani4.jpg', '::1', 0, '2013-11-12 23:19:39'),
(6, 1, 'tes.tes', ' fj9sjs827ccb0eea8a706c4c34a16891f84e7', 'tes', 'tes', 'a.a@a.a', ' upload/foto/pas-photo.jpg', '::1', 0, '2013-11-19 22:17:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `idvideo` int(11) NOT NULL AUTO_INCREMENT,
  `judulvideo` varchar(31) NOT NULL,
  `urlvideo` varchar(101) NOT NULL,
  `deskripsivideo` varchar(300) DEFAULT NULL,
  `idkategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`idvideo`),
  KEY `fk_kodekategori1` (`idkategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  ADD CONSTRAINT `fk_kodekategori2` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`);

--
-- Ketidakleluasaan untuk tabel `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk_kodekategori1` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
