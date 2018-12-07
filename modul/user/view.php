<h1>User</h1>

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
		
		<div class="row-fluid" style="margin-bottom:15px">
			<div class="span5">
				<div class="DTTT btn-group">
					<a class="btn DTTT_button_print" title="Add User" href="<?php echo $base; ?>index/user/forminput">
						<span>Add User</span>
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
						<th>Name</th>
						<th>Username</th>
						<th>Hak Akses</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<!-- // Table heading END -->
				
				<!-- Table body -->
				<tbody>
					
					<?php

					include "library/var-view.php";

					while($v = mysql_fetch_array($sql)){

						if($v['user_group_id'] == 1)
							$user_group_id = "Administrator";
						else if($v['user_group_id'] == 4)
							$user_group_id = "Manager";
						else if($v['user_group_id'] == 3)
							$user_group_id = "Petugas Reservasi dan Informasi";
						else
							$user_group_id = "Petugas Tiket";

						if($v['status'] == 1)
							$status = "Aktif";
						else
							$status = "Tidak Aktif";
					?>

						<!-- Table row -->
						<tr class="gradeX">
							<td><?php echo $no; ?></td>
							<td><?php echo $v['firstname'] . " " . $v['lastname']; ?></td>
							<td><?php echo $v['username']; ?></td>
							<td><?php echo $user_group_id; ?></td>
							<td><?php echo $status; ?></td>
							<td><a href="<?php echo $base; ?>index/user/formupdate/<?php echo $v['user_id']; ?>">Edit</a>

							<?php if($v['user_id'] != 1){ ?>
							| <?php echo "<a style='cursor:pointer' onClick=\"delete_". $v['user_id'] ."()\">Delete</a>"; ?>
							<?php
							}

							if($v['user_id'] != 1){
								if($v['status'] == 1)
									echo "| <a style='cursor:pointer' onClick=\"nonaktif_". $v['user_id'] ."()\">Non Aktifkan</a>";
								else
									echo "| <a style='cursor:pointer' onClick=\"aktif_". $v['user_id'] ."()\">Aktifkan</a>";
							}
							?>
							</td>
						</tr>
						<!-- // Table row END -->

						<script>
						function aktif_<?php echo $v['user_id']; ?>(){
							var r=confirm("Apakah anda yakin akan mengaktifkan <?php echo $v['username']; ?> ?");
							if(r==true){
								document.location="<?php echo $base; ?>index/user/aktif/<?php echo $v['user_id']; ?>";
							}
						}
						function nonaktif_<?php echo $v['user_id']; ?>(){
							var r1=confirm("Apakah anda yakin akan menonaktifkan <?php echo $v['username']; ?> ?");
							if(r1==true){
								document.location="<?php echo $base; ?>index/user/nonaktif/<?php echo $v['user_id']; ?>";
							}
						}
						function delete_<?php echo $v['user_id']; ?>(){
							var r1=confirm("Apakah anda yakin akan menghapus <?php echo $v['username']; ?> ?");
							if(r1==true){
								document.location="<?php echo $base; ?>index/user/delete/<?php echo $v['user_id']; ?>";
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