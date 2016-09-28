<?php
	# SETTINGS #############################################################################
	$moduleName = "strah_otzyv";
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
			$sql = "UPDATE strah_otzyv SET 
							date = '".date("Y-m-d H:i", strtotime($_POST['date']))."', 
								photo = '".$_POST['photo']."', 
								year = '".$_POST['year']."', 
								name = '".$_POST['name']."', 
								otzyv = '".$_POST['otzyv']."'
					WHERE id = ".$_GET['item'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM strah_otzyv WHERE id = ".$_GET['item']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$tpl->assign("EDT_DATE", $row['date']);
									$tpl->assign("EDT_PHOTO", $row['photo']);
									$tpl->assign("EDT_YEAR", $row['year']);
									$tpl->assign("EDT_NAME", $row['name']);
									$tpl->assign("EDT_OTZYV", $row['otzyv']);
									
		
		
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
				$sql = "INSERT INTO strah_otzyv SET 
								date = '".date("Y-m-d H:i", strtotime($_POST['date']))."', 
								photo = '".$_POST['photo']."', 
								year = '".$_POST['year']."', 
								name = '".$_POST['name']."', 
								otzyv = '".$_POST['otzyv']."'";
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