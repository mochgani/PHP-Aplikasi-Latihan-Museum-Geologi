<?php

$result = mysql_query("SHOW TABLE STATUS LIKE 'log_query'");
$row = mysql_fetch_array($result);
$nextId = $row['Auto_increment'];

$awal = $_POST['awal'];
$akhir = $_POST['akhir'];
$koleksi = $_POST['koleksi'];

$cariquery = "date_format(kk.waktulihat,''%Y-%m-%d'')>=''$awal'' AND date_format(kk.waktulihat,''%Y-%m-%d'')<=''$akhir'' AND kk.idkoleksi=$koleksi";

$sqlcari = mysql_query("INSERT INTO log_query VALUES (null, '$cariquery')"); 

if($sqlcari)
	echo"<script language=javascript>document.location='". $base ."index/report/kunjungankoleksi/1/".$nextId."'</script>";
else
	echo"<script language=javascript>document.location='". $base ."index/report/kunjungankoleksi'</script>";

?>