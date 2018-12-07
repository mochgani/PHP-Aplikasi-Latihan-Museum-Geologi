			<div class="row-fluid">
				<div class="span6">
					<div class="dataTables_info" id="DataTables_Table_0_info">Showing <?php echo $no_awal; ?> to <?php echo $no-1; ?> of <?php echo $jml_all; ?> entries</div>
				</div>
				<div class="span6">
					<div class="dataTables_paginate paging_bootstrap pagination">
						<ul>

							<?php
							if(($hal == 1)){
							?>
							<li class="prev disabled"><a>← First</a></li>
							<li class="prev disabled"><a>← Previous</a></li>
							<?php } else {
							$hal_prev = $hal - 1;
							?>
							<li class="prev"><a href="<?php echo $base; ?>index/<?php echo $modul; ?>/<?php echo $page; ?>/1">← First</a></li>
							<li class="prev"><a href="<?php echo $base; ?>index/<?php echo $modul; ?>/<?php echo $page; ?>/<?php echo $hal_prev; ?>">← Previous</a></li>
							<?php } ?>

							<?php
							for($i=1;$i<=$jml_pagnt;$i++){
								if(($hal == $i) || ($hal == 1 && $i == 1)){
									$aktif = 'class="active"';
								} else {
									$aktif = "";
								}
							?>
							<li <?php echo $aktif; ?>><a href="<?php echo $base; ?>index/<?php echo $modul; ?>/<?php echo $page; ?>/<?php echo $i; ?>"><?php echo $i; ?></a></li>
							<?php } ?>

							<?php
							if($hal == $jml_pagnt){
							?>
							<li class="next disabled"><a>Next → </a></li>
							<li class="next disabled"><a>Last → </a></li>
							<?php } else {
							$hal_next = $hal + 1;
							?>
							<li class="next"><a href="<?php echo $base; ?>index/<?php echo $modul; ?>/<?php echo $page; ?>/<?php echo $hal_next; ?>">Next → </a></li>
							<li class="next"><a href="<?php echo $base; ?>index/<?php echo $modul; ?>/<?php echo $page; ?>/<?php echo $jml_pagnt; ?>">Last → </a></li>
							<?php } ?>

						</ul>
					</div>
				</div>
			</div>