{* Вкладки *}
{capture name=tabs}
		{if isset($userperm['comments'])}<li><a href="?module=CommentsAdmin">Комментарии</a></li>{/if}
		<li class="active"><a href="?module=FeedbackAdmin">Обратная связь</a></li>
{/capture}

{* Title *}
{$meta_title='Обратная связь' scope=root}


{* Поиск *}
{if isset($feedback) || isset($keyword)}
<form method="get">
<div id="search">
	<input type="hidden" name="module" value='FeedbackAdmin'>
	<input class="search" type="text" name="keyword" value="{$keyword|escape}" />
	<input class="search_button" type="submit" value=""/>
</div>
</form>
{/if}

{* Заголовок *}
<div id="header">
	{if $feedback_count}
	<h1>{$feedback_count} {$feedback_count|plural:'сообщение':'сообщений':'сообщения'}</h1> 
	{else}
	<h1>Нет сообщений</h1> 
	{/if}
</div>	

<div id="main_list">
	
	<!-- Листалка страниц -->
	{include file='pagination.tpl'}	
	<!-- Листалка страниц (The End) -->
		
	{if $feedback}
		<form id="list_form" method="post">
		<input type="hidden" name="session_id" value="{$smarty.session.id}">
		
			<div id="list" style="width:100%;">
				
				{foreach $feedback as $item}
				<div class="row">
			 		<div class="checkbox cell">
						<input type="checkbox" name="check[]" value="{$item['id']}" />				
					</div>
					<div class="name cell">
						<div class='comment_name'>
						<a href="mailto:{$item['name']|escape}<{$item['email']|escape}>?subject=Вопрос от пользователя {$item['name']|escape}">{$item['name']|escape}</a>
						</div>
						<div class='comment_text'>
						{$item['message']|escape|nl2br}
						</div>
						<div class='comment_info'>
						Сообщение отправлено {$item['date']|date} в {$item['date']|time}
						</div>
					</div>
					<div class="icons cell">
						<a href='#' title='Удалить' class="delete"></a>
					</div>
					<div class="clear"></div>
				</div>
				{/foreach}
			</div>
		
			<div id="action">
			<label id='check_all' class='dash_link'>Выбрать все</label>
		
			<span id=select>
			<select name="action">
				<option value="delete">Удалить</option>
			</select>
			</span>
		
			<input id='apply_action' class="button_green" type=submit value="Применить">
		
			
		</div>
		</form>
		
	{else}
	Нет сообщений
	{/if}
		
	<!-- Листалка страниц -->
	{include file='pagination.tpl'}	
	<!-- Листалка страниц (The End) -->
			
</div>

<!-- Меню -->
<div id="right_menu">
	
</div>
<!-- Меню  (The End) -->

{literal}
<script>
$(function() {

	// Раскраска строк
	function colorize()
	{
		$("#list div.row:even").addClass('even');
		$("#list div.row:odd").removeClass('even');
	}
	// Раскрасить строки сразу
	colorize();
	
	// Выделить все
	$("#check_all").click(function() {
		$('#list input[type="checkbox"][name*="check"]').attr('checked', $('#list input[type="checkbox"][name*="check"]:not(:checked)').length>0);
	});	

	// Удалить 
	$("a.delete").click(function() {
		$('#list input[type="checkbox"][name*="check"]').attr('checked', false);
		$(this).closest(".row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
		$(this).closest("form").find('select[name="action"] option[value=delete]').attr('selected', true);
		$(this).closest("form").submit();
	});
	
	// Скрыт/Видим
	$("a.enable").click(function() {
		var icon        = $(this);
		var line        = icon.closest(".row");
		var id          = line.find('input[type="checkbox"][name*="check"]').val();
		var state       = line.hasClass('invisible')?1:0;
		icon.addClass('loading_icon');
		$.ajax({
			type: 'POST',
			url: 'ajax/update_object.php',
			data: {'object': 'blog', 'id': id, 'values': {'visible': state}, 'session_id': '{/literal}{$smarty.session.id}{literal}'},
			success: function(data){
				icon.removeClass('loading_icon');
				if(state)
					line.removeClass('invisible');
				else
					line.addClass('invisible');				
			},
			dataType: 'json'
		});	
		return false;	
	});
	
	// Подтверждение удаления
	$("form#list_form").submit(function() {
		if($('select[name="action"]').val()=='delete' && !confirm('Подтвердите удаление'))
			return false;	
	});

});

</script>
{/literal}
