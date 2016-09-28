<?php
	# SETTINGS #############################################################################
	$moduleName = "page_main_add";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "tpl_row" => $prefix . "tpl_row.tpl",
			$moduleName . "content_row" => $prefix . "content_row.tpl",
	));
	
	# MAIN #################################################################################
	if(isset($_POST['add_page'])){
		$sql = "INSERT INTO pages SET 
					view = '0',
					parent_id = '0',
					title = '".$_POST['title']."',
					icon = '".$_POST['page_icon']."',
					description = '".$_POST['description']."',
					content = '{".strtoupper($_POST['content'])."}',
					stemplate = '".$_POST['stemplate']."',
					chpu = '".setPageCHPU($_POST['title'])."',
					sortfield = '".getNewSortfield()."'";
		db_query($sql);
		$new_page_id = mysql_insert_id();
		$sql2 = "INSERT INTO r_log SET 
						r_id = '".ROOT_ID."',
						act_id = '1',
						koment = '".$_POST['title']."',
						date_log = NOW()";
		db_query($sql2);
		header("Location: system.php?menu=".$new_page_id);
		exit;
	}
	
	$sql = "SELECT 
				tpl_groups.tpl_folder AS tpl_folder
			FROM site_setings 
			LEFT OUTER JOIN tpl_groups ON site_setings.tpl_group_id = tpl_groups.id
			LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl_arr = array();
	$dir = opendir ("../templates/".$row['tpl_folder']); 
	while (false !== ($file = readdir($dir))) { 
    	if (strpos($file, '.tpl',1)) { 
			$tpl_arr[] = $file;
    	}
	}
	sort($tpl_arr);
	$html = new simple_html_dom();
	foreach($tpl_arr as $template) {
		$url = 'http://'.$_SERVER['HTTP_HOST'].'/templates/'.$row['tpl_folder'].'/'.$template;
		$postdata = '';
		$result = post_content($url, $postdata);
		$html2 = $result['content'];
		$html->load($html2); //загружаем HTML-код
  		if($html->find("template", 0)){
			$element = $html->find("template", 0)->plaintext; // находим все элементы с классом «books»
			$tpl->assign("TPL_ID", $template);
			$tpl->assign("TPL_TITLE", $element.' ('.$template.')');
			$tpl->assign("TPL_SEL", '');
			
			$tpl->parse("TPL_ROWS", ".".$moduleName."tpl_row");
		}
	}
	
	$file_path = find("modules", "info.xml"); 
	if ($file_path){
    	foreach($file_path as $modul) {
			$xmlStr = file_get_contents($modul);
			$xml = new SimpleXMLElement($xmlStr);
			$tpl->assign("CONTENT_ID", $xml->modul);
			$tpl->assign("CONTENT_TITLE", $xml->title.' {'.strtoupper($xml->modul).'}');
			$tpl->assign("CONTENT_SEL", '');
			
			$tpl->parse("CONTENT_ROWS", ".".$moduleName."content_row");
		}
	}
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
?>