-- MySql Data Dump

-- Database : db_geologi

-- Dumping started at : 2014-01-08-06-41-41

-- Dumping finished at : 2014-01-08-06-41-41

-- Dumping data of db_geologi took : 0.44416403770447 Sec

-- --------------------------------------------------------

-- Drop Table IF Exists : kategori

DROP TABLE IF EXISTS kategori;

-- Dumping structure for table : kategori

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL AUTO_INCREMENT,
  `namakategori` varchar(200) NOT NULL,
  `idsub` int(11) NOT NULL,
  PRIMARY KEY (`idkategori`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table : kategori

INSERT INTO kategori VALUES (1,'Pengunjung',0);
INSERT INTO kategori VALUES (2,'User',0);
INSERT INTO kategori VALUES (3,'Koleksi',0);
INSERT INTO kategori VALUES (4,'Asing',1);
INSERT INTO kategori VALUES (5,'Umum',1);
INSERT INTO kategori VALUES (6,'Pelajar',1);
INSERT INTO kategori VALUES (7,'Administrator',2);
INSERT INTO kategori VALUES (8,'User',2);
INSERT INTO kategori VALUES (9,'Fosil Reptil',3);
INSERT INTO kategori VALUES (10,'Fosil Daun',3);
INSERT INTO kategori VALUES (11,'Fosil DinoSaurus',3);
INSERT INTO kategori VALUES (12,'Evolusi Manusia',3);
INSERT INTO kategori VALUES (13,'Animalia',3);
INSERT INTO kategori VALUES (14,'Mamalia',3);
INSERT INTO kategori VALUES (15,'Akibat Bencana Alam',3);
INSERT INTO kategori VALUES (16,'Sumber Daya Alam',3);
INSERT INTO kategori VALUES (17,'Benda Sejarah',3);
INSERT INTO kategori VALUES (18,'Makhluh Hidup Laut',3);


-- Drop Table IF Exists : koleksi

DROP TABLE IF EXISTS koleksi;

-- Dumping structure for table : koleksi

CREATE TABLE `koleksi` (
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table : koleksi

INSERT INTO koleksi VALUES (1,9,'Fosil Ular Python Reticulatus 2','Charuman, Kabupaten Bandung','','','antara 30.000 ï¿½ 40.000 tahun yang lalu','Diameter penampang hewan ini (+/-) 30cm dan panjangnya diperkirakan lebih dari 5m','Fosil ular ini merupakan fosil ular pertama yang ditemukan di Indonesia. Morfologinya mendekati jenis Python (Python reticulatus)','api-koleksi/1','upload/koleksi/1.jpg','2014-01-02 22:52:05',3);
INSERT INTO koleksi VALUES (2,12,'Homo Erectus (Manusia Purba Berdiri Tegak)','Desa Pucung (Kubah sangiran), Kaliyoso, Kabupaten sragen, Jawa Tengah','13 September 1969','Toekimin','750.000 tahun lalu (years ago) – Plistosen (Pleistocene)','','Manusia Purba ini dikenal di dunia sebagai Manusia Jawa yang semula oleh Dubois dinamakan Pithecanthropus erectus Dubois (1894). (This early man has known in the world as the Java Man, previously well known as  Pithecanthropus erectus Dubois (1894).','api-koleksi/2','upload/koleksi/2.jpg','2013-11-13 10:45:47',1);
INSERT INTO koleksi VALUES (3,16,'Fosil Kayu (Kayu Yang Membatu)',' ','','','Berumur Miosen (23,5 â€“ 5,2 Juta tahun yang lalu)','','Proses Pembentukan : Setelah pohon mati, rongga kapiler dalam batang pohon terisi air yang mengandung larutan silikat. Kemudian airnya menguap sehingga silikat tersebut tertinggal didalam batang pohon. Akhirnya seluruh rongga kapiler batang pohon terisi oleh silikat dan pohon tersebut komposisinya berubah menjadi silikat (membantu)','api-koleksi/3','upload/koleksi/3.jpg','2013-11-13 10:45:47',2);
INSERT INTO koleksi VALUES (4,14,'Gajah ',' Papua','05 November 1993','toekimin','500 tahun yang lalu','','Gajah ini identik dengan gading yang sangat panjang','api-koleksi/4','upload/koleksi/4.jpg','2013-11-13 12:33:17',3);
INSERT INTO koleksi VALUES (5,18,'Tridacna gigas (Linnaeus, 1758)','Padalarang, Jawa Barat','Tahun 1982','Andri Kristanto','-','-','Kerang sudah hidup beratu-ratus tahun lamanya.','api-koleksi/5','upload/koleksi/5.jpg','2013-11-12 12:33:14',4);
INSERT INTO koleksi VALUES (6,10,'Pecopteris acuta','Gerstweiler, saarbrjcken, German','-','-','Karbon akhir (Late carboniferous)','-','Fosil daun (Leave Fossil)','api-koleksi/6','upload/koleksi/6.jpg','2013-11-12 10:52:14',5);
INSERT INTO koleksi VALUES (7,17,'Replika Hiasan Dada Raja (Replica of King Breastplate)','Palembang, Sumatera selatan.','-','-','Sejak masa zaman kerajaan Sriwijaya','-','Biasanya digunakan oleh raja-raja pada masa itu.','api-koleksi/7','upload/koleksi/7.jpg','2013-11-12 10:59:31',2);
INSERT INTO koleksi VALUES (8,16,'Bijih Emas (Gold Ore)','Kubang Cicau, Jawa Barat (West Java)','-','-','Diperkirakan berumur 303 tahun','-','Batu-batuan','api-koleksi/8','upload/koleksi/8.jpg','2013-11-12 11:06:14',2);
INSERT INTO koleksi VALUES (9,16,'Batulempung (Clay Stone)','-','-','-','-','-','Batulempung, apabila terkena air akan mengembang dan mengakibatkan terjadinya longsoran.','api-koleksi/9','upload/koleksi/9.jpg','2013-11-12 11:09:19',2);
INSERT INTO koleksi VALUES (10,16,'Sinter Karbonat','Cisolok, Sukabumi, Jawa Barat','-','Museum Geologi','-','-','sinter karbonat merupakan endapan mineral silika disekitar mata air panas yang banyak mengandung unsur karbonat seperti batugamping.','api-koleksi/10','upload/koleksi/10.jpg','2013-11-12 11:11:14',2);
INSERT INTO koleksi VALUES (11,15,'Endapan awan Panas (Ash Flow Deposits)','Desa Kinaherjo, Yogyakarta.',2010,'Museum Geologi','-','-','KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.','api-koleksi/11','upload/koleksi/11.jpg','2013-11-12 11:19:19',2);
INSERT INTO koleksi VALUES (12,15,'Kayu (Wood)','Desa Kinaherjo, Yogyakarta',2010,'Museum Geologi','-','-','KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.','api-koleksi/12','upload/koleksi/12.jpg','2013-11-12 11:21:14',2);
INSERT INTO koleksi VALUES (13,15,'Sepeda Motor dan Helm (Motorcycle and Helmet)','Desa Kinaherjo, Yogyakarta.','Tahun 2010','Museum Geologi','-','-','KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.','api-koleksi/13','upload/koleksi/13.jpg','2013-11-12 11:25:19',2);
INSERT INTO koleksi VALUES (14,15,'Termos air (Thermos)','desa Pangurejo, Yogyakarta.','Tahun 2010','Museum Geologi','-','-','KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010.','api-koleksi/14','upload/koleksi/14.jpg','2013-11-12 11:24:14',2);
INSERT INTO koleksi VALUES (15,15,'Pemasak Nasi (Rice Cooker)','desa Pangurejo, Yogyakarta.','Tahun 2010','Museum Geologi','-','-','KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010','api-koleksi/15','upload/koleksi/15.jpg','2013-11-12 11:30:37',2);
INSERT INTO koleksi VALUES (16,15,'Jerigen (Jerry Can)','desa Pangurejo, Yogyakarta.','Tahun 2010','Museum Geologi','-','-','KOLEKSI AKIBAT AWAN PANAS (WEDHUS GEMBEL) GUNUNGAPI MERAPI, YOGYAKARTA, TAHUN 2010','api-koleksi/16','upload/koleksi/16.jpg','2013-11-12 11:35:37',2);


-- Drop Table IF Exists : kunjungan_koleksi

DROP TABLE IF EXISTS kunjungan_koleksi;

-- Dumping structure for table : kunjungan_koleksi

CREATE TABLE `kunjungan_koleksi` (
  `idkunjungankoleksi` int(11) NOT NULL AUTO_INCREMENT,
  `waktulihat` datetime DEFAULT NULL,
  `no_tiket` int(11) DEFAULT NULL,
  `idkoleksi` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkunjungankoleksi`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Dumping data for table : kunjungan_koleksi

INSERT INTO kunjungan_koleksi VALUES (1,'2013-12-01 00:00:00',123435,2);
INSERT INTO kunjungan_koleksi VALUES (2,'2013-12-02 00:00:00',123435,2);
INSERT INTO kunjungan_koleksi VALUES (3,'2013-12-01 00:00:00',116968,2);
INSERT INTO kunjungan_koleksi VALUES (4,'2013-12-01 00:00:00',123435,2);
INSERT INTO kunjungan_koleksi VALUES (5,'2013-12-01 00:00:00',123435,2);
INSERT INTO kunjungan_koleksi VALUES (6,'2013-12-01 00:00:00',116968,2);
INSERT INTO kunjungan_koleksi VALUES (7,'2013-12-01 00:00:00',116968,2);
INSERT INTO kunjungan_koleksi VALUES (8,'2013-12-02 00:00:00',116968,2);
INSERT INTO kunjungan_koleksi VALUES (9,'2013-12-02 00:00:00',116968,2);
INSERT INTO kunjungan_koleksi VALUES (10,'2013-12-01 00:00:00',116968,2);
INSERT INTO kunjungan_koleksi VALUES (11,'2013-12-11 00:00:00',116968,2);
INSERT INTO kunjungan_koleksi VALUES (12,'2013-12-11 10:12:49',151617,2);
INSERT INTO kunjungan_koleksi VALUES (13,'2013-12-11 10:13:26',118280,2);
INSERT INTO kunjungan_koleksi VALUES (14,'2013-12-11 10:19:37',118280,2);
INSERT INTO kunjungan_koleksi VALUES (15,'2013-12-11 00:00:00',118280,2);
INSERT INTO kunjungan_koleksi VALUES (16,'2013-12-11 11:36:03',151617,2);
INSERT INTO kunjungan_koleksi VALUES (17,'2013-12-11 11:36:36',151617,2);
INSERT INTO kunjungan_koleksi VALUES (18,'2013-12-11 11:36:55',151617,2);
INSERT INTO kunjungan_koleksi VALUES (19,'2013-12-11 11:37:13',151617,2);
INSERT INTO kunjungan_koleksi VALUES (20,'2013-12-10 00:00:00',118253,2);
INSERT INTO kunjungan_koleksi VALUES (21,'2013-12-10 00:00:00',118251,2);
INSERT INTO kunjungan_koleksi VALUES (22,'2013-12-10 00:00:00',118250,2);
INSERT INTO kunjungan_koleksi VALUES (23,'2013-12-10 00:00:00',118249,2);
INSERT INTO kunjungan_koleksi VALUES (24,'2013-12-10 00:00:00',118247,2);
INSERT INTO kunjungan_koleksi VALUES (25,'2013-12-10 00:00:00',118242,2);
INSERT INTO kunjungan_koleksi VALUES (26,'2013-12-10 00:00:00',118241,2);
INSERT INTO kunjungan_koleksi VALUES (27,'2013-12-10 00:00:00',118240,2);
INSERT INTO kunjungan_koleksi VALUES (28,'2013-12-10 00:00:00',118238,2);
INSERT INTO kunjungan_koleksi VALUES (29,'2013-12-10 00:00:00',118237,2);
INSERT INTO kunjungan_koleksi VALUES (30,'2013-12-10 00:00:00',118235,2);
INSERT INTO kunjungan_koleksi VALUES (31,'2013-12-10 00:00:00',118229,2);
INSERT INTO kunjungan_koleksi VALUES (32,'2013-12-09 00:00:00',118230,2);
INSERT INTO kunjungan_koleksi VALUES (33,'2013-12-09 00:00:00',118236,2);
INSERT INTO kunjungan_koleksi VALUES (34,'2013-12-09 00:00:00',118225,2);
INSERT INTO kunjungan_koleksi VALUES (35,'2013-12-09 00:00:00',118228,2);
INSERT INTO kunjungan_koleksi VALUES (36,'2013-12-09 00:00:00',118227,2);
INSERT INTO kunjungan_koleksi VALUES (37,'2013-12-09 00:00:00',118224,2);
INSERT INTO kunjungan_koleksi VALUES (38,'2013-12-09 00:00:00',118223,2);
INSERT INTO kunjungan_koleksi VALUES (39,'2013-12-09 00:00:00',118215,2);
INSERT INTO kunjungan_koleksi VALUES (40,'2013-12-09 00:00:00',118218,2);
INSERT INTO kunjungan_koleksi VALUES (41,'2013-12-11 12:36:16',151207,2);
INSERT INTO kunjungan_koleksi VALUES (42,'2013-12-11 12:37:19',151207,1);
INSERT INTO kunjungan_koleksi VALUES (43,'2014-01-06 16:29:52',1,4);


-- Drop Table IF Exists : kunjungan_sejarah

DROP TABLE IF EXISTS kunjungan_sejarah;

-- Dumping structure for table : kunjungan_sejarah

CREATE TABLE `kunjungan_sejarah` (
  `idkunjungansejarah` int(11) NOT NULL AUTO_INCREMENT,
  `waktulihat` datetime DEFAULT NULL,
  `no_tiket` int(11) DEFAULT NULL,
  `idsejarah` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkunjungansejarah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table : kunjungan_sejarah



-- Drop Table IF Exists : kunjungan_video

DROP TABLE IF EXISTS kunjungan_video;

-- Dumping structure for table : kunjungan_video

CREATE TABLE `kunjungan_video` (
  `idkunjunganvideo` int(11) NOT NULL AUTO_INCREMENT,
  `waktulihat` datetime DEFAULT NULL,
  `no_tiket` int(11) DEFAULT NULL,
  `idvideo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkunjunganvideo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table : kunjungan_video



-- Drop Table IF Exists : log_query

DROP TABLE IF EXISTS log_query;

-- Dumping structure for table : log_query

CREATE TABLE `log_query` (
  `idlogquery` int(11) NOT NULL AUTO_INCREMENT,
  `isilogquery` varchar(1000) NOT NULL,
  PRIMARY KEY (`idlogquery`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table : log_query

INSERT INTO log_query VALUES (1,'p.nama LIKE ''%gani%'' OR p.asal LIKE ''%gani%''');
INSERT INTO log_query VALUES (2,'p.nama LIKE ''%james%'' OR p.asal LIKE ''%james%''');
INSERT INTO log_query VALUES (3,'p.nama LIKE ''%uni%'' OR p.asal LIKE ''%uni%''');
INSERT INTO log_query VALUES (4,'p.nama LIKE ''%unikom%'' OR p.asal LIKE ''%unikom%''');
INSERT INTO log_query VALUES (5,'p.nama LIKE ''%unikom%'' OR p.asal LIKE ''%unikom%''');
INSERT INTO log_query VALUES (6,'namakoleksi LIKE ''%gajah%'' OR lokasitemu LIKE ''%gajah%'' OR tgltemu LIKE ''%gajah%'' OR penemu LIKE ''%gajah%'' OR umur LIKE ''%gajah%'' OR ukuran LIKE ''%gajah%'' OR deskripsi LIKE ''%gajah%''');
INSERT INTO log_query VALUES (7,'namakoleksi LIKE ''%pengunjung%'' OR lokasitemu LIKE ''%pengunjung%'' OR tgltemu LIKE ''%pengunjung%'' OR penemu LIKE ''%pengunjung%'' OR umur LIKE ''%pengunjung%'' OR ukuran LIKE ''%pengunjung%'' OR deskripsi LIKE ''%pengunjung%''');
INSERT INTO log_query VALUES (8,'namakategori LIKE ''%user%''');
INSERT INTO log_query VALUES (9,'namakategori LIKE ''%fosil%''');
INSERT INTO log_query VALUES (10,'namaruangan LIKE ''%posil%'' OR keterangan LIKE ''%posil%''');
INSERT INTO log_query VALUES (14,'namakoleksi LIKE ''%ular%'' OR lokasitemu LIKE ''%ular%'' OR tgltemu LIKE ''%ular%'' OR penemu LIKE ''%ular%'' OR umur LIKE ''%ular%'' OR ukuran LIKE ''%ular%'' OR deskripsi LIKE ''%ular%''');
INSERT INTO log_query VALUES (20,'p.nama LIKE ''%mochamad gani%'' OR p.asal LIKE ''%mochamad gani%''');
INSERT INTO log_query VALUES (21,'p.nama LIKE ''%%'' OR p.asal LIKE ''%%''');


-- Drop Table IF Exists : pengunjung

DROP TABLE IF EXISTS pengunjung;

-- Dumping structure for table : pengunjung

CREATE TABLE `pengunjung` (
  `no_tiket` char(10) NOT NULL,
  `tgl_kunjungan` datetime DEFAULT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `asal` varchar(50) DEFAULT NULL,
  `idtestimoni` int(11) NOT NULL,
  PRIMARY KEY (`no_tiket`),
  KEY `idkategori` (`idkategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table : pengunjung

INSERT INTO pengunjung VALUES (1,'2014-01-06 16:28:34',5,'reza','dayeuhkolot',0);
INSERT INTO pengunjung VALUES (116968,'2013-11-19 10:13:00',6,'Mochamad Gani','UNIKOM',1);
INSERT INTO pengunjung VALUES (118080,'2013-11-13 11:19:23',5,'Amin','Surabaya',2);
INSERT INTO pengunjung VALUES (118081,'2013-11-11 20:23:45',4,'Martin','PNG',6);
INSERT INTO pengunjung VALUES (118082,'2013-11-11 20:24:55',4,'Wesley','Belanda',7);
INSERT INTO pengunjung VALUES (118083,'2013-11-11 20:26:15',5,'Mas Gino','Kroyo',8);
INSERT INTO pengunjung VALUES (118084,'2013-11-11 20:27:21',6,'Raden','ITB',9);
INSERT INTO pengunjung VALUES (118085,'2013-11-11 20:28:07',5,'Umam','Cimahi',10);
INSERT INTO pengunjung VALUES (118086,'2013-11-11 20:28:49',5,'Angga','Palembang',11);
INSERT INTO pengunjung VALUES (118087,'2013-11-11 20:29:47',6,'Cinta','SMKN 6 Cimahi',12);
INSERT INTO pengunjung VALUES (118088,'2013-11-11 20:31:03',6,'Yani','SMAN 4 Jayapura',13);
INSERT INTO pengunjung VALUES (118090,'2013-11-13 12:27:47',6,'dude','unikom',3);
INSERT INTO pengunjung VALUES (118091,'2013-11-11 20:34:01',4,'Maxwell','France',14);
INSERT INTO pengunjung VALUES (118092,'2013-11-11 20:34:53',6,'Hidayah Ajeng Aryanti','UPN Veteran Jakarta',15);
INSERT INTO pengunjung VALUES (118093,'2013-11-12 20:39:49',5,'Ramadhan','Buah Batu',16);
INSERT INTO pengunjung VALUES (118094,'2013-11-12 20:41:37',5,'Rizki','Kalimantan',17);
INSERT INTO pengunjung VALUES (118095,'2013-11-12 20:42:45',6,'Pramuyudha','ITS',18);
INSERT INTO pengunjung VALUES (118096,'2013-11-12 20:43:16',6,'Dwi','STT Telkom Bandung',19);
INSERT INTO pengunjung VALUES (118097,'2013-11-12 20:44:23',5,'Chaerul','Brebes',20);
INSERT INTO pengunjung VALUES (118098,'2013-11-12 20:45:34',4,'Ronaldo','Portugal',21);
INSERT INTO pengunjung VALUES (118099,'2013-11-12 20:46:25',4,'Riberry','France',22);
INSERT INTO pengunjung VALUES (118100,'2013-11-12 20:47:59',5,'Setiawan','Lumbung Padi',23);
INSERT INTO pengunjung VALUES (118101,'2013-11-12 20:49:02',6,'Fina','SMA N 1 Bandung',24);
INSERT INTO pengunjung VALUES (118102,'2013-11-12 20:49:48',6,'Rima','SMP N 5 Bandung',25);
INSERT INTO pengunjung VALUES (118103,'2013-11-13 20:51:38',4,'Aubomenyang','Nigeria',26);
INSERT INTO pengunjung VALUES (118104,'2013-11-13 20:52:57',4,'Matuidi','Chile',27);
INSERT INTO pengunjung VALUES (118105,'2013-11-13 20:53:30',5,'Minie','Kopo',28);
INSERT INTO pengunjung VALUES (118106,'2013-11-13 20:54:12',5,'Micky','Batu Nunggal Indah',29);
INSERT INTO pengunjung VALUES (118107,'2013-11-13 20:54:46',5,'Melisa','Purbalenyi',30);
INSERT INTO pengunjung VALUES (118108,'2013-11-13 20:55:32',5,'Kevin','Pasteur',31);
INSERT INTO pengunjung VALUES (118109,'2013-11-13 20:56:14',6,'Riyadh','UNIKOM',32);
INSERT INTO pengunjung VALUES (118110,'2013-11-13 20:57:03',6,'Firdaus','Itenas',33);
INSERT INTO pengunjung VALUES (118112,'2013-11-13 21:06:11',6,'Maulana','UNIKOM',35);
INSERT INTO pengunjung VALUES (118113,'2013-11-13 21:06:58',6,'Lana','SMAN 1 Bandung',36);
INSERT INTO pengunjung VALUES (118114,'2013-11-13 21:08:03',6,'Oki','SMAN 1 Bandung',37);
INSERT INTO pengunjung VALUES (118115,'2013-11-13 21:08:54',5,'Januar','Subang',38);
INSERT INTO pengunjung VALUES (118116,'2013-11-14 21:10:40',4,'Lewis','Inggris',39);
INSERT INTO pengunjung VALUES (118117,'2013-11-14 21:11:26',4,'Nomoto','Japan',40);
INSERT INTO pengunjung VALUES (118118,'2013-11-14 21:14:15',4,'Kim Bum','Korea selatan',41);
INSERT INTO pengunjung VALUES (118119,'2013-11-14 21:15:37',4,'Prandew','Denmark',42);
INSERT INTO pengunjung VALUES (118120,'2013-11-14 21:16:29',5,'Nando','Soreang',43);
INSERT INTO pengunjung VALUES (118121,'2013-11-14 21:17:01',5,'Sihombing','Medan',44);
INSERT INTO pengunjung VALUES (118122,'2013-11-14 21:17:35',6,'Ojan','SMPN 3 Lampung',45);
INSERT INTO pengunjung VALUES (118123,'2013-11-14 21:18:29',6,'Wakijan','SMPN 3 Lampung',46);
INSERT INTO pengunjung VALUES (118124,'2013-11-14 21:19:58',6,'Taeng','SMPN 3 Lampung',47);
INSERT INTO pengunjung VALUES (118125,'2013-11-14 21:20:37',6,'Bayu','SMPN 3 Lampung',48);
INSERT INTO pengunjung VALUES (118126,'2013-11-14 21:21:19',6,'Dani','SMPN 3 Lampung',49);
INSERT INTO pengunjung VALUES (118127,'2013-11-14 21:21:50',6,'Kaisupi','SMPN 3 Lampung',50);
INSERT INTO pengunjung VALUES (118128,'2013-11-14 21:22:41',6,'Lila','SMPN 3 Lampung',51);
INSERT INTO pengunjung VALUES (118129,'2013-11-14 21:28:11',4,'Nagatomo','Japan',52);
INSERT INTO pengunjung VALUES (118130,'2013-11-14 21:29:04',5,'Meita','Manado',53);
INSERT INTO pengunjung VALUES (118131,'2013-11-16 21:30:55',4,'Jackson','Brazil',54);
INSERT INTO pengunjung VALUES (118132,'2013-11-16 21:31:51',4,'Souza','Brazil',55);
INSERT INTO pengunjung VALUES (118133,'2013-11-16 21:32:42',4,'Owen','Inggris',56);
INSERT INTO pengunjung VALUES (118134,'2013-11-16 21:33:29',4,'Rooney','Inggris',57);
INSERT INTO pengunjung VALUES (118135,'2013-11-16 21:34:14',4,'Benzema','France',58);
INSERT INTO pengunjung VALUES (118136,'2013-11-16 21:34:44',4,'Sako','France',59);
INSERT INTO pengunjung VALUES (118137,'2013-11-16 21:35:24',5,'Iko','Jakarta',60);
INSERT INTO pengunjung VALUES (118138,'2013-11-16 21:36:05',6,'Dhelsy','UNIKOM',61);
INSERT INTO pengunjung VALUES (118139,'2013-11-16 21:36:54',6,'Alin','UNIKOM',62);
INSERT INTO pengunjung VALUES (118140,'2013-11-16 21:37:32',6,'Grace','UNIKOM',63);
INSERT INTO pengunjung VALUES (118141,'2013-11-17 21:46:43',4,'Bale','Wales',64);
INSERT INTO pengunjung VALUES (118142,'2013-11-17 21:48:43',4,'Ramsey','Wales',65);
INSERT INTO pengunjung VALUES (118143,'2013-11-17 21:50:20',5,'Nur','Batu Nunggal Indah',66);
INSERT INTO pengunjung VALUES (118144,'2013-11-17 21:54:04',5,'Wahyuni','Suci',67);
INSERT INTO pengunjung VALUES (118145,'2013-11-17 21:54:35',5,'Andra','Sekeloa',68);
INSERT INTO pengunjung VALUES (118146,'2013-11-17 21:55:13',5,'Kian','Ciroyom',69);
INSERT INTO pengunjung VALUES (118147,'2013-11-17 21:56:20',5,'Budi','Cicaheum',70);
INSERT INTO pengunjung VALUES (118148,'2013-11-17 21:56:50',5,'Gino','Cimahi',71);
INSERT INTO pengunjung VALUES (118149,'2013-11-17 21:57:21',5,'Edi','Cicaheum',72);
INSERT INTO pengunjung VALUES (118150,'2013-11-17 22:04:23',5,'Chrisna','Banjarmasin',73);
INSERT INTO pengunjung VALUES (118151,'2013-11-17 22:04:57',6,'Chaerul','STEI ITB',74);
INSERT INTO pengunjung VALUES (118152,'2013-11-17 22:05:46',6,'Raden','STEI ITB',75);
INSERT INTO pengunjung VALUES (118153,'2013-11-17 22:06:21',6,'Mentari','UII Yogyakarta',76);
INSERT INTO pengunjung VALUES (118154,'2013-11-17 22:06:55',6,'Septi','UII Yogyakarta',77);
INSERT INTO pengunjung VALUES (118156,'2013-11-18 22:11:35',6,'Fadel','UII Yogyakarta',79);
INSERT INTO pengunjung VALUES (118157,'2013-11-18 22:12:34',6,'Reni','UII Yogyakarta',80);
INSERT INTO pengunjung VALUES (118158,'2013-11-18 22:13:08',6,'Riris','STT Telkom Bandung',81);
INSERT INTO pengunjung VALUES (118160,'2013-11-18 22:14:25',6,'Hendra','UNCEN Jayapura',83);
INSERT INTO pengunjung VALUES (118161,'2013-11-18 22:14:54',4,'Drogba','Pantai Gading',84);
INSERT INTO pengunjung VALUES (118162,'2013-11-18 22:15:36',4,'Kone','Pantai Gading',85);
INSERT INTO pengunjung VALUES (118163,'2013-11-18 22:16:09',4,'Ramsey','Wales',86);
INSERT INTO pengunjung VALUES (118164,'2013-11-18 22:17:03',4,'Patrick','PNG',87);
INSERT INTO pengunjung VALUES (118166,'2013-11-19 22:18:25',5,'Katrin','Jayapura',89);
INSERT INTO pengunjung VALUES (118167,'2013-11-19 22:18:59',5,'Inka','Suci',90);
INSERT INTO pengunjung VALUES (118168,'2013-11-19 22:19:32',5,'Angga','Ciheulang',91);
INSERT INTO pengunjung VALUES (118169,'2013-11-19 22:20:05',5,'Abi','Bekasi',92);
INSERT INTO pengunjung VALUES (118170,'2013-11-19 22:20:48',6,'Eko','UNIKOM',93);
INSERT INTO pengunjung VALUES (118171,'2013-11-19 22:23:33',6,'Semtoar','Widiatama',94);
INSERT INTO pengunjung VALUES (118172,'2013-11-19 22:24:58',6,'Bambang','USTJ Jayapura',95);
INSERT INTO pengunjung VALUES (118173,'2013-11-19 22:25:53',6,'Junaedi','UMI Makassar',96);
INSERT INTO pengunjung VALUES (118174,'2013-11-19 22:26:23',4,'Luca','Italy',97);
INSERT INTO pengunjung VALUES (118175,'2013-11-19 22:26:56',4,'Balloteli','Italy',98);
INSERT INTO pengunjung VALUES (118177,'2013-11-20 22:29:02',4,'Donovan','Amerika',100);
INSERT INTO pengunjung VALUES (118178,'2013-11-20 22:29:49',4,'Bechkam','Inggris',101);
INSERT INTO pengunjung VALUES (118179,'2013-11-20 22:30:13',5,'Cinta','Dayeuh Kolot',102);
INSERT INTO pengunjung VALUES (118180,'2013-11-20 22:30:57',5,'Pipik','Cimahi',103);
INSERT INTO pengunjung VALUES (118181,'2013-11-20 22:31:21',5,'Marten','Tasik',104);
INSERT INTO pengunjung VALUES (118182,'2013-11-20 22:32:12',6,'Intan','USTJ Jayapura',105);
INSERT INTO pengunjung VALUES (118183,'2013-11-20 22:32:49',6,'Dwi','USTJ Jayapura',106);
INSERT INTO pengunjung VALUES (118184,'2013-11-20 22:33:15',6,'Arief','SDN 5 Padalarang',107);
INSERT INTO pengunjung VALUES (118185,'2013-11-20 22:33:52',6,'Gino','SMKN 3 Cimahi',108);
INSERT INTO pengunjung VALUES (118186,'2013-11-21 22:36:02',4,'Chicarito','Mexico',109);
INSERT INTO pengunjung VALUES (118187,'2013-11-21 22:37:05',5,'Umam','Batujajar',110);
INSERT INTO pengunjung VALUES (118188,'2013-11-21 22:38:05',5,'Gani','Batujajar',111);
INSERT INTO pengunjung VALUES (118189,'2013-11-21 22:38:40',5,'Najib','Ternate',112);
INSERT INTO pengunjung VALUES (118190,'2013-11-21 22:39:35',5,'Januar','Subang',113);
INSERT INTO pengunjung VALUES (118191,'2013-11-21 22:40:16',5,'Lana','Serang',114);
INSERT INTO pengunjung VALUES (118192,'2013-11-21 22:41:17',6,'Dika','Widiatam',115);
INSERT INTO pengunjung VALUES (118193,'2013-11-21 22:43:24',6,'Dita','Widiatama',116);
INSERT INTO pengunjung VALUES (118194,'2013-11-21 22:43:57',6,'Bayu','Widiatama',117);
INSERT INTO pengunjung VALUES (118195,'2013-11-21 22:44:28',6,'Anggara','Widiatama',118);
INSERT INTO pengunjung VALUES (118196,'2013-11-23 22:49:01',4,'Kanoute','Mongolia',119);
INSERT INTO pengunjung VALUES (118197,'2013-11-23 22:50:10',4,'Messi','Argentina',120);
INSERT INTO pengunjung VALUES (118198,'2013-11-23 22:50:46',4,'Lorenzo','Spanyol',121);
INSERT INTO pengunjung VALUES (118199,'2013-11-23 22:51:50',5,'Kikin','Tegalega',122);
INSERT INTO pengunjung VALUES (118200,'2013-11-23 22:52:36',5,'Koko','Dipatiukur',123);
INSERT INTO pengunjung VALUES (118201,'2013-11-23 22:53:54',5,'Keke','Gerlong',124);
INSERT INTO pengunjung VALUES (118202,'2013-11-23 22:54:48',6,'Aan','UNCEN Jayapura',125);
INSERT INTO pengunjung VALUES (118203,'2013-11-23 22:55:37',6,'Een','USTJ Jayapura',126);
INSERT INTO pengunjung VALUES (118204,'2013-11-23 22:56:08',6,'Monita','ITB',127);
INSERT INTO pengunjung VALUES (118205,'2013-11-23 22:56:41',6,'Robby','UNIKOM',128);
INSERT INTO pengunjung VALUES (118206,'2013-11-24 22:59:02',4,'Ozil','Germany',129);
INSERT INTO pengunjung VALUES (118207,'2013-11-24 23:00:29',4,'Muller','Germany',130);
INSERT INTO pengunjung VALUES (118208,'2013-11-24 23:01:17',5,'Elia','Toraja',131);
INSERT INTO pengunjung VALUES (118209,'2013-11-24 23:02:28',5,'Tiza','Toraja',132);
INSERT INTO pengunjung VALUES (118210,'2013-11-24 23:03:07',6,'Dude','UNIKOM',133);
INSERT INTO pengunjung VALUES (118211,'2013-11-24 23:03:58',6,'Bahrul','UNPAD',134);
INSERT INTO pengunjung VALUES (118212,'2013-11-25 23:04:31',4,'Gomez','Germany',135);
INSERT INTO pengunjung VALUES (118213,'2013-11-25 23:05:06',5,'Isin','Cibiru',136);
INSERT INTO pengunjung VALUES (118214,'2013-11-25 23:05:51',5,'Hesty','Cibiru',137);
INSERT INTO pengunjung VALUES (118215,'2013-11-25 23:06:14',5,'Enci','Sukajadi',138);
INSERT INTO pengunjung VALUES (118216,'2013-11-25 23:12:46',6,'Aljabar','UNPAD',139);
INSERT INTO pengunjung VALUES (118217,'2013-11-25 23:13:37',6,'Marten','SMAN 6 Bandung',140);
INSERT INTO pengunjung VALUES (118218,'2013-11-25 23:14:35',6,'Indey','SMAN 1 Bandung',141);
INSERT INTO pengunjung VALUES (118219,'2013-11-25 23:15:25',6,'Kaisepo','SMAN 6 Bandung',142);
INSERT INTO pengunjung VALUES (118220,'2013-11-26 23:16:31',4,'Green','Inggris',143);
INSERT INTO pengunjung VALUES (118221,'2013-11-26 23:17:40',4,'Ibrahim','Arab Saudi',144);
INSERT INTO pengunjung VALUES (118222,'2013-11-26 23:18:16',4,'Nizza','Dubai',145);
INSERT INTO pengunjung VALUES (118223,'2013-11-26 23:18:42',4,'Oke','Dubai',146);
INSERT INTO pengunjung VALUES (118224,'2013-11-26 23:19:41',5,'Oneng','Banjaran',147);
INSERT INTO pengunjung VALUES (118225,'2013-11-26 23:20:39',6,'Opik','UGM',148);
INSERT INTO pengunjung VALUES (118226,'2013-11-26 23:21:16',6,'Agist','UGM',149);
INSERT INTO pengunjung VALUES (118227,'2013-11-26 23:21:53',6,'Naca','UGM',150);
INSERT INTO pengunjung VALUES (118228,'2013-11-26 23:22:33',6,'Cece','ITHB',151);
INSERT INTO pengunjung VALUES (118229,'2013-11-26 23:23:03',6,'Dadin','ITHB',152);
INSERT INTO pengunjung VALUES (118230,'2013-11-27 23:35:06',5,'Roni','Sumbawa',153);
INSERT INTO pengunjung VALUES (118231,'2013-11-27 23:51:10',5,'Yuyun','Sukabumi',154);
INSERT INTO pengunjung VALUES (118232,'2013-11-27 23:51:51',5,'Dadang','Garut',155);
INSERT INTO pengunjung VALUES (118233,'2013-11-27 23:53:13',5,'Rosada','Indramayu',156);
INSERT INTO pengunjung VALUES (118234,'2013-11-27 23:53:33',5,'Ridwan','Garut',157);
INSERT INTO pengunjung VALUES (118235,'2013-11-27 23:55:15',6,'Ardes','UNIKOM',158);
INSERT INTO pengunjung VALUES (118236,'2013-11-27 23:55:43',6,'Setiawan','STSI Bandung',159);
INSERT INTO pengunjung VALUES (118237,'2013-11-27 23:56:05',6,'Satrya','Universitas Hasanudin',160);
INSERT INTO pengunjung VALUES (118238,'2013-11-28 00:10:37',4,'Kamsupay','Zimbabwe',161);
INSERT INTO pengunjung VALUES (118239,'2013-11-28 00:15:07',4,'Lewandoski','Polandia',162);
INSERT INTO pengunjung VALUES (118240,'2013-11-28 00:16:37',4,'Modric','Kroasia',163);
INSERT INTO pengunjung VALUES (118241,'2013-11-28 00:17:29',4,'Sahin','Turky',164);
INSERT INTO pengunjung VALUES (118242,'2013-11-28 00:18:41',4,'Guarin','Colombia',165);
INSERT INTO pengunjung VALUES (118243,'2013-11-28 00:19:54',5,'Suraning','Pelabuhan Ratu',166);
INSERT INTO pengunjung VALUES (118244,'2013-11-28 00:20:53',6,'Firma','STSI',167);
INSERT INTO pengunjung VALUES (118245,'2013-11-28 00:21:34',6,'Firman','UPI',168);
INSERT INTO pengunjung VALUES (118246,'2013-11-28 00:22:23',6,'Vigo Van Larnwuy','Universitas Patimura',169);
INSERT INTO pengunjung VALUES (118247,'2013-11-30 00:30:01',4,'Gonzalez','Uruguay',170);
INSERT INTO pengunjung VALUES (118248,'2013-11-30 00:34:31',5,'Giri','Cipedes',171);
INSERT INTO pengunjung VALUES (118249,'2013-11-30 00:36:51',5,'Matew','Jayapura',172);
INSERT INTO pengunjung VALUES (118250,'2013-11-30 00:37:17',5,'Afdhol','Ciroyom',173);
INSERT INTO pengunjung VALUES (118251,'2013-11-30 00:37:59',5,'Sugi','Sedang Serang',174);
INSERT INTO pengunjung VALUES (118252,'2013-11-30 00:38:22',6,'Hamzah','UNCEN Jayapura',175);
INSERT INTO pengunjung VALUES (118253,'2013-11-30 00:39:03',6,'Yanes','UKRIDA',176);
INSERT INTO pengunjung VALUES (118254,'2013-11-30 00:39:39',6,'Nurul','UPI',177);
INSERT INTO pengunjung VALUES (118255,'2013-12-01 00:41:09',4,'Ricky','Amerika',178);
INSERT INTO pengunjung VALUES (118256,'2013-12-01 00:41:30',4,'Kayame','PNG',179);
INSERT INTO pengunjung VALUES (118257,'2013-12-01 00:41:51',5,'Indah','Wamena',180);
INSERT INTO pengunjung VALUES (118258,'2013-12-01 00:42:17',5,'Ria','Sorong',181);
INSERT INTO pengunjung VALUES (118259,'2013-12-01 00:42:41',6,'Mongol','UNSUT',182);
INSERT INTO pengunjung VALUES (118260,'2013-12-01 00:43:35',6,'Babe','UMI Makassar',183);
INSERT INTO pengunjung VALUES (118261,'2013-12-01 00:44:12',6,'Frida','UMN',184);
INSERT INTO pengunjung VALUES (118262,'2013-12-01 00:45:14',6,'Dera','UNIKOM',185);
INSERT INTO pengunjung VALUES (118263,'2013-12-02 00:46:41',5,'Ida','Banyuwangi',186);
INSERT INTO pengunjung VALUES (118264,'2013-12-02 00:47:16',5,'Sumenep','Cisarua',187);
INSERT INTO pengunjung VALUES (118265,'2013-12-02 00:48:26',6,'Ridan','UPI',188);
INSERT INTO pengunjung VALUES (118266,'2013-12-02 00:48:51',6,'Koreri','UGM',189);
INSERT INTO pengunjung VALUES (118267,'2013-12-02 00:49:21',6,'Krey','UGM',190);
INSERT INTO pengunjung VALUES (118268,'2013-12-02 00:49:50',6,'Rendy','Universitas Bakrie',191);
INSERT INTO pengunjung VALUES (118269,'2013-12-03 00:51:25',4,'Redondo','Portugal',192);
INSERT INTO pengunjung VALUES (118270,'2013-12-03 00:52:06',4,'Cavani','Uruguay',193);
INSERT INTO pengunjung VALUES (118271,'2013-12-03 00:52:32',4,'Datuk','Malaysia',194);
INSERT INTO pengunjung VALUES (118272,'2013-12-03 00:53:13',5,'Gimin','Tanggerang',195);
INSERT INTO pengunjung VALUES (118273,'2013-12-03 00:54:12',5,'Wagimin','Malang',196);
INSERT INTO pengunjung VALUES (118274,'2013-12-03 00:54:55',6,'Setiawan','UNIKOM',197);
INSERT INTO pengunjung VALUES (118275,'2013-12-03 00:55:32',6,'Odi','UPI',198);
INSERT INTO pengunjung VALUES (118276,'2013-12-03 00:55:52',6,'Adi','USTJ Jayapura',199);
INSERT INTO pengunjung VALUES (118277,'2013-12-03 00:56:22',6,'Endah','SMAN 2 Bandung',200);
INSERT INTO pengunjung VALUES (118278,'2013-12-04 00:57:54',4,'Kane','Denmark',201);
INSERT INTO pengunjung VALUES (118279,'2013-12-04 00:58:42',5,'Prasetya','Pasteur',202);
INSERT INTO pengunjung VALUES (118280,'2013-12-04 00:59:14',5,'Tukimin','Lembang',203);
INSERT INTO pengunjung VALUES (118281,'2013-12-04 01:00:26',5,'Reza','UNIKOM',204);
INSERT INTO pengunjung VALUES (118989,'2013-11-13 11:17:55',4,'James','Australia',4);
INSERT INTO pengunjung VALUES (123435,'2013-12-04 11:30:54',4,'Erix','Belanda',5);
INSERT INTO pengunjung VALUES (151207,'2013-12-11 12:32:13',5,'Pace','Papua',0);
INSERT INTO pengunjung VALUES (151617,'2013-12-11 10:04:26',6,'Gani Setiawan','Smk 2 Cimahi',0);
INSERT INTO pengunjung VALUES (191207,'2014-01-02 22:45:00',5,'reja','Bandung',0);


-- Drop Table IF Exists : ruangan

DROP TABLE IF EXISTS ruangan;

-- Dumping structure for table : ruangan

CREATE TABLE `ruangan` (
  `idruangan` int(11) NOT NULL AUTO_INCREMENT,
  `namaruangan` varchar(200) NOT NULL,
  `keterangan` varchar(5000) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idruangan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table : ruangan

INSERT INTO ruangan VALUES (1,'Ruang Evolusi Manusia','Ruangan yang didalamnya terdapat semua mengenai evolusi manusia');
INSERT INTO ruangan VALUES (2,'Ruangan Posil Sumber Daya Alam','Ruangan Posil Sumber Daya Alam');
INSERT INTO ruangan VALUES (3,'Ruangan Posil Binatang','Ruangan Posil Binatang');
INSERT INTO ruangan VALUES (4,'Ruang Fosil atau Makhluk Hidup Lautan','Berbagai species makhluk hidup yang hidup dilautan.');
INSERT INTO ruangan VALUES (5,'Ruangan Fosil Daun-daunan','daun-daunan');


-- Drop Table IF Exists : sejarah

DROP TABLE IF EXISTS sejarah;

-- Dumping structure for table : sejarah

CREATE TABLE `sejarah` (
  `idsejarah` int(11) NOT NULL AUTO_INCREMENT,
  `judulsejarah` varchar(31) DEFAULT NULL,
  `judullatinsejarah` varchar(31) DEFAULT NULL,
  `gambarsejarah` varchar(101) DEFAULT NULL,
  `deskripsisejarah` varchar(300) DEFAULT NULL,
  `langkahlangkahsejarah` varchar(500) DEFAULT NULL,
  `idkategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsejarah`),
  KEY `fk_kodekategori2` (`idkategori`),
  CONSTRAINT `fk_kodekategori2` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table : sejarah



-- Drop Table IF Exists : testimoni

DROP TABLE IF EXISTS testimoni;

-- Dumping structure for table : testimoni

CREATE TABLE `testimoni` (
  `idtestimoni` int(11) NOT NULL AUTO_INCREMENT,
  `isitestimoni` varchar(500) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  PRIMARY KEY (`idtestimoni`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

-- Dumping data for table : testimoni

INSERT INTO testimoni VALUES (1,'Keren nih banyak yang baru disini','2013-12-09 00:00:00');
INSERT INTO testimoni VALUES (2,'Mantap dinosaurusnya','2013-12-09 00:00:00');
INSERT INTO testimoni VALUES (3,'Waww Banyak koleksinya','2013-12-09 00:00:00');
INSERT INTO testimoni VALUES (4,'Enak pelayanannya','2013-12-09 00:00:00');
INSERT INTO testimoni VALUES (5,'Kapan-kapan mau mampir lagi. mudah2an ada koleksi baru.','2013-12-09 00:00:00');
INSERT INTO testimoni VALUES (6,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:16:44');
INSERT INTO testimoni VALUES (7,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:22:56');
INSERT INTO testimoni VALUES (8,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:23:02');
INSERT INTO testimoni VALUES (9,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:23:07');
INSERT INTO testimoni VALUES (10,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:23:11');
INSERT INTO testimoni VALUES (11,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:23:18');
INSERT INTO testimoni VALUES (12,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:23:22');
INSERT INTO testimoni VALUES (14,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:23:51');
INSERT INTO testimoni VALUES (15,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-11 01:25:21');
INSERT INTO testimoni VALUES (16,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:26:39');
INSERT INTO testimoni VALUES (17,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:32:46');
INSERT INTO testimoni VALUES (18,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:32:50');
INSERT INTO testimoni VALUES (19,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:32:59');
INSERT INTO testimoni VALUES (20,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:33:04');
INSERT INTO testimoni VALUES (21,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:33:08');
INSERT INTO testimoni VALUES (22,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:33:14');
INSERT INTO testimoni VALUES (23,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:33:18');
INSERT INTO testimoni VALUES (24,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:33:24');
INSERT INTO testimoni VALUES (25,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-12 01:33:30');
INSERT INTO testimoni VALUES (26,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:34:57');
INSERT INTO testimoni VALUES (27,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:03');
INSERT INTO testimoni VALUES (28,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:09');
INSERT INTO testimoni VALUES (29,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:13');
INSERT INTO testimoni VALUES (30,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:18');
INSERT INTO testimoni VALUES (31,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:23');
INSERT INTO testimoni VALUES (32,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:26');
INSERT INTO testimoni VALUES (33,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:30');
INSERT INTO testimoni VALUES (34,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:34');
INSERT INTO testimoni VALUES (35,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:38');
INSERT INTO testimoni VALUES (36,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:35:46');
INSERT INTO testimoni VALUES (37,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:37:06');
INSERT INTO testimoni VALUES (38,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-13 01:37:10');
INSERT INTO testimoni VALUES (39,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:37:31');
INSERT INTO testimoni VALUES (40,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:37:43');
INSERT INTO testimoni VALUES (41,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:37:50');
INSERT INTO testimoni VALUES (42,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:37:55');
INSERT INTO testimoni VALUES (43,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:01');
INSERT INTO testimoni VALUES (44,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:05');
INSERT INTO testimoni VALUES (45,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:10');
INSERT INTO testimoni VALUES (46,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:14');
INSERT INTO testimoni VALUES (47,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:19');
INSERT INTO testimoni VALUES (48,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:24');
INSERT INTO testimoni VALUES (49,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:28');
INSERT INTO testimoni VALUES (50,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:36');
INSERT INTO testimoni VALUES (51,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:40');
INSERT INTO testimoni VALUES (52,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:45');
INSERT INTO testimoni VALUES (53,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-14 01:38:51');
INSERT INTO testimoni VALUES (54,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-16 01:39:12');
INSERT INTO testimoni VALUES (55,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-16 01:39:23');
INSERT INTO testimoni VALUES (56,'Keren kolkesinya, tapi masih kurang lengkap, mohon lebih dilengkapin lagi.','2013-11-16 01:39:28');
INSERT INTO testimoni VALUES (58,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-16 01:44:30');
INSERT INTO testimoni VALUES (59,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-16 01:44:36');
INSERT INTO testimoni VALUES (60,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-16 01:44:40');
INSERT INTO testimoni VALUES (61,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-16 01:44:44');
INSERT INTO testimoni VALUES (62,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-16 01:44:48');
INSERT INTO testimoni VALUES (63,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-16 01:45:15');
INSERT INTO testimoni VALUES (64,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:45:32');
INSERT INTO testimoni VALUES (65,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:45:39');
INSERT INTO testimoni VALUES (66,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:45:43');
INSERT INTO testimoni VALUES (67,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:45:47');
INSERT INTO testimoni VALUES (68,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:45:51');
INSERT INTO testimoni VALUES (69,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:45:56');
INSERT INTO testimoni VALUES (70,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:00');
INSERT INTO testimoni VALUES (71,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:04');
INSERT INTO testimoni VALUES (72,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:08');
INSERT INTO testimoni VALUES (73,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:13');
INSERT INTO testimoni VALUES (74,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:17');
INSERT INTO testimoni VALUES (75,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:22');
INSERT INTO testimoni VALUES (76,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:27');
INSERT INTO testimoni VALUES (77,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-17 01:46:31');
INSERT INTO testimoni VALUES (78,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:46:44');
INSERT INTO testimoni VALUES (79,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:46:52');
INSERT INTO testimoni VALUES (80,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:04');
INSERT INTO testimoni VALUES (81,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:08');
INSERT INTO testimoni VALUES (82,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:12');
INSERT INTO testimoni VALUES (83,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:16');
INSERT INTO testimoni VALUES (84,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:20');
INSERT INTO testimoni VALUES (85,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:24');
INSERT INTO testimoni VALUES (86,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:29');
INSERT INTO testimoni VALUES (87,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:34');
INSERT INTO testimoni VALUES (88,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-18 01:47:38');
INSERT INTO testimoni VALUES (89,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:48:03');
INSERT INTO testimoni VALUES (90,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:48:09');
INSERT INTO testimoni VALUES (91,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:48:13');
INSERT INTO testimoni VALUES (92,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:48:20');
INSERT INTO testimoni VALUES (93,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:49:01');
INSERT INTO testimoni VALUES (94,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:49:06');
INSERT INTO testimoni VALUES (95,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:49:10');
INSERT INTO testimoni VALUES (96,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:49:14');
INSERT INTO testimoni VALUES (97,'Fasilitasnya sudah cukup memadahi, cuma kurang ada perawatan, sehingga banyak yg tidak berfungsi, mohon diperhatikan.','2013-11-19 01:49:18');
INSERT INTO testimoni VALUES (98,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-19 01:55:04');
INSERT INTO testimoni VALUES (99,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:55:36');
INSERT INTO testimoni VALUES (100,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:55:41');
INSERT INTO testimoni VALUES (101,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:55:46');
INSERT INTO testimoni VALUES (102,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:55:51');
INSERT INTO testimoni VALUES (103,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:55:55');
INSERT INTO testimoni VALUES (104,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:55:59');
INSERT INTO testimoni VALUES (105,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:56:06');
INSERT INTO testimoni VALUES (106,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:56:12');
INSERT INTO testimoni VALUES (107,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:56:16');
INSERT INTO testimoni VALUES (108,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-20 01:56:21');
INSERT INTO testimoni VALUES (109,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:56:40');
INSERT INTO testimoni VALUES (110,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:56:46');
INSERT INTO testimoni VALUES (111,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:56:51');
INSERT INTO testimoni VALUES (112,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:56:55');
INSERT INTO testimoni VALUES (113,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:57:03');
INSERT INTO testimoni VALUES (114,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:57:08');
INSERT INTO testimoni VALUES (115,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:57:14');
INSERT INTO testimoni VALUES (116,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:57:18');
INSERT INTO testimoni VALUES (117,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:57:23');
INSERT INTO testimoni VALUES (118,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-21 01:57:28');
INSERT INTO testimoni VALUES (119,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:57:45');
INSERT INTO testimoni VALUES (120,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:57:54');
INSERT INTO testimoni VALUES (121,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:57:59');
INSERT INTO testimoni VALUES (122,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:58:08');
INSERT INTO testimoni VALUES (123,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:58:14');
INSERT INTO testimoni VALUES (124,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:59:02');
INSERT INTO testimoni VALUES (125,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:59:21');
INSERT INTO testimoni VALUES (126,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:59:26');
INSERT INTO testimoni VALUES (127,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:59:30');
INSERT INTO testimoni VALUES (128,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-23 01:59:34');
INSERT INTO testimoni VALUES (129,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-24 01:59:50');
INSERT INTO testimoni VALUES (130,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-24 01:59:54');
INSERT INTO testimoni VALUES (131,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-24 01:59:58');
INSERT INTO testimoni VALUES (132,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-24 02:00:02');
INSERT INTO testimoni VALUES (133,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-24 02:00:07');
INSERT INTO testimoni VALUES (134,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-24 02:00:13');
INSERT INTO testimoni VALUES (135,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-25 02:00:28');
INSERT INTO testimoni VALUES (136,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-25 02:00:33');
INSERT INTO testimoni VALUES (137,'Wow fosil Dinosaurus nya besar sekali, kereeeeeen','2013-11-25 02:00:38');
INSERT INTO testimoni VALUES (138,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-25 02:05:26');
INSERT INTO testimoni VALUES (139,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-25 02:05:34');
INSERT INTO testimoni VALUES (140,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-25 02:05:43');
INSERT INTO testimoni VALUES (141,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-25 02:05:48');
INSERT INTO testimoni VALUES (142,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-25 02:05:53');
INSERT INTO testimoni VALUES (143,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:20');
INSERT INTO testimoni VALUES (144,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:26');
INSERT INTO testimoni VALUES (145,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:30');
INSERT INTO testimoni VALUES (146,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:34');
INSERT INTO testimoni VALUES (147,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:39');
INSERT INTO testimoni VALUES (148,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:43');
INSERT INTO testimoni VALUES (149,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:48');
INSERT INTO testimoni VALUES (150,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:53');
INSERT INTO testimoni VALUES (151,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:06:58');
INSERT INTO testimoni VALUES (152,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-26 02:07:01');
INSERT INTO testimoni VALUES (153,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:22');
INSERT INTO testimoni VALUES (154,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:26');
INSERT INTO testimoni VALUES (155,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:30');
INSERT INTO testimoni VALUES (156,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:33');
INSERT INTO testimoni VALUES (157,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:37');
INSERT INTO testimoni VALUES (158,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:41');
INSERT INTO testimoni VALUES (159,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:45');
INSERT INTO testimoni VALUES (160,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-27 02:07:48');
INSERT INTO testimoni VALUES (161,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:08');
INSERT INTO testimoni VALUES (162,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:12');
INSERT INTO testimoni VALUES (163,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:17');
INSERT INTO testimoni VALUES (164,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:21');
INSERT INTO testimoni VALUES (165,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:25');
INSERT INTO testimoni VALUES (166,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:29');
INSERT INTO testimoni VALUES (167,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:39');
INSERT INTO testimoni VALUES (168,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:45');
INSERT INTO testimoni VALUES (169,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-28 02:08:49');
INSERT INTO testimoni VALUES (170,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:11');
INSERT INTO testimoni VALUES (171,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:17');
INSERT INTO testimoni VALUES (172,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:23');
INSERT INTO testimoni VALUES (173,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:26');
INSERT INTO testimoni VALUES (174,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:30');
INSERT INTO testimoni VALUES (175,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:35');
INSERT INTO testimoni VALUES (176,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:39');
INSERT INTO testimoni VALUES (177,'Tidak akan pernah bosan untuk berkunjung kesini, PUAS.','2013-11-30 02:09:42');
INSERT INTO testimoni VALUES (178,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:15:45');
INSERT INTO testimoni VALUES (179,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:15:48');
INSERT INTO testimoni VALUES (180,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:15:51');
INSERT INTO testimoni VALUES (181,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:15:55');
INSERT INTO testimoni VALUES (182,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:15:57');
INSERT INTO testimoni VALUES (183,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:16:11');
INSERT INTO testimoni VALUES (184,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:16:14');
INSERT INTO testimoni VALUES (185,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-01 02:16:17');
INSERT INTO testimoni VALUES (186,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-02 02:16:27');
INSERT INTO testimoni VALUES (187,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-02 02:16:33');
INSERT INTO testimoni VALUES (188,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-02 02:16:36');
INSERT INTO testimoni VALUES (189,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-02 02:16:38');
INSERT INTO testimoni VALUES (190,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-02 02:16:41');
INSERT INTO testimoni VALUES (191,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-02 02:16:44');
INSERT INTO testimoni VALUES (192,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:01');
INSERT INTO testimoni VALUES (193,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:04');
INSERT INTO testimoni VALUES (194,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:07');
INSERT INTO testimoni VALUES (195,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:11');
INSERT INTO testimoni VALUES (196,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:13');
INSERT INTO testimoni VALUES (197,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:16');
INSERT INTO testimoni VALUES (198,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:18');
INSERT INTO testimoni VALUES (199,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:21');
INSERT INTO testimoni VALUES (200,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-03 02:17:23');
INSERT INTO testimoni VALUES (201,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-04 02:17:46');
INSERT INTO testimoni VALUES (202,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-04 02:17:50');
INSERT INTO testimoni VALUES (203,'Murah meriah, cocok buat liburan tapi kantong lagi boke, hehehee','2013-12-04 02:17:53');


-- Drop Table IF Exists : user

DROP TABLE IF EXISTS user;

-- Dumping structure for table : user

CREATE TABLE `user` (
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table : user

INSERT INTO user VALUES (1,1,'admin','fj9sjs21232f297a57a5a743894a0e4a801fc3','Administrator','Museum','mochgani@baradeveloper.com',' upload/foto/gani1.jpg','::1',1,'2013-11-06 09:00:00');
INSERT INTO user VALUES (2,2,'reza','fj9sjsb0baee9d279d34fa1dfd71aadb908c3f','Reza','Pramuyudha','user@museum.com',' upload/foto/gani2.jpg','::1',1,'2013-11-13 12:36:32');
INSERT INTO user VALUES (3,2,'userdua','fj9sjse10adc3949ba59abbe56e057f20f883e','Userdua','Museum','user2@museum.com','upload/foto/stiker-bara.png','::1',0,'2013-11-13 08:22:52');
INSERT INTO user VALUES (4,1,'asik',' fj9sjs08f41424655d5d12e93da19f5de12ea','Asik','Mamen','moch.gani@gmail.com',' upload/foto/gani4.jpg','::1',0,'2013-11-12 23:19:39');
INSERT INTO user VALUES (6,1,'tes.tes',' fj9sjs827ccb0eea8a706c4c34a16891f84e7','tes','tes','a.a@a.a',' upload/foto/pas-photo.jpg','::1',0,'2013-11-19 22:17:04');


-- Drop Table IF Exists : video

DROP TABLE IF EXISTS video;

-- Dumping structure for table : video

CREATE TABLE `video` (
  `idvideo` int(11) NOT NULL AUTO_INCREMENT,
  `judulvideo` varchar(31) NOT NULL,
  `urlvideo` varchar(101) NOT NULL,
  `deskripsivideo` varchar(300) DEFAULT NULL,
  `idkategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`idvideo`),
  KEY `fk_kodekategori1` (`idkategori`),
  CONSTRAINT `fk_kodekategori1` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table : video

