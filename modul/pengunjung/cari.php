<?php

$result = mysql_query("SHOW TABLE STATUS LIKE 'log_query'");
$row = mysql_fetch_array($result);
$nextId = $row['Auto_increment'];

$cari = $_POST['cari'];

$cariquery = "p.nama LIKE ''%$cari%'' OR p.asal LIKE ''%$cari%''";

$sqlcari = mysql_query("INSERT INTO log_query VALUES (null, '$cariquery')"); 

if($sqlcari)
	echo"<script language=javascript>document.location='". $base ."index/pengunjung/view/1/".$nextId."'</script>";
else
	echo"<script language=javascript>document.location='". $base ."index/pengunjung/view'</script>";

?>