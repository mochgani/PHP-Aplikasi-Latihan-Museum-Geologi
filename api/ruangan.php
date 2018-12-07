<?php
include "../config.php";
include "../library.php";

$parsing= $_GET['parsing'];
$parsing2= $_GET['parsing2'];

if($parsing2 == 'Indonesia'){
	$sql3 = mysql_query("SELECT * FROM ruangan");
} else {
	$sql3 = mysql_query("SELECT *
						 FROM ruangan a
						 JOIN ruangan_eng b ON a.idruangan=b.idruangan");
}

$json = '{"ruangan":[ ';

while ($v3 = mysql_fetch_array($sql3)) {
	if($parsing2 == 'Indonesia'){
		$json .= '{ ';
			$json .= '"id":"'.$v3['idruangan'].'",
			"namaruangan":"'.$v3['namaruangan'].'"
			},';
	} else {
		$json .= '{ ';
			$json .= '"id":"'.$v3['idruangan'].'",
			"namaruangan":"'.$v3['namaruangan_eng'].'"
			},';
	}
}

$json = substr($json,0,strlen($json)-1);
$json .= ']}';

echo $json;
?>