<?php
	# SETTINGS #############################################################################
	$moduleName = "post_stat";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['del_posts'])){
		$sql = "DELETE FROM posts";
		db_query($sql);
		$sql2 = "DELETE FROM post_ver";
		db_query($sql2);
		header("Location: system.php?menu=".$_GET['menu']);
		exit;
	}
	// список рассылок
	$tpl->parse("META_LINK", ".".$moduleName."grid");
	$tpl->parse(strtoupper($moduleName), ".".$moduleName);
	
	
	
?>