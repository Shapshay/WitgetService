<?php
	# SETTINGS #############################################################################
	$moduleName = "article";
	$prefix = "./modules/".$moduleName."/";
	# MAIN #################################################################################
	
	$sql = "SELECT content FROM articles WHERE page_id = ".$_GET['menu']." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	
	$tpl->assign(strtoupper($moduleName), $row['content']);
?>