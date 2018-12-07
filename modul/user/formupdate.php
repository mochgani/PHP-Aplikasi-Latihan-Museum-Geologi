<?php

$user_id = $_GET['hal'];

$sql = mysql_query("SELECT * FROM user WHERE user_id=$user_id");
$v = mysql_fetch_array($sql);

?>

<h1>Edit User</h1>
<div class="innerLR">

	<!-- Form -->
	<form class="form-horizontal margin-none" id="validateSubmitForm" enctype="multipart/form-data" method="post" autocomplete="off" action="<?php echo $base; ?>index/user/update">
		
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
							<label class="control-label" for="firstname">First name</label>
							<div class="controls"><input class="span12" id="firstname" name="firstname" type="text" value="<?php echo $v['firstname']; ?>" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="lastname">Last name</label>
							<div class="controls"><input class="span12" id="lastname" name="lastname" type="text" value="<?php echo $v['lastname']; ?>" /></div>
						</div>
						<!-- // Group END -->
						
						<!-- Group -->
						<div class="control-group">
							<label class="control-label" for="username">Username</label>
							<div class="controls"><input class="span12" id="username" name="username" type="text" value="<?php echo $v['username']; ?>" /></div>
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
							<div class="controls"><input class="span12" id="email" name="email" type="email" value="<?php echo $v['email']; ?>" /></div>
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
							<input type="radio" class="radio" id="Administrator" name="akses" value="1" <?php if($v['user_group_id']==1){ echo "checked"; } ?> />
							Administrator
						</label>
						<label>
							<input type="radio" class="radio" id="User" name="akses" value="2" <?php if($v['user_group_id']==2){ echo "checked"; } ?> />
							User
						</label>
					</div>
					<!-- // Column END -->
					
					<!-- Column -->
					<h4 style="margin-bottom: 10px;">Foto</h4>
					<input type="file" name="gmb" class="margin-none" />
					<img src="<?php echo $base . trim($v['foto']); ?>" width="100" >
					
						
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