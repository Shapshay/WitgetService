<?php
	# SETTINGS #############################################################################
	$moduleName = "menu_site";
	# MAIN #################################################################################
	$menu_id = getPageID("{MENU_SITE}");
	$result = db_query("SELECT id, title,chpu FROM pages WHERE parent_id = ".$menu_id." AND group_id=1 AND view = 1 ORDER BY sortfield ASC");
	$count = db_num_rows($result);
	$menu_site = '';
	$cur_item = array();
	$i = 1;
	if ($count > 0) {
		while ($row = db_fetch_array($result)){
			//$url = "index.php?menu=".$row['id'];
			$url = "/".$row['chpu'];
			if($i == 1){
				if($row['id']!=PAGE_ID){
					if(PAGE_ID==2155||PAGE_ID==2189){
						$cur_item[$i] = '<li class="mm2"><a href="'.$url.'" class="a_mm1"><div class="d_mm1"><img src="images/mm1.png" hspace="10" align="texttop" />'.$row['title'].'</div></a></li>';
					}
					else{
						$cur_item[$i] = '<li class="mm1"><a href="'.$url.'" class="a_mm1"><div class="d_mm1"><img src="images/mm1.png" hspace="10" align="texttop" />'.$row['title'].'</div></a></li>';
					}
				}
				else{
					$cur_item[$i] = '<li class="mm2"><div class="d_mm2"><img src="images/mm1_a.png" hspace="10" align="texttop" />'.$row['title'].'</div></li>';
				}
			}
			else{
				if($i !=$count){
					if($row['id']==PAGE_ID||($row['id']==2144&& getPageTitle(PAGE_ID)=='Настройки')){
						if($i>2){
							$cur_item[$i-1] = 	str_replace('li class="mm3"','li class="mm1"',$cur_item[$i-1]);
							$cur_item[1] = 	str_replace('li class="mm1"','li class="mm3"',$cur_item[1]);
						}
						$cur_item[$i] = '<li class="mm2"><div class="d_mm2"><img src="images/mm'.$i.'_a.png" hspace="10" align="texttop" />'.$row['title'].'</div></li>';
					}
					else{
						$cur_item[$i] = '<li class="mm3"><a href="'.$url.'" class="a_mm1"><div class="d_mm1"><img src="images/mm'.$i.'.png" hspace="10" align="texttop" />'.$row['title'].'</div></a></li>';
					}
				}
				else{
					if($row['id']==PAGE_ID||($row['id']==2147&& getPageTitle(PAGE_ID)=='Статистика')){
						$cur_item[$i-1] = 	str_replace('li class="mm3"','li class="mm1"',$cur_item[$i-1]);
						$cur_item[1] = 	str_replace('li class="mm1"','li class="mm3"',$cur_item[1]);
						$cur_item[$i] = '<li><div class="d_mm2"><img src="images/mm'.$i.'_a.png" hspace="10" align="texttop" />'.$row['title'].'</div></li>';
					}
					else{
						$cur_item[$i] = '<li><a href="'.$url.'" class="a_mm1"><div class="d_mm1"><img src="images/mm5.png" hspace="10" align="texttop" />'.$row['title'].'</div></a></li>';
					}
				}
			}
			
			$i++;
		}
		foreach($cur_item as $v){
			$menu_site.= $v;
		}
		$tpl->assign(strtoupper($moduleName), $menu_site);
	} else {
		$tpl->assign(strtoupper($moduleName), "");
	}
?>