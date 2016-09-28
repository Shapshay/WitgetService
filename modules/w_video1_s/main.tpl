{META_LINK}
<div class="settings_wdt_title">{WDT_TITLE}</div>
<div class="settings_view">
<div><img src="{WDT_PREVIEW}" /></div>
<p><a href="{WDT_URL}" class="set_btn_view" target="_blank" class="set_btn_view">Просмотр</a></p>
<form method="post" id="DefWdtFrm">
<p><button type="button" class="set_btn_def" onclick="DefWdt();">Настройки поумолчанию</button></p>
<input type="hidden" name="WdtDefault" value="1" />
</form>
<form method="post" id="WdtDelFrm">
<p><button type="button" class="set_btn_del" onclick="DelWdt();">Удалить</button></p>
<input type="hidden" name="WdtDel" value="1" />
</form>
</div>
<div class="settings_form">
<form method="post" enctype="multipart/form-data" name="s_s">
<div><strong>Заголовок окна</strong><br>
<input type="text" name="w_title" value="{WDT_EDT_W_TITLE}" class="settings_inp"></div>
<div><strong>Цвет заголовка окна виджета</strong><br>
<button class="jscolor {valueElement:'chosen-value3', onFineChange:'update3(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_TITLE_COLOR}" id="chosen-value3" name="chosen-value3" readonly="1">
<input id="rgb-str3" value="{WDT_EDT_TITLE_COLOR}" name="title_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Цвет заливки</strong><br>
<button class="jscolor {valueElement:'chosen-value', onFineChange:'update(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_BG_COLOR}" id="chosen-value" name="chosen-value" readonly="1">
<input id="rgb-str" value="{WDT_EDT_BG_COLOR}" name="bg_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Ссылка на видео</strong><br>
<iframe width="300" height="200" src="{WDT_EDT_URL}" frameborder="0" allowfullscreen=""></iframe><br>
<input type="hidden" name="old_url" value="{WDT_EDT_URL}" class="settings_inp">
<input type="text" name="url" value="{WDT_EDT_URL}" class="settings_inp"></div>


<p style="margin-top:40px;">
<button type="submit" name="btn_wdt_save" class="btn_reg">Сохранить</button></p>
</form>
</div>
<div class="clear"></div>