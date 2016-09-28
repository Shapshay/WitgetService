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
//$_GET['GiftID'] = 2;
//$_GET['POLIS_ID'] = 9;
//$_GET['GIFT_PROC'] = 8;
error_reporting (E_ALL);
ini_set("display_errors", "1");
date_default_timezone_set ("Asia/Almaty");

if(isset($_GET['U_ID'])){
	require_once('../../adm/inc/access.php');
	$conn = mysql_connect(DB_HOST, DB_LOGIN, DB_PASSWORD) or die ("Соединение не установлено!");
	mysql_select_db(DB_NAME, $conn);
	mysql_query("SET NAMES utf8");
	$U_ID = SuperSaveStr($_GET['U_ID']);
	$W_ID = SuperSaveStr($_GET['W_ID']);
	$sql = "SELECT id FROM users WHERE uniq = '".$U_ID."' LIMIT 1";
	$result = mysql_query($sql);
	$row = mysql_fetch_array($result);
	$U_BASE_ID = $row['id'];
		//****************************************************************
	header('Content-Type: text/x-csv; charset=utf-8');
	header("Content-Disposition: attachment;filename=".date("d-m-Y")."-users.xls");
	header("Content-Transfer-Encoding: binary ");
		
		$csv_output ='<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SKIV" />
	<title>Excel</title>
	</head>
	<body>
	<table border="1">
	<tr>
				<td align="center"><strong>№</strong></td>
				<td align="center"><strong>Дата</strong></td>
				<td align="center"><strong>Имя</strong></td>
				<td align="center"><strong>E-mail</strong></td>
	</tr>
	';
	$result = mysql_query("SELECT * FROM stat_contact WHERE w_id = ".$W_ID." AND u_id = ".$U_BASE_ID." ORDER BY date DESC");
		$j=1;
		while ($row = mysql_fetch_array($result)) {
			$csv_output.='<tr>';
			
			$csv_output.='<td>'.$j.'</td>';
			$csv_output.='<td>'.$row['date'].'</td>';
			$csv_output.='<td>'.$row['name'].'</td>';
			$csv_output.='<td>'.$row['email'].'</td>';
			$j++;
			$csv_output.='</tr>';
		}
		
	$csv_output .='</table></body></html>';
	// И наконец выгрузка в EXCEL - что в скрипте как обычный вывод
	echo $csv_output;
	//$out_row['result'] = 'OK';
}
else{
	header("Content-Type: text/html;charset=utf-8");
	echo json_encode($out_row);
	$out_row['result'] = 'Err';
}


?>
