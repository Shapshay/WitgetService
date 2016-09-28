<?php
	# SETTINGS #############################################################################
	$moduleName = "page_setings";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "tpl_row" => $prefix . "tpl_row.tpl",
			$moduleName . "content_row" => $prefix . "content_row.tpl",
	));
	
	# MAIN #################################################################################
	if(isset($_POST['edt_page'])){
		if(isset($_POST['view'])){
			$view = 1;
		}
		else{
			$view = 0;
		}
		if(isset($_POST['start'])){
			$start = 1;
			$subresult = "UPDATE pages SET start = 0 WHERE group_id = 1";
			db_query($subresult);
		}
		else{
			$start = 0;
		}
		$sql = "UPDATE pages SET 
					view = '".$view."',
					title = '".$_POST['title']."',
					chpu = '".setPageCHPU($_POST['chpu'], $_GET['ch'])."',
					icon = '".$_POST['page_icon']."',
					icon2 = '".$_POST['icon']."',
					description = '".$_POST['description']."',
					seo_title = '".$_POST['seo_title']."',
					seo_key = '".$_POST['seo_key']."',
					seo_desc = '".$_POST['seo_desc']."',
					content = '{".strtoupper($_POST['content'])."}',
					stemplate = '".$_POST['stemplate']."',
					start = '".$start."'
				WHERE id = ".$_GET['ch']."
				LIMIT 1";
		db_query($sql);
		
		$sql2 = "INSERT INTO r_log SET 
						r_id = '".ROOT_ID."',
						act_id = '2',
						koment = '".$_POST['title']."',
						date_log = NOW()";
		db_query($sql2);
		header("Location: system.php?menu=".$_GET['ch']);
		exit;
	}
	
	$sql="SELECT * FROM pages WHERE id=".$_GET['ch']." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl->assign("EDT_TITLE", $row['title']);
	$tpl->assign("EDT_CHPU", $row['chpu']);
	$tpl->assign("EDT_PAGE_ICON", $row['icon']);
	$tpl->assign("EDT_PAGE_ICON3", $row['icon2']);
	$tpl->assign("EDT_DESC", $row['description']);
	$tpl->assign("EDT_SEOTITLE", $row['seo_title']);
	$tpl->assign("EDT_SEOKEY", $row['seo_key']);
	$tpl->assign("EDT_SEODESC", $row['seo_desc']);
	
	if($row['icon']!=''){
		$tpl->assign("EDT_PAGE_ICON2", '<img src="'.$row['icon'].'"><br>');
	}
	else{
		$tpl->assign("EDT_PAGE_ICON2", '');
	}
	if($row['icon2']!=''){
		$tpl->assign("EDT_PAGE_ICON4", '<img src="'.$row['icon2'].'"><br>');
	}
	else{
		$tpl->assign("EDT_PAGE_ICON4", '');
	}
	if($row['view']==1){
		$tpl->assign("VIEW_CHECK", ' checked="checked"');
	}
	else{
		$tpl->assign("VIEW_CHECK", '');
	}
	if($row['start']==1){
		$tpl->assign("START_CHECK", ' checked="checked"');
	}
	else{
		$tpl->assign("START_CHECK", '');
	}
	
	$sql2 = "SELECT 
				tpl_groups.tpl_folder AS tpl_folder
			FROM site_setings 
			LEFT OUTER JOIN tpl_groups ON site_setings.tpl_group_id = tpl_groups.id
			LIMIT 1";
	$result2 = db_query($sql2);
	$row2 = db_fetch_array($result2);
	$tpl_arr = array();
	$dir = opendir ("../templates/".$row2['tpl_folder']); 
	while (false !== ($file = readdir($dir))) { 
    	if (strpos($file, '.tpl',1)) { 
			$tpl_arr[] = $file;
    	}
	}
	sort($tpl_arr);
	$html = new simple_html_dom();
	foreach($tpl_arr as $template) {
		$url = 'http://'.$_SERVER['HTTP_HOST'].'/templates/'.$row2['tpl_folder'].'/'.$template;
		$postdata = '';
		$result = post_content($url, $postdata);
		$html2 = $result['content'];
		$html->load($html2); //��������� HTML-���
  		if($html->find("template", 0)){
			$element = $html->find("template", 0)->plaintext; // ������� ��� �������� � ������� �books�
			$tpl->assign("TPL_ID", $template);
			$tpl->assign("TPL_TITLE", $element.' ('.$template.')');
			if($template==$row['stemplate']){
				$tpl->assign("TPL_SEL", ' selected');
			}
			else{
				$tpl->assign("TPL_SEL", '');
			}
			
			
		}
		else{
			$tpl->assign("TPL_ID", $template);
			$tpl->assign("TPL_TITLE", 'Бланк ('.$template.')');
			if($template==$row['stemplate']){
				$tpl->assign("TPL_SEL", ' selected');
			}
			else{
				$tpl->assign("TPL_SEL", '');
			}
		}
		$tpl->parse("TPL_ROWS", ".".$moduleName."tpl_row");
	}
	
	$file_path = find("modules", "info.xml"); 
	if ($file_path){
    	foreach($file_path as $modul) {
			$xmlStr = file_get_contents($modul);
			$xml = new SimpleXMLElement($xmlStr);
			$tpl->assign("CONTENT_ID", $xml->modul);
			$tpl->assign("CONTENT_TITLE", $xml->title.' {'.strtoupper($xml->modul).'}');
			$tpl->assign("CONTENT_SEL", '');
			$page_tmp_modul = '{'.strtoupper($xml->modul).'}';
			if($page_tmp_modul==$row['content']){
				$tpl->assign("CONTENT_SEL", ' selected');
			}
			else{
				$tpl->assign("CONTENT_SEL", '');
			}
			
			$tpl->parse("CONTENT_ROWS", ".".$moduleName."content_row");
		}
	}
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
?>