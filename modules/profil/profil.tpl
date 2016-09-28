{META_LINK}
<div class="settings_view">
<div style="font-size:22px;"><strong>Редактирование профиля</strong></div>
<p>
<form method="post" enctype="multipart/form-data" name="s_s" id="UserSetFrm">
<div style="margin-bottom:20px;"><strong>Дата регистрации</strong><br>
{U_EDT_DATE_REG}</div>
<div><strong>ФИО</strong><br>
<input type="text" name="u_fio" id="u_fio" value="{U_EDT_FIO}" class="settings_inp"></div>
<div><strong>E-mail</strong><br>
<input type="text" name="u_email" id="u_email" value="{U_EDT_EMAIL}" class="settings_inp"></div>
<div><strong>Телефон</strong><br>
<input type="text" name="u_phone" value="{U_EDT_PHONE}" class="settings_inp"></div>
<div><strong>Адрес</strong><br>
<input type="text" name="u_adres" value="{U_EDT_ADRES}" class="settings_inp"></div>
<div>
<button type="button" id="btn_u_save" class="btn_reg">Сохранить</button></div>
</form>
</p>
</div>
<div class="settings_form">
<p>
<div style="font-size:22px;margin-bottom:20px;"><strong>Смена пароля</strong></div>
{CHANGE_PSW_RESULT}
<form method="post" enctype="multipart/form-data" name="s_s" id="UserPswFrm">
<div><strong>Новый пароль</strong> (заполняется латинскими буквами и цифрами)<br>
<input type="password" name="chng_password1" id="reg_password1" required="1" class="settings_inp"></div>
<div><strong>Повторите пароль</strong><br>
<input type="password" name="chng_password2" id="reg_password2" onchange="PswControl();" onkeyup="PswControl();" required="1" class="settings_inp"><img src="images/krest_reg.png" id="psw_img"></div>
<div>
<button type="button" id="btn_u_psw" class="btn_reg" onclick="PswControl2();">Изменить</button></div>
</form>
</p>
</div>
<div class="clear"></div>
<div style="display:block;margin-top:50px;">
<p style="font-size:22px;"><strong>Платежи</strong><br />
<table id="amount_table" class="display" width="600">
<thead>
<th width="50">№</th>
<th width="120">Дата</th>
<th>Тариф</th>
<th>Сумма</th>
</thead>
<tbody>
{OP_ROWS}
</tbody>
</table></p>
</div>
