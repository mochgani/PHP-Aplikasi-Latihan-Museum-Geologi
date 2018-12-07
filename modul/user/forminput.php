<h1>ADD User</h1>
<div class="innerLR">

	<!-- Form -->
	<form class="form-horizontal margin-none" id="validateSubmitForm" enctype="multipart/form-data" method="post" autocomplete="off" action="<?php echo $base; ?>index/user/simpan">

		<!-- Widget -->
		<div class="widget widget-heading-simple widget-body-gray">
			
			<div class="widget-body">
			
				<!-- Row -->
				<div class="row-fluid">
				
					<!-- Column -->
					<div class="span6">
					
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="firstname">First name</label>
							<div class="controls"><input class="span12" id="firstname" name="firstname" type="text" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="lastname">Last name</label>
							<div class="controls"><input class="span12" id="lastname" name="lastname" type="text" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Username</label>
							<div class="controls"><input class="span12" id="username" name="username" type="text" /></div>
						</div>
						<!-- // Group END -->
						
					</div>
					<!-- // Column END -->
					
					<!-- Column -->
					<div class="span6">
					
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="password">Password</label>
							<div class="controls"><input class="span12" id="password" name="password" type="password" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="confirm_password">Confirm password</label>
							<div class="controls"><input class="span12" id="confirm_password" name="confirm_password" type="password" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="email">E-mail</label>
							<div class="controls"><input class="span12" id="email" name="email" type="email" /></div>
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
					<div class="span4">
						<h4 style="margin-bottom: 10px;">Hak Akses</h4>
						<label>
							<input type="radio" class="radio" id="Administrator" name="akses" value="1" checked />
							Administrator
						</label>
						<label>
							<input type="radio" class="radio" id="User" name="akses" value="2" />
							Petugas Tiket
						</label>
						<label>
							<input type="radio" class="radio" id="User" name="akses" value="3" />
							Petugas Reservasi dan Informasi
						</label>
						<label>
							<input type="radio" class="radio" id="User" name="akses" value="4" />
							Manager
						</label>
					</div>
					<!-- // Column END -->
					
					<!-- Column -->
					<h4 style="margin-bottom: 10px;">Foto</h4>
					<input type="file" name="gmb" class="margin-none" />
					
						
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