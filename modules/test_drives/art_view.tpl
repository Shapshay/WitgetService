<div class="articles_date">{ART_DATE}</div>
<div class="test_drive_video">
{ART_VIDEO}
<div class="test_drive_icons">
<div class="eye_count">{ART_VIEW}</div> 
<div class="eye"><img src="images/eye.png" border="0" /></div> 
<div class="comment_count">{ART_COMMENTS_COUNT}</div> 
<div class="speech"><img src="images/speech.png" border="0" /></div>
<div class="clear"></div>
</div>
</div>
<div class="articles_text2" style="padding-top:20px;">{ART_TEXT}</div>
<hr align="left" width="100%" noshade color="#0099FF" size="1">
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<div class="comment_title">Комментарии ({ART_COMMENTS_COUNT})</div>
<div class="add_comment">
<a href="javascript:return false;" onclick="hideShowDiv3('AddCommentDiv');" class="add_comment_link">Добавить комментарий</a>
<div class="AddCommentDiv" id="AddCommentDiv" style="display:none;">
<form method="post" id="FormComment">
<div><input type="text" name="name"  id="name" placeholder="Введите имя" /></div>
<div>
<textarea name="comment" id="comment"  placeholder="Введите комментарий" cols="50" rows="10">
</textarea>
</div>
<div>
<button type="button" class="btn_test_drive" onclick="CheckComment('FormComment');">Отправить</button>
</div>
</form>
</div>
</div>
<hr align="left" width="100%" nodashed style="height:1px;border-top:0px;border-style:dashed; border-color:#0099FF;">
{COM_ROWS}
