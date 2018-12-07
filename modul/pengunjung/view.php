<h1>Pengunjung</h1>

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
		
		<div class="row-fluid" style="margin-bottom:15px">
			<div class="span5">
				<div class="control-group">
					<form class="margin-none" id="validateSubmitForm" method="post" autocomplete="off" action="<?php echo $base; ?>index/pengunjung/cari">
					<div class="controls">
						<input class="span12" id="cari" name="cari" type="text" placeholder="Cari Pengunjung" />
					</div>
					</form>
				</div>
			</div>
		</div>

			<!-- Table -->
			<table class="dynamicTable tableTools table table-striped table-bordered table-condensed table-white">
			
				<!-- Table heading -->
				<thead>
					<tr>
						<th width="15">No</th>
						<th>No Tiket</th>
						<th>Tanggal Kunjungan</th>
						<th>Nama</th>
						<th>Asal</th>
						<th>Kategori</th>
					</tr>
				</thead>
				<!-- // Table heading END -->
				
				<!-- Table body -->
				<tbody>
					
					<?php

					if(isset($_GET['query'])){
						$idlog = $_GET['query'];
						$vlog = mysql_fetch_array(mysql_query("select * from log_query WHERE idlogquery=$idlog"));
					} else
						$idlog = 0;


					if(isset($_GET['hal']))
						$hal = $_GET['hal'];
					else
						$hal = 1;

					if($idlog==0)
						$sql_all = mysql_query("select * from pengunjung p");
					else
						$sql_all = mysql_query("select * from pengunjung p WHERE $vlog[isilogquery]");

					$jml_all = mysql_num_rows($sql_all);
					$jml_pagnt = ceil($jml_all / $limit);
					$no_awal = (($hal-1)*$limit)+1;

					if(empty($hal)){
						$jml_hal = 0;
					} else {
						$jml_hal = (($hal-1)*$limit);
					}

					if($idlog==0) $sql = mysql_query("select * from pengunjung p ORDER BY p.tgl_kunjungan DESC LIMIT $jml_hal , $limit");
					else $sql = mysql_query("select * from pengunjung p WHERE $vlog[isilogquery] ORDER BY p.tgl_kunjungan DESC LIMIT $jml_hal , $limit");

					$no = 1+$jml_hal;

					while($v = mysql_fetch_array($sql)){
						if($v['idkategori'] == 4)
							$Kategori = "Asing";
						else if($v['idkategori'] == 5)
							$Kategori = "Umum";
						else
							$Kategori = "Pelajar";
					?>

						<!-- Table row -->
						<tr class="gradeX">
							<td><?php echo $no; ?></td>
							<td><?php echo $v['no_tiket']; ?></td>
							<td><?php echo date('d-m-Y', strtotime($v['tgl_kunjungan'])); ?></td>
							<td><?php echo $v['nama']; ?></td>
							<td><?php echo $v['asal']; ?></td>
							<td><?php echo $Kategori; ?></td>
						</tr>
						<!-- // Table row END -->

					<?php
					$no++;
					}
					?>
					
				</tbody>
				<!-- // Table body END -->
				
			</table>
			<!-- // Table END -->
			
			<?php include "library/pagination.php"; ?>

		</div>
	</div>
</div>