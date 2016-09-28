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
	$result4 = mysql_query("SELECT options, folder FROM `widgets` WHERE `id`='".$wdt."' LIMIT 1");
	$row4=mysql_fetch_array($result4);
	
	if($row3['tarif_id']!=0){
		$result = mysql_query("SELECT COUNT(id) AS count_w FROM `u_w_options` WHERE `u_id`='".$row3['id']."'");
		$row=mysql_fetch_array($result);
		$result2 = mysql_query("SELECT 
											w_count,
											title
										FROM `tarifs` 
										WHERE `id`='".$row3['tarif_id']."'");
		$row2=mysql_fetch_array($result2);
		if(($row['count_w']+1)<=$row2['w_count']){
			$result5 = mysql_query("SELECT COUNT(id) AS count_w FROM `u_w_options` WHERE `u_id`='".$row3['id']."' AND `w_id`='".$wdt."'");
			$row5=mysql_fetch_array($result5);
			if($row5['count_w']==0){
				$sql = "INSERT INTO u_w_options SET 
							u_id = '".$row3['id']."', 
							w_id = '".$wdt."',
							options = '".$row4['options']."'";
				mysql_query($sql);
				$out_row['result'] = 'OK';
				$out_row['folder'] = $row4['folder'];
			}
			else{
				$out_row['result'] = 'DoubleErr';
			}
		}
		else{
			$out_row['result'] = 'LimitErr';
			$out_row['w_limit'] = $row2['w_count'];
			$out_row['tarif'] = $row2['title'];
		}
	}
	else{
		$out_row['result'] = 'TarifErr';
		$out_row['tarif'] = "SELECT id, tarif_id FROM `users` WHERE `uniq`='".$U_ID."' LIMIT 1";
	}
}
else{
	$out_row['result'] = 'Err';
}
header("Content-Type: text/html;charset=utf-8");
echo json_encode($out_row);

?>
