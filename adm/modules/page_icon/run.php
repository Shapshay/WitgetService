<?php
	# SETTINGS #############################################################################
	$moduleName = "page_icon";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
	));
	# MAIN #################################################################################
	if(MENU_ID==1){
		$tpl->assign("ADD_URL", 'system.php?menu=10&ch='.PAGE_ID);
		$tpl->assign("EDT_URL", 'system.php?menu=9&ch='.PAGE_ID);
		$tpl->assign("DEL_URL", 'system.php?menu=18&ch='.PAGE_ID);
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		$tpl->assign(strtoupper($moduleName), '');
	}
?>