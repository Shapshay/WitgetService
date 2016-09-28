<?php
	# SETTINGS #############################################################################
	$moduleName = "faq";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
			$moduleName . "add" => $prefix . "add.tpl",
	));
	# MAIN #################################################################################
	if(isset($_GET['faq'])){
		if(isset($_POST['edt_faq'])){
			if(isset($_POST['view'])){
				$view = 1;
			}
			else{
				$view = 0;
			}
			$sql = "UPDATE faq SET 
							name = '".$_POST['name']."',
							question = '".$_POST['question']."',
							answer = '".$_POST['answer']."',
							view = '".$view."',
							modify_date = NOW()
					WHERE id = ".$_GET['faq'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM faq WHERE id = ".$_GET['faq']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		if($row['view']==1){
			$tpl->assign("VIEW_CHECK", ' checked="checked"');
		}
		else{
			$tpl->assign("VIEW_CHECK", '');
		}
		$tpl->assign("EDT_NAME", $row['name']);
		$tpl->assign("EDT_QUEST", $row['question']);
		$tpl->assign("EDT_ANSWER", $row['answer']);
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		if(!isset($_GET['add'])){
			// список товара
			$tpl->parse("META_LINK", ".".$moduleName."grid");
			
			$tpl->assign("URL_ADD_FAQ", "system.php?menu=".$_GET['menu']."&add");
			$tpl->assign("FAQ_EDIT_URL", "system.php?menu=".$_GET['menu']."&faq=");
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName);
		}
		else{
			// добавление товара
			if(isset($_POST['add_faq'])){
				if(isset($_POST['view'])){
					$view = 1;
				}
				else{
					$view = 0;
				}
				$sql = "INSERT INTO faq SET 
							page_id = '".$_GET['menu']."',
							name = '".$_POST['name']."',
							question = '".$_POST['question']."',
							answer = '".$_POST['answer']."',
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