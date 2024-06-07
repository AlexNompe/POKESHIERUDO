// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function translate(text_id,lang){
	if global.translated == 0
	{
		txt = file_text_open_append(working_directory+"ru_ru.txt")
		file_text_write_string(txt,"key_players:ИГРОКИ\nkey_pack:ПАК\nkey_save:СОХРАН\nkey_options:НАСТР\nkey_exit:ВЫЙТИ\nkey_language:ЯЗЫК\nkey_text_speed:СКОРОСТЬ ПЕЧАТИ\nkey_fun_setting:ВЕСЕЛЬЕ\nkey_cancel:ОТМЕНА\nkey_fast:быстр\nkey_medium:средне\nkey_slow:медл\nkey_lang_en:английский\nkey_lang_ru:русский\nkey_on:вкл\nkey_off:выкл")
		file_text_close(txt)
		
		txt = file_text_open_append(working_directory+"en_us.txt")
		file_text_write_string(txt,"key_players:PLAYERS\nkey_pack:PACK\nkey_save:SAVE\nkey_options:OPTIONS\nkey_exit:EXIT\nkey_language:LANGUAGE\nkey_text_speed:TEXT SPEED\nkey_fun_setting:FUN\nkey_cancel:CANCEL\nkey_fast:fast\nkey_medium:medium\nkey_slow:slow\nkey_lang_en:english\nkey_lang_ru:russian\nkey_on:on\nkey_off:off")
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