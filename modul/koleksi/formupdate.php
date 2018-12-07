<?php

$user_id = $_GET['hal'];

$sql = mysql_query("SELECT * FROM koleksi WHERE idkoleksi=$user_id");
$v = mysql_fetch_array($sql);

?>

<h1>Edit Koleksi</h1>
<div class="innerLR">

	<!-- Form -->
	<form class="form-horizontal margin-none" id="validateSubmitForm" enctype="multipart/form-data" method="post" autocomplete="off" action="<?php echo $base; ?>index/koleksi/update">
		
		<input type="hidden" name="idkoleksi" value="<?php echo $v['idkoleksi']; ?>">
		<input type="hidden" name="gambar" value="<?php echo trim($v['gambar']); ?>">

		<!-- Widget -->
		<div class="widget widget-heading-simple widget-body-gray">
			
			<div class="widget-body">
			
				<!-- Row -->
				<div class="row-fluid">
				
					<!-- Column -->
					<div class="span6">
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="firstname">Kategori</label>
							<div class="controls">
								<select name="kategori">
									<?php
									$sql_kat = mysql_query("SELECT * FROM kategori WHERE idsub=3 AND idkategori='$v[idkategori]'");
									while($v_kat = mysql_fetch_array($sql_kat)){
										echo "<option value='$v_kat[idkategori]'>$v_kat[namakategori]</option>";
									}
									?>

									<?php
									$sql_kat = mysql_query("SELECT * FROM kategori WHERE idsub=3 AND idkategori!='$v[idkategori]'");
									while($v_kat = mysql_fetch_array($sql_kat)){
										echo "<option value='$v_kat[idkategori]'>$v_kat[namakategori]</option>";
									}
									?>
								</select>
							</div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="firstname">Ruangan</label>
							<div class="controls">
								<select name="ruangan">
									<?php
									$sql_rg = mysql_query("SELECT * FROM ruangan WHERE idruangan='$v[idruangan]'");
									while($v_rg = mysql_fetch_array($sql_rg)){
										echo "<option value='$v_rg[idruangan]'>$v_rg[namaruangan]</option>";
									}
									?>

									<?php
									$sql_rg = mysql_query("SELECT * FROM ruangan WHERE idruangan!='$v[idruangan]'");
									while($v_rg = mysql_fetch_array($sql_rg)){
										echo "<option value='$v_rg[idruangan]'>$v_rg[namaruangan]</option>";
									}
									?>
								</select>
							</div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="lastname">Nama Koleksi</label>
							<div class="controls"><input class="span12" id="lastname" name="namakoleksi" type="text" value="<?php echo $v['namakoleksi']; ?>" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Lokasi Temu</label>
							<div class="controls"><input class="span12" id="username" name="lokasitemu" type="text" value="<?php echo $v['lokasitemu']; ?>" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Tanggal Temu</label>
							<div class="controls"><input class="span12" id="username" name="tgltemu" type="text" value="<?php echo $v['tgltemu']; ?>" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Umur</label>
							<div class="controls"><input class="span12" id="username" name="umur" type="text" value="<?php echo $v['umur']; ?>" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Penemu</label>
							<div class="controls"><input class="span12" id="username" name="penemu" type="text" value="<?php echo $v['penemu']; ?>" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Ukuran</label>
							<div class="controls"><input class="span12" id="username" name="ukuran" type="text" value="<?php echo $v['ukuran']; ?>" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Deskripsi</label>
							<div class="controls"><textarea name="deskripsi"><?php echo $v['deskripsi']; ?></textarea></div>
						</div>
						<!-- // Group END -->
						
					</div>
					<!-- // Column END -->
					
				</div>
				<!-- // Row END -->
				
				<hr class="separator" />
				
				<!-- Row -->
				<div class="row-fluid uniformjs">
					
					<!-- Column -->
					<h4 style="margin-bottom: 10px;">Gambar</h4>
					<input type="file" name="gambar2" class="margin-none" />
					<img src="<?php echo $base . trim($v['gambar']); ?>" width="300" >
					
						
					<!-- // Column END -->
					
				</div>
				<!-- // Row END -->
			
				<hr class="separator" />
				
				<!-- Form actions -->
				<div class="form-actions">
					<input type="submit" class="btn btn-icon btn-primary" value="Save">
					<input type="reset" class="btn btn-icon btn-default" value="Cancel">
				</div>
				<!-- // Form actions END -->
				
			</div>
		</div>
		<!-- // Widget END -->
		
	</form>
	<!-- // Form END -->
	
</div>

<!-- jQuery Validate Plugin -->
<script src="<?php echo $base; ?>common/theme/scripts/plugins/forms/jquery-validation/dist/jquery.validate.min.js"></script>

<!-- Form Validator Page Demo Script -->
<script src="<?php echo $base; ?>common/theme/scripts/demo/form_validator.js"></script>	