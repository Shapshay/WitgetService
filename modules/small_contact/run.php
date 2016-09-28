<?php
	# SETTINGS #############################################################################
	$moduleName = "small_contact";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
	));
	# MAIN #################################################################################
	$contact_page = getPageID("{CONTACTS}");
	$sql = "SELECT * FROM contacts WHERE page_id = ".$contact_page." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl->assign("SMALL_COMPANY", $row['company']);
	$tpl->assign("SMALL_CONTACT", $row['contact']);
	$tpl->assign("SMALL_ADRES", $row['adres']);
	$tpl->assign("SMALL_PHONE", $row['phone']);
	$tpl->assign("SMALL_EMAIL", $row['email']);
	$tpl->assign("SMALL_SKYPE", $row['skype']);
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>