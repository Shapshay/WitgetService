<?php
	# SETTINGS #############################################################################
	$moduleName = "tarifs";
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
			if(isset($_POST['tech'])){
				$tech = 1;
			}
			else{
				$tech = 0;
			}
			if(isset($_POST['copyright'])){
				$copyright = 1;
			}
			else{
				$copyright = 0;
			}
			$sql = "UPDATE tarifs SET 
							title = '".$_POST['title']."', 
								s_count = '".$_POST['s_count']."', 
								w_count = '".$_POST['w_count']."', 
								tech = '".$tech."', 
								copyright = '".$copyright."'
					WHERE id = ".$_GET['item'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM tarifs WHERE id = ".$_GET['item']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$tpl->assign("EDT_TITLE", $row['title']);
		$tpl->assign("EDT_S_COUNT", $row['s_count']);
		$tpl->assign("EDT_W_COUNT", $row['w_count']);
		if($row['tech']==1){
				$tpl->assign("TECH_CHECK", ' checked="checked"');
			}
			else{
				$tpl->assign("TECH_CHECK", '');
			}
		if($row['copyright']==1){
				$tpl->assign("COPYRIGHT_CHECK", ' checked="checked"');
			}
			else{
				$tpl->assign("COPYRIGHT_CHECK", '');
			}
									
		
		
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
				if(isset($_POST['tech'])){
					$tech = 1;
				}
				else{
					$tech = 0;
				}
				if(isset($_POST['copyright'])){
					$copyright = 1;
				}
				else{
					$copyright = 0;
				}
				$sql = "INSERT INTO tarifs SET 
								title = '".$_POST['title']."', 
								s_count = '".$_POST['s_count']."', 
								w_count = '".$_POST['w_count']."', 
								tech = '".$tech ."', 
								copyright = '".$copyright."'";
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