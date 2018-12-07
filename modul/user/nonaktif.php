<?php

$user_id = $_GET['hal'];

$sql = mysql_query("Update user SET status=0 WHERE user_id=$user_id");

if($sql)
	echo"<script language=javascript>alert('User Berhasil di Non Aktifkan');document.location='". $base ."index/user/view'</script>";
else
	echo"<script language=javascript>alert('User Gagal di Non Aktifkan');document.location='". $base ."index/user/view'</script>";

?>