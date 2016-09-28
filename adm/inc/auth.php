<?php
	
	session_name('ROOT');
	session_start('ROOT');
	
	require_once("inc/access.php");
	require_once("inc/base_func.php");
	require_once("inc/func.php");
	require_once("inc/val.php");
	
	function checkAuth() {
		//if (!session_is_registered('lgn') || !session_is_registered('psw')) return false;
		if (!$_SESSION['lgn'] || !$_SESSION['psw']) return false;
		
		$result = db_query("SELECT * FROM roots WHERE login = '".$_SESSION['lgn']."' AND password = MD5('".$_SESSION['psw']."') LIMIT 1");
		if (db_num_rows($result) > 0) {
		return true;
		}
		else{
		return false;
		}
	}
	
	if (!checkAuth()) {
		echo '<script>window.location = "index.php"; </script>';
		exit;
	}
	
?>
