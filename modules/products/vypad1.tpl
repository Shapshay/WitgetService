<div class="vypadalka" id="DivVypadID{PROD_ID}">
	<div class="poz">
		<img src="{PRODUCT_ICON2}" vspace="5">
	</div>
	<div class="forma">
	<!--titul-->
	<div class="art1">
		Артикул: {PRODUCT_ARTIKUL}
	</div>
	<!--/titul-->
	<!--title-->
	<div class="cena">
		{PRODUCT_TITLE}
	</div>
	<!--/title--> 
	<!--oghid-->
	<div class="oghid1">
		В наличии
	</div>
	<!--/oghid-->
	<!--cena-->
	<div class="cena1">
		От {PRODUCT_COST} тенге
	</div>
	<!--/cena-->
	<!--knopka-->
	<div style="padding-top:20px;">
		<a href="javascript:hideShowDiv('DivVypadMagazID{PROD_ID}');"><img src="images/kn_gde_kup.png" width="275" height="72" /></a></div>
	<!--/knopka-->
	</div>
	<div class="kresdiv">
		<input type="button" class="krestik" onClick="javascript:hideShowDiv('DivVypadID{PROD_ID}');">
	</div>
</div>

<div class="vypadalka2" id="DivVypadMagazID{PROD_ID}">
	<div id="MagazList{PROD_ID}">
	<!--cena-->
	<div class="mag_title">
		<!--Выберите город -->
	</div>
	<!--oghid-->
	<div class="mag_rows" style="padding-top:80px;">
		<select id="ProdCitySel{PROD_ID}" class="city_sel" onchange="MagAjax('MagazList{PROD_ID}', {PROD_ID});">
		<option value="0">Выберите город</option>
		{CITY_ROWS}
		</select>
	</div>
	<!--/oghid-->
	</div>
	
	<div class="kresdiv">
		<input type="button" class="krestik" onClick="javascript:hideShowDivMAG('DivVypadMagazID{PROD_ID}');">
	</div>
</div>