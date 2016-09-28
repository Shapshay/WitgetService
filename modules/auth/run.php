<?php
	# SETTINGS #############################################################################
	$moduleName = "auth";
	# MAIN #################################################################################
	session_name('SID');
	@session_start();
	if(!isset($_GET['u'])){
		if (!checkAuth()) {
			header("Location: http://".$_SERVER['HTTP_HOST']);
			exit;
		}
	}
	
	$tpl->assign(strtoupper($moduleName), "");
	
?>