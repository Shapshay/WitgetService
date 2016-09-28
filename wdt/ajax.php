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
// Отправляем письмо
function sendMail3($mail_to, $subject, $body, $sender_name = "", $sender_mail = "") {
	$mail = new PHPMailer();
	$mail->IsSMTP(); // telling the class to use SMTP
	$mail->Host       = "mail.witgetservice.com"; // SMTP server
	$mail->SMTPDebug  = 0;                     // enables SMTP debug information (for testing)
											   // 1 = errors and messages
											   // 2 = messages only
	$mail->SMTPAuth   = true;                  // enable SMTP authentication
	$mail->Host       = "mail.witgetservice.com"; // sets the SMTP server
	$mail->Port       = 587;                    // set the SMTP port for the GMAIL server
	$mail->Username   = "info@witgetservice.com"; // SMTP account username
	$mail->Password   = "72COlKuo";        // SMTP account password
	
	$mail->SetFrom($sender_mail, $sender_name);
	
	$mail->AddReplyTo($sender_mail,$sender_name);
	
	$mail->Subject    = $subject;

	$mail->AltBody    = "12345"; // optional, comment out and test
	
	$body             = $body;
	
	$mail->MsgHTML($body);
	
	$mail->AddAddress($mail_to, 'Subscriber');
	
	if(!$mail->Send()) {
		$sql = "Mailer Error: " . $mail->ErrorInfo;
	} else {
		$sql = "Message sent!";
	}
	
	if($sql==''){
		$sql = "TEST";
	}
	//echo $sql;
	return $sql;
}
//$_GET['GiftID'] = 2;
//$_GET['POLIS_ID'] = 9;
//$_GET['GIFT_PROC'] = 8;
error_reporting (E_ALL);
ini_set("display_errors", "1");
date_default_timezone_set ("Asia/Almaty");

if(isset($_GET['u'])){
	require_once('../adm/inc/access.php');
	require_once('../phpmailer/class.phpmailer.php');
	include("../phpmailer/class.smtp.php");
	$conn = mysql_connect(DB_HOST, DB_LOGIN, DB_PASSWORD) or die ("Соединение не установлено!");
	mysql_select_db(DB_NAME, $conn);
	mysql_query("SET NAMES utf8");
	$U_ID = SuperSaveStr($_GET['u']);
	$W_ID = SuperSaveInt($_REQUEST['w_id']);
	$name = SuperSaveStr($_REQUEST['name']);
	$email = SuperSaveStr($_REQUEST['email']);
	//$phone = SuperSaveStr($_REQUEST['phone']);
	$msg_id = SuperSaveStr($_REQUEST['msg_id']);
	$msg_theme = SuperSaveStr($_REQUEST['msg_theme']);
	$message = SuperSaveStr($_REQUEST['message']);
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
	if($message==''){
		$return_data['message'] = 'ERROR';
		$send = false;
	}
	if($U_ID!=''&&$W_ID!=''&&$msg_id!=''){
		$sql = "SELECT id FROM widgets WHERE id = '".$W_ID."' LIMIT 1";
		$result = mysql_query($sql);
		if(mysql_num_rows($result)>0){
			$result = mysql_query("SELECT * FROM msgs WHERE w_id = ".$W_ID." AND u_id = ".$U_BASE_ID." AND uniq = '".$msg_id."' AND send = 0");
			if(mysql_num_rows($result)>0){
				if($send){
					// send messege
					$sql = "UPDATE msgs SET 
						name = '".$name."',
						email = '".$email."',
						msg = '".$message."',
						send = '1'
						WHERE w_id = ".$W_ID." AND u_id = ".$U_BASE_ID." AND uniq = '".$msg_id."'";
					mysql_query($sql);
					
					$_mailFrom = "WitgetService.com";
					$_sendFrom = "info@witgetservice.com";		
					$post_body = "<p>Сообщение с виджета контактов</p>
					<p><strong>Имя пользователя:</strong> ".$name."</p>
					<p><strong>E-mail:</strong> ".$email."</p>
					<p><strong>Сообщение:</strong><br>".$message."</p>
					<p>С уважением,<br />
					Команда WitgetService.com</p>";
					sendMail3($ADM_EMAIL, $msg_theme, $post_body, $_mailFrom, $_sendFrom);
					
					
					
					$return_data['status'] = 'OK';
					$return_data['return_url'] = '';
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
		$return_data['status'] = 'FATAL';
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
