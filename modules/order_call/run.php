<?php
$moduleName = "order_call";
$prefix = "./modules/".$moduleName."/";

$tpl->define(array(
		$moduleName => $prefix . $moduleName.".tpl",
		$moduleName . "mail" => $prefix . "mail.tpl",
	));

# SETTINGS ##############################################################################

$_sendTo = META_EMAIL;				// E-mail ����������
$_sendFrom = $_sendTo;								// E-mail �����������
$_mailSubject = "Заявка от: KazAvtoClub.KZ";		// ���� ������
$_mailFrom = "KazAvtoClub.KZ";		// ������� ������

# MAIN ##################################################################################

// ������� �����������
if(isset($_POST['phone'])){
	$tpl->assign("USER_PHONE", SuperSaveStr($_POST['phone']));
	$tpl->assign("USER_NAME", SuperSaveStr($_POST['name']));
	
	
	$tpl->parse("TEMP", $moduleName . "mail");
	
	sendMailAttach($_sendTo, $_mailSubject, $tpl->fetch("TEMP"), $_mailFrom, $_sendFrom);
	
	header("Location: http://".$_SERVER['HTTP_HOST']."/spasibo");
	exit;
}



$tpl->parse(strtoupper($moduleName), $moduleName);


?>