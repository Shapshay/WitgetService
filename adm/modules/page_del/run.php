<?php
	# SETTINGS #############################################################################
	$moduleName = "page_del";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
	));
	
	# MAIN #################################################################################
	if(isset($_POST['del_page'])){
		$sql2 = "INSERT INTO r_log SET 
						r_id = '".ROOT_ID."',
						act_id = '3',
						koment = '".getPageTitle($_GET['ch'])."',
						date_log = NOW()";
		db_query($sql2);
		$sql = "DELETE FROM pages WHERE id=".$_GET['ch']." LIMIT 1";
		db_query($sql);
		header("Location: system.php");
		exit;
	}
	if(isset($_POST['back_page'])){
		header("Location: system.php?menu=".$_GET['ch']);
		exit;
	}
	
	$sql="SELECT * FROM pages WHERE id=".$_GET['ch']." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl->assign("PAGE_NAME", $row['title']);
	
	$tpl->assign("META_LINK", '');
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
?>