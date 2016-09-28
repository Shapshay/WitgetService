<?php
	# SETTINGS #############################################################################
	$moduleName = "w_action4";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "script" => $prefix . "w_action4.js",
	));
	# MAIN #################################################################################
	//echo "Y";
	if(!isset($_GET['u'])){
		$tpl->parse("META_LINK", ".".$moduleName."html");
		$U_BASE_ID = U_BASE_ID;
	}
	else{
		$url=urldecode($_SERVER['REQUEST_URI']);
		//echo $url;
		//echo '+'.$_GET['u'].'+';
		$tpl->assign("META_LINK", '');
		$U = SuperSaveStr($_GET['u']);
		//echo '+'.$_GET['u'].'+';
		$sql = "SELECT 
		users.id AS id,
		tarifs.copyright AS copyright
		FROM users 
		LEFT OUTER JOIN tarifs ON users.tarif_id = tarifs.id
		WHERE uniq = '".$U."' LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		$U_BASE_ID = $row['id'];
		$copyright = $row['copyright'];
	}	
	
	if(setWdtInUser($U_BASE_ID)!=0){
		$sql = "SELECT 
					widgets.*,
					u_w_options.options AS options,
					u_w_options.OnOff AS OnOff,
					pages.id AS page_id
				FROM u_w_options
				LEFT OUTER JOIN widgets ON u_w_options.w_id = widgets.id
				LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
				WHERE u_w_options.u_id = ".$U_BASE_ID." AND widgets.folder = '".getItemCHPU(PAGE_ID, 'pages')."'
				LIMIT 1";
	}
	else{
		$sql = "SELECT 
					widgets.*,
					pages.id AS page_id
				FROM widgets
				LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
				WHERE folder = '".getItemCHPU(PAGE_ID, 'pages')."'
				LIMIT 1";
	}
	$result = db_query($sql);
	if(db_num_rows($result) > 0){
		$row = db_fetch_array($result);
		$options = json_decode($row['options']);
		//echo $options->w_title;
		//var_dump($options);
		
		$tpl->assign("WDT_EDT_BG_COLOR", $options->bg_color);
		$tpl->assign("WDT_EDT_W_TITLE", $options->w_title);
		$tpl->assign("WDT_EDT_TITLE_COLOR", $options->title_color);
		$tpl->assign("WDT_EDT_W_TEXT", $options->w_text);
		$tpl->assign("WDT_EDT_TEXT_COLOR", $options->text_color);
		$tpl->assign("WDT_EDT_BTN_TEXT", $options->btn_text);
		$tpl->assign("WDT_EDT_BTN_COLOR1", $options->btn_color1);
		$tpl->assign("WDT_EDT_BTN_COLOR2", $options->btn_color2);
		$tpl->assign("WDT_EDT_BTN_COLOR3", $options->btn_color3);
		$tpl->assign("WDT_EDT_BTN_COLOR4", $options->btn_color4);
		$tpl->assign("WDT_EDT_URL", $options->url);
		//print_r($options->url);
		
		
		
		
		
		
		
		if(!isset($_GET['u'])){
			$stat = getPageSecondChildrenID($row['page_id']);
			$url = 'http://witgetservice.com/'.$row['folder'].'/'.getItemCHPU($stat, 'pages').'/';
			$tpl->assign("WDT_ACTION", $url);
			$tpl->assign("WDT_COPYRIGHT", '');
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
		
		}
		else{
			$stat = getPageSecondChildrenID($row['page_id']);
			$url = 'http://witgetservice.com/'.getItemCHPU($stat, 'pages').'/wdt.js?u='.$U;
			$tpl->assign("WDT_ACTION", $url);
			if($copyright==0){
				$tpl->assign("WDT_COPYRIGHT", '<br /><a href=\"http://witgetservice.com/\" target=\"_blank\" style=\"font-size:10px;color:#000000;text-decoration:none;\">WitgetService.com</a>');
			}
			else{
				$tpl->assign("WDT_COPYRIGHT", '');
			}
			header('Content-Type: text/javascript;charset=utf-8');
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."script");
		}
			
		
	}
	else{
		$tpl->assign(strtoupper($moduleName), "");
	}
?>