<?
	error_reporting (E_ALL);
	ini_set("display_errors", 1);
	//echo "WORK !";
	// ����������� ������
	require_once("adm/inc/access.php");
	require_once("adm/inc/base_func.php");
	require_once("inc/func.php");
	require_once("adm/inc/val.php");
	require_once("adm/inc/class.FastTemplate.php");
	require_once('adm/inc/class.Pages.php');
	require_once('inc/CHPU.php');
	//include_once("js/analyticstracking.php");
	
	if (isset($_SERVER['REDIRECT_STATUS'])) { // ���� ���� ��������
		$url=urldecode($_SERVER['REQUEST_URI']);// ������������ ��� 
		$url=ltrim($url,"/"); // ������� ������ "/"
		//echo $url."*<br>";
		if (!getBaseURL($url)||!isset($_GET['menu'])) { 
			//echo "<p>";
			//print_r($_GET);
			
			// ����� �� ��������� ��� �������� "����������" ������ 
			// � ������� ����������� ���������� � $_GET
			// ���� �� ����� ������ - ���������� false
			// error 404;
			header("http/1.0 404 Not found");// ������ ��������������� ������
			header("Location: /404");
			//exit;
		} else{
			//echo "6";
			header("http/1.0 200 Ok");// ������ ��������������� ������
		}
	}
	
	$result = db_query("SELECT 
							site_setings.*,
							tpl_groups.tpl_folder AS tpl_folder
						FROM site_setings 
						LEFT OUTER JOIN tpl_groups ON site_setings.tpl_group_id = tpl_groups.id
						LIMIT 1");
	$main_set = db_fetch_array($result);
	
	
	//  ������������ ��������
	if (isset($_GET['menu'])){
		$page_arr = getPageMenuTpl($_GET['menu']);
	}
	else{
		$page_arr = getPageMenuTpl(0);
		$_GET['menu'] = $page_arr[0];
	}
	if($_GET['menu']==212){
		header("http/1.0 404 Not found");
	}
	//print_r($page_arr);
	$page_id = $page_arr[0];
	$page_template = $page_arr[1];
	$page_content = $page_arr[2];
	$page_title = $page_arr[3];
	$page_seo_title = $page_arr[4];
	$page_seo_key = $page_arr[5];
	$page_seo_desc = $page_arr[6];
	define("PAGE_ID", $page_id);
	define("PAGETEMPLATES_PATH", 'templates/'.$main_set['tpl_folder'].'/');
	define("META_EMAIL", $main_set['email']);
	
	session_name('SID');
	@session_start();
	if(isset($_SESSION['u_id'])){
		define("U_ID", $_SESSION['u_id']);
		$result_u = db_query("SELECT id FROM users WHERE uniq = '".U_ID."' LIMIT 1");
		$u_set = db_fetch_array($result_u);
		define("U_BASE_ID", $u_set['id']);
	}
	else{
		define("U_ID", '');
		define("U_BASE_ID", '');
	}
	
	//echo U_BASE_ID;
	
	
	//echo PAGETEMPLATES_PATH.$page_template;
	$_pages  = new Pages(15, 20);
	
	if (!file_exists(PAGETEMPLATES_PATH.$page_template)) die('Error. Page template not found.');
	
	header('Content-type: text/html; charset="utf-8"');
	
	$tpl = new FastTemplate(".");
	$tpl->define(array("page" => PAGETEMPLATES_PATH . $page_template));
	$tpl->assign("CONTENT", $page_content);
	$tpl->assign("PAGE_ID", $page_id);
	
	if(isset($_GET['page'])&&$_GET['page']>1){
		$tpl->assign("META_TITLE", 'Страница '.$_GET['page'].' - '.$page_seo_title);
		$tpl->assign("META_DESC", 'Страница '.$_GET['page'].' - '.$page_seo_desc);
	}
	else{
		$tpl->assign("META_TITLE", $page_seo_title);
		$tpl->assign("META_DESC", $page_seo_desc);
	}
	$tpl->assign("META_KEY", $page_seo_key);
	
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
	/*
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
	*/
	$tpl->assign("BASE_URL", 'http://'.$_SERVER['HTTP_HOST'].'/');
	$tpl->assign("PAGETEMPLATES_PATH", PAGETEMPLATES_PATH);
	
	$tpl->assign("META_LOGO", $main_set['logo']);
	$tpl->assign("META_COMPANY", $main_set['company']);
	$tpl->assign("META_ADR", $main_set['adress']);
	$tpl->assign("META_TIME", $main_set['jtime']);
	$tpl->assign("META_PHONE", $main_set['phone']);
	
	$tpl->assign("U_ID", U_ID);
	$tpl->assign("U_BASE_ID", U_BASE_ID);
	
	$tpl->parse("FINAL", "page");
	
	// ��������� ��������� �������� � ��������
	$tpl->FINAL = parse_values($tpl->FINAL);
	
	$tpl->FastPrint();
?>