<?php

$idkategori = $_GET['hal'];

$sql_cek = mysql_query("SELECT * FROM koleksi WHERE idruangan=$idkategori");

$hasil_cek = mysql_num_rows($sql_cek);

if($hasil_cek > 0){

echo"<script language=javascript>alert('Maaf Ruangan tidak dapat di Hapus karena sedang di pakai!');document.location='". $base ."index/ruangan/view'</script>";

} else {

$sql = mysql_query("DELETE FROM ruangan WHERE idruangan=$idkategori");

if($sql)
	echo"<script language=javascript>alert('Ruangan Berhasil di Hapus');document.location='". $base ."index/ruangan/view'</script>";
else
	echo"<script language=javascript>alert('Ruangan Gagal di Hapus');document.location='". $base ."index/ruangan/view'</script>";

}
?>