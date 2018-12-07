<h1>Koleksi</h1>

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
		
		<div class="row-fluid" style="margin-bottom:15px">
			<div class="span5">
				<div class="control-group">
					<form class="margin-none" id="validateSubmitForm" method="post" autocomplete="off" action="<?php echo $base; ?>index/koleksi/cari">
					<div class="controls">
						<input class="span12" id="cari" name="cari" type="text" placeholder="Cari Koleksi" />
					</div>
					</form>
				</div>

				<div class="DTTT btn-group">
					<a class="btn DTTT_button_print" title="Add Koleksi" href="<?php echo $base; ?>index/koleksi/forminput">
						<span>Add Koleksi</span>
					</a>
				</div>
			</div>
		</div>

			<!-- Table -->
			<table class="dynamicTable tableTools table table-striped table-bordered table-condensed table-white">
			
				<!-- Table heading -->
				<thead>
					<tr>
						<th width="15">No</th>
						<th>Nama Koleksi</th>
						<th>Kategori</th>
						<th>Gambar</th>
						<th>QR Code</th>
						<th>Action</th>
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
						$sql_all = mysql_query("select * from koleksi");
					else
						$sql_all = mysql_query("select * from koleksi WHERE $vlog[isilogquery]");

					$jml_all = mysql_num_rows($sql_all);
					$jml_pagnt = ceil($jml_all / $limit);
					$no_awal = (($hal-1)*$limit)+1;

					if(empty($hal)){
						$jml_hal = 0;
					} else {
						$jml_hal = (($hal-1)*$limit);
					}

					if($idlog==0) $sql = mysql_query("select * from koleksi LIMIT $jml_hal , $limit");
					else $sql = mysql_query("select * from koleksi WHERE $vlog[isilogquery] LIMIT $jml_hal , $limit");

					$no = 1+$jml_hal;

					while($v = mysql_fetch_array($sql)){

						$sql_kat = mysql_query("SELECT * FROM kategori WHERE idkategori=$v[idkategori]");
						$v_kat = mysql_fetch_array($sql_kat);
					?>

						<!-- Table row -->
						<tr class="gradeX">
							<td><?php echo $no; ?></td>
							<td><?php echo $v['namakoleksi']; ?></td>
							<td><?php echo $v_kat['namakategori']; ?></td>
							<td><img src="<?php echo $base . trim($v['gambar']); ?>" width="200"></td>
							<td><img src="<?php echo $base; ?>data/php/qr_img.php?d=<?php echo $base_api . trim($v['url']); ?>&amp;e=M&amp;s=5"></td>
							<td><a href="<?php echo $base; ?>index/koleksi/formupdate/<?php echo $v['idkoleksi']; ?>">Edit</a>
							| <?php echo "<a style='cursor:pointer' onClick=\"delete_koleksi_". $v['idkoleksi'] ."()\">Delete</a>";
							?>
							| <?php echo "<a target='blank' href='". $base ."data/php/qr_img.php?d=" . $base_api . trim($v['url']) . "&e=M&s=13'>Cetak QR-Code</a>";
							?>
							</td>
						</tr>
						<!-- // Table row END -->

						<script>
						function delete_koleksi_<?php echo $v['idkoleksi']; ?>(){
							var r1=confirm("Apakah anda yakin akan menghapus <?php echo $v['namakoleksi']; ?> ?");
							if(r1==true){
								document.location="<?php echo $base; ?>index/koleksi/delete/<?php echo $v['idkoleksi']; ?>";
							}
						}
						</script>

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