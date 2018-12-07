<?php

$user_id = $_GET['hal'];

$sql = mysql_query("SELECT * FROM ruangan WHERE idruangan=$user_id");
$v = mysql_fetch_array($sql);

?>

<h1>Edit Ruangan</h1>
<div class="innerLR">

	<!-- Form -->
	<form class="form-horizontal margin-none" id="validateSubmitForm" enctype="multipart/form-data" method="post" autocomplete="off" action="<?php echo $base; ?>index/ruangan/update">
		
		<input type="hidden" name="id_user" value="<?php echo $v['user_id']; ?>">
		<input type="hidden" name="foto" value="<?php echo trim($v['foto']); ?>">

		<!-- Widget -->
		<div class="widget widget-heading-simple widget-body-gray">
			
			<div class="widget-body">
			
				<!-- Row -->
				<div class="row-fluid">
				
					<!-- Column -->
					<div class="span6">
					
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="firstname">Nama Ruangan</label>
							<div class="controls"><input class="span12" id="firstname" name="nama" type="text" value="<?php echo $v['namaruangan']; ?>" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="lastname">Keterangan</label>
							<div class="controls"><input class="span12" id="lastname" name="ket" type="text" value="<?php echo $v['keterangan']; ?>" /></div>
						</div>
						<!-- // Group END -->
						
						
						
					</div>
					<!-- // Column END -->
					
					
					
				</div>
				<!-- // Row END -->
				
				<hr class="separator" />
				
				<!-- Row -->
				<div class="row-fluid uniformjs">
				
					
					
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