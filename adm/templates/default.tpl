<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="../favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="styles.css" type="text/css">
<title>SCM - Skiv Content Managment</title>
<script type="text/javascript" src="inc/jquery-1.7.1.js"></script>
<script type="text/javascript" src="inc/tree/dtree.js"></script>
<link rel="StyleSheet" href="inc/tree/dtree.css" type="text/css" />
{META_LINK}
<!-- CALENDAR -->
<link type="text/css" rel="stylesheet" href="inc/calendar/dhtmlgoodies_calendar.css?random=20051112" media="screen"></LINK>
<SCRIPT type="text/javascript" src="inc/calendar/dhtmlgoodies_calendar.js?random=20060118"></script>
<SCRIPT type="text/javascript" src="inc/moment.min.js"></script>
<!-- /CALENDAR -->
</head>
<body>
<div class="maket">
<div class="site_header">
<table class="shapka" border="0" width="100%" height="130">
<tr>
<td width="250" align="center">
<img src="images/logo_scm.png" border="0">
<br>v 1.1 Portal
</td>
<td align="center">
<div class="exit_div">
<a href="system.php?exit" class="exit"><strong>ВЫХОД</strong></a>
</div>
<span class="logo1">WitgetService.com</span>
<br><span class="logo2">Система управления контентом</span>
</td>
</tr>
</table>
</div>
<div class="left">
<table border="0" cellpadding="0" cellspacing="0" width="250">
<tr>
<td align="center" height="31" class="menu_title">
МЕНЮ
</td>
</tr>
<tr>
<td valign="top" align="center" style="padding:0px 0px 10px 0px;">
<div class="dtree" style="background-color:#FFFFFF; width:240px;" align="left">

	<p align="center">&nbsp;<br /><a href="javascript: d.openAll();">Открыть все</a> | <a href="javascript: d.closeAll();">Закрыть все</a></p>

	<script type="text/javascript">
		<!--
		d = new dTree('d');
		d.add({MENU_MAIN_PARENT},-1,'Структура сайта');
		{MENU_MAIN}
		document.write(d);
		//-->
	</script>

</div>
</td>
</tr>
{MENU_HIDE1}
<tr>
<td align="center" height="31" class="menu_title">
НАСТРОЙКИ
</td>
</tr>
<tr>
<td>
{MENU_SETINGS}
</td>
</tr>
{MENU_HIDE2}
</table>
</div>
<div class="site_content">
<table border="0" class="page_title" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="center" height="30">
{PAGE_TITLE}
</td>
</tr>
</table>
<div class="site_main">
{PAGE_ICON}
{CONTENT}
</div>
</div>
</div>
<div class="site_footer" align="center">
<table border="0" class="copy" cellpadding="0" cellspacing="0">
<tr>
<td align="center" height="55">
@ Copyright by SKIV 2015
</td>
</tr>
</table>
</div>
</body>
</html>
