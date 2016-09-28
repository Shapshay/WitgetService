<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<?php
$str = '	<div class="logo_enter">
		<div class="logo">
			<a href="#"><img src="images/logo.jpg" border="0" /></a>
			<div class="slogan">Программизмы и методы их решения</div>
		</div>
		<div class="enter">
			<form method="post">
				<input type="text" id="login" name="login" placeholder="Логин" /><br />
				<input type="text" id="password" name="password" placeholder="Пароль" /><br />
				<button type="submit" class="entButton">ВХОД</button>
				<p><a href="#">Регистрация</a></p>
			</form>
		</div>
	</div>';
echo htmlentities($str, ENT_QUOTES, "UTF-8");
?>
</body>
</html>