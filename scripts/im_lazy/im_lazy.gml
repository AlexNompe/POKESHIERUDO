// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function reset_dialog_text(){
	if object_exists(o_dialog_menu)
	{
		o_dialog_menu.text_y_pos = 0
		o_dialog_menu.iii = 1
		o_dialog_menu.text_animation_progress = 0
		o_dialog_menu.current_text = ""
	}
	else
	{
		show_debug_message("Unable to \"reset_dialog_text()\", no object \"o_dialog_menu\" avaliable :/")
	}
}
function reset_global_text(){
	global.text = ""
	global.choice_pool = []
	global.choice = 0
}