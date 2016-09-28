<?php
	error_reporting (E_ALL);
	ini_set("display_errors", 1);
	if(isset($_GET['exit'])){
		session_name('ROOT');
		@session_start('ROOT');
		$_SESSION = array();
		header('Location: http://'.$_SERVER['HTTP_HOST']);
		exit();
	}
	// ����������� ������
	require_once("inc/auth.php");
	require_once("inc/class.FastTemplate.php");
	require_once('inc/class.Pages.php');
	require_once('inc/chpu.php');
	//require_once('inc/chpu.php');
	
	//  ������������ ��������
	if (isset($_GET['menu'])){
		$page_arr = getPageMenuTpl($_GET['menu']);
	}
	else{
		$page_arr = getPageMenuTpl(0);
		$_GET['menu'] = $page_arr[0];
	}
	$page_id = $page_arr[0];
	$page_template = $page_arr[1];
	$page_content = $page_arr[2];
	$page_title = $page_arr[3];
	define("PAGE_ID", $page_id);
	define("MENU_ID", $page_arr[4]);
	define("ROOT_ID", getRootID($_SESSION['lgn']));
	
	$_pages  = new Pages(15, 20);
	
	if (!file_exists(PAGETEMPLATES_PATH.$page_template)) die('Error. Page template not found.');
	
	header('Content-type: text/html; charset="utf-8"');
	
	$tpl = new FastTemplate(".");
	$tpl->define(array("page" => PAGETEMPLATES_PATH . $page_template));
	$tpl->assign("CONTENT", $page_content);
	$tpl->assign("PAGE_ID", $page_id);
	$modules = array();
	$template = file_get_contents(PAGETEMPLATES_PATH.$page_template);
	$template = str_replace("{CONTENT}", $page_content, $template);
	
	preg_match_all("/{([A-Z0-9_]*)}/e", $template, $modules);

	foreach ($modules[0] as $i => $name) {
		if ($name != "{CONTENT}" && $name != "{LANG}") {
			$name = str_replace("{", '', $name);
			$name = str_replace("}", '', $name);
			if (is_file('./modules/'.strtolower($name)."/run.php")) {
				include_once('./modules/'.strtolower($name)."/run.php" );
			}
		}
	}
	
	if (isset($_GET['ch'])){
		if (isset($_GET['ch2'])){
			$tpl->assign("PAGE_TITLE", getPageTitle($_GET['ch']).' - '.getPageTitle($_GET['ch2']).' - '.$page_title);
		}
		else{
			$tpl->assign("PAGE_TITLE", getPageTitle($_GET['ch']).' - '.$page_title);
		}
	}
	else{
		$tpl->assign("PAGE_TITLE", $page_title);
	}
	
	$tpl->assign("PAGE_ID", PAGE_ID);
	
	if(rootRights($_SESSION['lgn'])==0){
		$tpl->assign("MENU_HIDE1", '');
		$tpl->assign("MENU_HIDE2", '');
	}
	else{
		$tpl->assign("MENU_HIDE1", '<!--');
		$tpl->assign("MENU_HIDE2", ' -->');
	}
	
	$tpl->parse("FINAL", "page");
	
	// ��������� ��������� �������� � ��������
	$tpl->FINAL = parse_values($tpl->FINAL);
	
	$tpl->FastPrint();
?>