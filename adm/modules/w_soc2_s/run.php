<?php
	# SETTINGS #############################################################################
	$moduleName = "w_soc2_s";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			
	));
	# MAIN #################################################################################
	$tpl->parse("META_LINK", ".".$moduleName."html");
			
	$tpl->assign("SS_DATE_NOW", date("d-m-Y H:i"));
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	
?>