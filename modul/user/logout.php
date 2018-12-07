<?php
include "../../config.php";

session_start();
session_destroy();
echo "<script language=javascript>alert('Anda Berhasil Logout!');document.location='" . $base . "login'</script>";

?>