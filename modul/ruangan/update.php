<?php 
/*PENGATURAN GAMBAR NEK FOLDER*/
 $folder = "upload/foto/"; 
 $folder = $folder . basename( $_FILES['gmb']['name']); 
 
 $id_user       = $_POST['id_user']; 
 $pwd_user      = $passadd . md5($_POST['password']); 
 $gambar        = ($_FILES['gmb']['name']); 
 $gambar_lama   = $_POST['foto']; 
 //$keterangan    =$_POST['keterangan']; 
 
 if($gambar == ""){
 	$sql = mysql_query("UPDATE user SET user_group_id='$_POST[akses]', username='$_POST[username]', password='$pwd_user', firstname='$_POST[firstname]', lastname='$_POST[lastname]', email='$_POST[email]', ip='$_SERVER[REMOTE_ADDR]', date_added=now() WHERE user_id=$id_user");
 	if($sql){
 		echo"<script language=javascript>alert('Data User Berhasil di Rubah');document.location='". $base ."index/user/view'</script>"; 
 	} else {
 		echo"<script language=javascript>alert('Data User Gagal di Rubah');document.location='". $base ."index/user/view'</script>"; 
 	}
 } else {

 	unlink("$gambar_lama");

	mysql_query("UPDATE user SET user_group_id='$_POST[akses]', username='$_POST[username]', password='$pwd_user', firstname='$_POST[firstname]', lastname='$_POST[lastname]', email='$_POST[email]', foto='$folder', ip='$_SERVER[REMOTE_ADDR]', date_added=now() WHERE user_id=$id_user"); 
	 
	if(move_uploaded_file($_FILES['gmb']['tmp_name'], $folder)){ 
		echo"<script language=javascript>alert('Data User Berhasil di Rubah');document.location='". $base ."index/user/view'</script>"; 
	} else { 
		//Gives and error if its not 
		echo"<script language=javascript>alert('Data User Gagal di Rubah');document.location='". $base ."index/user/view'</script>";
	}
} 

 ?>