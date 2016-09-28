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
<div><strong>Цвет окна виджета</strong><br>
<button class="jscolor {valueElement:'chosen-value2', onFineChange:'update2(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_W_COLOR}" id="chosen-value2" name="chosen-value2" readonly="1">
<input id="rgb-str2" value="{WDT_EDT_W_COLOR}" name="w_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Заголовок формы</strong><br>
<input type="text" name="w_title" value="{WDT_EDT_W_TITLE}" class="settings_inp"></div>
<div><strong>Цвет заголовока формы</strong><br>
<button class="jscolor {valueElement:'chosen-value3', onFineChange:'update3(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_TITLE_COLOR}" id="chosen-value3" name="chosen-value3" readonly="1">
<input id="rgb-str3" value="{WDT_EDT_TITLE_COLOR}" name="title_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Ссылка на видео</strong><br>
<iframe width="300" height="200" src="{WDT_EDT_URL}" frameborder="0" allowfullscreen=""></iframe><br>
<input type="hidden" name="old_url" value="{WDT_EDT_URL}" class="settings_inp">
<input type="text" name="url" value="{WDT_EDT_URL}" class="settings_inp"></div>
<div><strong>Цвет формы</strong><br>
<button class="jscolor {valueElement:'chosen-value6', onFineChange:'update6(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_FORM_COLOR}" id="chosen-value6" name="chosen-value6" readonly="1">
<input id="rgb-str6" value="{WDT_EDT_FORM_COLOR}" name="form_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Текст подсказки поля 1</strong><br>
<input type="text" name="inp_place1" value="{WDT_EDT_INP_PLACE1}" class="settings_inp"></div>
<div><strong>Текст подсказки поля 2</strong><br>
<input type="text" name="inp_place2" value="{WDT_EDT_INP_PLACE2}" class="settings_inp"></div>
<div><strong>Градиент кнопки</strong><br>
<button class="jscolor {valueElement:'chosen-value5', onFineChange:'update5(this)'} btn_color">
		Выберите цвет 1
</button>
<br />
<input type="hidden" value="{WDT_EDT_BTN_COLOR1}" id="chosen-value5" name="chosen-value5" readonly="1">
<input id="rgb-str5" value="{WDT_EDT_BTN_COLOR1}" name="btn_color1" class="settings_mini_inp" readonly="1"><br />
<button class="jscolor {valueElement:'chosen-value51', onFineChange:'update51(this)'} btn_color">
		Выберите цвет 2
</button>
<br />
<input type="hidden" value="{WDT_EDT_BTN_COLOR2}" id="chosen-value51" name="chosen-value51" readonly="1">
<input id="rgb-str51" value="{WDT_EDT_BTN_COLOR2}" name="btn_color2" class="settings_mini_inp" readonly="1"></div>
<div><strong>Градиент кнопки при наведении</strong><br>
<button class="jscolor {valueElement:'chosen-value52', onFineChange:'update52(this)'} btn_color">
		Выберите цвет 1
</button>
<br />
<input type="hidden" value="{WDT_EDT_BTN_COLOR3}" id="chosen-value52" name="chosen-value52" readonly="1">
<input id="rgb-str52" value="{WDT_EDT_BTN_COLOR3}" name="btn_color3" class="settings_mini_inp" readonly="1"><br />
<button class="jscolor {valueElement:'chosen-value53', onFineChange:'update53(this)'} btn_color">
		Выберите цвет 2
</button>
<br />
<input type="hidden" value="{WDT_EDT_BTN_COLOR4}" id="chosen-value53" name="chosen-value53" readonly="1">
<input id="rgb-str53" value="{WDT_EDT_BTN_COLOR4}" name="btn_color4" class="settings_mini_inp" readonly="1"></div>


<p style="margin-top:40px;">
<button type="submit" name="btn_wdt_save" class="btn_reg">Сохранить</button></p>
</form>
</div>
<div class="clear"></div>