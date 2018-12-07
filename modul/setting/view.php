<h1>Setting</h1>

<div class="innerLR">

	<!-- Widget -->
	<div class="widget widget-heading-simple widget-body-gray">
		<div class="widget-body">
		
		<div class="row-fluid" style="margin-bottom:15px">
			<div class="span5">Backup Data 
				<div class="DTTT btn-group">
					<a class="btn DTTT_button_print" title="Add User" href="<?php echo $base; ?>index/setting/export">
						<span>Export</span>
					</a>
				</div>
			</div>
			<form method="post" autocomplete="off" action="<?php echo $base; ?>index/setting/import">
			<div class="span5">Restore Data
				<?php
				$folder="backup";//--> Nama Folder 
				echo "<select name='data_sql'><option value=''>Pilih</option>";
				    $dir=opendir($folder);
				    $no=1; 
				    while($file=readdir($dir)){ 
				    if ($file=="." or $file=="..")continue; 
				    echo "<option value=". $file .">$file</option>"; // menampilkan isi folder 
				    $no++; 
				    } 
				    closedir($dir); 
				echo "</select>";
				?> 
				<input type="submit" class="btn DTTT_button_print" value="Import">
			</div>
			</form>
		</div>

		</div>
	</div>
</div>