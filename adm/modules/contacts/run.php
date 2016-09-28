<?php
	# SETTINGS #############################################################################
	$moduleName = "contacts";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['edt_contact'])){
		$sql = "UPDATE contacts SET 
					company = '".$_POST['company']."',
					contact = '".$_POST['contact']."',
					adres = '".$_POST['adres']."',
					phone = '".$_POST['phone']."',
					email = '".$_POST['email']."',
					skype = '".$_POST['skype']."',
					map = '".$_POST['map']."'
				WHERE id = ".$_POST['cont_id'];
		db_query($sql);
		header("Location: system.php?menu=".$_GET['menu']);
		exit;
	}
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	$sql = "SELECT * FROM contacts WHERE page_id = ".$_GET['menu']." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl->assign("CONTACT_ID", $row['id']);
	$tpl->assign("EDT_COMPANY", $row['company']);
	$tpl->assign("EDT_CONTACT", $row['contact']);
	$tpl->assign("EDT_ADRES", $row['adres']);
	$tpl->assign("EDT_PHONE", $row['phone']);
	$tpl->assign("EDT_EMAIL", $row['email']);
	$tpl->assign("EDT_SKYPE", $row['skype']);
	$tpl->assign("EDT_MAP", $row['map']);
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
?>