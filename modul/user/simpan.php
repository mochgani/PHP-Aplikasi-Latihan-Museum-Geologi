<?php 
/*PENGATURAN GAMBAR NEK FOLDER*/
 $folder = "upload/foto/"; 
 $folder = $folder . basename( $_FILES['gmb']['name']); 
 
 $pwd_user      = $passadd . md5($_POST['password']); 
 $gambar        =($_FILES['gmb']['name']); 
 //$keterangan    =$_POST['keterangan'];

$sql_cek = mysql_query("SELECT * FROM user WHERE username='$_POST[username]' OR email='$_POST[email]'");

$hasil_cek = mysql_num_rows($sql_cek); 
 
if($hasil_cek > 0){

echo"<script language=javascript>alert('Maaf username atau email sudah tersedia!');document.location='". $base ."index/user/view'</script>"; 

} else {

 mysql_query("INSERT INTO user VALUES (null, '$_POST[akses]', '$_POST[username]', ' $pwd_user', '$_POST[firstname]', '$_POST[lastname]', '$_POST[email]', ' $folder', '$_SERVER[REMOTE_ADDR]', 0, now())") ; 
 
 if(move_uploaded_file($_FILES['gmb']['tmp_name'], $folder)){ 
 	echo"<script language=javascript>alert('Data User Berhasil di Tambahkan');document.location='". $base ."index/user/view'</script>"; 
 } else { 
 	//Gives and error if its not 
 	echo"<script language=javascript>alert('Data User Gagal di Tambahkan');document.location='". $base ."index/user/view'</script>";
 } 

}

 ?>