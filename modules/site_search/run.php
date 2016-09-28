<?php
/*   Модуль поиска по сайту   */

$moduleName = "site_search";
$prefix = "./modules/".$moduleName."/";

$tpl->define(array(
		$moduleName => $prefix . $moduleName.".tpl",
		$moduleName . "result_row" => $prefix . "result_row.tpl",
	));

# SETTINGS #################################################################################

// Настройки
$_searchArticle     = true; 	  	    // Искать в статьях
$_searchNews        = true;		   	  	// Искать в новостях
$_searchByWord  	= false;            // Искать по словам

$_showNumMatches    = true;             // Отображать количество совпадений
$_showText          = true;			    // Отображать содержимое статьи
$_textLimit         = 300;		        // Длина текста, краткого описания найденного текста
$_highlightMatches  = true; 		    // Подсвечивать искомые слова
$_minKeywordLenght  = 3;				// Мнимальная длина строки поискового слова

// Инициализация
if(isset($_POST['keywords'])){
	//$keywords = initVar('keywords', 'string');
	$keywords = $_POST['keywords'];
	$s_type = initVar('s_type', 'int');
	session_name('SEARCH');
	@session_start('SEARCH');
	session_register('keywords');
	session_register('s_type');
	$_SESSION['keywords'] = $keywords;
	$_SESSION['s_type'] = $s_type;
}
else{
	if(isset($_POST['keywords'])){
		session_name('SEARCH');
		@session_start('SEARCH');
		$keywords = $_SESSION['keywords'];
		$s_type = $_SESSION['s_type'];
	}
	else{
		$keywords = '';
		$s_type = '';
	}
}

$keywords =	trim(ereg_replace(" +", " ", $keywords));

$_searchByWord   = initVar('by_word', 'bool');

# FUNCTIONS ################################################################################

// Делаем строку с заглавной буквы
function capitalizeWord($word) {
	$firstSymbol = mb_substr($word, 0, 1, 'utf-8');
	$word = mb_substr($word, 1 , mb_strlen($word, 'utf-8') -1, 'utf-8');
	$word = mb_strtoupper($firstSymbol, 'utf-8').mb_strtolower($word, 'utf-8');
	return $word;
}

// Заменяем строку
function replaceWord($word) {
	return '<span class="search_highlight">'.$word.'</span>';;
}

// Подсвечиваем искомые слова в тексте
function highlightKeywords(&$content, $keywords) {
	$words = explode(" ", $keywords);
	if (is_array($words)) {
		foreach($words as $word) {
			if (mb_strlen($word, 'utf-8') >= $GLOBALS['_minKeywordLenght']) {
		 		$replace_word = '<span class="search_highlight">'.$word.'</span>';
				$word = mb_strtolower($word, 'utf-8')."|".capitalizeWord($word)."|".mb_strtoupper($word, 'utf-8');
				$content = trim(preg_replace('/(?i:('.$word.'))/e', "replaceWord('\\1')", $content));
			}
		}
	}
}

// Находим количество совпадений в найденном тексте
function getNumMatches($content, $keywords) {
	$count = 0;
	$words = explode(" ", $keywords);
	$content = mb_strtolower($content, 'utf-8');
	
	if (is_array($words)) {
		foreach($words as $word) {
			if (mb_strlen($word, 'utf-8') >= $GLOBALS['_minKeywordLenght']) {
				$count+= mb_substr_count($content, mb_strtolower($word, 'utf-8'), 'utf-8');
			}
		}
	}
	//} else {
	//	$count+= mb_substr_count($content, mb_strtolower($word, 'utf-8'), 'utf-8');
	
	
	return $count;
}

// Формируем часть запроса состоящий их отдельных слов
function getLogicString($keywords, $field) {
	global $_minKeywordLenght;
	
	$logic = '';
	
	$keywords = trim($keywords);
	$keywords_array = explode(" ", $keywords);
	
	$i = 0;
	
	// Удаляем слова с длиной строки меньше установленного лимита
	foreach($keywords_array as $key => $val) {
		if (mb_strlen($val, 'utf-8') < $_minKeywordLenght) unset($keywords_array[$key]);
	}
	
	foreach ($keywords_array as $word) {
			$i++;
			$logic.= $field." REGEXP '".$word."'";
			if ($i < count($keywords_array)) $logic.= " OR ";
	}
	
	return $logic;
}

// Производим поиск
function searchKeywords($table, $keywords, $s_type) {
	global $i, $tpl, $_searchByWord, $_showText, $_textLimit, $_highlightMatches, $_searchNews, $_showNumMatches, $counter, $_pages;
	
	if (empty($keywords)) return 0;
	
	// SQL запрос
	$field1 = 'title';
	$field2 = 'description';
	$field3 = 'model';
	
	$add_sql = '';
	
	
	$sql = '';
	if (!$_searchByWord) {
		if($s_type!=3){
			$add_sql = ' AND gender = '.$s_type;
		}
		
		
		//$_pages->numRows = db_table_count('products', "(".$field1." REGEXP '".$keywords."' OR ".$field2." REGEXP '".$keywords."' OR ".$field3." REGEXP '".$keywords."') AND status = 1".$add_sql);
		$_pages->numRows = db_table_count('products', "(".$field1." LIKE '%".$keywords."%' OR ".$field2." LIKE '%".$keywords."%' OR ".$field3."  LIKE '%".$keywords."%') AND status = 1".$add_sql);
		$_pages->rowsPerPage = 24;
		
		
		$sql = "SELECT * FROM ".$table." WHERE (".$field1."  LIKE '%".$keywords."%' OR ".$field2."  LIKE '%".$keywords."%' OR ".$field3."  LIKE '%".$keywords."%') AND status = 1".$add_sql." ORDER BY date DESC LIMIT ".$_pages->getLimit();
	} else {
		$content_str = getLogicString($keywords, $field2);
		$title_str = getLogicString($keywords, $field1);
		if (!empty($title_str) && !empty($content_str)) {
			$sql = "SELECT * FROM ".$table." WHERE (".$title_str.") OR (".$content_str.")".$and_condition;
		}
	}
	
	if (!empty($sql)) {
		$result = db_query($sql);
		$num_rows = db_table_count('products', "(".$field1."  LIKE '%".$keywords."%' OR ".$field2."  LIKE '%".$keywords."%' OR ".$field3."  LIKE '%".$keywords."%') AND status = 1".$add_sql);
	} else {
		$num_rows = 0;
	}
	
	// Отображение результатов
	if ($num_rows > 0) {
		$matches_label = getval("STR_SEARCH_MATCHES_TITLE");
		switch($num_rows){
			case 1:
				$tpl->assign("PROD_TD_WIDTH", '<td class="latest-empty" colspan="100"></td>');
			break;
			case 2:
				$tpl->assign("PROD_TD_WIDTH", '<td class="latest-empty" colspan="100"></td>');
			break;
			default:
				$tpl->assign("PROD_TD_WIDTH", '');
			break;
		}
		while ($row = db_fetch_array($result)) {
			$i++;
			
			$page_title = getPageTitle($row['page_id']);
			
			if ($_showText) {
				$content = strip_tags($row[$field2]);
				if (mb_strlen($content, 'utf-8') > $_textLimit) {
					$content = mb_substr($content, 0, $_textLimit, 'utf-8');
					$content.= "...";
				}
				
				if ($_highlightMatches) highlightKeywords($content, $keywords);
			} else {
				$content = '';
			}
			
			if (!empty($row[$field1])) {
				$title = mb_substr(strip_tags($row[$field1]), 0, 255, 'utf-8');
			} else {
				$title = $page_title;
			}
			
			$date = date("d.m.Y h:m", strtotime($row['date']));
			
			if ($table == 'module_news') $news_id = '&news_id='.$row['id']; else $news_id = '';
			$url = 'index.php?menu='.$row['page_id'].$news_id."&prod=".$row['id'];
			
			if ($_showNumMatches) {
				$text = $row[$field1]." ".$row[$field2];
				$num = getNumMatches(strip_tags($text), $keywords);
				$strNum = str_pad($num, 3, "X", STR_PAD_LEFT);
				$strNum = str_replace("X", "&nbsp;", $strNum);
				$numMatches = $matches_label.': '.$strNum;
			} else {
				$numMatches = "";
			}
			
			$chapter = '<a href="index.php?menu='.$row['page_id'].'" class="chapter_url">'.$page_title.'</a>';
			
			$tpl->assign(array("SEARCH_TITLE" => $title,
							   "SEARCH_URL" => $url,
							   "SEARCH_DATE" => $date,
			                   "SEARCH_CONTENT" => $content,
			                   "SEARCH_CHAPTER" => $chapter,
			                   "NUM_MATCHES" => $numMatches,
							   "NUMBER" => $i
							  )
						 );
			$tpl->assign("PROD_ICON", $row['icon1_1']);
			
			$tpl->assign("PROD_COST", $row['cost']);
			if($row['valuta']==1){
				$tpl->assign("PROD_VALUTE", getval("STR_KZT"));
			}
			else{
				$tpl->assign("PROD_VALUTE", '$');
			}
			if($i/3==floor($i/3)){
				$tpl->assign("PROD_TR", '</tr><tr>');
			}
			else{
				$tpl->assign("PROD_TR", '');
			}
			
			$tpl->parse("SEARCH_RESULTS", ".".$GLOBALS['moduleName']."result_row");
		}
		
		// Формируем разбивку по страницам
		if ($_pages->getPagesCount() > 1) {
			$pageUrl = "http://".getenv("HTTP_HOST").'/index.php?menu='.$_GET['menu'].'&page={PAGE}';
			$pageView = $_pages->getPageLinks($pageUrl, 'pages');
			$tpl->assign("PAGES", $pageView);
		} else $tpl->assign("PAGES", '');
		
		return $num_rows;
	} else {
		$tpl->assign("PAGES", '');
		return 0;
	}
}

	# MAIN ##################################################################################

	$i = 0;
	$numMatches = 0;
	$keywords = mb_substr($keywords, 0, 255, 'utf-8');
	
	$tpl->assign("SEARCH_PAGE_ID", PAGE_ID);
	$tpl->assign("SEARCH_VALUE", $keywords);
	if ($_searchByWord) $tpl->assign("BY_WORD", "checked"); else $tpl->assign("BY_WORD", "");
	//assignList("SEARCH_LIST", getval("ARR_SEARCH_IN"), $search_type);
	
	if (mb_strlen($keywords, 'utf-8') < $_minKeywordLenght) {
		$tpl->assign("SEARCH_RESULTS", '<font color="#ff0000"><strong>'.getval("STR_SEARCH_SHORTER").'</strong></font>');
		$tpl->assign("TOTAL_FOUND", $numMatches);
		$tpl->assign("PAGES", '');
		$tpl->assign("PROD_TD_WIDTH", '');
	} else {
		// Начинаем поиск
		if (!empty($keywords)) {
			$numMatches = searchKeywords('products', $keywords, $s_type);
			
			if ($numMatches == 0) $tpl->assign("SEARCH_RESULTS", "");
				$tpl->assign("TOTAL_FOUND", $numMatches);
		} else {
			$tpl->assign("SEARCH_RESULTS", "");
			$tpl->assign("PROD_TD_WIDTH", '');
		}
	}
	
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
?>