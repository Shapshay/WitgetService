
<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Отображать страницу на сайте</strong><br>
<input type="checkbox" value="1" name="view" {VIEW_CHECK}/>
<p><strong>Сделать страницу стартовой</strong><br>
<input type="checkbox" value="1" name="start" {START_CHECK}/>
<p><strong>Название страницы</strong><br>
<input type="text" name="title" value="{EDT_TITLE}">
<p><strong>ЧПУ (избегайте совпадения названий страниц сайта)</strong><br>
<input type="text" name="chpu" value="{EDT_CHPU}">
<p><strong>Иконка раздела</strong><br>
{EDT_PAGE_ICON2}
<input id="page_icon" type="text" name="page_icon" value="{EDT_PAGE_ICON}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('page_icon');" />
<p><strong>Картинка раздела</strong><br>
{EDT_PAGE_ICON4}
<input id="icon" type="text" name="icon" value="{EDT_PAGE_ICON3}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('icon');" />
<p><strong>Краткое описание</strong><br>
<textarea name="description" rows="15" cols="80" id="description">{EDT_DESC}</textarea>
<p><strong>SEO - Название страницы (Title)</strong><br>
<input type="text" name="seo_title" value="{EDT_SEOTITLE}">
<p><strong>SEO - Ключевые слова (Keywords)</strong><br>
<input type="text" name="seo_key" value="{EDT_SEOKEY}">
<p><strong>SEO - Краткое описание (Description)</strong><br>
<textarea name="seo_desc" rows="15" cols="80" id="seo_desc">{EDT_SEODESC}</textarea>
<p><strong>Страница дизайна</strong><br>
<select name="stemplate">
{TPL_ROWS}
</select>
<p><strong>Модуль отображения</strong><br>
<select name="content">
{CONTENT_ROWS}
</select>
<p><input type="Submit" value="Сохранить" name="edt_page" class="button1">
</form>
