<?php
error_reporting (E_ALL);
ini_set("display_errors", 1);
//echo md5('mir2012');
if (isset($_POST['send'])) {
	require_once("inc/access.php");
	require_once("inc/base_func.php");
	require_once("inc/func.php");
	$usrname = substr($_POST['lgn'], 0, 15);
	$usrpass = substr($_POST['psw'], 0, 30);
	if (preg_match("/[^(\w)|(\x7F-\xFF)|(\s)]/", $usrname)) $usrname = "";
	if (preg_match("/[^(\w)|(\x7F-\xFF)|(\s)]/", $usrpass)) $usrpass = "";
	$result = db_query("SELECT * FROM roots WHERE login = '".$usrname."' AND password = MD5('".$usrpass."') LIMIT 1");
	if (db_num_rows($result)){
		session_name('ROOT');
		@session_start('ROOT');
		//session_register('lgn');
		//session_register('psw');
		//session_register('rights');
		$_SESSION['lgn'] = $usrname;
		$_SESSION['psw'] = $usrpass;
		$_SESSION['rights'] = rootRights($usrname);
		// Сохраняем логин и пароль в куках, удаляем если не отметили "запомнить"
		if (isset($_POST['member'])) {
			$cookie_value = $usrname."|".$usrpass;
			setcookie("witget", $cookie_value, time()+60*60*24*30, "", $_SERVER['HTTP_HOST']);
		} else {
			if (isset($_COOKIE['witget'])) setcookie("witget", "", 0);
		}
		header("Location: system.php");
	}
	else{
		echo ('
			<script language="JavaScript">
				alert("Логин или пароль некорректны !!!");
			</script>
		');
	}
	
}
if (isset($_COOKIE['witget'])) {
		$login_info = explode("|", $_COOKIE['witget']);
		if (is_array($login_info)) {
			$usr_login = $login_info[0];
			$usr_passw = $login_info[1];
			$save = 'checked';
		}
}
else{
			$usr_login = '';
			$usr_passw = '';
			$save = '';
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SCM - Skiv Content Managment</title>
<link href="sys.css" rel="stylesheet" type="text/css">
<style type="text/css">
.vhod{
  width: 300px;
  margin: 50px auto;
  text-align: center;
  padding: 30px 50px 30px 30px;
  background: #204162;
   border-radius: 10px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  box-shadow: 1px 1px 50px #2e5e8d;
  -moz-box-shadow: 1px 1px 50px rgba(0,59,118,1);
  -webkit-box-shadow: 1px 1px 50px rgba(0,59,118,1);
}
div, table{
font: 14px Verdana;
}
</style>
</head>
<body bottommargin="0" leftmargin="0" marginheight="0" marginwidth="0" rightmargin="0" topmargin="0" bgcolor="#d9d6d6" text="#ffffff">
<table border="0" width="100%" height="100%">
<tr>
<td align="center">
<form method="post">
<div class="vhod">
<h3>Вход в систему управления!</h3>
<table border="0"><tr>
<td><strong>Логин:</strong><br><input type="text" id="vh10" name="lgn" style="width:160px;" value="<?php echo $usr_login; ?>"></td>
<td><strong>Пароль:</strong><br><input type="password" id="vh10" style="width:160px;" name="psw" value="<?php echo $usr_passw; ?>"></td>
</tr></table>
<p align="center"><input type="checkbox" name="member" class="vh12" id=zap <?php echo $save; ?>>&nbsp;<label for=zap>запомнить</label>
<p align="center"><input type="Submit" id="vh14" value="Войти" name="send">
</form>
</div>
</td>
</tr>
</table>
</body></html>