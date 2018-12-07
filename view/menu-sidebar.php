<div id="menu" class="hidden-print">
		
			<!-- Brand -->
			<a class="appbrand"><span class="text-primary"><img src="<?php echo $base; ?>images/icon-red.png" width="40"></span> <span>Museum Geologi</span></a>
		
			<!-- Scrollable menu wrapper with Maximum height -->
			<div class="slim-scroll" data-scroll-height="800px">
			
				<!-- Menu Toggle Button -->
				<button type="button" class="btn btn-navbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<!-- // Menu Toggle Button END -->
				
				<!-- Sidebar Profile -->
				<span class="profile center">
					<a><img src="<?php echo $base . trim($_SESSION['foto']); ?>" alt="Avatar" /></a>
				</span>
				<!-- // Sidebar Profile END -->
				
				<!-- Menu -->
				<ul>
				
				<li class="<?php if(empty($modul)) echo 'active'; ?>"><a href="<?php echo $base; ?>index" class="glyphicons dashboard"><i></i> Dashboard</a></li>
				<li class="<?php if($modul == 'koleksi') echo 'active'; ?>"><a href="<?php echo $base; ?>index/koleksi/view" class="glyphicons sheriffs_star"><i></i> Koleksi</a></li>
				<li class="<?php if($modul == 'kategori') echo 'active'; ?>"><a href="<?php echo $base; ?>index/kategori/view" class="glyphicons notes"><i></i> Kategori</a></li>
				<li class="<?php if($modul == 'pengunjung') echo 'active'; ?>"><a href="<?php echo $base; ?>index/pengunjung/view" class="glyphicons user"><i></i> Pengunjung</a></li>									
				<li class="<?php if($modul == 'ruangan') echo 'active'; ?>"><a href="<?php echo $base; ?>index/ruangan/view" class="glyphicons sheriffs_star"><i></i> Ruangan</a></li>
				<li class="<?php if($modul == 'user') echo 'active'; ?>"><a href="<?php echo $base; ?>index/user/view" class="glyphicons user"><i></i> User Management</a></li>
				</ul>
				<div class="clearfix"></div>
				<!-- // Menu END -->
				
				<div class="menu-hidden-element alert alert-primary">
					<a class="close" data-dismiss="alert">&times;</a>
					<p>Hello <?php echo $_SESSION['name']; ?></p>
				</div>
			
			</div>
			<!-- // Scrollable Menu wrapper with Maximum Height END -->
			
		</div>