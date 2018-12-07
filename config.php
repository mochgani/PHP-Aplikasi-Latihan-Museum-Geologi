<?php
$host = "localhost";
$user = "root";
$pass = "root";
$db = "db_geologi";

$limit = 10;
$passadd = "fj9sjs";

$base = "http://localhost/geologi/";
$base_api = "http://192.168.4.103/geologi/";

mysql_connect($host,$user,$pass) or die ('Koneksi GAGAL!!!');
$off ="<script language=javascript>alert('Database Tidak di Temukan!!!');
document.location='offline.php'</script>";
mysql_select_db($db) or die ($off);
?>