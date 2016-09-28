<?php
$moduleName = "reg";
$prefix = "./modules/".$moduleName."/";

$tpl->define(array(
		$moduleName => $prefix . $moduleName.".tpl",
		$moduleName . "feedback" => $prefix . "feedback.tpl",
		$moduleName . "mail" => $prefix . "mail.tpl",
		$moduleName . "mail2" => $prefix . "mail2.tpl",
	));

# SETTINGS ##############################################################################

$_sendTo = META_EMAIL;				// E-mail ����������
$_sendFrom = $_sendTo;								// E-mail �����������
$_mailSubject = getval("REG_EMAIL_SUBJECT");		// ���� ������
$_mailFrom = "WitgetService.com";		// ������� ������

# MAIN ##################################################################################
session_name('SID');
@session_start();

// ������� �����������
if(isset($_POST['r_email'])){
	if(!checkUsersEmail($_POST['r_email'])){
		//echo $_POST['reg_code']."=".$_SESSION['capcha'];
		
		if($_POST['reg_code']==$_SESSION['capcha']){
		
			$sql = "INSERT INTO users SET 
						uniq = '".uniqid('u_', true)."',
						email = '".SuperSaveStr($_POST['r_email'])."',
						password = '".md5(SuperSaveStr($_POST['password']))."',
						tarif_id = '1',
						amount_date = '".date("Y-m-d H:i",strtotime("+15 days"))."',
						data_reg = NOW()";
			db_query($sql);
			//echo $sql;
			//$k_id = getUserIDtoEmail($_POST['reg_email']);
			
			//�������� ������
			$tpl->assign("USER_LOGIN", SuperSaveStr($_POST['r_email']));
			$tpl->assign("USER_PSW", SuperSaveStr($_POST['password']));
			$tpl->assign("REG_ACTIV", md5(SuperSaveStr($_POST['r_email'])));
			$_sendTo = SuperSaveStr($_POST['r_email']);					// E-mail ����������
			$_sendFrom = META_EMAIL;				// E-mail �����������
			$_mailSubject = getval("REG_EMAIL_SUBJECT");	// ���� ������
			
			$tpl->parse("TEMP", $moduleName . "mail");
			
			sendMail3($_sendTo, $_mailSubject, $tpl->fetch("TEMP"), $_mailFrom, $_sendFrom);
			
			
			
			
			/*
			$loc_url = getCodeBaseURL('index.php?city='.CITY_ID.'&menu='.$_GET['menu'].'&result=4');
			*/
			$tpl->assign("RESULT_STYLE", ' style="color:#6875BF;"');
			$tpl->assign("RESULT", getval("STR_REG_COMPL_MAIL1").'<br /><img src="images/reg1.png" />');
			$tpl->assign("SHOW_FORM", "display:none;");
			//header('Location:  index.php?result=4');
			//exit;
		
		}
		else{
			//echo $_POST['r_email']."*";
			$tpl->assign("R_EMAIL", SuperSaveStr($_POST['r_email']));
			$tpl->assign("R_PSW1", SuperSaveStr($_POST['password']));
			$tpl->assign("R_PSW2", SuperSaveStr($_POST['password_confirm']));
			$tpl->assign("RESULT_STYLE", ' style="color:#ff0000;"');
			$tpl->assign("RESULT", getval("STR_RESULT_ERR_CODE"));
			$tpl->assign("SHOW_FORM", "");
			//$loc_url = getCodeBaseURL('index.php?city='.CITY_ID.'&menu='.$_GET['menu'].'&result=3');
			//header('Location: index.php?result=3');
			//exit;
		}
		

	}
	else{
		$tpl->assign("R_EMAIL", SuperSaveStr($_POST['r_email']));
		$tpl->assign("R_PSW1", SuperSaveStr($_POST['password']));
		$tpl->assign("R_PSW2", SuperSaveStr($_POST['password_confirm']));
		$tpl->assign("RESULT_STYLE", ' style="color:#ff0000;"');
		$tpl->assign("RESULT", getval("STR_RESULT_ERR_MAIL1"));
		$tpl->assign("SHOW_FORM", "");
		//$loc_url = getCodeBaseURL('index.php?city='.CITY_ID.'&menu='.$_GET['menu'].'&result=1');
		//header('Location: index.php?result=1');
		//exit;
		
	}
	$tpl->assign("SHOW_REG", "<script>
			$(document).ready(function() {
				ShowRegModal();
			});
		</script>");
	$tpl->assign("SHOW_EMAIL", "<script>
			$(document).ready(function() {
				$('#r_email').val($('#r_email2').val());
				PswControl();
			});
		</script>");

}
else{
	// ������������ �����������
	if(isset($_GET['reg_activ'])){
		$result = db_query("SELECT id, email, activ FROM users WHERE MD5(email) = '".$_GET['reg_activ']."' LIMIT 1");
		if (db_num_rows($result) > 0){
			$row = db_fetch_array($result);
			$sql = "UPDATE users SET 
							activ = '1'
						WHERE id = ".$row['id'];
			db_query($sql);	
			
			//�������� ������
			$_sendTo = $row['email'];					// E-mail ����������
			$_sendFrom = META_EMAIL;				// E-mail �����������
			$_mailSubject = getval("STR_REG_MAIL_SUBJECT");	// ���� ������
			
			$tpl->parse("TEMP", $moduleName . "mail2");
			
			sendMail3($_sendTo, $_mailSubject, $tpl->fetch("TEMP"), $_mailFrom, $_sendFrom);
			
			$tpl->assign("R_EMAIL", "");
			$tpl->assign("R_PSW1", "");
			$tpl->assign("R_PSW2", "");
			$tpl->assign("RESULT_STYLE", ' style="color:#6875BF;"');
			$tpl->assign("RESULT", getval("STR_RESULT_ACTIVATION").'<br /><img src="images/reg2.png" />');
			$tpl->assign("SHOW_REG", "<script>
					$(document).ready(function() {
						ShowRegModal();
					});
				</script>");
			$tpl->assign("SHOW_FORM", "display:none;");
			$tpl->assign("SHOW_EMAIL", "");
		}
		else{
			$tpl->assign("R_EMAIL", "");
			$tpl->assign("R_PSW1", "");
			$tpl->assign("R_PSW2", "");
			$tpl->assign("RESULT_STYLE", ' style="color:#ff0000;"');
			$tpl->assign("RESULT", getval("STR_RESULT_ACTIVATION_ERR"));
			$tpl->assign("SHOW_REG", "<script>
					$(document).ready(function() {
						ShowRegModal();
					});
				</script>");
			$tpl->assign("SHOW_FORM", "");
			$tpl->assign("SHOW_EMAIL", "");
		}
	}
	else{
		$tpl->assign("R_EMAIL", "");
		$tpl->assign("R_PSW1", "");
		$tpl->assign("R_PSW2", "");
		$tpl->assign("RESULT_STYLE", ' style="color:#ff0000;"');
		$tpl->assign("RESULT", '');
		$tpl->assign("SHOW_REG", "");
		$tpl->assign("SHOW_FORM", "");
		$tpl->assign("SHOW_EMAIL", "");
	}
}


$tpl->parse(strtoupper($moduleName), $moduleName);


?>