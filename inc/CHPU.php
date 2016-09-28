<?php
	
	// ���������� ��� �������
	function getItemCHPU($id, $item_tab) {
		return db_get_data("SELECT chpu AS num FROM ".$item_tab." WHERE id = ".$id." LIMIT 1", "num");
	}
	
	// ������ URL � ������������� $_GET-����������
	function getBaseURL($chpuURL) {
		////echo $chpuURL."*<br>";
		$chpuURL = strtolower($chpuURL);
		$chpuURL = strip_tags($chpuURL);
		$chpuURL = trim($chpuURL);
		while (strpos($chpuURL,' ')!==false ){
   			$chpuURL = str_replace(' ','',$chpuURL);
		};
		$chpuURL = preg_split("/\//", $chpuURL, -1, PREG_SPLIT_NO_EMPTY);
		//print_r($chpuURL);
		
		// ����� ����
		
		// �������� ������ ����
		//print_r($chpuURL);
		//echo "<p>";
		
		if(isset($chpuURL[1])&&strpos($chpuURL[1],"u=")!=0){
			$result5 = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[0]."' LIMIT 1");
			$row5 = db_fetch_array($result5);
			//echo "Y1";
			if (db_num_rows($result5) > 0) {
				//echo "Y2";
				$GLOBALS['_GET']['menu'] = $row5['id'];
				$page_num = str_replace("wdt.js","",$chpuURL[1]);
				$GLOBALS['_GET']['u'] = str_replace("?u=","",$page_num);
				//echo $GLOBALS['_GET']['u'];
			}
			else{
				return false;
			}
			
		}
		else{
			
			
			
			if(isset($chpuURL[1])&&strpos($chpuURL[1],"t=")!=0){
				$result5 = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[0]."' LIMIT 1");
				$row5 = db_fetch_array($result5);
				//echo "Y1";
				if (db_num_rows($result5) > 0) {
					//echo "Y2";
					$GLOBALS['_GET']['menu'] = $row5['id'];
					$GLOBALS['_GET']['t'] = str_replace("?t=","",$chpuURL[1]);
				}
				else{
					return false;
				}
				
			}
			else{
			
			
			
			
			
				if(isset($chpuURL[1])){
					//echo "1<br>";
					$result5 = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[0]."' LIMIT 1");
					$row5 = db_fetch_array($result5);
					//echo $row5['id']."<br>";
					if($row5['id']==2149||$row5['id']==2150||$row5['id']==2151||$row5['id']==2152){
						if(strpos($chpuURL[1],"page=")==0){
							$result = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[1]."' LIMIT 1");
							if (db_num_rows($result) > 0) {
								$row = db_fetch_array($result);
								$GLOBALS['_GET']['menu'] = (int)$row['id'];
							}
						}
						else{
							$result = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[0]."' LIMIT 1");
							if (db_num_rows($result) > 0) {
								$row = db_fetch_array($result);
								$GLOBALS['_GET']['menu'] = (int)$row['id'];
							}
							$page_num = str_replace("?page=","",$chpuURL[1]);
							//echo "*".$page_num."*N"."<br>";
							$GLOBALS['_GET']['page'] = (int)$page_num;
						}
					}
					else{
						if(strpos($chpuURL[1],"page=")==0){
							//echo "Y"."<br>";
							$result = db_query("SELECT id FROM articles WHERE chpu = '".$chpuURL[1]."' LIMIT 1");
							$row = db_fetch_array($result);
							if (db_num_rows($result) > 0) {
								$GLOBALS['_GET']['art'] = (int)$row['id'];
								$GLOBALS['_GET']['menu'] = (int)$row5['id'];
							}
							else{
								//echo "7"."<br>";
								$result2 = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[1]."' LIMIT 1");
								if (db_num_rows($result2) > 0) {
									$row2 = db_fetch_array($result2);
									//echo $row2['id']."<br>";
									$GLOBALS['_GET']['menu'] = $row2['id'];
								}
								else{
									return false;
								}
								//$GLOBALS['_GET']['menu'] = 1;
							}
						}
						else{
							$result = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[0]."' LIMIT 1");
							if (db_num_rows($result) > 0) {
								$row = db_fetch_array($result);
								$GLOBALS['_GET']['menu'] = (int)$row['id'];
							}
							//echo "N"."<br>";
							$page_num = str_replace("?page=","",$chpuURL[1]);
							//echo "*".$page_num."*N";
							$GLOBALS['_GET']['page'] = (int)$page_num;
						}
					}
				}
				else{
					//echo "2"."<br>";
					$result = db_query("SELECT id FROM pages WHERE chpu = '".$chpuURL[0]."' LIMIT 1");
					if (db_num_rows($result) > 0) {
						//echo "3";
						$row = db_fetch_array($result);
						$GLOBALS['_GET']['menu'] = (int)$row['id'];
					}
					else{
						//echo "4"."<br>";
						return false;
						//$GLOBALS['_GET']['menu'] = 1;
					}
				}
				
				if(isset($chpuURL[2])){
					//echo strpos("pag=",$chpuURL[2])."*<br>";
					if(strpos($chpuURL[2],"u=")==0){
						//echo "Y"."<br>";
						$result = db_query("SELECT id, page_id FROM articles WHERE chpu = '".$chpuURL[2]."' LIMIT 1");
						if (db_num_rows($result) > 0) {
								$row = db_fetch_array($result);
								$GLOBALS['_GET']['menu'] = (int)$row['page_id'];
								$GLOBALS['_GET']['art'] = (int)$row['id'];
						}
						else{
							//echo "8"."<br>";
							return false;
							//$GLOBALS['_GET']['menu'] = 1;
						}
					}
					else{
						//echo "N"."<br>";
						$page_num = str_replace("wdt.js","",$chpuURL[2]);
						$page_num = str_replace("?u=","",$page_num);
						//echo "*".$page_num."*N"."<br>";
						$GLOBALS['_GET']['u'] = (int)$page_num;
					}
				}
				
				//echo "<p>";
				//print_r($GLOBALS['_GET']);
			}
		
		}
		//echo $GLOBALS['_GET']['menu'];
		//echo "<br>".$GLOBALS['_GET']['u'];
		return true;
	}
	
	
	// ����������� URL�
	function getCodeBaseURL($baseURL, $addParam = '') {
		$chpuURL = '';
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
	
	function getPageIDformCHPU($chpu) {
		return db_get_data("SELECT id AS num FROM pages WHERE chpu = ".$chpu." LIMIT 1", "num");
	}
?>