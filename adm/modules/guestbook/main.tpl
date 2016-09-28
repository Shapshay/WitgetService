<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Отображать на сайте</strong><br>
<input type="checkbox" value="1" name="view" {VIEW_CHECK}/>
<p><strong>Имя пользователя</strong><br>
<input type="text" name="name" value="{EDT_NAME}">
<p><strong>Текст отзыва</strong><br>
<textarea name="text" rows="15" cols="80" id="text">{EDT_TEXT}</textarea>
<p><strong>Плюсы</strong><br>
<textarea name="plus" rows="15" cols="80" id="plus">{EDT_PLUS}</textarea>
<p><strong>Минусы</strong><br>
<textarea name="minus" rows="15" cols="80" id="minus">{EDT_MINUS}</textarea>
<p><input type="Submit" value="Сохранить" name="edt_otz" class="button1">
</form>
