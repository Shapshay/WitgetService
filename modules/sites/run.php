<?php
	# SETTINGS #############################################################################
	$moduleName = "sites";
	$prefix = "./modules/".$moduleName."/";
	
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "s_row" => $prefix . "s_row.tpl",
	));
	# MAIN #################################################################################
	
	$script_code = '<iframe name="widget_iframe" src="http://witgetservice.com/statistic/wdt.js?u='.U_ID.'" width="0" height="0"></iframe><ilayer  id="widget_div"></ilayer><script type="text/javascript">function dhtmlLoadScript(b){var a=document.createElement("script");a.src=b;a.type="text/javascript";document.getElementsByTagName("head")[0].appendChild(a)}onload=function(){dhtmlLoadScript("http://witgetservice.com/wdt/js/jquery.slick-modals.min.js");dhtmlLoadScript("http://witgetservice.com/s_widget/wdt.js?u='.U_ID.'")};</script>';
	if(isset($_POST['VerSite'])){
		$s_id = SuperSaveInt($_POST['VerSite']);
		$sql = "SELECT domen FROM sites WHERE id = ".$s_id." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$web_page = get_web_page($row['domen']);
  		$html = $web_page['content'];
		if(strpos($html, $script_code)){
			$sql = "UPDATE sites SET ver = 1 WHERE id = ".$s_id." LIMIT 1";
			$sql_result = db_query($sql);
			$tpl->assign("SITE_VER", '');
			selfRedirect();
		}
		else{
			$tpl->assign("SITE_VER", '<script>swal("Ошибка проверки!", "Код виджета ненайден !", "error"); </script>');
		}
	}
	else{
		$tpl->assign("SITE_VER", '');
	}
	if(isset($_POST['s_domen'])){
		$pattern = "/^((https?|ftp)\:\/\/)?([a-z0-9]{1})((\.[a-z0-9-])|([a-z0-9-]))*\.([a-z]{2,4})$/";
		if(preg_match($pattern,$_POST['s_domen'])){
			$sql = "INSERT sites 
				SET 
				domen = '".$_POST['s_domen']."',
				u_id = '".U_BASE_ID."',
				date = NOW()";
			$sql_result = db_query($sql);
		}
		selfRedirect();
	}
	if(isset($_POST['DelSite'])){
		$s_id = SuperSaveInt($_POST['DelSite']);
		$sql = "DELETE FROM sites WHERE id = ".$s_id." AND u_id = ".U_BASE_ID;
		$sql_result = db_query($sql);
		selfRedirect();
	}
	$sql = "SELECT * FROM sites WHERE u_id = ".U_BASE_ID;
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		while ($row = db_fetch_array($result)) { 
			//$url = '/'.getItemCHPU($row['parent_id'], 'pages').'/'.getItemCHPU($row['id'], 'pages').'/';
			$tpl->assign("SITE_TITLE", $row['domen']);
			$tpl->assign("SITE_ID", $row['id']);
			//$tpl->assign("CH_URL", $url);
			if($row['ver']==1){
				$tpl->assign("SITE_STAT", 'Активирован');
			}
			else{
				$tpl->assign("SITE_STAT", 'Необходима проверка');
			}
			
			
			$tpl->parse("SITE_ROWS", "." .$moduleName. "s_row");
		}
		$tpl->assign("WDT_CODE_SHOW", '');
	}
	else{
		$tpl->assign("SITE_ROWS", '<tr><td colspan="4" align="center">У Вас нет зарегистрированных сайтов !</td></tr>');
		$tpl->assign("WDT_CODE_SHOW", ' style="display:none;"');
	}
	
	$tpl->assign("WDT_CODE", htmlspecialchars ($script_code));
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>