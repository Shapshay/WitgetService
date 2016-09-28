<?php
	# SETTINGS #############################################################################
	
	$moduleName = "meta";
	$prefix = "./modules/".$moduleName."/";
	
	################################################################################################
	$meta_content = $main_set['company'];
	if(isset($_GET['menu'])){
		$meta_title = $main_set['company']." :: ".getPageTitle($_GET['menu']);
	}
	else{
		$meta_title = $main_set['company'];
	}
	if(!isset($_GET['prod'])){
		if(!isset($_GET['art'])){
			$meta_key = $main_set['meta_key'];
			$meta_content = $main_set['meta_desc'];
		}
		else{
			$meta_key = getPageMetaKeys('articles', $_GET['art']);
			$meta_title.= " :: ".getItemTitle('articles', $_GET['art']);
			$meta_content.= '. '.getItemTitle('articles', $_GET['art']);
		}
	}
	else{
		$meta_content = getval("META_PRODUCT");
		$meta_key = getPageMetaKeys('products', $_GET['prod']);
		$meta_title.= " :: ".getItemTitle('products', $_GET['prod']);
		$meta_content.= '. '.getItemTitle('products', $_GET['prod']);
	}
	$meta = '<meta content="'.$meta_key.'" name="keywords">
<meta content="'.$meta_content.'" name="description">
<title>'.$meta_title.'</title>';
	
	// Статистика
	if(isset($_GET['prod_id'])){
		$prod_id = $_GET['prod_id'];
	}
	else{
		$prod_id = 0;
	}
	if(!seIPtoSiteStatisticID($_SERVER['REMOTE_ADDR'], $_GET['menu'], $prod_id)){
		$result2 = db_query("INSERT INTO stat 
							(date, ip, menu, prod_id) 
							VALUES 
							(NOW(), '".$_SERVER['REMOTE_ADDR']."', '".$_GET['menu']."', '".$prod_id."')");
	}
	
	$tpl->assign(strtoupper($moduleName), $meta);
?>