<?php
	require_once("adm/inc/access.php");
	require_once("adm/inc/base_func.php");
	
	// Проверка существования записи
	function setUserPostVer($post_id, $email) {
		$result = db_query("SELECT COUNT(*) FROM post_ver WHERE post_id = '".$post_id."' AND email = '".$email."'");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			return $row[0];
		}
		return 0;
	}
	
	
	
	error_reporting (E_ALL);
	$link = db_connect(DB_HOST, DB_LOGIN, DB_PASSWORD);
	db_select_db(DB_NAME);
	//****************************************************************

if(isset($_GET['post_id'])&&isset($_GET['email'])){
	if(setUserPostVer($_GET['post_id'], $_GET['email'])==0){
		$sql = "INSERT INTO post_ver SET 
						post_id = '".$_GET['post_id']."',
						email = '".$_GET['email']."',
						date_oform = NOW()";
		db_query($sql);
		$sql2 = "UPDATE posts
					SET otkr = otkr+1
				WHERE post_id = ".$_GET['post_id'];;
		db_query($sql2);
	}
}










	//****************************************************************

$w = 1;
$h = 1;
$gfx = imagecreatetruecolor($w,$h);
imageantialias($gfx, true);
header('Content-type: image/png');
imagepng($gfx);

?>
