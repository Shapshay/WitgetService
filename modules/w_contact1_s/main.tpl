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
<div><strong>Текст окна</strong><br>
<input type="text" name="w_text" value="{WDT_EDT_W_TEXT}" class="settings_inp"></div>
<div><strong>Цвет кнопки</strong><br>
<button class="jscolor {valueElement:'chosen-value5', onFineChange:'update5(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_BTN_COLOR}" id="chosen-value5" name="chosen-value5" readonly="1">
<input id="rgb-str5" value="{WDT_EDT_BTN_COLOR}" name="btn_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Текст на кнопке</strong><br>
<input type="text" name="btn_text" value="{WDT_EDT_BTN_TEXT}" class="settings_inp"></div>
<div><strong>Текст подсказки</strong><br>
<input type="text" name="inp_place" value="{WDT_EDT_INP_PLACE}" class="settings_inp"></div>
<div><strong>Текст отказа</strong><br>
<input type="text" name="close_text" value="{WDT_EDT_CLOSE_TEXT}" class="settings_inp"></div>
<div><strong>Цвет текста виджета</strong><br>
<button class="jscolor {valueElement:'chosen-value4', onFineChange:'update4(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_TEXT_COLOR}" id="chosen-value4" name="chosen-value4" readonly="1">
<input id="rgb-str4" value="{WDT_EDT_TEXT_COLOR}" name="text_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Радиус углов</strong><br>
<span id="radius">{WDT_EDT_W_RADIUS}</span>px
<div class="slider">
  <input type="range" name="w_radius" id="w_radius" min="0" max="50" step="1" value="{WDT_EDT_W_RADIUS}" onchange="RangeChange('w_radius','radius');">
</div>
<div><strong>Задержка старта виджета</strong><br>
<span id="s_time">{WDT_EDT_START_TIME_S}</span> секунд
<div class="slider">
  <input type="range" name="start_time" id="start_time" min="0" max="10000" step="1000" value="{WDT_EDT_START_TIME}" onchange="RangeChange('start_time','s_time');">
</div>
<div><strong>Скорость анимации</strong><br>
<span id="s_speed">{WDT_EDT_SPEED_S}</span> секунд
<div class="slider">
  <input type="range" name="speed" id="speed" min="1000" max="10000" step="1000" value="{WDT_EDT_SPEED}" onchange="RangeChange('speed','s_speed');">
</div>
<div><strong>Расположение виджета</strong><br>
<select name="w_location" class="settings_sel">
{WDT_EDT_W_LOCATION_SEL}
</select>
</div>
<div><strong>Цвет заливки</strong><br>
<button class="jscolor {valueElement:'chosen-value', onFineChange:'update(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_BG_COLOR_HEX}" id="chosen-value" name="chosen-value" readonly="1">
<input id="rgb-str" value="{WDT_EDT_BG_COLOR}" name="bg_color" class="settings_mini_inp" readonly="1"></div>
<div><strong>Цвет окна виджета</strong><br>
<button class="jscolor {valueElement:'chosen-value2', onFineChange:'update2(this)'} btn_color">
		Выберите цвет
</button>
<br />
<input type="hidden" value="{WDT_EDT_W_COLOR_HEX}" id="chosen-value2" name="chosen-value2" readonly="1">
<input id="rgb-str2" value="{WDT_EDT_W_COLOR}" name="w_color" class="settings_mini_inp" readonly="1"></div>
<p>
<button type="submit" name="btn_wdt_save" class="btn_reg">Сохранить</button></p>
</form>
</div>
<div class="clear"></div>