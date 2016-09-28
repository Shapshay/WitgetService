<?php
	# SETTINGS #############################################################################
	$moduleName = "menu_main";
	# MAIN #################################################################################
		$menu_parent = rootRights($_SESSION['lgn']);
		if($menu_parent!=0){
			$menu_tmp = $menu_parent;
			$tpl->assign("MENU_MAIN_PARENT", getPageParentID($menu_parent));
			$menu_parent = getPageParentID($menu_parent);
			$add_menu_sel = " AND id = ".$menu_tmp;
		}
		else{
			$tpl->assign("MENU_MAIN_PARENT", $menu_parent);
			$add_menu_sel = "";
		}
		
		$result = db_query("SELECT id, parent_id, title FROM pages WHERE parent_id = ".$menu_parent." AND group_id=1".$add_menu_sel." ORDER BY sortfield ASC");
		$count = db_num_rows($result);
		$i = 0;
		$menu_kat = '';
		if ($count > 0) {
			while ($row = db_fetch_array($result)){
				$result2 = db_query("SELECT id, parent_id, title FROM pages WHERE parent_id = ".$row['id']." AND group_id=1 ORDER BY sortfield ASC");
				$url = "system.php?menu=".$row['id'];
				if (db_num_rows($result2) > 0) {
					$menu_kat.= 'd.add('.$row['id'].','.$row['parent_id'].',\''.$row['title'].'\',\''.$url.'\');
					';
					while ($row2 = db_fetch_array($result2)){
						$result3 = db_query("SELECT id, parent_id, title FROM pages WHERE parent_id = ".$row2['id']." AND group_id=1 ORDER BY sortfield ASC");
						$url2 = "system.php?menu=".$row2['id'];
						if (db_num_rows($result3) > 0) {
							$menu_kat.= 'd.add('.$row2['id'].','.$row2['parent_id'].',\''.$row2['title'].'\',\''.$url2.'\');
							';
							while ($row3 = db_fetch_array($result3)){
								$result4 = db_query("SELECT id, parent_id, title FROM pages WHERE parent_id = ".$row3['id']." AND group_id=1 ORDER BY sortfield ASC");
								$url3 = "system.php?menu=".$row3['id'];
								if (db_num_rows($result4) > 0) {
									$menu_kat.= 'd.add('.$row3['id'].','.$row3['parent_id'].',\''.$row3['title'].'\',\''.$url3.'\');
									';
									while ($row4 = db_fetch_array($result4)){
										$result5 = db_query("SELECT id, parent_id, title FROM pages WHERE parent_id = ".$row4['id']." AND group_id=1 ORDER BY sortfield ASC");
										$url4 = "system.php?menu=".$row4['id'];
										if (db_num_rows($result5) > 0) {
											$menu_kat.= 'd.add('.$row4['id'].','.$row4['parent_id'].',\''.$row4['title'].'\',\''.$url4.'\');
											';
											while ($row5 = db_fetch_array($result5)){
												$url5 = "system.php?menu=".$row5['id'];
												$menu_kat.= 'd.add('.$row5['id'].','.$row4['id'].',\''.$row5['title'].'\',\''.$url5.'\');
												';
											}
										}
										else{
											$menu_kat.= 'd.add('.$row4['id'].','.$row4['parent_id'].',\''.$row4['title'].'\',\''.$url4.'\');
											';
										}
									}
								}
								else{
									$menu_kat.= 'd.add('.$row3['id'].','.$row3['parent_id'].',\''.$row3['title'].'\',\''.$url3.'\');
									';
								}
							}
						}
						else{
							$menu_kat.= 'd.add('.$row2['id'].','.$row2['parent_id'].',\''.$row2['title'].'\',\''.$url2.'\');
							';
						}
					}
				}
				else{
					$menu_kat.= 'd.add('.$row['id'].','.$row['parent_id'].',\''.$row['title'].'\',\''.$url.'\');
					';
				}
				
				$i++;
			}
			
			
			$tpl->assign(strtoupper($moduleName), $menu_kat);
		} else {
			$tpl->assign(strtoupper($moduleName), "");
			
		}
?>