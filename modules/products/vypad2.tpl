<div class="vypadalka" id="DivVypadID{PROD_ID}">
	<div class="poz">
		<img src="{PRODUCT_ICON2}" vspace="5">
	</div>
	<div class="forma">
	<!--titul-->
	<div class="art">
		Артикул: {PRODUCT_ARTIKUL}
	</div>
	<!--/titul-->
	<!--title-->
	<div class="cena">
		{PRODUCT_TITLE}
	</div>
	<!--/title--> 
	<!--oghid-->
	<div class="oghid">
		Ожидается поступление
	</div>
	<!--/oghid-->
	<!--cena-->
	<div class="cena">
		От {PRODUCT_COST} тенге
	</div>
	<!--/cena--> 
	<form method="post" id="FormSend{PROD_ID}">
	<!--name-->
	<div>
		<input type="text" class="name" name="name" id="name{PROD_ID}"  placeholder="Ваше имя"/>
	</div>
	<!--/name-->
	<!--tel-->
	<div>
		<input type="text" class="name"  name="phone" id="phone{PROD_ID}" placeholder="Ваш телефон"/>
	</div>
	<input type="hidden" name="title" value="{PRODUCT_TITLE}" />
	<input type="hidden" name="artikul" value="{PRODUCT_ARTIKUL}" />
	</form>
	<!--/tel-->
	<!--knopka-->
	<div>
		<button class="kn_soobshit" onclick="checkFieldsSend('FormSend{PROD_ID}',{PROD_ID});"></button>
	</div>
	<!--/knopka-->
	</div>
	<div class="kresdiv">
		<input type="button" class="krestik" onClick="javascript:hideShowDiv('DivVypadID{PROD_ID}');">
	</div>
</div>