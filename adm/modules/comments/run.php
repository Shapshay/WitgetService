<?php
	# SETTINGS #############################################################################
	$moduleName = "comments";
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
			if(isset($_POST['view'])){
				$view = 1;
			}
			else{
				$view = 0;
			}
			
			$sql = "UPDATE comments SET 
							date = '".date("Y-m-d H:i",strtotime($_POST['date']))."',
							name = '".$_POST['name']."', 
							comment = '".$_POST['comment']."', 
							view = '".$view."'
					WHERE id = ".$_GET['item'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT comments.*,
					 articles.title AS title
			FROM comments 
			LEFT OUTER JOIN articles ON comments.art_id = articles.id 
			WHERE comments.id = ".$_GET['item']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$tpl->assign("EDT_DATE", $row['date']);
		$tpl->assign("EDT_ART_ID", $row['title']);
		$tpl->assign("EDT_NAME", $row['name']);
		$tpl->assign("EDT_COMMENT", $row['comment']);
		if($row['view']==1){
			$tpl->assign("VIEW_CHECK", ' checked="checked"');
		}
		else{
			$tpl->assign("VIEW_CHECK", '');
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
				$sql = "INSERT INTO comments SET 
								date = '".date("Y-m-d H:i",strtotime($_POST['date']))."',
								art_id = '".$_POST['art_id']."', 
								name = '".$_POST['name']."', 
								comment = '".$_POST['comment']."', 
								view = '".$_POST['view']."";
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