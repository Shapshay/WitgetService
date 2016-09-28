<?php
	# SETTINGS #############################################################################
	$moduleName = "contacts";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
		));
	# MAIN #################################################################################
	
	$sql = "SELECT * FROM contacts WHERE page_id = ".$_GET['menu']." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl->assign("COMPANY", $row['company']);
	$tpl->assign("CONTACT", $row['contact']);
	$tpl->assign("ADRES", $row['adres']);
	$tpl->assign("PHONE", $row['phone']);
	$tpl->assign("EMAIL", $row['email']);
	$tpl->assign("SKYPE", $row['skype']);
	$tpl->assign("MAP", $row['map']);
	
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>