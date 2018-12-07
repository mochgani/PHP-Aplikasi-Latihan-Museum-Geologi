<?php 
 include "../../config.php";

 $sql = mysql_query("INSERT INTO pengunjung VALUES ('$_POST[notiket]', now(), '$_POST[kategori]', '$_POST[nama]', '$_POST[asal]', '')") ; 
 
 if($sql){ 
 	echo"<script language=javascript>alert('Data kunjungan Berhasil di Tambahkan');document.location='kunjungan'</script>"; 
 } else { 
 	//Gives and error if its not 
 	echo"<script language=javascript>alert('Data kunjungan Gagal di Tambahkan');document.location='kunjungan'</script>";
 } 

 ?>