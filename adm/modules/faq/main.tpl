<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Отображать на сайте</strong><br>
<input type="checkbox" value="1" name="view" {VIEW_CHECK}/>
<p><strong>Имя пользователя</strong><br>
<input type="text" name="name" value="{EDT_NAME}">
<p><strong>Вопрос</strong><br>
<textarea name="question" rows="15" cols="80" id="question">{EDT_QUEST}</textarea>
<p><strong>Ответ</strong><br>
<textarea name="answer" rows="15" cols="80" id="answer">{EDT_ANSWER}</textarea>
<p><input type="Submit" value="Сохранить" name="edt_faq" class="button1">
</form>
