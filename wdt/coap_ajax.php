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
// SOAP штрафов
function sendSoap($name, $phone, $gn, $pn, $email = null){
//	$name = 'Alexey';
//	$phone = '87078071312';
//	$gn = 'A375YHN';
//	$pn = 'AV00138647';
//	$email = 'Null';

	$client = new SoapClient("http://89.218.11.74/soap_server/wsdl");
	$answer = $client->get_info1($name, $phone, $gn, $pn, $email);

	return base64_decode($answer['return']);
//	return $client;
	   
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
	$phone = SuperSaveInt($_REQUEST['phone']);
	$msg_id = SuperSaveStr($_REQUEST['msg_id']);
	$pn = SuperSaveStr($_REQUEST['pn']);
	$gn = SuperSaveStr($_REQUEST['gn']);
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
	if($phone==''){
		$return_data['phone'] = 'ERROR';
		$return_data['phone_str'] = '+'.$phone.'+'.$_REQUEST['phone'].'*';
		$send = false;
	}
	if($gn==''){
		$return_data['gn'] = 'ERROR';
		$send = false;
	}
	if($pn==''){
		$return_data['pn'] = 'ERROR';
		$send = false;
	}
	if($U_ID!=''&&$W_ID!=''&&$msg_id!=''&&$send){
		$sql = "SELECT id FROM widgets WHERE id = '".$W_ID."' LIMIT 1";
		$result = mysql_query($sql);
		if(mysql_num_rows($result)>0){
			$result = mysql_query("SELECT * FROM coap WHERE w_id = ".$W_ID." AND u_id = ".$U_BASE_ID." AND uniq = '".$msg_id."' AND send = 0");
			if(mysql_num_rows($result)>0){
				if($send){
					// send messege
					$sql = "UPDATE coap SET 
						name = '".$name."',
						email = '".$email."',
						phone = '".$phone."',
						gn = '".$gn."',
						pn = '".$pn."',
						send = '1'
						WHERE w_id = ".$W_ID." AND u_id = ".$U_BASE_ID." AND uniq = '".$msg_id."'";
					mysql_query($sql);
					
					$fine = str_replace("<h1>","<center><div><b>",sendSoap($name, $phone, $gn, $pn, $email));
					$fine = str_replace("</h1>","</b></div></center>",$fine);
					
					//$fine = "Проверка";
					
					$return_data['status'] = 'OK';
					$return_data['return_url'] = '';
					$return_data['close_delay'] = 1000*intval(5);
					$return_data['fine'] = $fine;
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
				$return_data['status'] = 'FATAL';
				echo $jsonp_callback.'('.json_encode($return_data).')';
				exit;
			}
		}
		else{
			$return_data['status'] = 'FATAL';
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
	$return_data['fine'] = '
		<center><div><b>В тестовой версии проверка штрафов непроизводится.<br>Тестовый отчет о наличии/отсутствии нарушений с камер видеофиксации</b></div></center>
		<br>
		<table class="features-table table">
		<thead>
		<tr>
		<th class="green">Авто</th>
		<th class="green">Марка</th>
		<th class="green">Предписание</th>
		<th class="green">Дата</th>
		<th class="green">Место</th>
		<th class="green">Нарушение</th>
		<th class="green">Штраф</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td class="grey">A375YHN</td>
		<td class="grey"></td>
		<td class="grey">0213.0531019</td>
		<td class="grey">2013-12-23T11:45:08+00:00</td>
		<td class="grey">Рыскулова - пешеходный путепровод "Школа" (ул.Волочаевская лог)</td>
		<td class="grey">Превышение установленной скорости движения от 10 до 20 км/ч</td>
		<td class="grey">8655</td>
		</tr>
		</tbody>
		</table>
		<center><div><b>Спасибо, что Вы с нами!</b></div></center>';
	$return_data['close_delay'] = 1000*intval(5);
	echo $jsonp_callback.'('.json_encode($return_data).')';
	exit;
}
?>
