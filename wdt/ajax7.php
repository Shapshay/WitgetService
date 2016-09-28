<?php
if (isset($_REQUEST['callback'])) {
	header("Content-type: text/javascript");
	$jsonp_enabled = true;
	$jsonp_callback = $_REQUEST['callback'];
} else exit;
function SuperSaveInt($name) {
	$name = strip_tags($name);
	$name = trim($name);
	$name = stripslashes($name);
	$name = iconv("utf-8", "windows-1251", $name);
	$name = preg_replace("/[^0-9]/i", "", $name);
	$name = iconv("windows-1251", "utf-8", $name);
	return $name;
}
function SuperSaveStr($name) {
	$name = strip_tags($name);
	$name = trim($name);
	$name = stripslashes($name);
	$name = str_replace('"','',$name);
	$name = str_replace("'",'',$name);
	//$name = iconv("utf-8", "windows-1251", $name);
	//$name = preg_replace("/(?:([a-zA-Z0-9_.\s])|.)/iu", "$1", $name);
	//$name = iconv("windows-1251", "utf-8", $name);
	return $name;
}
error_reporting (E_ALL);
ini_set("display_errors", "1");
date_default_timezone_set ("Asia/Almaty");

if(isset($_GET['u'])){
	require_once('../adm/inc/access.php');
	$conn = mysql_connect(DB_HOST, DB_LOGIN, DB_PASSWORD) or die ("Соединение не установлено!");
	mysql_select_db(DB_NAME, $conn);
	mysql_query("SET NAMES utf8");
	$U_ID = SuperSaveStr($_GET['u']);
	$W_ID = SuperSaveInt($_REQUEST['w_id']);
	$name = SuperSaveStr($_REQUEST['name']);
	$email = SuperSaveStr($_REQUEST['email']);
	$sql = "SELECT id, email FROM users WHERE uniq = '".$U_ID."' LIMIT 1";
	$result = mysql_query($sql);
	if(mysql_num_rows($result)>0){
		$row = mysql_fetch_array($result);
		$U_BASE_ID = $row['id'];
		$ADM_EMAIL = $row['email'];
	}
	else{
		$return_data['status'] = 'FATAL';
		echo $jsonp_callback.'('.json_encode($return_data).')';
		exit;
	}
	$send = true;
	//*******************************************************************************************************
	$return_data = array();
	
	$pattern = '/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/';
	if($email==''||!preg_match ($pattern , $_REQUEST['email'])){
		$return_data['email'] = 'ERROR';
		$send = false;
	}
	if($name==''){
		$return_data['name'] = 'ERROR';
		$send = false;
	}
	if($U_ID!=''&&$W_ID!=''&&$send){
		$sql = "SELECT id FROM widgets WHERE id = '".$W_ID."' LIMIT 1";
		$result = mysql_query($sql);
		if(mysql_num_rows($result)>0){
			$sql = "INSERT INTO stat_contact SET 
				name = '".$name."',
				email = '".$email."',
				w_id = '".$W_ID."',
				u_id = '".$U_BASE_ID."',
				date = NOW()";
			mysql_query($sql);
			
			$return_data['status'] = 'OK';
			$return_data['return_url'] = '';
			$return_data['sql'] = $sql;
			$return_data['close_delay'] = 1000*intval(5);
			echo $jsonp_callback.'('.json_encode($return_data).')';
			exit;
			
		}
		else{
			$return_data['status'] = 'ERROR';
			echo $jsonp_callback.'('.json_encode($return_data).')';
			exit;
		}
	}
	else{
		$return_data['status'] = 'ERROR';
		echo $jsonp_callback.'('.json_encode($return_data).')';
		exit;
	}
}
else{
	// local
	$return_data = array();
	$return_data['status'] = 'OK';
	$return_data['return_url'] = '';
	$return_data['close_delay'] = 1000*intval(5);
	echo $jsonp_callback.'('.json_encode($return_data).')';
	exit;
}
?>
