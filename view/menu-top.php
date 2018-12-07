<div class="navbar main">
		
			<!-- Menu Toggle Button -->
			<button type="button" class="btn btn-navbar pull-left visible-phone">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!-- // Menu Toggle Button END -->
			
						<!-- Not Blank page -->
			
						<!-- Full Top Style -->
			<ul class="topnav pull-left">
				<li class="<?php if(empty($modul)) echo 'active'; ?>"><a href="<?php echo $base; ?>index" class="glyphicons dashboard"><i></i> Dashboard</a></li>
				
				<li class="dropdown dd-1 <?php if(($modul == 'koleksi')||($modul == 'kategori')||($modul == 'pengunjung')||($modul == 'ruangan')||($modul == 'user')) echo 'active'; ?>">
					<a href="" data-toggle="dropdown" class="glyphicons more_items"><i></i>Data Master <span class="caret"></span></a>
					<ul class="dropdown-menu pull-left">
						<li><a href="<?php echo $base; ?>index/koleksi/view" class="glyphicons sheriffs_star"><i></i> Koleksi</a></li>
						<li><a href="<?php echo $base; ?>index/kategori/view" class="glyphicons notes"><i></i> Kategori</a></li>
						<li><a href="<?php echo $base; ?>index/pengunjung/view" class="glyphicons user"><i></i> Pengunjung</a></li>
						<li><a href="<?php echo $base; ?>index/ruangan/view" class="glyphicons sheriffs_star"><i></i> Ruangan</a></li>
						<li><a href="<?php echo $base; ?>index/user/view" class="glyphicons user"><i></i> User Management</a></li>
					</ul>
				</li>

				<li class="dropdown dd-1 <?php if(($modul == 'report')||($modul == 'report')) echo 'active'; ?>">
					<a href="" data-toggle="dropdown" class="glyphicons charts"><i></i>Trafik <span class="caret"></span></a>
					<ul class="dropdown-menu pull-left">
						<li><a href="<?php echo $base; ?>index/report/kunjungankoleksi" class="glyphicons stats"><i></i> Trafik Pengunjung</a></li>
						<li><a href="<?php echo $base; ?>index/report/kunjungankoleksi" class="glyphicons stats"><i></i> Trafik Kunjungan Koleksi</a></li>
					</ul>
				</li>							

				<li class="<?php if($modul == 'setting') echo 'active'; ?>"><a href="<?php echo $base; ?>index/setting/view" class="glyphicons notes"><i></i> Setting</a></li>
			</ul>
			<!-- // Full Top Style END -->
						
			<!-- // Not Blank Page END -->
						
						
						<!-- Top Menu Right -->
			<ul class="topnav pull-right hidden-phone">
				
				<!-- Profile / Logout menu -->
				<li class="account dropdown dd-1">
										<a data-toggle="dropdown" href="" class="glyphicons logout lock"><span class="hidden-tablet hidden-phone hidden-desktop-1"><?php echo $_SESSION['user']; ?></span><i></i></a>
					<ul class="dropdown-menu pull-right">
						<li class="profile">
							<span>
								<span class="heading">Profile</span>
								<a href="my_account_advanced.html?lang=en&amp;layout_type=fluid&amp;menu_position=menu-left&amp;style=style-default-menus-dark&amp;sidebar_type=collapsible" class="img thumb">
									<img src="<?php echo $base . trim($_SESSION['foto']); ?>" width="50" alt="Avatar" />
								</a>
								<span class="details">
									<a><?php echo $_SESSION['name']; ?></a>
									<small style="font-size:9px;"><?php echo $_SESSION['email']; ?></small>
								</span>
								<span class="clearfix"></span>
							</span>
						</li>
						<li>
							<span>
								<form method="post" action="<?php echo $base; ?>logout">
								<button class="btn btn-default btn-mini pull-right" type="submit">Sign Out</button>
								</form>
							</span>
						</li>
					</ul>
									</li>
				<!-- // Profile / Logout menu END -->
				
			</ul>
			<!-- // Top Menu Right END -->
			
			
						<div class="clearfix"></div>
			
		</div>