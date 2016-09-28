<?php
	# SETTINGS #############################################################################
	$moduleName = "ch_list";
	$prefix = "./modules/".$moduleName."/";
	
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "ch_row" => $prefix . "ch_row.tpl",
	));
	# MAIN #################################################################################
	
	$sql = "SELECT * FROM pages WHERE parent_id = ".PAGE_ID." AND view = 1 ORDER BY sortfield ASC";
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		while ($row = db_fetch_array($result)) { 
			$url = '/'.getItemCHPU($row['parent_id'], 'pages').'/'.getItemCHPU($row['id'], 'pages').'/';
			$tpl->assign("CH_TITLE", $row['title']);
			$tpl->assign("CH_URL", $url);
			$tpl->assign("CH_ICON", $row['icon2']);
			
			
			$tpl->parse("CH_ROWS", "." .$moduleName. "ch_row");
		}
	}
	else{
		$tpl->assign("CH_ROWS", '');
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>