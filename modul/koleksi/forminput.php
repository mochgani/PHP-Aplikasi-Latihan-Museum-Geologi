<h1>Add Koleksi</h1>
<div class="innerLR">

	<!-- Form -->
	<form class="form-horizontal margin-none" id="validateSubmitForm" enctype="multipart/form-data" method="post" autocomplete="off" action="<?php echo $base; ?>index/koleksi/simpan">
		
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
									<option value="">Pilih</option>
									<?php
									$sql_kat = mysql_query("SELECT * FROM kategori WHERE idsub=3");
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
									<option value="">Pilih</option>
									<?php
									$sql_rg = mysql_query("SELECT * FROM ruangan");
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
							<div class="controls"><input class="span12" id="lastname" name="namakoleksi" type="text" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Lokasi Temu</label>
							<div class="controls"><input class="span12" id="username" name="lokasitemu" type="text" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Tanggal Temu</label>
							<div class="controls"><input class="span12" id="username" name="tgltemu" type="text" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Umur</label>
							<div class="controls"><input class="span12" id="username" name="umur" type="text" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Penemu</label>
							<div class="controls"><input class="span12" id="username" name="penemu" type="text" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Ukuran</label>
							<div class="controls"><input class="span12" id="username" name="ukuran" type="text" /></div>
						</div>
						<!-- // Group END -->

						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Deskripsi</label>
							<div class="controls"><textarea name="deskripsi"></textarea></div>
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
					<input type="file" name="gambar" class="margin-none" />
					
						
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