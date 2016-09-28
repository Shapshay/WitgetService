<?php
	# SETTINGS #############################################################################
	$moduleName = "home";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['edt_art'])){
		$sql = "UPDATE articles SET 
					content = '".$_POST['about']."'
				WHERE id = ".$_POST['art_id'];
		db_query($sql);
		header("Location: system.php?menu=".$_GET['menu']);
		exit;
	}
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	$sql = "SELECT id, content FROM articles WHERE page_id = ".$_GET['menu']." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl->assign("ART_ID", $row['id']);
	$tpl->assign("EDT_ABOUT", $row['content']);
	
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
?>