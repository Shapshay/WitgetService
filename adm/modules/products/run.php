<?php
	# SETTINGS #############################################################################
	$moduleName = "products";
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
			if(isset($_POST['status'])){
				$status = 1;
			}
			else{
				$status = 0;
			}
			$sql = "UPDATE products SET 
							date = '".date("Y-m-d H:i", strtotime($_POST['date']))."', 
							title = '".$_POST['title']."', 
							artikul = '".$_POST['artikul']."', 
							icon = '".$_POST['icon']."', 
							icon2 = '".$_POST['icon2']."', 
							cost = '".$_POST['cost']."', 
							cat_id = '".$_POST['cat_id']."',
							status = '".$status."'
					WHERE id = ".$_GET['item'];
			db_query($sql);
			echo $sql;
			$SQL = "SELECT 
					*
					FROM magaz";
			$result2 = db_query($SQL);
			while($row2 = db_fetch_array($result2)){
				if(isset($_POST['magaz'][$row2['id']])){
					if(getMagProdID($row2['id'], $_GET['item'])==0){
						$sql = "INSERT INTO mag_prod SET 
										prod_id = '".$_GET['item']."', 
										magaz_id = '".$row2['id']."'";
						db_query($sql);
					}
				}
				else{
					if(getMagProdID($row2['id'], $_GET['item'])!=0){
						db_query("DELETE FROM mag_prod WHERE id = ".$row2['id']);
					}
				}
			}
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
		
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SELECT * FROM products WHERE id = ".$_GET['item']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$tpl->assign("EDT_PAGE_ID", $row['page_id']);
		$tpl->assign("EDT_DATE", $row['date']);
		$tpl->assign("EDT_TITLE", $row['title']);
		$tpl->assign("EDT_ARTIKUL", $row['artikul']);
		$tpl->assign("EDT_ICON", $row['icon']);
		$tpl->assign("EDT_ICON2", $row['icon2']);
		$tpl->assign("EDT_COST", $row['cost']);
		if($row['status']==1){
			$tpl->assign("STATUS_CHECK", ' checked="checked"');
		}
		else{
			$tpl->assign("STATUS_CHECK", '');
		}
		
		$SQL = "SELECT 
				*
				FROM magaz";
		$result2 = db_query($SQL);
		while($row2 = db_fetch_array($result2)){
			if(getMagProdID($row2['id'], $row['id'])!=0){
				$magaz.= '<p><strong>'.$row2['city'].' '.$row2['title'].' '.$row2['adres'].'</strong><br>
					<input type="checkbox" class="ch_city" value="'.$row2['id'].'" name="magaz['.$row2['id'].']" checked="checked"/>';
			}
			else{
				$magaz.= '<p><strong>'.$row2['city'].' '.$row2['title'].' '.$row2['adres'].'</strong><br>
					<input type="checkbox" class="ch_city" value="'.$row2['id'].'" name="magaz['.$row2['id'].']"/>';
			}
		}
		$tpl->assign("MAGAZ_ROWS", $magaz);	
		
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
				if(isset($_POST['status'])){
					$status = 1;
				}
				else{
					$status = 0;
				}
				$sql = "INSERT INTO products SET 
								page_id = '".$_GET['menu']."', 
								date = NOW(), 
								title = '".$_POST['title']."', 
								artikul = '".$_POST['artikul']."', 
								icon = '".$_POST['icon']."', 
								icon2 = '".$_POST['icon2']."', 
								cost = '".$_POST['cost']."', 
								cat_id = '".$_POST['cat_id']."',
								status = '".$status."'";
				db_query($sql);
				$product = mysql_insert_id($link);
				$SQL = "SELECT 
						*
						FROM magaz";
				$result2 = db_query($SQL);
				while($row2 = db_fetch_array($result2)){
					if(isset($_POST['magaz'][$row2['id']])){
						$sql = "INSERT INTO mag_prod SET 
									prod_id = '".$product."', 
									magaz_id = '".$row2['id']."'";
						db_query($sql);
					}
				}
				
				header("Location: system.php?menu=".$_GET['menu']);
				exit;
			}
			
			$tpl->parse("META_LINK", ".".$moduleName."html");
			
			$magaz = '';
			$SQL = "SELECT 
					*
					FROM magaz";
			$result2 = db_query($SQL);
			while($row2 = db_fetch_array($result2)){
				$magaz.= '<p><strong>'.$row2['city'].' '.$row2['title'].' '.$row2['adres'].'</strong><br>
					<input class="ch_city" type="checkbox" value="'.$row2['id'].'" name="magaz['.$row2['id'].']"/>';
			}
			$tpl->assign("MAGAZ_ROWS", $magaz);
			
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