<?php

$user_id = $_GET['hal'];

$sql = mysql_query("DELETE FROM koleksi WHERE idkoleksi=$user_id");

if($sql)
	echo"<script language=javascript>alert('User Berhasil di Hapus');document.location='". $base ."index/koleksi/view'</script>";
else
	echo"<script language=javascript>alert('User Gagal di Hapus');document.location='". $base ."index/koleksi/view'</script>";

?>