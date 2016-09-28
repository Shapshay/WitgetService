<div class="pay">
	<div class="pay_title">Оплата тарифа: {PAY_TARIF}</div>
	<div class="pay_info">
		
		{PAY_TARIF_INFO}
	</div>
	<div class="pay_form">
		<form action='https://merchant.roboxchange.com/Index.aspx' method=POST>
		<input type=hidden name=MrchLogin value="{MRCH_LOGIN}">
		<input type=hidden name=OutSum value="{OUT_SUM}">
		<input type=hidden name=InvId value="{INV_ID}">
		<!--<input type=hidden name=IsTest value=1>-->
		<input type=hidden name=Desc value="{INV_DESC}">
		<input type=hidden name=SignatureValue value="{SCR}" />
		<input type=hidden name=Shp_item value="{SHP_ITEM}">
		<input type=hidden name=IncCurrLabel value="{IN_CURR}">
		<input type=hidden name=Culture value="{CULTURE}">
		<button type="submit" class="btn_reg">Оплатить</button>
		</form>
		<div class="pay_btn"></div>
	</div>
</div>


	
	