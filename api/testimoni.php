<?php
include "../config.php";
include "../library.php";

$testimoni = $_POST['testimoni'];
$tiket = $_POST['tiket'];

$result = mysql_query("SHOW TABLE STATUS LIKE 'testimoni'");
$row = mysql_fetch_array($result);
$nextId = $row['Auto_increment'];

mysql_query("INSERT INTO testimoni values (null,'$testimoni',now())");
mysql_query("UPDATE pengunjung SET idtestimoni=$nextId WHERE no_tiket=$tiket");

?>