<?php 
/*PENGATURAN GAMBAR NEK FOLDER*/
 $folder = "upload/koleksi/"; 
 $folder = $folder . basename( $_FILES['gambar']['name']); 
 
$result = mysql_query("SHOW TABLE STATUS LIKE 'koleksi'");
$row = mysql_fetch_array($result);
$nextId = $row['Auto_increment'];

 $url      = "api-koleksi/". $nextId; 
 $gambar        =($_FILES['gambar']['name']); 
 //$keterangan    =$_POST['keterangan']; 
 
 mysql_query("INSERT INTO koleksi VALUES (null, '$_POST[kategori]', '$_POST[namakoleksi]', ' $_POST[lokasitemu]', '$_POST[tgltemu]', '$_POST[penemu]', '$_POST[umur]', '$_POST[ukuran]', '$_POST[deskripsi]', '$url', '$folder', now(), '$_POST[ruangan]')") ; 
 
 if(move_uploaded_file($_FILES['gambar']['tmp_name'], $folder)){ 
 	echo"<script language=javascript>alert('Data Koleksi Berhasil di Tambahkan');document.location='". $base ."index/koleksi/view'</script>"; 
 } else { 
 	//Gives and error if its not 
 	echo"<script language=javascript>alert('Data Koleksi Gagal di Tambahkan');document.location='". $base ."index/koleksi/view'</script>";
 } 

 ?>