<?php
	# SETTINGS #############################################################################
	$moduleName = "wdt";
	# MAIN #################################################################################
	
	$tpl->assign("META_LINK", '');
	
	$U_ID = SuperSaveStr($_GET['u']);
	//echo $U_ID;
	$sql = "SELECT 
				widgets.*,
				u_w_options.OnOff AS OnOff,
				pages.id AS page_id,
				pages.chpu AS chpu,
				pages.parent_id AS parent_id
			FROM u_w_options
			LEFT OUTER JOIN users ON u_w_options.u_id = users.id
			LEFT OUTER JOIN widgets ON u_w_options.w_id = widgets.id
			LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
			WHERE users.uniq =  '".$U_ID."' AND u_w_options.OnOff = 1 AND users.amount_date>NOW() AND tarif_id<>0
			LIMIT 1";
	//echo $sql;
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		$row = db_fetch_array($result);
		$url ='/'.$row['chpu'].'/wdt.js?u='.$U_ID;
		//echo $url;
		header("Location: ".$url);
		//echo "Y";
	}
	
	
	$tpl->assign(strtoupper($moduleName), '');
	
?>