<?php
	# SETTINGS #############################################################################
	$moduleName = "category";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
			$moduleName . "add" => $prefix . "add.tpl",
	));
	# MAIN #################################################################################
	if(isset($_GET['item'])){
		if(isset($_POST['edt_item'])){
			$sql = "UPDATE category SET 
							title = '".$_POST['title']."'
					WHERE id = ".$_GET['item'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM category WHERE id = ".$_GET['item']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$tpl->assign("EDT_TITLE", $row['title']);
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		if(!isset($_GET['add'])){
			$tpl->parse("META_LINK", ".".$moduleName."grid");
			
			$tpl->assign("URL_ADD_ITEM", "system.php?menu=".$_GET['menu']."&add");
			$tpl->assign("ITEM_EDIT_URL", "system.php?menu=".$_GET['menu']."&item=");
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName);
		}
		else{
			if(isset($_POST['add_item'])){
				$sql = "INSERT INTO category SET 
								title = '".$_POST['title']."',
								chpu = '".setCategoryCHPU($_POST['title'])."'";
				db_query($sql);
				header("Location: system.php?menu=".$_GET['menu']);
				exit;
			}
			
			$tpl->parse("META_LINK", ".".$moduleName."html");
			
			$tpl->assign("SS_DATE_NOW", date("d-m-Y H:i"));
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."add");
		}
	}
?>