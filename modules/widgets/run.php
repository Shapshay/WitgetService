<?php
	# SETTINGS #############################################################################
	$moduleName = "widgets";
	$prefix = "./modules/".$moduleName."/";
	
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "ch_row" => $prefix . "ch_row.tpl",
	));
	# MAIN #################################################################################
	
	$sql = "SELECT 
				widgets.*,
				pages.id AS w_p_id,
				pages.parent_id AS w_parent_id
			FROM widgets 
			LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
			WHERE widgets.view = 1 
			ORDER BY sort ASC";
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		while ($row = db_fetch_array($result)) { 
			$url = '/'.getItemCHPU($row['w_parent_id'], 'pages').'/'.getItemCHPU($row['w_p_id'], 'pages').'/';
			$tpl->assign("WDT_URL", $url);
			$tpl->assign("WDT_PREVIEW", $row['preview']);
			$url_add = $row['id'];
			$tpl->assign("ADT_WDT_URL", $url_add);
			
			$tpl->parse("CH_ROWS", "." .$moduleName. "ch_row");
		}
	}
	else{
		$tpl->assign("CH_ROWS", '');
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>