<?php
	error_reporting (E_ALL);
	ini_set("display_errors", 1);
	$link = db_connect(DB_HOST, DB_LOGIN, DB_PASSWORD);
	db_select_db(DB_NAME);
	define("PAGETEMPLATES_PATH", 'templates/');
	
	date_default_timezone_set ("Asia/Almaty");
	
	include('inc/simple_html_dom.php'); // ���������� Simple HTML DOM
	
	//***MAIN***********************************************************************************************
	
	// ���. ������� ��� �������� ������� �������
	function pregtrim($str) {
   		return preg_replace("/[^\x20-\xFF]/","",@strval($str));
	}
	
	// ��������� ������ �����
	function SuperSaveInt($name) {
		$name = strip_tags($name);
		$name = trim($name);
		$name = iconv("utf-8", "windows-1251", $name);
		$name = preg_replace("/[^0-9]/i", "", $name);
		$name = iconv("windows-1251", "utf-8", $name);
   		return $name;
	}
	
	// чистим текстовую $_GET[
	function SuperSaveGETStr($name) {
		//$name = preg_replace("/[^a-zA-ZА-Яа-я0-9_]/","",$name);
		$name = preg_replace("/[^a-zA-Z0-9_]/","",$name);
		return $name;
	}
	
	// ������������� GET ����������
 	function Initialize() {
		initVars(array('menu', 'city', 'land', 'ch', 'limit', 'service_id', 'w_id'), 'int', $param_array);
	}
	
	// ���������� ���������� � ����������� ����
	// param:  [string], type:  [string] int  ; string - ,    
	function validateParam($param, $type) {
		switch ($type) {
			case 'int': {
				if (preg_match("/^[0-9]+$/", $param)) return true;
				break;
			}
			case 'string': {
				if (preg_match("/^[a-zA-Z0-9_]+$/", $param)) return true;
				break;
			}
		}
		
		return false;
	}
	
	//  ���������� ���������� � ����������� ����
	function initVars($param_array, $type, &$arr) {
		if (is_array($param_array)) {
			foreach ($param_array as $varname) {
				if (isset($arr[$varname])) {
					if (!validateParam($arr[$varname], $type)) {
						selfRedirect();
					} else {
						if ($type == 'int') $arr[$varname] = abs(intval($arr[$varname]));
						if ($type == 'string') $GLOBALS[$array_name][$val] = preg_replace("/[^\w\x7F-\xFF\s]/", " ", $GLOBALS[$array_name][$val]);
					}
				}
			}
		}
	}
	
	// ������������ ��������
	function selfRedirect($params='') {
		if (!isset($GLOBALS['_SERVER']["HTTP_REFERER"])) {
			header("Location: system.php");
		}
		else
			header("Location: " . $GLOBALS['_SERVER']["HTTP_REFERER"] . $params);
		exit;
	}
	
	// ����� ������ �����������
	function getPageMenuTpl($menu_id = 0) {
		$page_arr = array();
		$menu_parent = rootRights($_SESSION['lgn']);
		if($menu_id == 0){
			if($menu_parent==0){
				$result = db_query("SELECT * FROM pages WHERE group_id = 1 AND start = 1 LIMIT 1");
				$row = db_fetch_array($result);
				$page_id = $row['id'];
				$page_tpl = $row['template'];
				$page_content = $row['content'];
				$page_title = $row['title'];
				$page_menu = $row['group_id'];
			}
			else{
				$result = db_query("SELECT * FROM pages WHERE id = ".$menu_parent." ORDER BY id LIMIT 1");
				$row = db_fetch_array($result);
				$page_id = $row['id'];
				$page_tpl = $row['template'];
				$page_content = $row['content'];
				$page_title = $row['title'];
				$page_menu = $row['group_id'];
			}
		}
		else{
			$result = db_query("SELECT * FROM pages WHERE id = ".$menu_id." ORDER BY id LIMIT 1");
			$row = db_fetch_array($result);
			$page_id = $row['id'];
			$page_tpl = $row['template'];
			$page_content = $row['content'];
			$page_title = $row['title'];
			$page_menu = $row['group_id'];
		}
		$page_arr[] = $page_id;
		$page_arr[] = $page_tpl;
		$page_arr[] = $page_content;
		$page_arr[] = $page_title;
		$page_arr[] = $page_menu;
		return $page_arr;
	}
	
	// ��������� ���� �� ��������� ��������
	function setFirstChildrenPage($page_id) {
		$result = db_query("SELECT parent_id FROM pages WHERE id = ".$page_id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			return $row[0];
		}
		
		return 0;
	}
	
	// ���������� ID ������������ ��������
	function getPageParentID($page_id) {
		$result = db_query("SELECT parent_id FROM pages WHERE id = ".$page_id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			return $row[0];
		}
		
		return 0;
	}
	
	// ���������� ID ������ �������� ��������
	function getPageFirstChildrenID($page_id) {
		$result = db_query("SELECT id FROM pages WHERE parent_id = ".$page_id." ORDER BY id LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			return $row[0];
		}
		return 0;
	}
	
	// ���������� ��������� ��������
	function getPageTitle($page_id) {
		$result = db_query("SELECT title FROM pages WHERE id = ".$page_id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			if ($row->title != '') return $row->title;
				else return 'Empty title';
		}
		return false;
	}
	
	// ���������� ������
	function sendMail($mail, $subject, $body, $sender_name = "", $sender_mail = "") {
		$headers = "MIME-Version: 1.0\r\n";
		$headers.= "Content-type: text/html; charset=windows-1251\n";
		$headers.= "To: ".$mail."\n";
		if ($sender_mail && $sender_name) $headers.= "From: ".$sender_name."<".$sender_mail.">\r\n";
		
		$subject = mb_convert_encoding($subject, "WINDOWS-1251", "UTF-8");
		$body = mb_convert_encoding($body, "WINDOWS-1251", "UTF-8");
		$headers = mb_convert_encoding($headers, "WINDOWS-1251", "UTF-8");
		
		$result = mail($mail, $subject, stripslashes($body), $headers);
		
		return $result;
	}
	
	//***** ������ � �������������   *************************************************************************
	
	//     
	function validateFileType($type) {
		switch ($type) {
			case 'image/gif': return 'GIF'; break;
			case 'image/bmp': return 'BMP'; break;
			case 'image/pjpeg': return 'JPG'; break;
			case 'image/jpeg': return 'JPG'; break;
			case 'image/x-png': return 'PNG'; break;
			case 'application/x-shockwave-flash': return 'SWF'; break;
		}
		return false;
	}
	
	//         UPLOAD
	function getFilename($fname, $ext = '', $folder) {
		if ($ext == '') $extension = getFileExt($fname); else $extension = $ext;
		$i = 1;
		$newFileName = $i.".".$extension;
		while (is_file($folder.$i.".".strtolower($extension)) || is_file($folder.$i.".".strtoupper($extension))) {
			$i++;
			$newFileName = $i.".".$extension;
		}
		return $newFileName;
	}
	
	//   
	function getFileExt($fname) {
		$path_parts = pathinfo($fname);
		if (is_array($path_parts)) {
			return $path_parts["extension"];
		}
	}
	
	//    
	function resizeProportional($srcW, $srcH, $dstW, $dstH) {
		$d = max($srcW/$dstW, $srcH/$dstH);
		$result[] = round($srcW/$d);
		$result[] = round($srcH/$d);
		return $result;
	}
	
	function ImageCreateTrue($width, $height, $type) {
		switch ($type) {
			case 1: return ImageCreate($width, $height); break;
			case 2: return ImageCreateTrueColor($width, $height); break;
			case 3: return ImageCreateTrueColor($width, $height); break;
		}
	}
	
	function ImageCreateFrom($filename, $type) {
		switch ($type) {
			case 1: return imagecreatefromgif($filename); break;
			case 2: return imagecreatefromjpeg($filename); break;
			case 3: return imagecreatefrompng($filename); break;
		}
	}
	
	function Image($src, $file, $type) {
		switch ($type) {
			case 1: return ImageGif($src, $file); break;
			case 2: return ImageJPEG($src, $file, 88); break;
			case 3: return ImagePNG($src, $file); break;
		}
	}
	
	// ��������� ���������� �� ����������� � ��������� ID
	function isImageExists($id) {
		$result = db_query("SELECT * FROM images WHERE id = ".$id." LIMIT 1");
		if (db_num_rows($result) > 0) return true;
		
		return false;
	}

	// ���������� URL ����������� �������
	function getImageUrl($id, $is_image = '') {
		$file = '';
		$result = db_query("SELECT type, url FROM images WHERE id=".$id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			if ($is_image) {
				$file = "../uploads/avatars/full/".$row->url;
				if (!file_exists($file)) $file = '../uploads/avatars/full/kab_foto.jpg';
			} else {
				$file = "../uploads/avatars/preview/".$row->url;
				if (!file_exists($file)) $file = '../uploads/avatars/full/kab_foto_small.jpg';
			}
		}
		else{
			if ($is_image) {
				$file = "../uploads/avatars/full/kab_foto.jpg";
			} else {
				$file = "../uploads/avatars/preview/kab_foto_small.jpg";
			}
		}
		return $file;
	}
	
	
	// ���������� HTML ��� �����������
	function getImageTag($id, $align, $size = 1) {
		$tag = '';
		$result = db_query("SELECT * FROM images WHERE id = ".$id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
				if ($row['width'] && $row['height'] && $size == 1) $params = ' width="'.$row['width'].'" height="'.$row['height'].'"';
					else $params = '';
				
				if (!empty($align)) $params .= ' '.$align;
				if (empty($params)) $border = ' border="0"'; else $border = '';
				
				if ($size == 2) {
					$tag = '<img src="uploads/'.$row['url'].'"'.$border.$params.' onclick="showPhoto(\'admin/upload/images/'.$row['url'].'\', '.$row['width'].', '.$row['height'].', \''.$row['title'].'\')" style="cursor: hand;">';
				} else {
					$tag = '<img src="uploads/'.$row['url'].'"'.$border.$params.'>';
				}
		}
		
		return $tag;
	}
	
	
	//*******************************************************************************************************************
	
	// ������ ������ � ����������
	function find($dir, $tosearch) { 
    	global $file_arr;
		$files = array_diff( scandir( $dir ), Array( ".", ".." ) );     
    	foreach( $files as $d ) { 
           if( !is_dir($dir."/".$d) ) { 
                if ($d == $tosearch) 
                    $file_arr[] = $dir."/".$d; 
            } else { 
                $res = find($dir."/".$d, $tosearch); 
            } 
    	} 
    	return $file_arr; 
	}
	
	function get_web_page( $url ){
		$uagent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)";
		
		$ch = curl_init( $url );
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);   // ���������� ���-��������
		curl_setopt($ch, CURLOPT_HEADER, 0);           // �� ���������� ���������
		//curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);   // ��������� �� ����������
		curl_setopt($ch, CURLOPT_ENCODING, "");        // ������������ ��� ���������
		curl_setopt($ch, CURLOPT_USERAGENT, $uagent);  // useragent
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 120); // ������� ����������
		curl_setopt($ch, CURLOPT_TIMEOUT, 120);        // ������� ������
		curl_setopt($ch, CURLOPT_MAXREDIRS, 10);       // ��������������� ����� 10-��� ���������
		curl_setopt($ch, CURLOPT_COOKIEJAR, "inc/coo.txt");
		curl_setopt($ch, CURLOPT_COOKIEFILE,"inc/coo.txt");
		
		$content = curl_exec( $ch );
		$err     = curl_errno( $ch );
		$errmsg  = curl_error( $ch );
		$header  = curl_getinfo( $ch );
		curl_close( $ch );
		
		$header['errno']   = $err;
		$header['errmsg']  = $errmsg;
		$header['content'] = $content;
		
		return $header;
	}
	
	function post_content ($url,$postdata) {
		$uagent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)";
		
		$ch = curl_init( $url );
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		//curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_ENCODING, "");
		curl_setopt($ch, CURLOPT_USERAGENT, $uagent);  // useragent
		curl_setopt($ch, CURLOPT_TIMEOUT, 120);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
		curl_setopt($ch, CURLOPT_COOKIEJAR, "inc/coo.txt");
		curl_setopt($ch, CURLOPT_COOKIEFILE,"inc/coo.txt");
		
		$content = curl_exec( $ch );
		$err     = curl_errno( $ch );
		$errmsg  = curl_error( $ch );
		$header  = curl_getinfo( $ch );
		curl_close( $ch );
		
		$header['errno']   = $err;
		$header['errmsg']  = $errmsg;
		$header['content'] = $content;
		
		return $header;
	}
	
	function getNewSortfield(){
		$cur_max = db_get_data("SELECT MAX(sortfield) AS num FROM pages ", "num");
		$newSort = $cur_max + 1;
		return $newSort;
	}
	
	// ���������� �������� ����� ��� ������
	function getPageMetaKeys($page_id) {
		$meta_keys = '';
		$tmp_page = $page_id;
		while ($tmp_page!=6) {
			$meta_keys = getPageTitle($tmp_page).', '.$meta_keys;
			$tmp_page = getPageParentID($tmp_page);
		}
		if($meta_keys!=''){
			$meta_keys = substr($meta_keys, 0, -2);
		}
		
		return $meta_keys;
	}
	
	// ��������� ����� ���������
	function rootRights($usrname) {
		$rights = db_get_data("SELECT rights FROM roots WHERE login = '".$usrname."' LIMIT 1", "rights");
		return $rights;
	}
	
	// ��������� ����� ���������
	function getRootID($usrname) {
		$root_id = db_get_data("SELECT id FROM roots WHERE login = '".$usrname."' LIMIT 1", "id");
		return $root_id;
	}
	
	// ��������� ���������� �������������
	function getUserCount() {
		return db_get_data("SELECT COUNT(id) AS num FROM users", "num");
	}
	
	// ���������� ID ����� �������
	function getNewPostID(){
		$cur_max = db_get_data("SELECT MAX(post_id) AS num FROM posts ", "num");
		$newID = $cur_max + 1;
		return $newID;
	}
	
	function getMagProdID($magaz_id, $prod_id) {
		$root_id = db_get_data("SELECT id FROM mag_prod WHERE magaz_id = '".$magaz_id."' AND prod_id = '".$prod_id."' LIMIT 1", "id");
		return $root_id;
	}

?>