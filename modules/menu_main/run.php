<?php
	# SETTINGS #############################################################################
	$moduleName = "menu_main";
	# MAIN #################################################################################
	$result = db_query("SELECT id, parent_id, title FROM pages WHERE parent_id = 0 AND group_id=1 AND view = 1 ORDER BY sortfield ASC");
	$count = db_num_rows($result);
	$menu_main = '';
	$i = 1;
	if ($count > 0) {
		while ($row = db_fetch_array($result)){
			$m_class = '';
			$url = "index.php?menu=".$row['id'];
			if($i == 1){
				$m_class = 'first';
			}
			if($row['id'] == PAGE_ID){
				$m_class.= ' selected';
			}
			
			$menu_main.= '<td class="'.$m_class.'" ><a href="'.$url.'">'.$row['title'].'</a></td>';
			
			
			$i++;
		}
		$tpl->assign(strtoupper($moduleName), $menu_main);
	} else {
		$tpl->assign(strtoupper($moduleName), "");
	}
?>