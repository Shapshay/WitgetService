<?php
	# SETTINGS #############################################################################
	$moduleName = "wdt_setings";
	$prefix = "./modules/".$moduleName."/";
	
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "ch_row" => $prefix . "ch_row.tpl",
			$moduleName . "no_wdt" => $prefix . "no_wdt.tpl",
	));
	# MAIN #################################################################################
	$sql = "SELECT 
				widgets.*,
				u_w_options.OnOff AS OnOff,
				pages.id AS page_id
			FROM u_w_options
			LEFT OUTER JOIN widgets ON u_w_options.w_id = widgets.id
			LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
			WHERE u_w_options.u_id = ".U_BASE_ID;
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		while ($row = db_fetch_array($result)) { 
			$setings = getPageFirstChildrenID($row['page_id']);
			$url = '/'.$row['folder'].'/'.getItemCHPU($setings, 'pages').'/';
			$tpl->assign("WDT_EDT_URL", $url);
			$tpl->assign("WDT_ID", $row['id']);
			$tpl->assign("WDT_PREVIEW", $row['preview']);
			$url_add = $row['id'];
			$tpl->assign("ON_WDT_URL", $url_add);
			if($row['OnOff']==1){
				$tpl->assign("WDT_ON", '  checked="checked"');
			}
			else{
				$tpl->assign("WDT_ON", '');
			}
			
			$tpl->parse("CH_ROWS", "." .$moduleName. "ch_row");
		}
	}
	else{
		$tpl->parse("CH_ROWS", "." .$moduleName. "no_wdt");
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>