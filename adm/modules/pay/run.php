<?php
	# SETTINGS #############################################################################
	$moduleName = "pay";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
	));
	# MAIN #################################################################################
	
	// ������ ������
	$tpl->parse("META_LINK", ".".$moduleName."grid");
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName);
		
?>