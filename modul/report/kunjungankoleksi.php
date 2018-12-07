<h1>Trafik Kunjungan Koleksi</h1>

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
		
		<div class="row-fluid" style="margin-bottom:15px">
			<div class="span5">
			<form class="margin-none" id="validateSubmitForm" enctype="multipart/form-data" method="post" autocomplete="off" action="<?php echo $base; ?>index/report/filterkunjungankoleksi">

				<div class="well">

					<div class="control-group">
							<h4>Koleksi</h4>
							<div class="controls">
								<select name="koleksi">
									<option value="">Pilih</option>
									<?php
									$sql_kat = mysql_query("SELECT * FROM koleksi");
									while($v_kat = mysql_fetch_array($sql_kat)){
										echo "<option value='$v_kat[idkoleksi]'>$v_kat[namakoleksi]</option>";
									}
									?>
								</select>
							</div>
						</div>

						<h4>Tanggal Awal</h4>
						<div class="input-append date" id="datetimepicker6">
						    <input type="text" name="awal" value="" />
				    		<span class="add-on"><i class="icon-th"></i></span>
						</div>
					
						<h4>Tanggal Akhir</h4>
						<div class="input-append date" id="datetimepicker7">
						    <input type="text" name="akhir" value="" />
				    		<span class="add-on"><i class="icon-th"></i></span>
						</div>
						<br><br>
						<input type="submit" class="btn btn-icon btn-primary" value="Filter">
					</div>
			</form>
				
			</div>
		</div>
		<?php
					if(isset($_GET['query'])){
						$idlog = $_GET['query'];
						$vlog = mysql_fetch_array(mysql_query("select * from log_query WHERE idlogquery=$idlog"));
					} else
						$idlog = 0;

		if($idlog!=0){
		?>
		<div id="chart1" style="height: 300px; position: relative;" class="jqplot-target"></div>
		<script type="text/javascript">
			$(document).ready(function(){
			
			<?php
			$sql_cek_ticks1 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			$itung_cek1 = mysql_num_rows($sql_cek_ticks1);
			$kurang_cek1= $itung_cek1-7;
			$sql_ticks1 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			?>

			var s1 = [
			<?php
			$no1=1;
			while($vt1 = mysql_fetch_array($sql_ticks1)){
			$sql1 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk JOIN `pengunjung` p ON kk.no_tiket=p.no_tiket WHERE date_format(kk.waktulihat,'%d-%m-%Y')='$vt1[tgl]' AND p.idkategori=4");
			$itung1 = mysql_num_rows($sql1);
			if($no1!=1) echo ",";
			echo "$itung1";
			$no1++;
			}
			?>
			];


			<?php
			$sql_cek_ticks2 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			$itung_cek2 = mysql_num_rows($sql_cek_ticks2);
			$kurang_cek2= $itung_cek2-7;
			$sql_ticks2 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			?>

			var s2 = [
			<?php
			$no2=1;
			while($vt2 = mysql_fetch_array($sql_ticks2)){
			$sql2 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk JOIN `pengunjung` p ON kk.no_tiket=p.no_tiket WHERE date_format(kk.waktulihat,'%d-%m-%Y')='$vt2[tgl]' AND p.idkategori=5");
			$itung2 = mysql_num_rows($sql2);
			if($no2!=1) echo ",";
			echo "$itung2";
			$no2++;
			}
			?>
			];

			<?php
			$sql_cek_ticks3 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			$itung_cek3 = mysql_num_rows($sql_cek_ticks3);
			$kurang_cek3= $itung_cek3-7;
			$sql_ticks3 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			?>

			var s3 = [
			<?php
			$no3=1;
			while($vt3 = mysql_fetch_array($sql_ticks3)){
			$sql3 = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk JOIN `pengunjung` p ON kk.no_tiket=p.no_tiket WHERE date_format(kk.waktulihat,'%d-%m-%Y')='$vt3[tgl]' AND p.idkategori=6");
			$itung3 = mysql_num_rows($sql3);
			if($no3!=1) echo ",";
			echo "$itung3";
			$no3++;
			}
			?>
			]; 

			<?php
			$sql_cek_ticks = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			$itung_cek = mysql_num_rows($sql_cek_ticks);
			$kurang_cek= $itung_cek-7;
			$sql_ticks = mysql_query("SELECT date_format(kk.waktulihat,'%d-%m-%Y') tgl FROM `kunjungan_koleksi` kk WHERE $vlog[isilogquery] GROUP BY date(kk.waktulihat) ORDER BY kk.waktulihat ASC");
			?>

			var ticks = [
			<?php
			$no=1;
			while($vt = mysql_fetch_array($sql_ticks)){
			if($no!=1) echo ",";
			echo "'$vt[tgl]'"; 
			$no++;
			}
			?>
			];
			
			  var plot2 = $.jqplot ('chart1', [s1,s2,s3], {
			      // Give the plot a title.
			      title: 'Trafik Kunjungan Koleksi',
			      // You can specify options for all axes on the plot at once with
			      // the axesDefaults object.  Here, we're using a canvas renderer
			      // to draw the axis label which allows rotated text.
			      axesDefaults: {
			        labelRenderer: $.jqplot.CanvasAxisLabelRenderer
			      },
			      // An axes object holds options for all axes.
			      // Allowable axes are xaxis, x2axis, yaxis, y2axis, y3axis, ...
			      // Up to 9 y axes are supported.
			      series:[
					{label:'Asing'},
					{label:'Umum'},
					{label:'Pelajar'}
				  ],
			      legend: {
					show: true,
					placement: 'outsideGrid'
				  },
			      axes: {
			        // options for each axis are specified in seperate option objects.
			        xaxis: {
			          label: "Tanggal",
			          renderer: $.jqplot.CategoryAxisRenderer,
			          ticks: ticks,
			          // Turn off "padding".  This will allow data point to lie on the
			          // edges of the grid.  Default padding is 1.2 and will keep all
			          // points inside the bounds of the grid.
			          pad: 0
			        },
			        yaxis: {
			          label: "Jumlah"
			        }
			      }
			    });
			});
			</script>

		<?php } ?>	

		</div>
	</div>
</div>