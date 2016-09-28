<?
# FUNCTIONS #################################################################################

// Получаем значение переменной по заданному параметру
// id - уникальный номер переменной в базе, name - имя переменной
function getval($var_name, $lang_id = 0, $var_id = 0) {
	//if ($lang_id == 0) $lang_id = 1;

	$resultValue = '';
	$sort = " ORDER BY id";
	
	if ($lang_id != 0) $langFilter = " AND lang = ".$lang_id; else $langFilter = "";
	if ($var_id != 0 && $var_name == '') $sql = "SELECT val FROM variables WHERE id = ".$var_id.$langFilter.$sort;
	if ($var_name != '' && $var_id == 0) $sql = "SELECT val FROM variables WHERE name = '".$var_name."'".$langFilter.$sort;
	if ($var_name != '' && $var_id != 0) $sql = "SELECT val FROM variables WHERE id = ".$var_id." AND name = '".$var_name."'".$langFilter.$sort;
	
	$result = db_query($sql);
	$numRows = db_num_rows($result);
	if ($numRows > 0) {
		if ($numRows == 1) {
			$row = db_fetch_array($result);
			$resultValue = $row[0];
		} else {
			$resultValue = array();
			$i = 0;
			while ($row = db_fetch_array($result)) {
				$resultValue[$i] = $row['val'];
				$i++;
			}
		}
	}
	
	return $resultValue;
}

// Получаем массив значений из указанного множества
function get_values($valuesArray) {
	if (!is_array($valuesArray)) return -1;
	
	$resultArray = array();
	//if ($lang_id != 0) $langFilter = " AND lang = ".$lang_id; else $langFilter = "";
	
	while (list($varIndex, $varName) = each($valuesArray)) {
		$sql = "SELECT val FROM variables WHERE name = '".$varName."'".$langFilter." ORDER BY name";
		$result = db_query($sql);
		$numRows = db_num_rows($result);
		
		if ($numRows > 0) {
			if ($numRows == 1) {
				$row = db_fetch_array($result);
				$resultArray[$varName] = $row[0];
			} else {
				$k = 0;
				while ($row = db_fetch_array($result)) {
					$resultArray[$varName][$k] = $row['val'];
					$k++;
				}
			}
		}
	}
	
	return $resultArray;
}

// Удаляем фигурные скобки из названия тэга и подготавливаем для SQL запроса
function remove_brakes(&$item, $key) {
   	$item = str_replace("{", '', $item);
	$item = str_replace("}", '', $item);
	$item = "name = '".$item."'";
}

// Заменяем строковые значения в шаблоне
function parse_values($content) {
	preg_match_all("/{([A-Z0-9_]*)}/e", $content, $values);
	$tags = array_unique($values[0]);
	
	array_walk($tags, 'remove_brakes');
	
	$sql_where = db_sql_where($tags, "OR");
	
	$values = array();
	if($sql_where!=''){
		$result = db_query("SELECT name, val FROM variables WHERE (".$sql_where.")");
		if (db_num_rows($result) > 0) {
			while ($row = db_fetch_array($result)) {
				 $values["{".$row['name']."}"] = $row['val'];
			}
			//db_free_result($result);
		}
	}
	return strtr($content, $values);
}
?>
