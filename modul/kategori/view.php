<h1>Kategori</h1>

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
		
		<div class="row-fluid" style="margin-bottom:15px">
			<div class="span5">
				<div class="control-group">
					<form class="margin-none" id="validateSubmitForm" method="post" autocomplete="off" action="<?php echo $base; ?>index/kategori/cari">
					<div class="controls">
						<input class="span12" id="cari" name="cari" type="text" placeholder="Cari Kategori" />
					</div>
					</form>
				</div>

				<div class="DTTT btn-group">
					<a class="btn DTTT_button_print" title="Add Kategori" href="<?php echo $base; ?>index/kategori/forminput">
						<span>Add Kategori</span>
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
						<th>ID Kategori</th>
						<th>Nama Kategori</th>
						<th>Sub Kategori</th>
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
						$sql_all = mysql_query("select * from kategori");
					else
						$sql_all = mysql_query("select * from kategori WHERE $vlog[isilogquery]");

					$jml_all = mysql_num_rows($sql_all);
					$jml_pagnt = ceil($jml_all / $limit);
					$no_awal = (($hal-1)*$limit)+1;

					if(empty($hal)){
						$jml_hal = 0;
					} else {
						$jml_hal = (($hal-1)*$limit);
					}

					if($idlog==0) $sql = mysql_query("select * from kategori LIMIT $jml_hal , $limit");
					else $sql = mysql_query("select * from kategori WHERE $vlog[isilogquery] LIMIT $jml_hal , $limit");

					$no = 1+$jml_hal;

					while($v = mysql_fetch_array($sql)){
						if($v['idsub'] == 1)
							$Kategori_sub = "Pengunjung";
						else if($v['idsub'] == 2)
							$Kategori_sub = "User";
						else if($v['idsub'] == 3)
							$Kategori_sub = "Koleksi";
						else if($v['idsub'] == 0)
							$Kategori_sub = "";
					?>

						<!-- Table row -->
						<tr class="gradeX">
							<td><?php echo $no; ?></td>
							<td><?php echo $v['idkategori']; ?></td>
							<td><?php echo $v['namakategori']; ?></td>
							<td><?php echo $Kategori_sub; ?></td>
							<td><a href="<?php echo $base; ?>index/kategori/formupdate/<?php echo $v['idkategori']; ?>">Edit</a>

							<?php if($v['idsub'] != 0){ ?>
							| <?php echo "<a style='cursor:pointer' onClick=\"delete_kategori_". $v['idkategori'] ."()\">Delete</a>"; ?>
							<?php
							}
							?>
							</td>
						</tr>
						<!-- // Table row END -->

						<script>
						function delete_kategori_<?php echo $v['idkategori']; ?>(){
							var r1=confirm("Apakah anda yakin akan menghapus <?php echo $v['namakategori']; ?> ?");
							if(r1==true){
								document.location="<?php echo $base; ?>index/kategori/delete/<?php echo $v['idkategori']; ?>";
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