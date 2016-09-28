<?php
	# SETTINGS #############################################################################
	$moduleName = "news";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
			$moduleName . "add" => $prefix . "add.tpl",
	));
	# MAIN #################################################################################
	if(isset($_GET['art'])){
		// �������� ������
		if(isset($_POST['edt_art'])){
			$sql = "UPDATE articles SET 
							title = '".$_POST['title']."',
							meta_title = '".$_POST['meta_title']."',
							meta_key = '".$_POST['meta_key']."',
							meta_desc = '".$_POST['meta_desc']."',
							description = '".$_POST['description']."',
							content = '".$_POST['content']."',
							icon = '".$_POST['icon']."',
							chpu = '".setProdCHPU($_POST['title'])."',
							date = '".date("Y-m-d H:i",strtotime($_POST['date']))."'
					WHERE id = ".$_GET['art'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM articles WHERE id = ".$_GET['art']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		$tpl->assign("EDT_TITLE", $row['title']);
		$tpl->assign("EDT_ICON", $row['icon']);
		$tpl->assign("EDT_META_TITLE", $row['meta_title']);
		$tpl->assign("EDT_META_KEY", $row['meta_key']);
		$tpl->assign("EDT_META_DESC", $row['meta_desc']);
		$tpl->assign("EDT_DESC", $row['description']);
		$tpl->assign("EDT_CONTENT", $row['content']);
		
		$tpl->assign("EDT_DATE",  date("d-m-Y H:i",strtotime($row['date'])));
		
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		if(!isset($_GET['add'])){
			// ������ ������
			$tpl->parse("META_LINK", ".".$moduleName."grid");
			
			$tpl->assign("URL_ADD_ARTS", "system.php?menu=".$_GET['menu']."&add");
			$tpl->assign("ARTS_EDIT_URL", "system.php?menu=".$_GET['menu']."&art=");
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName);
		}
		else{
			// ���������� ������
			if(isset($_POST['add_art'])){
				$sql = "INSERT INTO articles SET 
							page_id = '".$_GET['menu']."',
							title = '".$_POST['title']."',
							meta_title = '".$_POST['meta_title']."',
							meta_key = '".$_POST['meta_key']."',
							meta_desc = '".$_POST['meta_desc']."',
							description = '".$_POST['description']."',
							content = '".$_POST['content']."',
							icon = '".$_POST['icon']."',
							chpu = '".setNewsCHPU($_POST['title'])."',
							date = '".date("Y-m-d H:i",strtotime($_POST['date']))."'";
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