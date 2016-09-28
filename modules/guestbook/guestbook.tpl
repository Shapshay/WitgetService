<script src="inc/func.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery-1.7.1.js" type="text/javascript" charset="utf-8"></script>
<font color="#FF0000"><strong>{OTZ_RESULT}</strong></font>
<a class="b-button-grey b-button-grey_size_big" href="javascript:;" onclick="hideShowDiv('AddOtz');">Добавить отзыв</a>
<div id="AddOtz"  class="b-opinion" style="display:none;">
<form name="frmGuestbook" method="post" action="" onsubmit="return checkFields(this, '{MSG_REQUIRED_FIELDS}');">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td>
<p><label class="required">Имя пользователя</label><br>
<input type="text" name="name">
<p><label class="required">Текст отзыва</label><br>
<textarea name="text" rows="15" cols="80" id="text"></textarea>
<p><label class="required">Плюсы</label><br>
<textarea name="plus" rows="15" cols="80" id="plus"></textarea>
<p><label class="required">Минусы</label><br>
<textarea name="minus" rows="15" cols="80" id="minus"></textarea>
<p><input type="Submit" value="Отправить" name="add_otz" class="button1">
</td>
</tr>
</table>
</form>
</div>
<p>{OTZ_ROWS}

		