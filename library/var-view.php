<?php

if(isset($_GET['hal']))
	$hal = $_GET['hal'];
else
	$hal = 1;

$sql_all = mysql_query("select * from $modul");
$jml_all = mysql_num_rows($sql_all);
$jml_pagnt = ceil($jml_all / $limit);
$no_awal = (($hal-1)*$limit)+1;

if(empty($hal)){
	$jml_hal = 0;
} else {
	$jml_hal = (($hal-1)*$limit);
}

$sql = mysql_query("select * from $modul LIMIT $jml_hal , $limit");
$no = 1+$jml_hal;

?>