<script type="text/javascript">
    $(document).ready( function() {
       $("#maincheck").click( function() {
            if($('#maincheck').attr('checked')){
                $('.mc').attr('checked', true);
            } else {
                $('.mc').attr('checked', false);
            }
       });
    });
</script>
<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Название модуля (Только латинские буквы от 'a' до 'z' и символ '_')</strong><br>
<input type="text" name="modul" value="{F_TABLE}">
<input type="hidden" name="f_table" value="{F_TABLE}">
<p><strong>Описание модуля</strong><br>
<input type="text" name="title" value="{F_TABLE}">
<p><strong>Выберите поля и их типы для форм модуля:</strong></p>
<p>
<table class="features-table" id="carsTable">
	<thead>
		<tr>
			<th>Название поля</th>
			<th class="grey">Заголовок в форме</th>
			<th class="grey">Тип поля ввода</th>
			<th class="red">
				Включить в форму<br />
				<input type="checkbox" name="maincheck" id="maincheck" checked="checked"/>
			</th>
		</tr>
	</thead>
	<tbody>
		{TABLE_ROWS}
	</tbody>
</table>
</p>
<input type="hidden" name="action" value="sel_rows" />
<p><input type="Submit" value="Создать" name="sel_rows" class="button1"></p>
</form>
