<?php
error_reporting (E_ALL);
ini_set("display_errors", "1");
date_default_timezone_set ("Asia/Almaty");
require_once('../../adm/inc/access.php');
$conn = mysql_connect(DB_HOST, DB_LOGIN, DB_PASSWORD) or die ("Соединение не установлено1!");
mysql_select_db(DB_NAME, $conn);
mysql_query("SET NAMES utf8");

// оставляем только числа
function SuperSaveInt($name) {
	$name = strip_tags($name);
	$name = trim($name);
	$name = iconv("utf-8", "windows-1251", $name);
	$name = preg_replace("/[^0-9]/i", "", $name);
	$name = iconv("windows-1251", "utf-8", $name);
	return $name;
}
function db_table_count($table, $where) {
	if (!empty($where)) $sql = "SELECT COUNT(*) FROM {$table} WHERE {$where}"; 
		else $sql = "SELECT COUNT(*) FROM {$table}";
	if (!$result = mysql_query($sql)) {
		return -1;
	} else {
		$count = mysql_fetch_array($result);
		return $count[0];
	}
}

if(isset($_POST['OtzyvPage'])){
	$_POST['OtzyvPage'] = SuperSaveInt($_POST['OtzyvPage']);
	$limit1 = $_POST['OtzyvPage'] * 4;
	$limit2 = 4;
	$out_row['result'] = 'OK';
	$out_row['page'] = $_POST['OtzyvPage']+1;
	$out_row['otzyvy'] = '';
	$result = mysql_query("SELECT * FROM `strah_otzyv`  ORDER BY date DESC LIMIT ".$limit1.",".$limit2);
	while($row = mysql_fetch_array($result)){
		$out_row['otzyvy'].= '<div class="fotka" style="padding-top:60px;">
  <div class="fotka_ramka">
  <img src="'.$row['photo'].'" width="138" height="138" align="left">
  </div>
  <p><font color="#f50056">'.$row['year'].' </font>    <font color="#34373c">'.$row['name'].'</font></p>
  <p style="padding-top:10px;">'.$row['otzyv'].'</p>
  </div>';
	}
	$all_count = db_table_count('strah_otzyv', '');
	$curent_count = $_POST['OtzyvPage'] * 4 + 4;
	if($curent_count>=$all_count){
		$out_row['end'] = 'Y';
	}
	else{
		$out_row['end'] = 'N';
	}
}
else{
	$out_row['result'] = 'Err';
}





header("Content-Type: text/html;charset=utf-8");
echo json_encode($out_row);
?>
