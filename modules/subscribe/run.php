<?php
	# SETTINGS #############################################################################
	$moduleName = "subscribe";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['s_email'])){
		if(setUserInBase($_POST['s_email'])==0){
			$sql = "INSERT INTO users SET 
						email = '".$_POST['s_email']."',
						data_reg = NOW()";
			db_query($sql);
			selfRedirect("&ss_result=1");
			exit;
		}
		else{
			selfRedirect("&ss_result=2");
			exit;
		}
	}
	if(!isset($_GET['ss_result'])){
		$tpl->assign("SS_RESULT", '');
	}
	else{
		if($_GET['ss_result']==1){
			$tpl->assign("SS_RESULT", getval("SS_RESULT1"));
		}
		else{
			$tpl->assign("SS_RESULT", getval("SS_RESULT2"));
		}
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>