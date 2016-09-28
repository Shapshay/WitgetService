<?php
	# SETTINGS #############################################################################
	$moduleName = "sort";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
	));
	# MAIN #################################################################################
	$menu_sort = '<ul id="sortable" class="sort_am">';
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	$sql = "SELECT id, title, parent_id FROM pages WHERE parent_id=0 AND group_id=1 ORDER BY sortfield ASC";
	$result = db_query($sql);
	while ($row = db_fetch_array($result)) {
		$menu_sort.= '<li id="note_'.$row['id'].'" class="editable"><span class="note" id="n_'.$row['id'].'">'.$row['title'].'</span></li>';
	}
	$menu_sort.= '</ul>';
	$tpl->assign("SORT_MENU", $menu_sort);
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
?>