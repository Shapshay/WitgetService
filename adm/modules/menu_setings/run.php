<?php
	# SETTINGS #############################################################################
	$moduleName = "menu_setings";
	# MAIN #################################################################################
	$menu_setings = '';
	$cur_page = PAGE_ID;
	$lvl = 0;
	function ShowTree2($ParentID, $lvl, $cur_page) { 
		global $menu_setings; 
		global $lvl; 
		global $cur_page;
		$lvl++; 
		$sSQL="SELECT id,title,parent_id FROM pages WHERE parent_id=".$ParentID." AND group_id=3 AND view=1 ORDER BY sortfield";
		$result=mysql_query($sSQL);
		if (mysql_num_rows($result) > 0) {
			if($lvl==1){
				$menu_setings.= '<ul class="am1" id="my-menu2">';
			}
			else{
				$menu_setings.= '<ul class="am2">';
			}
			while ( $row = mysql_fetch_array($result) ) {
				$ID1 = $row["id"];
				if($ID1==PAGE_ID){
					$menu_setings.= '<li class="cur_am">'.$row['title'];
				}
				else{
					$menu_setings.= '<li><a href="system.php?menu='.$ID1.'">'.$row['title'].'</a>';
				}
				ShowTree2($ID1, $lvl, $cur_page); 
				$lvl--;
			}
			$menu_setings.= '</ul>';
		}
	}
	if(rootRights($_SESSION['lgn'])==0){
		ShowTree2(0, 0, $menu_setings); 
	}
	$tpl->assign(strtoupper($moduleName), $menu_setings);
?>