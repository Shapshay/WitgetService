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
<div><strong>Цвет заливки</strong><br>
<button class="jscolor {valueElement:'chosen-value', onFineChange:'update(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_BG_COLOR}" id="chosen-value" name="chosen-value" readonly="1">
<input id="rgb-str" value="{WDT_EDT_BG_COLOR}" name="bg_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Заголовок окна</strong><br>
<input type="text" name="w_title" value="{WDT_EDT_W_TITLE}" class="settings_inp"></div>
<div><strong>Цвет заголовка окна виджета</strong><br>
<button class="jscolor {valueElement:'chosen-value3', onFineChange:'update3(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_TITLE_COLOR}" id="chosen-value3" name="chosen-value3" readonly="1">
<input id="rgb-str3" value="{WDT_EDT_TITLE_COLOR}" name="title_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Текст окна</strong><br>
<textarea name="w_text" class="settings_textarea">{WDT_EDT_W_TEXT}</textarea></div>
<div><strong>Цвет текста виджета</strong><br>
<button class="jscolor {valueElement:'chosen-value4', onFineChange:'update4(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_TEXT_COLOR}" id="chosen-value4" name="chosen-value4" readonly="1">
<input id="rgb-str4" value="{WDT_EDT_TEXT_COLOR}" name="text_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Картинка заднего фона (640х400)</strong><br>
<img src="{WDT_EDT_BGIMG}" width="150" vspace="3" /><br />
<div class="file_upload">
	<button type="button">Выбрать</button>
	<div>{WDT_EDT_BGIMG}</div>
	<input type="file" name="img" value="{WDT_EDT_BGIMG}">
	
</div>
</div>
<input type="hidden" name="img_old" value="{WDT_EDT_BGIMG}" />
<input type="hidden" name="img_new" id="img_new" value="0" />

<p><strong>НАСТРОЙКИ ДЛЯ СОЦ.СЕТЕЙ</strong></p>
<div><strong>Ссылка страницы которой делятся</strong><br>
<input type="text" name="url" value="{WDT_EDT_URL}" class="settings_inp"></div>
<div><strong>Заголовок поста</strong><br>
<input type="text" name="soc_title" value="{WDT_EDT_SOC_TITLE}" class="settings_inp"></div>
<div><strong>Описание поста</strong><br>
<input type="text" name="soc_desc" value="{WDT_EDT_SOC_DESC}" class="settings_inp"></div>
<div><strong>Картинка поста (640х400)</strong><br>
<img src="{WDT_EDT_SOC_IMG}" width="150" vspace="3" /><br />
<div class="file_upload2">
	<button type="button">Выбрать</button>
	<div>{WDT_EDT_SOC_IMG}</div>
	<input type="file" name="soc_img" value="{WDT_EDT_SOC_IMG}">
	
</div>
</div>
<input type="hidden" name="soc_img_old" value="{WDT_EDT_SOC_IMG}" />
<input type="hidden" name="soc_img_new" id="img_new2" value="0" />


<p style="margin-top:40px;">
<button type="submit" name="btn_wdt_save" class="btn_reg">Сохранить</button></p>
</form>
</div>
<div class="clear"></div>