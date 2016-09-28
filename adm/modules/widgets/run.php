<?php
	# SETTINGS #############################################################################
	$moduleName = "widgets";
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
			$sql = "UPDATE widgets SET 
							title = '".$_POST['title']."', 
							cat_id = '".$_POST['cat_id']."', 
								preview = '".$_POST['preview']."', 
								img = '".$_POST['img']."', 
								folder = '".$_POST['folder']."',
								view = '".$view."'
					WHERE id = ".$_GET['item'];
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM widgets WHERE id = ".$_GET['item']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$tpl->assign("EDT_TITLE", $row['title']);
		$tpl->assign("EDT_PREVIEW", $row['preview']);
		$tpl->assign("EDT_IMG", $row['img']);
		$tpl->assign("EDT_FOLDER", $row['folder']);
		if($row['view']==1){
			$tpl->assign("VIEW_CHECK", ' checked="checked"');
		}
		else{
			$tpl->assign("VIEW_CHECK", '');
		}
		
		$category = '';
		$SQL3 = "SELECT 
				*
				FROM category";
		$result3 = db_query($SQL3);
		while($row3 = db_fetch_array($result3)){
			if($row3['id']==$row['cat_id']){
				$category.= '<option value="'.$row3['id'].'" selected="selected">'.$row3['title'].'</option>';
			}
			else{
				$category.= '<option value="'.$row3['id'].'">'.$row3['title'].'</option>';
			}
		}
		$tpl->assign("CATEGORY_ROWS", $category);	
									
		
		
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
				if(isset($_POST['view'])){
					$view = 1;
				}
				else{
					$view = 0;
				}
				$sql = "INSERT INTO widgets SET 
								title = '".$_POST['title']."', 
								cat_id = '".$_POST['cat_id']."', 
								preview = '".$_POST['preview']."', 
								img = '".$_POST['img']."', 
								folder = '".$_POST['folder']."',
								view = '".$view."',
								date = NOW()";
				db_query($sql);
				header("Location: system.php?menu=".$_GET['menu']);
				exit;
			}
			
			$tpl->parse("META_LINK", ".".$moduleName."html");
			
			$category = '';
			$SQL = "SELECT 
					*
					FROM category";
			$result2 = db_query($SQL);
			while($row2 = db_fetch_array($result2)){
				$category.= '<option value="'.$row2['id'].'">'.$row2['title'].'</option>';
			}
			$tpl->assign("CATEGORY_ROWS", $category);
			
			$tpl->assign("SS_DATE_NOW", date("d-m-Y H:i"));
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."add");
		}
	}
?>