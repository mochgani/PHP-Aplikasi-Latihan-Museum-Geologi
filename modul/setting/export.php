<?php
	$sql = "SHOW TABLES";
	$retval = mysql_query( $sql);
	if(! $retval )
	{
	  die('Could not retrive tables: ' . mysql_error());
	}else{
		while($row = mysql_fetch_array($retval)){
			$tables[] = $row[0];
		}
	}
	$outputdata = "";
	$lines = "";
	$starttime = microtime(true);
	$headers = "-- MySql Data Dump\n\n";
	$headers .= "-- Database : " . $db . "\n\n";
	$headers .= "-- Dumping started at : ". date("Y-m-d-h-i-s") .  "\n\n";

	for($t=0;$t<count($tables);$t++){
		$sql2 = "SHOW CREATE TABLE $tables[$t]";
		$result2 = mysql_query($sql2);
		while($row2 = mysql_fetch_array($result2)){
			$outputdata .= "\n\n-- Drop Table IF Exists : $tables[$t]\n\n";

			$outputdata .= "DROP TABLE IF EXISTS $tables[$t];";

			$outputdata .= "\n\n-- Dumping structure for table : $tables[$t]\n\n";
			$outputdata .= $row2['Create Table'].";";
		}

		$outputdata .= "\n\n-- Dumping data for table : $tables[$t]\n\n";
		$sql = "SELECT * FROM $tables[$t]";
		$result = mysql_query($sql);
		while($row = mysql_fetch_assoc($result)){
			$nor = count($row);
			$datas = array();
			foreach($row as $r){
				$datas[] = $r;
			}
			$lines .= "INSERT INTO $tables[$t] VALUES (";
			for($i=0;$i<$nor;$i++){
				if($datas[$i]===NULL){
					$lines .= "NULL";
				}else if((string)$datas[$i] == "0"){
					$lines .= "0";
				}else if(filter_var($datas[$i],FILTER_VALIDATE_INT) || filter_var($datas[$i],FILTER_VALIDATE_FLOAT)){
					$lines .= $datas[$i];
				}else{
					$lines .= "'" . str_replace("\n","\\n",$datas[$i]) . "'";
				}
				if($i==$nor-1){
					$lines .= ");\n";
				}else{
					$lines .= ",";
				}
			}
			$lines11 = str_replace("'%","''%",$lines);
			$lines22 = str_replace("%'","%''",$lines11);
			$lines33 = str_replace("-%d'","-%d''",$lines22);

			$outputdata .= $lines33;
			$lines = "";
		}
	}
	$headers .= "-- Dumping finished at : ". date("Y-m-d-h-i-s") .  "\n\n";
	$endtime = microtime(true);
	$diff = $endtime - $starttime;
	$headers .= "-- Dumping data of $db took : ". $diff .  " Sec\n\n";
	$headers .= "-- --------------------------------------------------------";
	$datadump = $headers . $outputdata;

	$datefile = date('d-m-Y');

	$file = fopen("backup/$db-$datefile.sql","w");
	$len = fwrite($file,$datadump);
	fclose($file);

	echo"<script language=javascript>alert('Data Berhasil di Backup di (backup/$db.sql)');document.location='view'</script>";
?>