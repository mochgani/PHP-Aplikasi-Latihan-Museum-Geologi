<?php 
/*PENGATURAN GAMBAR NEK FOLDER*/
 $folder = "upload/koleksi/"; 
 $folder = $folder . basename( $_FILES['gambar2']['name']); 
 
 $id_user       = $_POST['idkoleksi']; 
 $gambar        = ($_FILES['gambar2']['name']); 
 $gambar_lama   = $_POST['gambar']; 
 //$keterangan    =$_POST['keterangan']; 
 
 if($gambar == ""){
 	$sql = mysql_query("UPDATE koleksi SET idkategori='$_POST[kategori]',idruangan='$_POST[ruangan]', namakoleksi='$_POST[namakoleksi]', lokasitemu='$_POST[lokasitemu]', tgltemu='$_POST[tgltemu]', umur='$_POST[umur]', penemu='$_POST[penemu]', ukuran='$_POST[ukuran]', deskripsi='$_POST[deskripsi]', data_added=now() WHERE idkoleksi=$id_user");
 	if($sql){
 		echo"<script language=javascript>alert('Data koleksi Berhasil di Rubah');document.location='". $base ."index/koleksi/view'</script>"; 
 	} else {
 		echo"<script language=javascript>alert('Data koleksi Gagal di Rubah');document.location='". $base ."index/koleksi/view'</script>"; 
 	}
 } else {

 	unlink("$gambar_lama");

	mysql_query("UPDATE koleksi SET foto='$folder', idkategori='$_POST[kategori]',idruangan='$_POST[ruangan]', namakoleksi='$_POST[namakoleksi]', lokasitemu='$_POST[lokasitemu]', tgltemu='$_POST[tgltemu]', umur='$_POST[umur]', penemu='$_POST[penemu]', ukuran='$_POST[ukuran]', deskripsi='$_POST[deskripsi]', data_added=now() WHERE idkoleksi=$id_user"); 
	 
	if(move_uploaded_file($_FILES['gambar2']['tmp_name'], $folder)){ 
		echo"<script language=javascript>alert('Data koleksi Berhasil di Rubah');document.location='". $base ."index/koleksi/view'</script>"; 
	} else { 
		//Gives and error if its not 
		echo"<script language=javascript>alert('Data koleksi Gagal di Rubah');document.location='". $base ."index/koleksi/view'</script>";
	}
} 

 ?>