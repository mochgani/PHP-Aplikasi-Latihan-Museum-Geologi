<?php

$idkategori = $_GET['hal'];

$sql_cari = mysql_query("SELECT * FROM kategori WHERE idkategori=$idkategori");

$v_cari = mysql_fetch_array($sql_cari);

if($v_cari['idsub'] == 1) $sql_cek = mysql_query("SELECT * FROM pengunjung WHERE idkategori=$idkategori");
else if($v_cari['idsub'] == 2) $sql_cek = mysql_query("SELECT * FROM user WHERE user_group_id=$idkategori");
else if($v_cari['idsub'] == 3) $sql_cek = mysql_query("SELECT * FROM koleksi WHERE idkategori=$idkategori");

$hasil_cek = mysql_num_rows($sql_cek);

if($hasil_cek > 0){

echo"<script language=javascript>alert('Maaf Kategori tidak dapat di Hapus karena sedang di pakai!');document.location='". $base ."index/kategori/view'</script>";

} else {

$sql = mysql_query("DELETE FROM kategori WHERE idkategori=$idkategori");

if($sql)
	echo"<script language=javascript>alert('Kategori Berhasil di Hapus');document.location='". $base ."index/kategori/view'</script>";
else
	echo"<script language=javascript>alert('Kategori Gagal di Hapus');document.location='". $base ."index/kategori/view'</script>";

}
?>