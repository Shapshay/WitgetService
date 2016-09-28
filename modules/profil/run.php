<?php
	# SETTINGS #############################################################################
	$moduleName = "profil";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "s_row" => $prefix . "s_row.tpl",
		));
	# MAIN #################################################################################
	if(isset($_POST['chng_password1'])){
		$password = md5($_POST['chng_password1']);
		$sql = "UPDATE users 
			SET 
			password = '".$password."'
			WHERE 
			id = ".U_BASE_ID;
		$sql_result = db_query($sql);
		session_name('SID');
		@session_start();
		$_SESSION['password'] = $_POST['chng_password1'];
		//selfRedirect();
		$tpl->assign("CHANGE_PSW_RESULT", '<script>
			swal("ОК", "Пароль успешно изменен", "success");
			</script>');
	}
	else{
		$tpl->assign("CHANGE_PSW_RESULT", '');
	}
	
	if(isset($_POST['u_email'])){
		$fio = SuperSaveStr2($_REQUEST['u_fio']);
		$email = SuperSaveStr2($_REQUEST['u_email']);
		$phone = SuperSaveStr2($_REQUEST['u_phone']);
		$adres = SuperSaveStr2($_REQUEST['u_adres']);
		$sql = "UPDATE users 
			SET 
			fio = '".$fio."', 
			email = '".$email."', 
			phone = '".$phone."', 
			adres = '".$adres."'
			WHERE 
			id = ".U_BASE_ID;
		$sql_result = db_query($sql);
	}
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	$sql = "SELECT * FROM users WHERE id = ".U_BASE_ID." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	$tpl->assign("U_EDT_DATE_REG", $row['data_reg']);
	$tpl->assign("U_EDT_FIO", $row['fio']);
	$tpl->assign("U_EDT_EMAIL", $row['email']);
	$tpl->assign("U_EDT_PHONE", $row['phone']);
	$tpl->assign("U_EDT_ADRES", $row['adres']);
	
	$sql2 = "SELECT operations.*,
						 tarifs.title as tarif
				FROM operations 
				LEFT OUTER JOIN tarifs ON operations.action_type = tarifs.id
				WHERE u_id = ".U_BASE_ID." AND pay_ok = 1 
				ORDER BY date DESC";
	$result2 = db_query($sql2);
	if(db_num_rows($result2) > 0){
		$i = 1;
		while ($row2 = db_fetch_array($result2)) { 
			$tpl->assign("STAT_NUM", $i);
			$tpl->assign("STAT_DATE", $row2['date']);
			$tpl->assign("STAT_NAME", $row2['tarif']);
			$tpl->assign("STAT_EMAIL", $row2['amount']);
			
			$tpl->parse("OP_ROWS", "." .$moduleName. "s_row");
			$i++;
		}
	}
	else{
		$tpl->assign("OP_ROWS", '<tr><td colspan="3" style="color:#FF0000" align="center">Данных необнаружено !</td></tr>');
	}
	
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>