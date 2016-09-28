<?php
	error_reporting (E_ALL);
	$link = db_connect(DB_HOST, DB_LOGIN, DB_PASSWORD);
	db_select_db(DB_NAME);
	
	date_default_timezone_set ("Asia/Almaty");
	
	require_once('phpmailer/class.phpmailer.php');
	include("phpmailer/class.smtp.php");
	
	//***MAIN***********************************************************************************************
	
	// оставляем только числа
	function SuperSaveInt($name) {
		$name = strip_tags($name);
		$name = trim($name);
		$name = iconv("utf-8", "windows-1251", $name);
		$name = preg_replace("/[^0-9]/i", "", $name);
		$name = iconv("windows-1251", "utf-8", $name);
   		return $name;
	}
	
	// ���. ������� ��� �������� ������� �������
	function pregtrim($str) {
   		return preg_replace("/[^\x20-\xFF]/","",@strval($str));
	}
	
	// ������������� GET ����������
 	function Initialize() {
		initVars(array('menu', 'a_id', 'city', 'land', 'ch', 'limit', 'service_id', 'w_id'), 'int', $param_array);
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
	
	// ������������� � ���������� ���������� � ���������� ����
	function initVar($value_name, $type) {
		if ($type == 'int') $result = 0;
		if ($type == 'string') $result = '';
		if ($type == 'bool') $result = false;
		
		if (isset($_REQUEST[$value_name])) {
			switch ($type) {
				case 'int': {
					$result = $_REQUEST[$value_name];
					if (is_numeric($result)) $result = abs(intval($result)); else $result = 0;
					break;
				}
				case 'string': {
					$result = $_REQUEST[$value_name];
					$result = str_replace(array("\n", "\r"), "", $result);
					$result = preg_replace("/[^\w\x7F-\xFF\s]/", " ", $result);
					break;
				}
				case 'bool': {
					$result = true;
					break;
				}
				default: {
					$result = false;
					break;
				}
			}
		}
		
		return $result;
	}
	
	// чистим текст
	function SuperSaveStr($name) {
		$name = strip_tags($name);
		$name = trim($name);
		$name = preg_replace("/[^\x20-\xFF]/","",@strval($name));
		return $name;
	}
	// чистим текст
	function SuperSaveStr2($name) {
		$name = strip_tags($name);
		$name = trim($name);
		$name = stripslashes($name);
		$name = str_replace('"','',$name);
		$name = str_replace("'",'',$name);
		return $name;
	}
	
	// ������������ ��������
	function selfRedirect($params='') {
		if (!isset($GLOBALS['_SERVER']["HTTP_REFERER"])) {
			header("Location: index.php");
		}
		else
			header("Location: " . $GLOBALS['_SERVER']["HTTP_REFERER"] . $params);
		exit;
	}
	
	// ����� ������ �����������
	function getPageMenuTpl($menu_id = 1) {
		$page_arr = array();
		if($menu_id == 0){
			$result = db_query("SELECT * FROM pages WHERE group_id = 1 AND start = 1 LIMIT 1");
			$row = db_fetch_array($result);
			$page_id = $row['id'];
			$page_tpl = $row['stemplate'];
			$page_content = $row['content'];
			$page_title = $row['title'];
			$page_seo_title = $row['seo_title'];
			$page_seo_key = $row['seo_key'];
			$page_seo_desc = $row['seo_desc'];
		}
		else{
			$result = db_query("SELECT * FROM pages WHERE id = ".$menu_id." ORDER BY id LIMIT 1");
			$row = db_fetch_array($result);
			$page_id = $row['id'];
			$page_tpl = $row['stemplate'];
			$page_content = $row['content'];
			$page_title = $row['title'];
			$page_seo_title = $row['seo_title'];
			$page_seo_key = $row['seo_key'];
			$page_seo_desc = $row['seo_desc'];
		}
		$page_arr[] = $page_id;
		$page_arr[] = $page_tpl;
		$page_arr[] = $page_content;
		$page_arr[] = $page_title;
		$page_arr[] = $page_seo_title;
		$page_arr[] = $page_seo_key;
		$page_arr[] = $page_seo_desc;
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
	
	function getPageSecondChildrenID($page_id) {
		$result = db_query("SELECT id FROM pages WHERE parent_id = ".$page_id." AND id <> ".getPageFirstChildrenID($page_id)." ORDER BY id LIMIT 1");
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
	
	// ���������� ID �������� � ��������� content � parent_id
	function getPageID($content, $parent_id = 0) {
		if ($parent_id > 0) $condition = ' AND id = '.$parent_id; else $condition = '';
		$result = db_query("SELECT id FROM pages WHERE content = '".$content."' ORDER BY sortfield LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			return $row[0];
		}
		
		return 0;
	}
	
	// ���������� ������
	function sendMail($mail, $subject, $body, $sender_name = "", $sender_mail = "") {
		$headers = "MIME-Version: 1.0\r\n";
		$headers.= "Content-type: text/html; charset=utf-8\n";
		$headers.= "To: ".$mail."\n";
		if ($sender_mail && $sender_name) $headers.= "From: ".$sender_name."<".$sender_mail.">\r\n";
		
		$result = mail($mail, $subject, stripslashes($body), $headers);
		
		return $result;
	}
	
	// Отправляем письмо с атачем
	function sendMailAttach($mail_to, $subject, $body, $sender_name = "", $sender_mail = "", $attach = "") {
		$mail = new PHPMailer();
		$mail->IsSMTP(); // telling the class to use SMTP
		$mail->Host       = "localhost"; // SMTP server
		$mail->SMTPDebug  = 0;                     // enables SMTP debug information (for testing)
												   // 1 = errors and messages
												   // 2 = messages only
		$mail->SMTPAuth   = true;                  // enable SMTP authentication
		$mail->Host       = "localhost"; // sets the SMTP server
		$mail->Port       = 25;                    // set the SMTP port for the GMAIL server
		$mail->Username   = "send@kazavtoclub.kz"; // SMTP account username
		$mail->Password   = "Av3toc7lu5d";        // SMTP account password
		
		$mail->SetFrom($sender_mail, $sender_name);
		
		$mail->AddReplyTo($sender_mail,$sender_name);
		
		$mail->Subject    = $subject;

		$mail->AltBody    = "12345"; // optional, comment out and test
		
		$body             = $body;
		
		$mail->MsgHTML($body);
		
		$mail->AddAddress($mail_to, 'Subscriber');
		
		if($attach!=""){
			$mail->AddAttachment($attach);
		}
		
		if(!$mail->Send()) {
			$sql = "Mailer Error: " . $mail->ErrorInfo;
		} else {
			$sql = "Message sent!";
		}
		
		if($sql==''){
			$sql = "TEST";
		}
		//echo $sql;
		return $sql;
	}
	
	// Отправляем письмо
	function sendMail3($mail_to, $subject, $body, $sender_name = "", $sender_mail = "") {
		$mail = new PHPMailer();
		$mail->IsSMTP(); // telling the class to use SMTP
		$mail->Host       = "mail.witgetservice.com"; // SMTP server
		$mail->SMTPDebug  = 0;                     // enables SMTP debug information (for testing)
												   // 1 = errors and messages
												   // 2 = messages only
		$mail->SMTPAuth   = true;                  // enable SMTP authentication
		$mail->Host       = "mail.witgetservice.com"; // sets the SMTP server
		$mail->Port       = 587;                    // set the SMTP port for the GMAIL server
		$mail->Username   = "info@witgetservice.com"; // SMTP account username
		$mail->Password   = "72COlKuo";        // SMTP account password
		
		$mail->SetFrom($sender_mail, $sender_name);
		
		$mail->AddReplyTo($sender_mail,$sender_name);
		
		$mail->Subject    = $subject;

		$mail->AltBody    = "12345"; // optional, comment out and test
		
		$body             = $body;
		
		$mail->MsgHTML($body);
		
		$mail->AddAddress($mail_to, 'Subscriber');
		
		if(!$mail->Send()) {
			$sql = "Mailer Error: " . $mail->ErrorInfo;
		} else {
			$sql = "Message sent!";
		}
		
		if($sql==''){
			$sql = "TEST";
		}
		//echo $sql;
		return $sql;
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
			case 'image/png': return 'PNG'; break;
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
	
	// ���������� ���������� ������� � �������
	function getChapterProductCount($page_id = 6) {
		global $product_count;
		$result = db_query("SELECT id FROM pages WHERE parent_id = ".$page_id);
		if (db_num_rows($result) > 0) {
			while($row=db_fetch_array($result)){
				getChapterProductCount($row['id']);
			}
		}
		else{
			$product_count+=db_get_data("SELECT COUNT(id) AS num FROM products WHERE page_id = '".$page_id."'", "num");
		}
		return $product_count;
	}
	
	// ���������� ���������� ������� � ������� ������
	function getPriceChapterProductCount($page_id = 6) {
		$product_count=db_get_data("SELECT COUNT(id) AS num FROM prices WHERE page_id = '".$page_id."'", "num");
		return $product_count;
	}
	
	// ���������� ������ ��������� ���������� ������� PARENT / CHILD / .. / SUBCHILD
	function getPagesChains($page_id, $delimiter, $css_class, $uri_params) {
		$items = array(1=> array("title" => "", "url" => ""));
		$items[1]['title'] = '<strong>'.getPageTitle($page_id).'</strong>';
		$items[1]['url'] = '';
		
    	$parent_id = getPageParentID($page_id);
		$i = 1;
		
		while ($parent_id > 0) {
			$result = db_query("SELECT * FROM pages WHERE id = ".$parent_id." LIMIT 1");
			if (db_num_rows($result) > 0) {
				$row = db_fetch_array($result);
				$result2 = db_query("SELECT * FROM pages WHERE id = ".$row['id']." LIMIT 1");
				if (db_num_rows($result2) > 0) {
					$i++;
					$row2 = db_fetch_array($result2);
					$parent_id = $row2['parent_id'];
					$items[$i]['title'] = $row['title'];
					$url = 'index.php?menu='.$row2['id'];
					if (!empty($uri_params)) $url.= '&'.$uri_params;
					$items[$i]['url'] = $url;
				} else { $parent_id = 0; }
			} else { $parent_id = 0; }
		}
		
		$str = '';
		$items_count = count($items);
		if ($items_count > 1) $items_count = $items_count - 1;
		
		for ($i = $items_count; $i > 0; $i--) {
			$title = $items[$i]['title'];
			
			if ($i != 1) $str.= '<a href="'.$items[$i]['url'].'" class="'.$css_class.'">'.$title.'</a>';
				else $str.= $title;
			
			if ($i != 1) $str.= '<span class="ptit">'.$delimiter.'</span>';
		}
		
		return $str;
	}
	
	// ���������� ���������� ��������� � �������
	function getChapterItemCount($page_id, $table) {
		$product_count = db_get_data("SELECT COUNT(id) AS num FROM ".$table." WHERE page_id = '".$page_id."'", "num");
		
		return $product_count;
	}
	
	// ���������� ����� ������ ������
	function getOrderID() {
		$max_order = db_get_data("SELECT MAX(order_id) AS order_num FROM order_tab", "order_num");
		if ($max_order > 0) {
			$max_order++;
		}
		else{
			$max_order = 1;
		}
		return $max_order;
	}
	
	// ��������� ������� ������ � ������
	function getProductInOrder($order_id, $prod_id) {
		$result = db_query("SELECT id FROM order_tab WHERE order_id = ".$order_id." AND prod_id = ".$prod_id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			return $row[0];
		}
		else{
			return 0;
		}
	}
	
	// ���������� ������������ ������
	function getProductTitle($prod_id) {
		$prod_title = db_get_data("SELECT title AS num FROM products WHERE id=".$prod_id, "num");
		return $prod_title;
	}
	
	// ���������� ������ �� �����
	function getProductURL($prod_id) {
		$result = db_query("SELECT id, page_id FROM products WHERE id = ".$prod_id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			$url = 'index.php?menu='.$row['page_id'].'&prod='.$row['id'];
			return $url;
		}
		else{
			return '';
		}
	}
	
	// ��������� ������� ������������ � ����
	function setUserInBase($email) {
		$result = db_query("SELECT id FROM users WHERE email = '".strtolower($email)."' LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_array($result);
			return $row[0];
		}
		else{
			return 0;
		}
	}
	
	// ��������� ���� ������ � ��������� ��
	function setLostSkidki() {
		$result = db_query("SELECT id FROM products WHERE discount_date <> '0000-00-00 00:00:00' AND discount_date < NOW()");
		if (db_num_rows($result) > 0) {
			while ($row = db_fetch_array($result)){
				$sql = "UPDATE products SET 
									discount = '0',
									proc = '0',
									new_cost = '0',
									discount_date = '0000-00-00 00:00:00'
								WHERE id = ".$row['id'];
				db_query($sql);
			}
			return 1;
		}
		else{
			return 0;
		}
	}
	
	// ���������� ���������� ������� �� �������
	function getSkidkaProdCount() {
		$product_count = db_get_data("SELECT COUNT(id) AS num FROM products WHERE discount = '1'", "num");
		
		return $product_count;
	}
	
	// ��������� ���������� �� ������ � ������������ � ���������� ����� �� ������� ���� �� ���������� ����
	function seIPtoSiteStatisticID($ip, $menu, $prod_id) {
		$result = db_query("SELECT id FROM stat WHERE ip = '".$ip."' AND menu = '".$menu."' AND prod_id = '".$prod_id."' AND DATE_FORMAT(date, '%Y%m%d') = ".date("Ymd"));
		if (db_num_rows($result) > 0) {
			return true;
		}
		return false;
	}
	
	function seIPtoSiteStatID($ip, $w_id, $U_BASE_ID, $site, $agent) {
		$result = db_query("SELECT id FROM stat WHERE ip = '".$ip."' AND u_id = '".$U_BASE_ID."' AND w_id = '".$w_id."' AND site = '".$site."' AND agent = '".$agent."' AND DATE_FORMAT(date, '%Y%m%d') = ".date("Ymd"));
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			return $row->id;
		}
		return 0;
	}
	
	// ���������� �������� ����� ��������
	function getPageMetaKeys($table, $item_id) {
		$result = db_query("SELECT meta_key FROM ".$table." WHERE id = ".$item_id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			if ($row->meta_key != '') return $row->meta_key;
				else return '';
		}
		return false;
	}
	
	// ���������� ���������
	function getItemTitle($table, $item_id) {
		$result = db_query("SELECT title FROM ".$table." WHERE id = ".$item_id." LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			if ($row->title != '') return $row->title;
				else return '';
		}
		return false;
	}
	
	function getCategoryItemCount($cat_id, $page_id) {
		$product_count = db_get_data("SELECT COUNT(id) AS num FROM products WHERE page_id = '".$page_id."' AND cat_id = ".$cat_id, "num");
		
		return $product_count;
	}
	
	function getArtCommentCount($art_id) {
		$product_count = db_get_data("SELECT COUNT(id) AS num FROM comments WHERE art_id = '".$art_id."' AND view = 1", "num");
		
		return $product_count;
	}
	
	// SOAP штрафов
	function sendSoap($name, $phone, $gn, $pn, $email = null){
	//	$name = 'Alexey';
	//	$phone = '87078071312';
	//	$gn = 'A375YHN';
	//	$pn = 'AV00138647';
	//	$email = 'skiv_80@mail.ru';
	
		$client = new SoapClient("http://89.218.11.74/soap_server/wsdl");
		$answer = $client->get_info1($name, $phone, $gn, $pn, $email);
	
		return base64_decode($answer['return']);
	//	return $client;
		   
	}
	
	// SOAP штрафов
	function sendSoapFull($name, $phone, $gn, $pn, $email = null, $city){
	//	$name = 'Alexey';
	//	$phone = '87078071312';
	//	$gn = 'A375YHN';
	//	$pn = 'AV00138647';
	//	$email = 'Null';
	
		$client = new SoapClient("http://89.218.11.74/soap_server/wsdl");
		$answer = $client->get_info2($name, $phone, $gn, $pn, $email, $city);
	
		return base64_decode($answer['return']);
	//	return $client;
		   
	}
	
	// проверка авторизации
	function checkAuth() {
		//if (!session_is_registered('login') || !session_is_registered('password')) return false;
		//if (!session_is_registered('soc')){
		if (!isset($_SESSION['login']) || !isset($_SESSION['password'])) return false;
		if (!isset($_SESSION['soc'])){
			$result = db_query("SELECT * FROM users WHERE LOWER(email) = '".strtolower($_SESSION['login'])."' AND password = MD5('".$_SESSION['password']."') LIMIT 1");
		}
		else{
			$result = db_query("SELECT * FROM users WHERE LOWER(email) = '".strtolower($_SESSION['login'])."' LIMIT 1");
		}
		if (db_num_rows($result) > 0) return true;
		
		return false;
	}
	
	// Проверяет мыло клиента на существование в базе
	function checkUsersEmail($u_email) {
		$result = db_query("SELECT email FROM users WHERE email = '".$u_email."' LIMIT 1");
		if (db_num_rows($result) > 0) return true;
		return false;
	}
	
	function generate_password($number){
		$arr = array('a','b','c','d','e','f',
					 'g','h','i','j','k','l',
					 'm','n','o','p','r','s',
					 't','u','v','x','y','z',
					 'A','B','C','D','E','F',
					 'G','H','I','J','K','L',
					 'M','N','O','P','R','S',
					 'T','U','V','X','Y','Z',
					 '1','2','3','4','5','6',
					 '7','8','9','0');
		// Генерируем пароль
		$pass = "";
		for($i = 0; $i < $number; $i++){
		  // Вычисляем случайный индекс массива
		  $index = rand(0, count($arr) - 1);
		  $pass .= $arr[$index];
		}
		return $pass;
  }
  
  function rgb2hex($rgb) {
	   $hex = "#";
	   $hex .= str_pad(dechex($rgb[0]), 2, "0", STR_PAD_LEFT);
	   $hex .= str_pad(dechex($rgb[1]), 2, "0", STR_PAD_LEFT);
	   $hex .= str_pad(dechex($rgb[2]), 2, "0", STR_PAD_LEFT);
	
	   return $hex; // returns the hex value including the number sign (#)
	}
	
	function hex2rgb($hex) {
	   $hex = str_replace("#", "", $hex);
	
	   if(strlen($hex) == 3) {
		  $r = hexdec(substr($hex,0,1).substr($hex,0,1));
		  $g = hexdec(substr($hex,1,1).substr($hex,1,1));
		  $b = hexdec(substr($hex,2,1).substr($hex,2,1));
	   } else {
		  $r = hexdec(substr($hex,0,2));
		  $g = hexdec(substr($hex,2,2));
		  $b = hexdec(substr($hex,4,2));
	   }
	   $rgb = array($r, $g, $b);
	   //return implode(",", $rgb); // returns the rgb values separated by commas
	   return $rgb; // returns an array with the rgb values
	}
	
	function get_web_page( $url )
	{
	  $uagent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)";
	
	  $ch = curl_init( $url );
	  curl_setopt($ch, CURLOPT_URL, $url);
	  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);   // ���������� ���-��������
	  curl_setopt($ch, CURLOPT_HEADER, 0);           // �� ���������� ���������
	  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);   // ��������� �� ����������
	  curl_setopt($ch, CURLOPT_ENCODING, "");        // ������������ ��� ���������
	  curl_setopt($ch, CURLOPT_USERAGENT, $uagent);  // useragent
	  curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 120); // ������� ����������
	  curl_setopt($ch, CURLOPT_TIMEOUT, 120);        // ������� ������
	  curl_setopt($ch, CURLOPT_MAXREDIRS, 10);       // ��������������� ����� 10-��� ���������
	  curl_setopt($ch, CURLOPT_COOKIEJAR, "/coo.txt");
	  curl_setopt($ch, CURLOPT_COOKIEFILE,"/coo.txt");
	
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
	
function getBrowser() { 
    $u_agent = $_SERVER['HTTP_USER_AGENT']; 
    $bname = 'Unknown';
    $platform = 'Unknown';
    $version= "";

    //First get the platform?
    if (preg_match('/linux/i', $u_agent)) {
        $platform = 'Linux';
    }
    elseif (preg_match('/macintosh|mac os x/i', $u_agent)) {
        $platform = 'Mac';
    }
    elseif (preg_match('/windows|win32/i', $u_agent)) {
        $platform = 'Windows';
		if (preg_match('/NT 6.2/i', $u_agent)) { $platform .= ' 8'; }
            elseif (preg_match('/NT 6.3/i', $u_agent)) { $platform .= ' 8.1'; }
            elseif (preg_match('/NT 6.1/i', $u_agent)) { $platform .= ' 7'; }
            elseif (preg_match('/NT 6.0/i', $u_agent)) { $platform .= ' Vista'; }
            elseif (preg_match('/NT 5.1/i', $u_agent)) { $platform .= ' XP'; }
            elseif (preg_match('/NT 5.0/i', $u_agent)) { $platform .= ' 2000'; }
        if (preg_match('/WOW64/i', $u_agent) || preg_match('/x64/i', $u_agent)) { $platform .= ' (x64)'; }
    }

    // Next get the name of the useragent yes seperately and for good reason
    if(preg_match('/MSIE/i',$u_agent) && !preg_match('/Opera/i',$u_agent)) 
    { 
        $bname = 'Internet Explorer'; 
        $ub = "MSIE"; 
    } 
    elseif(preg_match('/Trident/i',$u_agent)) 
    { // this condition is for IE11
        $bname = 'Internet Explorer'; 
        $ub = "rv"; 
    } 
    elseif(preg_match('/Firefox/i',$u_agent)) 
    { 
        $bname = 'Mozilla Firefox'; 
        $ub = "Firefox"; 
    } 
    elseif(preg_match('/Chrome/i',$u_agent)) 
    { 
        $bname = 'Google Chrome'; 
        $ub = "Chrome"; 
    } 
    elseif(preg_match('/Safari/i',$u_agent)) 
    { 
        $bname = 'Apple Safari'; 
        $ub = "Safari"; 
    } 
    elseif(preg_match('/Opera/i',$u_agent)) 
    { 
        $bname = 'Opera'; 
        $ub = "Opera"; 
    } 
    elseif(preg_match('/Netscape/i',$u_agent)) 
    { 
        $bname = 'Netscape'; 
        $ub = "Netscape"; 
    } 
    
    // finally get the correct version number
    // Added "|:"
    $known = array('Version', $ub, 'other');
    $pattern = '#(?<browser>' . join('|', $known) .
     ')[/|: ]+(?<version>[0-9.|a-zA-Z.]*)#';
    if (!preg_match_all($pattern, $u_agent, $matches)) {
        // we have no matching number just continue
    }

    // see how many we have
    $i = count($matches['browser']);
    if ($i != 1) {
        //we will have two since we are not using 'other' argument yet
        //see if version is before or after the name
        if (strripos($u_agent,"Version") < strripos($u_agent,$ub)){
            $version= $matches['version'][0];
        }
        else {
            $version= $matches['version'][1];
        }
    }
    else {
        $version= $matches['version'][0];
    }

    // check if we have a number
    if ($version==null || $version=="") {$version="?";}

    return array(
        'userAgent' => $u_agent,
        'name'      => $bname,
        'version'   => $version,
        'platform'  => $platform,
        'pattern'    => $pattern
    );
} 

function setStatContactEmailID($w_id, $u_id, $email) {
		$result = db_query("SELECT id FROM stat_contact WHERE w_id = '".$w_id."' AND u_id = '".$u_id."' AND email = '".$email."'");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			return $row->id;
		}
		return 0;
	}
	
function setWdtInUser($u_id) {
		$result = db_query("SELECT 
				widgets.id AS id
			FROM u_w_options
			LEFT OUTER JOIN widgets ON u_w_options.w_id = widgets.id
			LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
			WHERE u_w_options.u_id = ".$u_id." AND widgets.folder = '".getItemCHPU(PAGE_ID, 'pages')."'
			LIMIT 1");
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			return $row->id;
		}
		return 0;
	}

function br2nl($str) {
$str = str_replace("\r\n","<br />",$str);
$str = str_replace("\r\n","<br>",$str);
$str = str_replace("\r\n","<br/>",$str);
return $str;
}
function rn2br($str) {
$str = str_replace("<br />","\r\n",$str);
$str = str_replace("<br>","\r\n",$str);
$str = str_replace("<br/>","\r\n",$str);
return $str;
}

function setStatActionDateID($w_id, $u_id) {
		$result = db_query("SELECT id FROM stat_action WHERE w_id = '".$w_id."' AND u_id = '".$u_id."' AND DATE_FORMAT(date, '%Y%m%d') = ".date("Ymd"));
		if (db_num_rows($result) > 0) {
			$row = db_fetch_object($result);
			return $row->id;
		}
		return 0;
	}
?>