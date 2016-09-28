<?php
	# SETTINGS #############################################################################
	$moduleName = "w_contact8_s";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['btn_wdt_save'])){
		$wdt_opt_arr = array();
		foreach ($_POST as $key=>$v){
			if($key!='btn_wdt_save'){
				if($key!='w_text'){
					$wdt_opt_arr[$key] = $v;
				}
				else{
					// загрузка текстареа
					$wdt_opt_arr[$key] = br2nl($v);
				}
			}
		}
		
		
		
		$result = preg_replace_callback('/\\\u([0-9a-fA-F]{4})/', create_function('$_m', 'return mb_convert_encoding("&#" . intval($_m[1], 16) . ";", "UTF-8", "HTML-ENTITIES");'),json_encode($wdt_opt_arr));
		//echo "<p>".$result;
		$sql = "UPDATE u_w_options, widgets 
			SET 
			u_w_options.options = '".$result."' 
			WHERE 
			u_w_options.u_id = ".U_BASE_ID." AND 
			widgets.folder = '".getItemCHPU(getPageParentID(PAGE_ID), 'pages')."' AND
			u_w_options.w_id = widgets.id";
		$sql_result = db_query($sql);
		selfRedirect();
	}
	
	if(isset($_POST['WdtDefault'])){
		$sql = "SELECT 
				options
			FROM widgets
			WHERE widgets.folder = '".getItemCHPU(getPageParentID(PAGE_ID), 'pages')."'
			LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		$sql2 = "UPDATE u_w_options, widgets 
			SET 
			u_w_options.options = '".$row['options']."' 
			WHERE 
			u_w_options.u_id = ".U_BASE_ID." AND 
			widgets.folder = '".getItemCHPU(getPageParentID(PAGE_ID), 'pages')."' AND
			u_w_options.w_id = widgets.id";
		$sql_result = db_query($sql2);
		selfRedirect();
	}
	
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	$w_location_arr = array("center","left","right","top", "bottom");
			
	$sql = "SELECT 
				widgets.*,
				u_w_options.options AS options,
				u_w_options.OnOff AS OnOff,
				u_w_options.id AS w_id,
				pages.id AS page_id,
				pages.parent_id AS w_parent_id
			FROM u_w_options
			LEFT OUTER JOIN widgets ON u_w_options.w_id = widgets.id
			LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
			WHERE u_w_options.u_id = ".U_BASE_ID." AND widgets.folder = '".getItemCHPU(getPageParentID(PAGE_ID), 'pages')."'
			LIMIT 1";
	$result = db_query($sql);
	if(db_num_rows($result) > 0){
		$row = db_fetch_array($result);
		
		if(isset($_POST['WdtDel'])){
			$sql2 = "DELETE FROM u_w_options WHERE id = ".$row['w_id'];
			$result2 = db_query($sql2);
			//echo $sql2;
			header("Location: http://".$_SERVER['SERVER_NAME']."/nastrojka_widgetov");
		}
		
		
		$options = json_decode($row['options']);
		//echo $options->w_title;
		//var_dump($options);
		$url = '/'.getItemCHPU($row['w_parent_id'], 'pages').'/'.getItemCHPU($row['page_id'], 'pages').'/';
		$tpl->assign("WDT_URL", $url);
		
		$tpl->assign("WDT_EDT_BG_COLOR", $options->bg_color);
		$tpl->assign("WDT_EDT_TITLE", $options->w_title);
		$tpl->assign("WDT_EDT_TEXT_COLOR", $options->text_color);
		$tpl->assign("WDT_EDT_BTN_TEXT", $options->btn_text);
		$tpl->assign("WDT_EDT_BTN_TEXT2", $options->btn_text2);
		$tpl->assign("WDT_EDT_BTN_COLOR1", $options->btn_color1);
		$tpl->assign("WDT_EDT_BTN_COLOR2", $options->btn_color2);
		$tpl->assign("WDT_EDT_BTN_COLOR3", $options->btn_color3);
		$tpl->assign("WDT_EDT_BTN_COLOR4", $options->btn_color4);
		$tpl->assign("WDT_EDT_INP_PLACE1", $options->inp_place1);
		$tpl->assign("WDT_EDT_INP_PLACE2", $options->inp_place2);
		$tpl->assign("WDT_EDT_INP_PLACE3", $options->inp_place3);
		$tpl->assign("WDT_EDT_SUCCESS", $options->map_success);
		$tpl->assign("WDT_MSG_THEME", $options->msg_theme);
		
		
		
		$tpl->assign("WDT_TITLE", $row['title']);
		$tpl->assign("WDT_PREVIEW", $row['preview']);
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		$tpl->assign(strtoupper($moduleName), "");
	}
?>