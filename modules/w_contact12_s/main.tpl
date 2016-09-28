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
<div><strong>Цвет окна слева</strong><br>
<button class="jscolor {valueElement:'chosen-value2', onFineChange:'update2(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_W_COLOR1}" id="chosen-value2" name="chosen-value2" readonly="1">
<input id="rgb-str2" value="{WDT_EDT_W_COLOR1}" name="w_color1" class="settings_mini_inp" readonly="1"></div>
<div><strong>Цвет окна справа</strong><br>
<button class="jscolor {valueElement:'chosen-value21', onFineChange:'update21(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_W_COLOR2}" id="chosen-value21" name="chosen-value21" readonly="1">
<input id="rgb-str21" value="{WDT_EDT_W_COLOR2}" name="w_color2" class="settings_mini_inp" readonly="1"></div>
<div><strong>Цвет текста</strong><br>
<button class="jscolor {valueElement:'chosen-value3', onFineChange:'update3(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_TEXT_COLOR}" id="chosen-value3" name="chosen-value3" readonly="1">
<input id="rgb-str3" value="{WDT_EDT_TEXT_COLOR}" name="text_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Заголовок 1</strong><br>
<input type="text" name="w_title1" value="{WDT_EDT_W_TITLE1}" class="settings_inp"></div>
<div><strong>Заголовок 2</strong><br>
<input type="text" name="w_title2" value="{WDT_EDT_W_TITLE2}" class="settings_inp"></div>
<div><strong>Текст</strong><br>
<textarea name="w_text" class="settings_textarea">{WDT_EDT_W_TEXT}</textarea></div>
<div><strong>Текст подсказки поля 1</strong><br>
<input type="text" name="inp_place1" value="{WDT_EDT_INP_PLACE1}" class="settings_inp"></div>
<div><strong>Текст подсказки поля 2</strong><br>
<input type="text" name="inp_place2" value="{WDT_EDT_INP_PLACE2}" class="settings_inp"></div>
<div><strong>Текст на кнопке</strong><br>
<input type="text" name="btn_text" value="{WDT_EDT_BTN_TEXT}" class="settings_inp"></div>
<div><strong>Текст на кнопке после нажатия</strong><br>
<input type="text" name="btn_text2" value="{WDT_EDT_BTN_TEXT2}" class="settings_inp"></div>
<div><strong>Цвет кнопки</strong><br>
<button class="jscolor {valueElement:'chosen-value5', onFineChange:'update5(this)'} btn_color">
		Выберите цвет 1
</button>
<br />
<input type="hidden" value="{WDT_EDT_BTN_COLOR1}" id="chosen-value5" name="chosen-value5" readonly="1">
<input id="rgb-str5" value="{WDT_EDT_BTN_COLOR1}" name="btn_color1" class="settings_mini_inp" readonly="1">
</div>
<div><strong>Цвет кнопки при наведении</strong><br>
<button class="jscolor {valueElement:'chosen-value51', onFineChange:'update51(this)'} btn_color">
		Выберите цвет 2
</button>
<br />
<input type="hidden" value="{WDT_EDT_BTN_COLOR2}" id="chosen-value51" name="chosen-value51" readonly="1">
<input id="rgb-str51" value="{WDT_EDT_BTN_COLOR2}" name="btn_color2" class="settings_mini_inp" readonly="1"></div>


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