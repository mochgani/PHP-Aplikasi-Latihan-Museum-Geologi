<h1>Dashboard</h1>

<!-- Stats Widgets -->
<div class="row-fluid row-merge border-top">
	<?php
	$sql_user = mysql_query("SELECT count(user_id) as jml_user FROM user");
	$jml_user = mysql_fetch_array($sql_user);

	$sql_koleksi = mysql_query("SELECT count(idkoleksi) as jml_koleksi FROM koleksi");
	$jml_koleksi = mysql_fetch_array($sql_koleksi);

	$sql_pengunjung = mysql_query("SELECT count(no_tiket) as jml_pengunjung FROM pengunjung");
	$jml_pengunjung = mysql_fetch_array($sql_pengunjung);
	?>
	<div class="span3">
		<div class="innerAll padding-bottom-none-phone">
			<a href="<?php echo $base; ?>index/user/view" class="widget-stats widget-stats-gray widget-stats-4">
				<span class="txt">User</span>
				<span class="count"><?php echo $jml_user['jml_user']; ?></span>
				<span class="glyphicons user"><i></i></span>
				<div class="clearfix"></div>
				<i class="icon-play-circle"></i>
			</a>
		</div>
	</div>
	<div class="span3">
		<div class="innerAll padding-bottom-none-phone">
			<a href="<?php echo $base; ?>index/koleksi/view" class="widget-stats widget-stats-primary widget-stats-4">
				<span class="txt">Koleksi</span>
				<span class="count"><?php echo $jml_koleksi['jml_koleksi']; ?></span>
				<span class="glyphicons sheriffs_star"><i></i></span>
				<div class="clearfix"></div>
				<i class="icon-play-circle"></i>
			</a>
		</div>
	</div>
	<div class="span3">
		<div class="innerAll padding-bottom-none-phone">
			<a href="<?php echo $base; ?>index/user/view" class="widget-stats widget-stats-gray widget-stats-4">
				<span class="txt">Pengunjung</span>
				<span class="count"><?php echo $jml_pengunjung['jml_pengunjung']; ?></span>
				<span class="glyphicons user"><i></i></span>
				<div class="clearfix"></div>
				<i class="icon-play-circle"></i>
			</a>
		</div>
	</div>
</div>
<!-- // Stats Widgets END -->

<div class="heading-buttons">
	<h2 class="heading pull-left"><i class="icon-bar-chart icon-fixed-width text-primary"></i> Trafik Pengunjung</h2>
	<div class="buttons">
		<a href="google_analytics.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default-menus-dark&amp;sidebar_type=collapsible" class="btn btn-primary">Google Analytics API</a>
	</div>
	<div class="clearfix"></div>
</div>

<div class="innerLR innerT">

	<!-- Website Traffic Chart -->
	<div class="widget widget-body-gray">
		<div class="widget-body">
			<div id="chart1" style="height: 300px; position: relative;" class="jqplot-target"></div>
			<script type="text/javascript">
			$(document).ready(function(){
			
			<?php
			$sql_cek_ticks1 = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC");
			$itung_cek1 = mysql_num_rows($sql_cek_ticks1);
			$kurang_cek1= $itung_cek1-7;
			$sql_ticks1 = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC LIMIT $kurang_cek1,7");
			?>

			var s1 = [
			<?php
			$no1=1;
			while($vt1 = mysql_fetch_array($sql_ticks1)){
			$sql1 = mysql_query("SELECT no_tiket FROM `pengunjung` where date_format(tgl_kunjungan,'%d-%m-%Y')='$vt1[tgl]' AND idkategori=4");
			$itung1 = mysql_num_rows($sql1);
			if($no1!=1) echo ",";
			echo "$itung1";
			$no1++;
			}
			?>
			];


			<?php
			$sql_cek_ticks2 = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC");
			$itung_cek2 = mysql_num_rows($sql_cek_ticks2);
			$kurang_cek2= $itung_cek2-7;
			$sql_ticks2 = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC LIMIT $kurang_cek2,7");
			?>

			var s2 = [
			<?php
			$no2=1;
			while($vt2 = mysql_fetch_array($sql_ticks2)){
			$sql2 = mysql_query("SELECT no_tiket FROM `pengunjung` where date_format(tgl_kunjungan,'%d-%m-%Y')='$vt2[tgl]' AND idkategori=5");
			$itung2 = mysql_num_rows($sql2);
			if($no2!=1) echo ",";
			echo "$itung2";
			$no2++;
			}
			?>
			];

			<?php
			$sql_cek_ticks3 = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC");
			$itung_cek3 = mysql_num_rows($sql_cek_ticks3);
			$kurang_cek3= $itung_cek3-7;
			$sql_ticks3 = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC LIMIT $kurang_cek3,7");
			?>

			var s3 = [
			<?php
			$no3=1;
			while($vt3 = mysql_fetch_array($sql_ticks3)){
			$sql3 = mysql_query("SELECT no_tiket FROM `pengunjung` where date_format(tgl_kunjungan,'%d-%m-%Y')='$vt3[tgl]' AND idkategori=6");
			$itung3 = mysql_num_rows($sql3);
			if($no3!=1) echo ",";
			echo "$itung3";
			$no3++;
			}
			?>
			]; 

			<?php
			$sql_cek_ticks = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC");
			$itung_cek = mysql_num_rows($sql_cek_ticks);
			$kurang_cek= $itung_cek-7;
			$sql_ticks = mysql_query("SELECT date_format(tgl_kunjungan,'%d-%m-%Y') tgl FROM `pengunjung` GROUP BY date(tgl_kunjungan) ORDER BY tgl_kunjungan ASC LIMIT $kurang_cek,7");
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
			      title: 'Trafik Pengunjung',
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
		</div>
	</div>

	<!-- // Website Traffic Chart END -->
	
	<!-- Charts Helper Demo Script
	<script src="common/theme/scripts/demo/charts.helper.js?1374506511"></script> -->

</div>