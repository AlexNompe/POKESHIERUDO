// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function translate(text_id,lang){
	if global.translated = 0
	{
		txt = file_text_open_append(working_directory+"ru_ru.txt")
		file_text_write_string(txt,"key_players:ИГРОКИ\nkey_pack:ИНВ\nkey_save:СОХРАН\nkey_options:НАСТР\nkey_exit:ВЫЙТИ\nkey_language:ЯЗЫК\nkey_text_speed:СКОРОСТЬ ПЕЧАТИ\nkey_fun_setting:ВЕСЕЛЬЕ\nkey_cancel:ОТМЕНА\nkey_fast:быстр\nkey_medium:средне\nkey_slow:медл\nkey_lang_en:английский\nkey_lang_ru:русский\nkey_on:вкл\nkey_off:выкл\nkey_player:ИГРОК\nkey_badges:ЗНАЧКИ\nkey_msh_wiki:МШ ВИКИ\nkey_time:ВРЕМЯ\nkey_random_shit:some really long text that no one will probably read, because no one really reads anymore these days anyways. So why bother even putting text in a game? Why not just have voice overs for all of it so we don't have to read anymore?\nkey_save_dialog:Хотели бы вы	СОХРАНИТЬ игру?\nkey_yes:да\nkey_no:нет\nkey_player_saved:сохранил игру!\nkey_name:имя\nkey_name_stat:ИМЯ\nkey_idno:ИДно\nkey_money_stat:ДЕНЬГИ\nkey_badge:значки\nkey_test_item_0:ВОЗДУХ\nkey_test_item_1:БОЛЬШЕ ВОЗДУХА\nkey_test_item_2:ЕЩЁ БОЛЬШЕ ЕБУЧЕГО ВОЗДУХА\nkey_test_item_0_desc:Пахнет свежестью~\nkey_test_item_1_desc:Пахнет ещё большей свежестью~\nkey_test_item_2_desc:Пахнет ЕЩЁ БОЛЬШЕЙ БЛЯДСКОЙ свежестью~")
		file_text_close(txt)
		
		txt = file_text_open_append(working_directory+"en_us.txt")
		file_text_write_string(txt,"key_players:PLAYERS\nkey_pack:PACK\nkey_save:SAVE\nkey_options:OPTIONS\nkey_exit:EXIT\nkey_language:LANGUAGE\nkey_text_speed:TEXT SPEED\nkey_fun_setting:FUN\nkey_cancel:CANCEL\nkey_fast:fast\nkey_medium:medium\nkey_slow:slow\nkey_lang_en:english\nkey_lang_ru:russian\nkey_on:on\nkey_off:off\nkey_player:PLAYER\nkey_badges:BADGES\nkey_msh_wiki:MSH WIKI\nkey_time:TIME\nkey_random_shit:some really long text that no one will probably read, because no one really reads anymore these days anyways. So why bother even putting text in a game? Why not just have voice overs for all of it so we don't have to read anymore?\nkey_save_dialog:Would you like to SAVE	the game?\nkey_yes:yes\nkey_no:no\nkey_player_saved:saved the game!\nkey_name:name\nkey_name_stat:NAME\nkey_idno:IDno\nkey_money_stat:MONEY\nkey_badge:badge\nkey_test_item_0:AIR\nkey_test_item_1:MORE AIR\nkey_test_item_2:EVEN MORE FUCKING AIR\nkey_test_item_0_desc:Smells like refreshment~\nkey_test_item_1_desc:Smells like more refreshment~\nkey_test_item_2_desc:Smells like EVEN MORE FUCKING refreshment~")
		file_text_close(txt)
		global.translated = 1
		save_translation()
	}
	
	if (o_settings_menu.selection = 3 or o_settings_menu.selection = 4)
	{
		str = file_read_all_text(working_directory+lang+".txt")
		ar = string_split(str,"\n")
		for (i = 0; i < array_length(ar); i++)
		{
			if array_length(string_split(ar[i],":")) == 2 if string_split(ar[i],":")[0] == text_id 
			{
				var translated_string = string(string_replace_all(string_split(ar[i],":")[1],"\t","\n"))
				if not array_contains(global.saved_translation_ids,text_id) array_push(global.saved_translation_ids,text_id)
				if not array_contains(global.saved_translation_ids,text_id) array_push(global.saved_translations,translated_string)
				else global.saved_translations[array_get_index(global.saved_translation_ids,text_id)] = translated_string
				return translated_string
			}
		}
	}
	
	if not array_contains(global.saved_translation_ids,text_id)
	{
		str = file_read_all_text(working_directory+lang+".txt")
		ar = string_split(str,"\n")
		for (i = 0; i < array_length(ar); i++)
		{
			if array_length(string_split(ar[i],":")) == 2 if string_split(ar[i],":")[0] == text_id 
			{
				var translated_string = string(string_replace_all(string_split(ar[i],":")[1],"\t","\n"))
				array_push(global.saved_translation_ids,text_id)
				array_push(global.saved_translations,translated_string)
				return translated_string
			}
		}
	}
	else return global.saved_translations[array_get_index(global.saved_translation_ids,text_id)]
	
	return ""
}