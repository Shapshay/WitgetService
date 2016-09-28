<?php
	# SETTINGS #############################################################################
	$moduleName = "strah_otzyv";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "art_row" => $prefix . "art_row.tpl",
	));
	# SETTINGS ##############################################################################

	$_anonsCount = 4;
	# MAIN #################################################################################
	
	// ������ ���������
	
	$_pages->numRows = db_table_count('strah_otzyv', "");
	$_pages->rowsPerPage = $_anonsCount;
	
	$sql = "SELECT * FROM strah_otzyv ORDER BY date DESC LIMIT ".$_pages->getLimit();
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		$i = 1;
		while ($row = db_fetch_array($result)) {
			$tpl->assign("O_YEAR", $row['year']);
			$tpl->assign("O_ICON", $row['photo']);
			$tpl->assign("O_NAME", $row['name']);
			$tpl->assign("O_TEXT", $row['otzyv']);
			
			
			$tpl->parse("ART_ROWS", ".".$moduleName."art_row");
			$i++;
		}
		
		// Формируем разбивку по страницам
		if ($_pages->getPagesCount() > 1) {
			$tpl->assign("O_PAGES", '');
		} 
		else {
			$tpl->assign("O_PAGES", ' style="display:none;"');
		}
		
	}
	else{
		$tpl->assign("ART_ROWS", '');
		$tpl->assign("O_PAGES", ' style="display:none;"');
	}
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>