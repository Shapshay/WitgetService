<?php
function SuperSaveInt($name) {
	$name = strip_tags($name);
	$name = trim($name);
	$name = iconv("utf-8", "windows-1251", $name);
	$name = preg_replace("/[^0-9]/i", "", $name);
	$name = iconv("windows-1251", "utf-8", $name);
	return $name;
}
function SuperSaveStr($name) {
	$name = strip_tags($name);
	$name = trim($name);
	$name = iconv("utf-8", "windows-1251", $name);
	$name = preg_replace("/(?:([a-zA-Z0-9_.\s])|.)/iu", "$1", $name);
	$name = iconv("windows-1251", "utf-8", $name);
	return $name;
}
//$_POST['GiftID'] = 2;
//$_POST['POLIS_ID'] = 9;
//$_POST['GIFT_PROC'] = 8;
error_reporting (E_ALL);
ini_set("display_errors", "1");
date_default_timezone_set ("Asia/Almaty");

if(isset($_POST['U_ID'])&&isset($_POST['wdt'])){
	require_once('../../adm/inc/access.php');
	$conn = mysql_connect(DB_HOST, DB_LOGIN, DB_PASSWORD) or die ("Соединение не установлено!");
	mysql_select_db(DB_NAME, $conn);
	mysql_query("SET NAMES utf8");
	$U_ID = SuperSaveStr($_POST['U_ID']);
	$wdt = SuperSaveInt($_POST['wdt']);
	
	$result3 = mysql_query("SELECT id, tarif_id FROM `users` WHERE `uniq`='".$U_ID."' LIMIT 1");
	$row3=mysql_fetch_array($result3);
	
	$sql = "UPDATE u_w_options SET 
				OnOff = 0
				WHERE u_id = '".$row3['id']."'";
	mysql_query($sql);
	

	$sql = "UPDATE u_w_options SET 
				OnOff = 1
				WHERE u_id = '".$row3['id']."' AND w_id = '".$wdt."'";
	mysql_query($sql);
	$out_row['result'] = 'OK';
}
else{
	$out_row['result'] = 'Err';
}
header("Content-Type: text/html;charset=utf-8");
echo json_encode($out_row);

?>
