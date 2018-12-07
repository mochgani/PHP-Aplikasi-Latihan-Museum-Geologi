<h1>Ruangan</h1>

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
		
		<div class="row-fluid" style="margin-bottom:15px">
			<div class="span5">
				<div class="control-group">
					<form class="margin-none" id="validateSubmitForm" method="post" autocomplete="off" action="<?php echo $base; ?>index/ruangan/cari">
					<div class="controls">
						<input class="span12" id="cari" name="cari" type="text" placeholder="Cari Ruangan" />
					</div>
					</form>
				</div>


				<div class="DTTT btn-group">
					<a class="btn DTTT_button_print" title="Add Ruangan" href="<?php echo $base; ?>index/ruangan/forminput">
						<span>Add Ruangan</span>
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
						<th>Nama Ruangan</th>
						<th>Keterangan</th>
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
						$sql_all = mysql_query("select * from ruangan");
					else
						$sql_all = mysql_query("select * from ruangan WHERE $vlog[isilogquery]");

					$jml_all = mysql_num_rows($sql_all);
					$jml_pagnt = ceil($jml_all / $limit);
					$no_awal = (($hal-1)*$limit)+1;

					if(empty($hal)){
						$jml_hal = 0;
					} else {
						$jml_hal = (($hal-1)*$limit);
					}

					if($idlog==0) $sql = mysql_query("select * from ruangan LIMIT $jml_hal , $limit");
					else $sql = mysql_query("select * from ruangan WHERE $vlog[isilogquery] LIMIT $jml_hal , $limit");

					$no = 1+$jml_hal;

					while($v = mysql_fetch_array($sql)){

						
					?>

						<!-- Table row -->
						<tr class="gradeX">
							<td><?php echo $no; ?></td>
							<td><?php echo $v['namaruangan']; ?></td>
							<td><?php echo $v['keterangan']; ?></td>
							<td><a href="<?php echo $base; ?>index/ruangan/formupdate/<?php echo $v['idruangan']; ?>">Edit</a>
							| <?php echo "<a style='cursor:pointer' onClick=\"delete_ruangan_". $v['idruangan'] ."()\">Delete</a>";
							?>
							</td>
						</tr>
						<!-- // Table row END -->

						<script>
						function delete_ruangan_<?php echo $v['idruangan']; ?>(){
							var r1=confirm("Apakah anda yakin akan menghapus <?php echo $v['namaruangan']; ?> ?");
							if(r1==true){
								document.location="<?php echo $base; ?>index/ruangan/delete/<?php echo $v['idruangan']; ?>";
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