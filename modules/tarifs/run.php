<?php
	# SETTINGS #############################################################################
	$moduleName = "tarifs";
	$prefix = "./modules/".$moduleName."/";
	
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "ch_row" => $prefix . "ch_row.tpl",
	));
	# MAIN #################################################################################
	//echo "w";
	$sql = "SELECT * FROM tarifs";
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		while ($row = db_fetch_array($result)) { 
			$tpl->assign("TARIF_TITLE", $row['title']);
			$tpl->assign("TARIF_ID", $row['id']);
			$tpl->assign("TARIF_W", $row['w_count']);
			$tpl->assign("TARIF_S", $row['s_count']);
			$tpl->assign("TARIF_COST", $row['cost']);
			if($row['tech']==0){
				$tpl->assign("TARIF_TECH", 'НЕТ');
			}
			else{
				$tpl->assign("TARIF_TECH", 'ЕСТЬ');
			}
			if($row['copyright']==0){
				$tpl->assign("TARIF_COPY", 'НЕТ');
			}
			else{
				$tpl->assign("TARIF_COPY", 'ЕСТЬ');
			}
			
			
			$tpl->parse("CH_ROWS", "." .$moduleName. "ch_row");
		}
	}
	else{
		$tpl->assign("CH_ROWS", '');
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>