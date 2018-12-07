<?php
include "../config.php";
include "../library.php";

$parsing= $_GET['parsing'];
$parsing2= $_GET['parsing2'];
$parsing3= $_GET['parsing3'];

mysql_query("INSERT INTO `kunjungan_koleksi` VALUES (NULL, now(), $parsing2, $parsing)");

if($parsing3 == 'Indonesia'){
	$sql = mysql_query("SELECT * FROM koleksi WHERE idkoleksi='$parsing'");
} else {
	$sql = mysql_query("SELECT b.*,a.idkategori,a.url,a.gambar,a.data_added,a.idruangan
						FROM koleksi a
						JOIN koleksi_eng b ON a.idkoleksi=b.idkoleksi
						WHERE a.idkoleksi='$parsing'");
}

$v = mysql_fetch_array($sql);

if($parsing3 == 'Indonesia'){
	$sql2 = mysql_query("SELECT * FROM kategori WHERE idkategori='$v[idkategori]'");
	$sql3 = mysql_query("SELECT * FROM ruangan WHERE idruangan='$v[idruangan]'");
} else {
	$sql2 = mysql_query("SELECT *
						 FROM kategori a
						 JOIN kategori_eng b ON a.idkategori=b.idkategori
						 WHERE a.idkategori='$v[idkategori]'");
	$sql3 = mysql_query("SELECT *
						 FROM ruangan a
						 JOIN ruangan_eng b ON a.idruangan=b.idruangan
						 WHERE a.idruangan='$v[idruangan]'");
}


$v2 = mysql_fetch_array($sql2);

$v3 = mysql_fetch_array($sql3);

$json = '{"koleksi":[ ';

$json .= '{ ';

if($parsing3 == 'Indonesia'){
	$json .= '"id":"'.$v['idkoleksi'].'",
	"kategori":"'.$v2['namakategori'].'",
	"nama":"'.$v['namakoleksi'].'",
	"lokasi":"'.$v['lokasitemu'].'",
	"tgl":"'.$v['tgltemu'].'",
	"penemu":"'.$v['penemu'].'",
	"umur":"'.$v['umur'].'",
	"ukuran":"'.$v['ukuran'].'",
	"deskripsi":"'.$v['deskripsi'].'",
	"url":"'.$v['url'].'",
	"gambar":"'.$base_api . $v['gambar'].'",
	"data_added":"'.$v['data_added'].'",
	"ruangan":"'.$v3['namaruangan'].'",
	"idruangan":"'.$v['idruangan'].'",
	"maps":"'.$base_api .$v3['maps'].'"
	},';
} else {
	$json .= '"id":"'.$v['idkoleksi'].'",
	"kategori":"'.$v2['namakategori_eng'].'",
	"nama":"'.$v['namakoleksi_eng'].'",
	"lokasi":"'.$v['lokasitemu_eng'].'",
	"tgl":"'.$v['tgltemu_eng'].'",
	"penemu":"'.$v['penemu_eng'].'",
	"umur":"'.$v['umur_eng'].'",
	"ukuran":"'.$v['ukuran_eng'].'",
	"deskripsi":"'.$v['deskripsi_eng'].'",
	"url":"'.$v['url'].'",
	"gambar":"'.$base_api . $v['gambar'].'",
	"data_added":"'.$v['data_added'].'",
	"ruangan":"'.$v3['namaruangan_eng'].'",
	"idruangan":"'.$v['idruangan'].'",
	"maps":"'.$base_api .$v3['maps'].'"
	},';
}

$json = substr($json,0,strlen($json)-1);
$json .= ']}';

echo $json;
?>