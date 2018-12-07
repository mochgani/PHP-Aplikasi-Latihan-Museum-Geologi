<?php
include "../../config.php";

$user= $_POST['username'];
$pass= $passadd . md5($_POST['password']);

$sql = mysql_query("select * from user where username='$user' AND password='$pass' AND status=1");
$ketemu= mysql_num_rows($sql);
$d= mysql_fetch_array($sql);

if(($ketemu > 0) && !empty($user) && !empty($_POST['password'])){
	session_start();

	$_SESSION['user']=$d['username'];
	$_SESSION['foto']=$d['foto'];
	$_SESSION['email']=$d['email'];
	$_SESSION['pass']=$d['password'];
	$_SESSION['name']= $d['firstname']." ".$d['lastname'];
	$_SESSION['hak']=$d['user_group_id'];
	$_SESSION['id']=$d['user_id'];

	echo"<script language=javascript>alert('Selamat Datang $_SESSION[name]');document.location='". $base ."index'</script>";

} else {
	if(empty($user)){
		echo"<script language=javascript>alert('Username Harus diisi!');document.location='". $base ."login'</script>";
	}
	else if(empty($_POST['password'])){
		echo"<script language=javascript>alert('Password Harus diisi!');document.location='". $base ."login'</script>";
	}
	else if($d['status'] == 0){
		echo"<script language=javascript>alert('User belum Aktif!');document.location='". $base ."login'</script>";
	}
	else{
		echo"<script language=javascript>alert('Username dan Password Salah!');document.location='". $base ."login'</script>";
	}

}
?>