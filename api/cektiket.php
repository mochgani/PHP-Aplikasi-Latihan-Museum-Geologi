<?php
include "../config.php";
include "../library.php";

$parsing= $_GET['parsing'];

$sql = mysql_query("SELECT * FROM pengunjung WHERE no_tiket='$parsing' and DATE(tgl_kunjungan)='$tgl_now'");
$itung = mysql_num_rows($sql);

if($itung==1) $stat = "aktif"; else $stat = "non";

$json = '{"cektiket":[ ';

$json .= '{ ';
	$json .= '"status":"'.$stat.'"
	},';

$json = substr($json,0,strlen($json)-1);
$json .= ']}';

echo $json;
?>