<?php
	# SETTINGS #############################################################################
	$moduleName = "users";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "grid" => $prefix . "grid.tpl",
			$moduleName . "del_users" => $prefix . "del_users.tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['del_users'])){
		if(!isset($_POST['del_users2'])){
			if(isset($_POST['not_del'])){
				header("Location: system.php?menu=".$_GET['menu']);
				exit;
			}
			else{
				//подтвеждение очистки базы пользователей
				$tpl->parse("META_LINK", ".".$moduleName."grid");
				$tpl->parse(strtoupper($moduleName), ".".$moduleName."del_users");
			}
		}
		else{
			$sql = "DELETE FROM users";
			db_query($sql);
			header("Location: system.php?menu=".$_GET['menu']);
			exit;
		}
	}
	else{
		// список пользователей
		$tpl->parse("META_LINK", ".".$moduleName."grid");
		$tpl->parse(strtoupper($moduleName), ".".$moduleName);
	}
	
	
	
?>