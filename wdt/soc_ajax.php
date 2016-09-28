<?php
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
function getSocialSharID($u_id, $w_id) {
	$result = mysql_query("SELECT id FROM stat_soc_sharing WHERE u_id = ".$u_id." AND w_id = ".$w_id." AND DATE_FORMAT(date, '%Y%m%d') = ".date("Ymd")." LIMIT 1");
	if (mysql_num_rows($result) > 0) {
		$row = mysql_fetch_array($result);
		return $row[0];
	}
	return 0;
}

error_reporting (E_ALL);
ini_set("display_errors", "1");
date_default_timezone_set ("Asia/Almaty");
//echo "Y1";
if(isset($_GET['u'])){
	require_once('../adm/inc/access.php');
	$conn = mysql_connect(DB_HOST, DB_LOGIN, DB_PASSWORD) or die ("Соединение не установлено!");
	mysql_select_db(DB_NAME, $conn);
	mysql_query("SET NAMES utf8");
	$U_ID = SuperSaveStr($_GET['u']);
	$W_ID = SuperSaveInt($_REQUEST['w_id']);
	$social = SuperSaveInt($_REQUEST['social']);
	//$email = SuperSaveStr($_REQUEST['page']);
	//$phone = SuperSaveStr($_REQUEST['phone']);
	//$msg_id = SuperSaveStr($_REQUEST['msg_id']);
	//$msg_theme = SuperSaveStr($_REQUEST['msg_theme']);
	//$message = SuperSaveStr($_REQUEST['message']);
	$sql = "SELECT id FROM users WHERE uniq = '".$U_ID."' LIMIT 1";
	$result = mysql_query($sql);
	if(mysql_num_rows($result)>0){
		$row = mysql_fetch_array($result);
		$U_BASE_ID = $row['id'];
	}
	else{
		exit;
	}
	//*******************************************************************************************************
	switch($social){
		case 1:
			$f_t = 'vk';
		break;
		case 2:
			$f_t = 'ok';
		break;
		case 3:
			$f_t = 'f';
		break;
		case 4:
			$f_t = 't';
		break;
		case 5:
			$f_t = 'mail';
		break;
		default:
			$f_t = 'vk';
		break;
	}
	
	if($U_ID!=''&&$W_ID!=''){
		$sql = "SELECT id FROM widgets WHERE id = '".$W_ID."' LIMIT 1";
		$result = mysql_query($sql);
		if(mysql_num_rows($result)>0){
			//echo "Y";
			$stat_id = getSocialSharID($U_BASE_ID, $W_ID);
			if($stat_id==0){
				$sql = "INSERT INTO stat_soc_sharing SET 
							w_id = '".$W_ID."',
							u_id = '".$U_BASE_ID."',
							".$f_t." = 1,
							date = NOW()";
				mysql_query($sql);
			}
			else{
				$sql = "UPDATE stat_soc_sharing SET 
							".$f_t." = ".$f_t." + 1
							WHERE id = ".$stat_id;
				mysql_query($sql);
			}
			exit;
		}
		else{
			exit;
		}
	}
	else{
		exit;
	}
}
else{
	// local
	exit;
}
?>
