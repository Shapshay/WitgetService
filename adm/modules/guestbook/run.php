<?php
	# SETTINGS #############################################################################
	$moduleName = "guestbook";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
			$moduleName . "add" => $prefix . "add.tpl",
	));
	# MAIN #################################################################################
	if(isset($_GET['otz'])){
		// описание товара
		if(isset($_POST['edt_otz'])){
			if(isset($_POST['view'])){
				$view = 1;
			}
			else{
				$view = 0;
			}
			$sql = "UPDATE guestbook SET 
							name = '".$_POST['name']."',
							text = '".$_POST['text']."',
							plus = '".$_POST['plus']."',
							minus = '".$_POST['minus']."',
							view = '".$view."'
					WHERE id = ".$_GET['otz'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM guestbook WHERE id = ".$_GET['otz']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		if($row['view']==1){
			$tpl->assign("VIEW_CHECK", ' checked="checked"');
		}
		else{
			$tpl->assign("VIEW_CHECK", '');
		}
		$tpl->assign("EDT_NAME", $row['name']);
		$tpl->assign("EDT_TEXT", $row['text']);
		$tpl->assign("EDT_PLUS", $row['plus']);
		$tpl->assign("EDT_MINUS", $row['minus']);
		
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		if(!isset($_GET['add'])){
			// список товара
			$tpl->parse("META_LINK", ".".$moduleName."grid");
			
			$tpl->assign("URL_ADD_OTZ", "system.php?menu=".$_GET['menu']."&add");
			$tpl->assign("OTZ_EDIT_URL", "system.php?menu=".$_GET['menu']."&otz=");
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName);
		}
		else{
			// добавление товара
			if(isset($_POST['add_otz'])){
				if(isset($_POST['view'])){
					$view = 1;
				}
				else{
					$view = 0;
				}
				$sql = "INSERT INTO guestbook SET 
							page_id = '".$_GET['menu']."',
							name = '".$_POST['name']."',
							text = '".$_POST['text']."',
							plus = '".$_POST['plus']."',
							minus = '".$_POST['minus']."',
							view = '".$view."',
							date = NOW()";
				db_query($sql);
				header("Location: system.php?menu=".$_GET['menu']);
				exit;
			}
			
			$tpl->parse("META_LINK", ".".$moduleName."html");
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."add");
		}
	}
?>