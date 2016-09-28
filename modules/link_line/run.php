<?php
	# SETTINGS #############################################################################
	$moduleName = "link_line";
	# MAIN #################################################################################
	$result = db_query("SELECT id, parent_id, title FROM pages WHERE id = ".PAGE_ID);
	$row = db_fetch_array($result);
	
	if(isset($_GET['art'])){
		if(PAGE_ID!=2&&PAGE_ID!=65){
			$url = '/'.getItemCHPU($row['parent_id'], 'pages').'/'.getItemCHPU($row['id'], 'pages').'/';
		}
		else{
			$url = '/'.getItemCHPU($row['id'], 'pages').'/';
		}
		$link_line = '<i class="link_line">›</i> <a href="'.$url.'"><span class="link_line">'.$row['title'].'</span></a>';
	}
	else{
		$link_line = '<i class="link_line">›</i> <span class="link_line">'.$row['title'].'</span>';
	}
	
	$i = 1;
	$parent_page = $row['parent_id'];
	while ($parent_page!= 0){
			$result2 = db_query("SELECT id, parent_id, title FROM pages WHERE id = ".$parent_page);
			$row2 = db_fetch_array($result2);
			$url = '/'.getItemCHPU($row2['id'], 'pages').'/';
			if($row2['id']!=182){
				$link_line = '<i class="link_line">›</i> <a href="'.$url.'"><span class="link_line">'.$row2['title'].'</span></a> '.$link_line;
			}
			$parent_page = $row2['parent_id'];
			
			$i++;
	}
	$link_line = '<a href="/"><span class="link_line">Главная</span></a> '.$link_line;
	$tpl->assign(strtoupper($moduleName), $link_line);
	
?>