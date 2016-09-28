<?php
	# SETTINGS #############################################################################
	$moduleName = "w_contact4";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "script" => $prefix . "w_contact4.js",
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
		$tpl->assign("WDT_EDT_W_COLOR", $options->w_color);
		$tpl->assign("WDT_EDT_BTN_TEXT", $options->btn_text);
		$tpl->assign("WDT_EDT_BTN_TEXT2", $options->btn_text2);
		$tpl->assign("WDT_EDT_INP_PLACE1", $options->inp_place1);
		$tpl->assign("WDT_EDT_INP_PLACE2", $options->inp_place2);
		$tpl->assign("WDT_EDT_BTN_COLOR1", $options->btn_color1);
		$tpl->assign("WDT_EDT_BTN_COLOR2", $options->btn_color2);
		$tpl->assign("WDT_EDT_W_TITLE", $options->w_title);
		$tpl->assign("WDT_EDT_W_TEXT", $options->w_text);
		$tpl->assign("WDT_EDT_TEXT_COLOR", $options->text_color);
		$tpl->assign("WDT_EDT_BTN_COLOR3", $options->btn_color3);
		$tpl->assign("WDT_EDT_BTN_COLOR4", $options->btn_color4);
		$tpl->assign("WDT_EDT_BTN_COLOR5", $options->btn_color5);
		$tpl->assign("WDT_EDT_BTN_COLOR6", $options->btn_color6);
		$tpl->assign("WDT_EDT_URL", $options->url);
		$tpl->assign("WDT_EDT_SOC_TITLE", $options->soc_title);
		$tpl->assign("WDT_EDT_SOC_IMG", $options->soc_img);
		$tpl->assign("WDT_EDT_SOC_DESC", $options->soc_desc);
		
		
		
		
		
		
		
		$tpl->assign("WDT_W_ID", $row['id']);
		
		
		
		
		
		
		if(!isset($_GET['u'])){
			$stat = getPageSecondChildrenID($row['page_id']);
			$url = 'http://witgetservice.com/'.$row['folder'].'/'.getItemCHPU($stat, 'pages').'/';
			$tpl->assign("WDT_ACTION", $url);
			$tpl->assign("WDT_COPYRIGHT", '');
			$tpl->assign("WDT_U_ID", '');
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
		
		}
		else{
			$msg_uniq = uniqid('msg_', true);
			$sql = "INSERT INTO msgs SET 
								w_id = '".$row['id']."',
								u_id = '".$U_BASE_ID."',
								uniq = '".$msg_uniq."',
								date = NOW()";
			db_query($sql);
			$tpl->assign("WDT_MSG_ID", $msg_uniq);
			$stat = getPageSecondChildrenID($row['page_id']);
			$url = 'http://witgetservice.com/'.getItemCHPU($stat, 'pages').'/wdt.js?u='.$U;
			$tpl->assign("WDT_ACTION", $url);
			if($copyright==0){
				$tpl->assign("WDT_COPYRIGHT", '<a href=\"http://witgetservice.com/\" target=\"_blank\" style=\"text-decoration:none;\">WitgetService.com © 2016</a>');
			}
			else{
				$tpl->assign("WDT_COPYRIGHT", '');
			}
			$tpl->assign("WDT_U_ID", '?u='.$U);
			header('Content-Type: text/javascript;charset=utf-8');
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."script");
		}
			
		
	}
	else{
		$tpl->assign(strtoupper($moduleName), "");
	}
?>