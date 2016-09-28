<?
	# SETTINGS #############################################################################
	
	$moduleName = "small_search";
	
	$prefix = "./modules/".$moduleName."/";
	
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
	));
	
	# MAIN #################################################################################
	$search_id = getPageID("{SITE_SEARCH}");
	$search_url = 'index.php?menu='.$search_id;
	$tpl->assign("SEARCH_URL", $search_url);
	session_name('SEARCH');
	@session_start('SEARCH');
	if(isset($_SESSION['keywords'])){
		$tpl->assign("S_WORD", $_SESSION['keywords']);
		switch($_SESSION['s_type']){
			case 3:
				$tpl->assign("S_TYPE1", '');
				$tpl->assign("S_TYPE2", '');
				$tpl->assign("S_TYPE3", '');
				$tpl->assign("S_TYPE4", '');
			break;
			case 0:
				$tpl->assign("S_TYPE1", '');
				$tpl->assign("S_TYPE2", ' selected="selected"');
				$tpl->assign("S_TYPE3", '');
				$tpl->assign("S_TYPE4", '');
			break;
			case 1:
				$tpl->assign("S_TYPE1", '');
				$tpl->assign("S_TYPE2", '');
				$tpl->assign("S_TYPE3", ' selected="selected"');
				$tpl->assign("S_TYPE4", '');
			break;
			case 2:
				$tpl->assign("S_TYPE1", '');
				$tpl->assign("S_TYPE2", '');
				$tpl->assign("S_TYPE3", ' selected="selected"');
				$tpl->assign("S_TYPE4", '');
			break;
		}
		$tpl->assign("S_FOCUS", '');
	}
	else{
		if(isset($_POST['keywords'])){
			$tpl->assign("S_WORD", $_POST['keywords']);
			switch($_POST['s_type']){
				case 3:
					$tpl->assign("S_TYPE1", '');
					$tpl->assign("S_TYPE2", '');
					$tpl->assign("S_TYPE3", '');
					$tpl->assign("S_TYPE4", '');
				break;
				case 0:
					$tpl->assign("S_TYPE1", '');
					$tpl->assign("S_TYPE2", ' selected="selected"');
					$tpl->assign("S_TYPE3", '');
					$tpl->assign("S_TYPE4", '');
				break;
				case 1:
					$tpl->assign("S_TYPE1", '');
					$tpl->assign("S_TYPE2", '');
					$tpl->assign("S_TYPE3", ' selected="selected"');
					$tpl->assign("S_TYPE4", '');
				break;
				case 2:
					$tpl->assign("S_TYPE1", '');
					$tpl->assign("S_TYPE2", '');
					$tpl->assign("S_TYPE3", ' selected="selected"');
					$tpl->assign("S_TYPE4", '');
				break;
			}
			$tpl->assign("S_FOCUS", '');
		}
		else{
			$tpl->assign("S_TYPE1", '');
			$tpl->assign("S_TYPE2", '');
			$tpl->assign("S_TYPE3", '');
			$tpl->assign("S_TYPE4", '');
			$tpl->assign("S_WORD", getval("STR_MODEL_OR_BRAND"));
			$tpl->assign("S_FOCUS", ' onfocus="if (this.value==\''.getval("STR_MODEL_OR_BRAND").'\') this.value=\'\';"');
		}
	}
	
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>
