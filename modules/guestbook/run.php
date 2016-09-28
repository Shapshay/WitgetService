<?php
	# SETTINGS #############################################################################
	$moduleName = "guestbook";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "otz_row" => $prefix . "otz_row.tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['add_otz'])){
		$sql = "INSERT INTO guestbook SET 
					page_id = '".$_GET['menu']."',
					name = '".$_POST['name']."',
					text = '".$_POST['text']."',
					plus = '".$_POST['plus']."',
					minus = '".$_POST['minus']."',
					view = '0',
					date = NOW()";
		db_query($sql);
		header("Location: index.php?menu=".$_GET['menu']."&result=1");
		exit;
	}
	if(isset($_GET['result'])){
		$tpl->assign("OTZ_RESULT", getval("STR_ADD_OTZ_COMPLEET"));
	}
	else{
		$tpl->assign("OTZ_RESULT", '');
	}
	$sql = "SELECT * FROM guestbook WHERE view = 1 ORDER BY date DESC";
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		$i = 1;
		while ($row = db_fetch_array($result)) {
			$tpl->assign("OTZ_NAME", $row['name']);
			$tpl->assign("OTZ_TEXT", $row['text']);
			$tpl->assign("OTZ_DATE", date("d.m.Y", strtotime($row['date'])));
			$tpl->assign("OTZ_PLUS", $row['plus']);
			$tpl->assign("OTZ_MINUS", $row['minus']);
			if($i/2==floor($i/2)){
				$tpl->assign("OTZ_CLASS", 'b-opinion_layout_dark');
			}
			else{
				$tpl->assign("OTZ_CLASS", '');
			}
			
			$tpl->parse("OTZ_ROWS", ".".$moduleName."otz_row");
			$i++;
		}
	}
	else{
		$tpl->assign("ART_ROWS", '');
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>