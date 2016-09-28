<?php
	# SETTINGS #############################################################################
	$moduleName = "article_anons";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "art_row" => $prefix . "art_row.tpl",
	));
	# MAIN #################################################################################
	
	$sql = "SELECT * FROM articles WHERE view = 1 AND page_id = 60 ORDER BY date DESC LIMIT 6";
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		$i = 1;
		while ($row = db_fetch_array($result)) {
			$tpl->assign("ART_TITLE", $row['title']);
			$art_url = "index.php?menu=".$row['page_id']."&art=".$row['id'];
			$tpl->assign("ART_URL", $art_url);
			$tpl->assign("ART_ICON", $row['icon']);
			$tpl->assign("ART_DATE", date("d.m.Y", strtotime($row['date'])));
			
			if($i/2==floor($i/2)){
				$tpl->assign("ART_TR", '</tr><tr>');
			}
			else{
				$tpl->assign("ART_TR", '');
			}
			
			$tpl->parse("ART_ROWS", ".".$moduleName."art_row");
			$i++;
		}
	}
	else{
		$tpl->assign("ART_ROWS", '');
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>