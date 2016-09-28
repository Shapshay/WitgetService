<?php
	# SETTINGS #############################################################################
	$moduleName = "variables";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
			$moduleName . "add" => $prefix . "add.tpl",
	));
	# MAIN #################################################################################
	if(isset($_GET['serv'])){
		// описание услуги
		if(isset($_POST['edt_serv'])){
			$sql = "UPDATE variables SET 
						name = '".$_POST['name']."',
						val = '".$_POST['val']."'
					WHERE id = ".$_GET['serv'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM variables WHERE id = ".$_GET['serv']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		$tpl->assign("EDT_NAME", $row['name']);
		$tpl->assign("EDT_VAL", $row['val']);
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		if(!isset($_GET['add'])){
			// список услуг
			$tpl->parse("META_LINK", ".".$moduleName."grid");
			
			$tpl->assign("URL_ADD_SERV", "system.php?menu=".$_GET['menu']."&add");
			$tpl->assign("SERV_EDIT_URL", "system.php?menu=".$_GET['menu']."&serv=");
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName);
		}
		else{
			// добавление услуги
			if(isset($_POST['add_serv'])){
				$sql = "INSERT INTO variables SET 
							page_id = '".$_GET['menu']."',
							name = '".$_POST['name']."',
							val = '".$_POST['val']."'";
				db_query($sql);
				header("Location: system.php?menu=".$_GET['menu']);
				exit;
			}
			
			$tpl->parse("META_LINK", ".".$moduleName."html");
			
			$tpl->assign("EDT_NAME", "");
			$tpl->assign("EDT_VAL", "");
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."add");
		}
	}
?>