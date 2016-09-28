<?php
	# SETTINGS #############################################################################
	$moduleName = "test_drives";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "art_view" => $prefix . "art_view.tpl",
			$moduleName . "art_row" => $prefix . "art_row.tpl",
			$moduleName . "com_row" => $prefix . "com_row.tpl",
	));
	# SETTINGS ##############################################################################

	$_anonsCount = 12;
	# MAIN #################################################################################
	if(isset($_GET['art'])){
		// �������� ������
		$sql2 = "UPDATE articles SET 
							view_count = view_count + 1
					WHERE id = ".$_GET['art'];
		db_query($sql2);
		
		if(isset($_POST['comment'])){
			$name = SuperSaveStr($_POST['name']);
			$comment = SuperSaveStr($_POST['comment']);
			$sql = "INSERT INTO comments SET 
							art_id = '".$_GET['art']."',
							name = '".$name."',
							comment = '".$comment."',
							date = NOW()";
			db_query($sql);
			header('Location: /'.getItemCHPU($_GET['menu'], 'pages').'/'.getItemCHPU($_GET['art'], 'articles'));
			exit;
		}
		
		$sql = "SELECT * FROM articles WHERE id = ".$_GET['art']." LIMIT 1";
		$result = db_query($sql);
		$row = db_fetch_array($result);
		
		$tpl->assign("ART_TITLE", $row['title']);
		$tpl->assign("ART_VIEW", $row['view_count']);
		$tpl->assign("PAGE_TITLE", $row['title']);
		$tpl->assign("ART_ICON", $row['icon']);
		$tpl->assign("ART_TEXT", $row['content']);
		$tpl->assign("ART_DATE", date("d.m.Y H:i", strtotime($row['date'])));
		$tpl->assign("ART_COMMENTS_COUNT", getArtCommentCount($row['id']));
		if($row['video']!=''){
			//Lxd58W9RtUw
			$video = str_replace('https://www.youtube.com/watch?v=', '', $row['video']);
			$tpl->assign("ART_VIDEO", '<iframe width="640" height="360" src="https://www.youtube.com/embed/'.$video.'?disablekb=1&rel=0&showinfo=0" frameborder="0" allowfullscreen></iframe>');
		}
		else{
			$tpl->assign("ART_VIDEO", '');
		}
		
		$SQL3 = "SELECT 
						*
					FROM comments
					WHERE art_id = ".$_GET['art']." AND view = 1";
		$result3 = db_query($SQL3);
		$com_count = 0;
		if (db_num_rows($result3) > 0) {
			while($row3 = db_fetch_array($result3)){
				$tpl->assign("COM_NAME", $row3['name']);
				$tpl->assign("COM_TEXT", $row3['comment']);
				$tpl->assign("COM_DATE", date("d.m.Y H:i", strtotime($row3['date'])));
				$com_count++;
				$tpl->parse("COM_ROWS", ".".$moduleName."com_row");
			}
		}
		else{
			$tpl->assign("COM_ROWS", '');
		}
		$tpl->assign("ART_COMMENTS_COUNT", $com_count);
		
		$tpl->assign("META_TITLE", $row['meta_title']);
		$tpl->assign("META_DESC", $row['meta_desc']);
		$tpl->assign("META_KEY", $row['meta_key']);
		
		
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."art_view");
	}
	else{
		// ������ ���������
		$_pages->numRows = db_table_count('articles', "page_id = ".PAGE_ID);
		$_pages->rowsPerPage = $_anonsCount;
		
		$sql = "SELECT * FROM articles WHERE page_id = ".$_GET['menu']." ORDER BY date DESC LIMIT ".$_pages->getLimit();
		
		
		//$sql = "SELECT * FROM articles WHERE page_id = ".$_GET['menu']." ORDER BY date DESC";
		$result = db_query($sql);
		if (db_num_rows($result) > 0) {
			$i = 1;
			while ($row = db_fetch_array($result)) {
				$tpl->assign("ART_TITLE", $row['title']);
				//$art_url = "index.php?menu=".$_GET['menu']."&art=".$row['id'];
				$art_url = '/'.getItemCHPU($_GET['menu'], 'pages').'/'.getItemCHPU($row['id'], 'articles');
				$tpl->assign("ART_URL", $art_url);
				$tpl->assign("ART_ICON", $row['icon']);
				$tpl->assign("ART_DATE", date("d.m.Y H:i", strtotime($row['date'])));
				$tpl->assign("ART_DESC", $row['description']);
				$tpl->assign("ART_VIEW", $row['view_count']);
				$tpl->assign("ART_COMMENTS_COUNT", getArtCommentCount($row['id']));
				
				
				$tpl->parse("ART_ROWS", ".".$moduleName."art_row");
				$i++;
			}
			// Формируем разбивку по страницам
			if ($_pages->getPagesCount() > 1) {
				
				$pageUrl = getItemCHPU($_GET['menu'], 'pages').'/?page={PAGE}';
				
				$pageView = $_pages->getPageLinks($pageUrl, 'pages');
				$tpl->assign("PAGES", $pageView);
			} else $tpl->assign("PAGES", '');
			
		}
		else{
			$tpl->assign("ART_ROWS", '');
			$tpl->assign("PAGES", '');
		}
		$tpl->parse(strtoupper($moduleName), $moduleName);
	}
?>