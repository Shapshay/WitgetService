<?php
	# SETTINGS #############################################################################
	$moduleName = "w_contact1_s";
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
				$wdt_opt_arr[$key] = $v;
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
		$tpl->assign("WDT_EDT_BG_COLOR_HEX", rgb2hex(explode(",", $options->bg_color)));
		$tpl->assign("WDT_EDT_W_COLOR", $options->w_color);
		$tpl->assign("WDT_EDT_W_COLOR_HEX", rgb2hex(explode(",", $options->w_color)));
		$tpl->assign("WDT_EDT_W_RADIUS", $options->w_radius);
		$tpl->assign("WDT_EDT_W_TEXT", $options->w_text);
		$tpl->assign("WDT_EDT_INP_PLACE", $options->inp_place);
		$tpl->assign("WDT_EDT_BTN_TEXT", $options->btn_text);
		$tpl->assign("WDT_EDT_CLOSE_TEXT", $options->close_text);
		$tpl->assign("WDT_EDT_START_TIME", $options->start_time);
		$tpl->assign("WDT_EDT_START_TIME_S", $options->start_time/1000);
		$tpl->assign("WDT_EDT_SPEED", $options->speed);
		$tpl->assign("WDT_EDT_SPEED_S", $options->speed/1000);
		$tpl->assign("WDT_EDT_W_TITLE", $options->w_title);
		$tpl->assign("WDT_EDT_TITLE_COLOR", $options->title_color);
		$tpl->assign("WDT_EDT_TEXT_COLOR", $options->text_color);
		$tpl->assign("WDT_EDT_BTN_COLOR", $options->btn_color);
		$tpl->assign("WDT_EDT_W_LOCATION", $options->w_location);
		
		$w_location_sel = '';
		foreach($w_location_arr as $l_arr){
			if($l_arr==$options->w_location){
				$w_location_sel.= '<option value="'.$l_arr.'" selected="selected">'.$l_arr.'</option>';
			}
			else{
				$w_location_sel.= '<option value="'.$l_arr.'">'.$l_arr.'</option>';
			}
		}
		$tpl->assign("WDT_EDT_W_LOCATION_SEL", $w_location_sel);
		
		$tpl->assign("WDT_TITLE", $row['title']);
		$tpl->assign("WDT_PREVIEW", $row['preview']);
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
	else{
		$tpl->assign(strtoupper($moduleName), "");
	}
?>