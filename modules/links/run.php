<?php
	# SETTINGS #############################################################################
	$moduleName = "links";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "link_row" => $prefix . "link_row.tpl",
	));
	# MAIN #################################################################################
	
	$sql = "SELECT * FROM links ORDER BY date DESC";
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		$i = 1;
		while ($row = db_fetch_array($result)) {
			$tpl->assign("LINK_TITLE", $row['title']);
			$tpl->assign("LINK_URL", $row['url']);
			
			$tpl->parse("LINS_ROWS", ".".$moduleName."link_row");
			$i++;
		}
	}
	else{
		$tpl->assign("LINS_ROWS", '');
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>