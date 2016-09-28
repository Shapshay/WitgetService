<?php
// транслит
function encodestring($string){ 
    $table = array( 
                'А' => 'A', 
                'Б' => 'B', 
                'В' => 'V', 
                'Г' => 'G', 
                'Д' => 'D', 
                'Е' => 'E', 
                'Ё' => 'YO', 
                'Ж' => 'ZH', 
                'З' => 'Z', 
                'И' => 'I', 
                'Й' => 'J', 
                'К' => 'K', 
                'Л' => 'L', 
                'М' => 'M', 
                'Н' => 'N', 
                'О' => 'O', 
                'П' => 'P', 
                'Р' => 'R', 
                'С' => 'S', 
                'Т' => 'T', 
                'У' => 'U', 
                'Ф' => 'F', 
                'Х' => 'H', 
                'Ц' => 'C', 
                'Ч' => 'CH', 
                'Ш' => 'SH', 
                'Щ' => 'CSH', 
                'Ь' => '', 
                'Ы' => 'Y', 
                'Ъ' => '', 
                'Э' => 'E', 
                'Ю' => 'YU', 
                'Я' => 'YA', 

                'а' => 'a', 
                'б' => 'b', 
                'в' => 'v', 
                'г' => 'g', 
                'д' => 'd', 
                'е' => 'e', 
                'ё' => 'yo', 
                'ж' => 'zh', 
                'з' => 'z', 
                'и' => 'i', 
                'й' => 'j', 
                'к' => 'k', 
                'л' => 'l', 
                'м' => 'm', 
                'н' => 'n', 
                'о' => 'o', 
                'п' => 'p', 
                'р' => 'r', 
                'с' => 's', 
                'т' => 't', 
                'у' => 'u', 
                'ф' => 'f', 
                'х' => 'h', 
                'ц' => 'c', 
                'ч' => 'ch', 
                'ш' => 'sh', 
                'щ' => 'csh', 
                'ь' => '', 
                'ы' => 'y', 
                'ъ' => '', 
                'э' => 'e', 
                'ю' => 'yu', 
                'я' => 'ya', 
				
				' ' => '_',
    ); 

    $output = str_replace( 
        array_keys($table), 
        array_values($table),$string 
    ); 

    return $output; 
}

// Проверяем есть ли в таблице ЧПУ и выводим
function setTransTitle($chpu, $table, $item_id=0) {
	if($item_id!=0){
		$add_sql = " AND id <> ".$item_id;
	}
	else{
		$add_sql = "";
	}
	$result = db_query("SELECT id FROM ".$table." WHERE chpu = '".$chpu."'".$add_sql." LIMIT 1");
	if (db_num_rows($result) > 0) {
		$row = db_fetch_array($result);
		return $row['id'];
	}
	return 0;
}


// Возвращает ЧПУ объекта
	function getItemCHPU($id, $item_tab) {
		return db_get_data("SELECT chpu AS num FROM ".$item_tab." WHERE id = ".$id." LIMIT 1", "num");
	}
	
	// Кодирование URLа
	function getCodeBaseURL($baseURL, $addParam = '') {
		$chpuURL = '';
		$menu = 0;
		$menu_act = array(3,11,12,23,7,27);
		$baseURL = str_replace('index.php?','',$baseURL);
		$baseURL = preg_split("/&/", $baseURL, -1, PREG_SPLIT_NO_EMPTY);
		$menu = 0;
		for($i=0;$i<sizeOf($baseURL);$i++){
			$sub_arr = explode("=", $baseURL[$i]);
			switch ($sub_arr[0]) {
    			case 'menu':
					$chpuURL.= '/'.getItemCHPU($sub_arr[1], 'pages');
					$menu = (int)$sub_arr[1];
				break;
				case 'prod':
					$chpuURL.= '/'.getItemCHPU($sub_arr[1], 'products');
				break;
				default:
					$chpuURL.= '/'.$baseURL[$i];
				break;
			}
		}
		
		if($addParam!=''){
			$chpuURL.= '/'.$addParam;
		}
		
		return $chpuURL;
	}


// ЧПУ страниц
function setPageCHPU($title, $page_id=0) {
	$trans1 = iconv("utf-8", "windows-1251", $title);
	$trans1 =  strtolower($trans1);
	$trans3 = str_replace('  ',' ',$trans1);
	$trans3 = strip_tags($trans3);
	$trans3 = iconv("windows-1251", "utf-8", $trans3);
	$trans3 = preg_replace("/[^a-zа-я0-9_ ]/iu", "", $trans3);
	$trans3 = trim($trans3);
	$trans2 = encodestring($trans3);
	$trans2 =  strtolower($trans2);
	$trans2 = str_replace('__','_',$trans2);
	
	if(setTransTitle($trans2, 'pages', $page_id)==0){
		return $trans2;
	}
	else{
		$trans_bool = false;
		$trans_i = 2;
		while(!$trans_bool){
			$tmp_trans = $trans2.'_'.$trans_i;
			if(setTransTitle($tmp_trans, 'pages', $page_id)==0){
				return $tmp_trans;
				$trans_bool = true;
			}
			$trans_i++;
		}
	}
}


// ЧПУ сервисов
function setProdCHPU($title) {
	$trans1 = iconv("utf-8", "windows-1251", $title);
	$trans1 =  strtolower($trans1);
	$trans3 = str_replace('  ',' ',$trans1);
	$trans3 = strip_tags($trans3);
	$trans3 = iconv("windows-1251", "utf-8", $trans3);
	$trans3 = preg_replace("/[^a-zа-я0-9_ ]/iu", "", $trans3);
	$trans3 = trim($trans3);
	$trans2 = encodestring($trans3);
	$trans2 =  strtolower($trans2);
	$trans2 = str_replace('__','_',$trans2);
	
	if(setTransTitle($trans2, 'products')==0){
		return $trans2;
	}
	else{
		$trans_bool = false;
		$trans_i = 2;
		while(!$trans_bool){
			$tmp_trans = $trans2.'_'.$trans_i;
			if(setTransTitle($tmp_trans, 'products')==0){
				return $tmp_trans;
				$trans_bool = true;
			}
			$trans_i++;
		}
	}
}

// ЧПУ новостей
function setNewsCHPU($title) {
	$trans1 = iconv("utf-8", "windows-1251", $title);
	$trans1 =  strtolower($trans1);
	$trans3 = str_replace('  ',' ',$trans1);
	$trans3 = strip_tags($trans3);
	$trans3 = iconv("windows-1251", "utf-8", $trans3);
	$trans3 = preg_replace("/[^a-zа-я0-9_ ]/iu", "", $trans3);
	$trans3 = trim($trans3);
	$trans2 = encodestring($trans3);
	$trans2 =  strtolower($trans2);
	$trans2 = str_replace('__','_',$trans2);
	
	if(setTransTitle($trans2, 'news')==0){
		return $trans2;
	}
	else{
		$trans_bool = false;
		$trans_i = 2;
		while(!$trans_bool){
			$tmp_trans = $trans2.'_'.$trans_i;
			if(setTransTitle($tmp_trans, 'news')==0){
				return $tmp_trans;
				$trans_bool = true;
			}
			$trans_i++;
		}
	}
}

// ЧПУ категорий
function setCategoryCHPU($title) {
	$trans1 = iconv("utf-8", "windows-1251", $title);
	$trans1 =  strtolower($trans1);
	$trans3 = str_replace('  ',' ',$trans1);
	$trans3 = strip_tags($trans3);
	$trans3 = iconv("windows-1251", "utf-8", $trans3);
	$trans3 = preg_replace("/[^a-zа-я0-9_ ]/iu", "", $trans3);
	$trans3 = trim($trans3);
	$trans2 = encodestring($trans3);
	$trans2 =  strtolower($trans2);
	$trans2 = str_replace('__','_',$trans2);
	
	if(setTransTitle($trans2, 'category')==0){
		return $trans2;
	}
	else{
		$trans_bool = false;
		$trans_i = 2;
		while(!$trans_bool){
			$tmp_trans = $trans2.'_'.$trans_i;
			if(setTransTitle($tmp_trans, 'category')==0){
				return $tmp_trans;
				$trans_bool = true;
			}
			$trans_i++;
		}
	}
}



?>
