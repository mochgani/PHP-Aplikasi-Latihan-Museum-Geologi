<?php

$result = mysql_query("SHOW TABLE STATUS LIKE 'log_query'");
$row = mysql_fetch_array($result);
$nextId = $row['Auto_increment'];

$cari = $_POST['cari'];

$cariquery = "namakoleksi LIKE ''%$cari%'' OR lokasitemu LIKE ''%$cari%'' OR tgltemu LIKE ''%$cari%'' OR penemu LIKE ''%$cari%'' OR umur LIKE ''%$cari%'' OR ukuran LIKE ''%$cari%'' OR deskripsi LIKE ''%$cari%''";

$sqlcari = mysql_query("INSERT INTO log_query VALUES (null, '$cariquery')"); 

if($sqlcari)
	echo"<script language=javascript>document.location='". $base ."index/koleksi/view/1/".$nextId."'</script>";
else
	echo"<script language=javascript>document.location='". $base ."index/koleksi/view'</script>";

?>