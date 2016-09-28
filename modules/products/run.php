<?php
	# SETTINGS #############################################################################
	$moduleName = "products";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "product" => $prefix . "product.tpl",
			$moduleName . "prod_row" => $prefix . "prod_row.tpl",
			$moduleName . "vypad1" => $prefix . "vypad1.tpl",
			$moduleName . "vypad2" => $prefix . "vypad2.tpl",
			$moduleName . "mail" => $prefix . "mail.tpl",
	));
	# SETTINGS ##############################################################################

	$_sendTo = META_EMAIL;				// E-mail получателя
	$_sendFrom = $_sendTo;								// E-mail отправителя
	$_mailSubject = "Просьба сообщить о поступлении";		// Тема письма
	$_mailFrom = "ValeryGold.KZ";		// Подпись письма
	$_anonsCount = 12;
	# MAIN #################################################################################
	if(isset($_POST['phone'])){
		// отправка второй формы и вывод результата
		$name = SuperSaveStr($_POST['name']);
		$phone = SuperSaveStr($_POST['phone']);
		$title = SuperSaveStr($_POST['title']);
		$artikul = SuperSaveStr($_POST['artikul']);
		
		//отправка письма
		$tpl->assign("USER_LOGIN", $name);
		$tpl->assign("USER_PHONE", $phone);
		$tpl->assign("USER_TITLE", $title);
		$tpl->assign("USER_ARTIKUL", $artikul); 
		
		$tpl->parse("TEMP", $moduleName . "mail");
		
		sendMailAttach($_sendTo, $_mailSubject, $tpl->fetch("TEMP"), $_mailFrom, $_sendFrom);
		
		header("Location: http://".$_SERVER['HTTP_HOST']."/katalog");
		exit;
	}
	
	$SQL = "SELECT 
				city
				FROM magaz
				GROUP BY city";
	$result2 = db_query($SQL);
	$citys = array();
	$i = 0;
	while($row2 = db_fetch_array($result2)){
		$citys[$i] = str_replace('г. ','',$row2['city']);
		$citys[$i] = str_replace('г.','',$citys[$i]);
		$citys[$i] = trim($citys[$i]);
		$citys[$i] = str_replace('.','',$citys[$i]);
		$citys[$i] = str_replace(',','',$citys[$i]);
		$citys[$i] = str_replace('г ','',$citys[$i]);
		$i++;
	}
	$citys = array_unique($citys);
	sort($citys); 
	$j = 0;
	$prod_city = '';
	foreach($citys as $v){
		$prod_city.= '<option value="'.$v.'">'.$v.'</option>';
		$j++;
	}
	$tpl->assign("CITY_ROWS", $prod_city);
	
	$sql = "SELECT * FROM pages WHERE id = ".PAGE_ID." LIMIT 1";
	$result = db_query($sql);
	$row = db_fetch_array($result);
	
	$page_chpu = getItemCHPU(PAGE_ID, 'pages');
	
	$cat_url = 'katalog/'.$page_chpu.'/';
	$category = '<div class="cat_title_div"><a href="'.$cat_url.'" class="tel3"><strong>ВСЕ</strong></a></div>';
	$SQL = "SELECT 
			*
			FROM category";
	$result3 = db_query($SQL);
	while($row3 = db_fetch_array($result3)){
		if(getCategoryItemCount($row3['id'], PAGE_ID)){
			$cat_url = 'katalog/'.$page_chpu.'/'.getItemCHPU($row3['id'], 'category').'/';
			$category.= '<div class="cat_title_div"><a href="'.$cat_url.'" class="tel3">'.$row3['title'].'</a></div>';
		}
	}
	$tpl->assign("CATEGORY_ROWS", $category);
	//while ($row = db_fetch_array($result)){
		if(isset($_GET['cat'])&&$_GET['cat']!=0){
			$sql_add = ' AND cat_id = '.$_GET['cat'];
		}
		else{
			$sql_add = '';
		}
		$_pages->numRows = db_table_count('products', "page_id = ".PAGE_ID.$sql_add);
		$_pages->rowsPerPage = $_anonsCount;
	
		$tpl->assign("CH_ICON", $row['icon']);
		$sql2 = "SELECT * FROM products WHERE page_id = ".PAGE_ID.$sql_add." LIMIT ".$_pages->getLimit();
		$result2 = db_query($sql2);
		if (db_num_rows($result2) > 0) {
			while ($row2 = db_fetch_array($result2)){
				$tpl->clear("VYPADALKA");
				$tpl->assign("PRODUCT_ICON1", $row2['icon']);
				$tpl->assign("PRODUCT_ICON2", $row2['icon2']);
				$tpl->assign("PRODUCT_ARTIKUL", $row2['artikul']);
				$tpl->assign("PRODUCT_TITLE", $row2['title']);
				$tpl->assign("PRODUCT_COST", $row2['cost']);
				$tpl->assign("PROD_ID", $row2['id']);
				
				if($row2['status']==1){
					$tpl->parse("VYPADALKA", "." .$moduleName. "vypad1");
				}
				else{
					$tpl->parse("VYPADALKA", "." .$moduleName. "vypad2");
				}
				
				$tpl->parse("PRODUCTS_ITEMS", "." .$moduleName. "product");
			}
		}
		else{
			$tpl->assign("PRODUCTS_ITEMS", '<div class="foto_kat"></div>');
		}
		$tpl->parse("CH_ROWS", "." .$moduleName. "prod_row");
		$tpl->clear("PRODUCTS_ITEMS");
		// Формируем разбивку по страницам
			if ($_pages->getPagesCount() > 1) {
				
				if(isset($_GET['cat'])&&$_GET['cat']!=0){
					$pageUrl = 'katalog/'.$page_chpu.'/'.getItemCHPU($_GET['cat'], 'category').'/?page={PAGE}';
				}
				else{
					$pageUrl = 'katalog/'.$page_chpu.'/?page={PAGE}';
				}
				$pageView = $_pages->getPageLinks($pageUrl, 'pages');
				$tpl->assign("PAGES", $pageView);
			} else $tpl->assign("PAGES", '');
	//}
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>