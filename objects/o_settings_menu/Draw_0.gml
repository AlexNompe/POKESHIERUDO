if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	
	draw_text_ext_transformed(x+8,y+10,translate("key_text_speed", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+8,y+50,translate("key_language", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+8,y+90,translate("key_fun_setting", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+126,translate("key_cancel", global.lang),1,4000,1,1,0)
	
	var text_speed_offsets = [14,58,120]
	var language_offsets = [14,96]
	var fun_offsets = [14,96]
	
	if selection = 0 or selection = 1 or selection = 2
	{
		draw_sprite(spr_menu_selector,0,x+text_speed_offsets[selection]-8,y+24)
	}
	else if selection = 3 or selection = 4
	{
		draw_sprite(spr_menu_selector,0,x+language_offsets[selection-3]-8,y+64)
	}
	else if selection = 5 or selection = 6
	{
		draw_sprite(spr_menu_selector,0,x+fun_offsets[selection-5]-8,y+104)
	}
	else if selection = 7
	{
		draw_sprite(spr_menu_selector,0,x+6,y+128)
	}
	
	draw_text_ext_transformed(x+text_speed_offsets[0],y+22,translate("key_fast", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+text_speed_offsets[1],y+22,translate("key_medium", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+text_speed_offsets[2],y+22,translate("key_slow", global.lang),1,4000,1,1,0)

	draw_text_ext_transformed(x+language_offsets[0],y+62,translate("key_lang_en", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+language_offsets[1],y+62,translate("key_lang_ru", global.lang),1,4000,1,1,0)
	
	draw_text_ext_transformed(x+fun_offsets[0],y+102,translate("key_off", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+fun_offsets[1],y+102,translate("key_on", global.lang),1,4000,1,1,0)
	
	if not (selection = 0 or selection = 1 or selection = 2) draw_sprite(spr_hollow_menu_selector,0,x+text_speed_offsets[save_selection[0]]-8,y+24)
	if not (selection = 3 or selection = 4) draw_sprite(spr_hollow_menu_selector,0,x+language_offsets[save_selection[1]-3]-8,y+64)
	if not (selection = 5 or selection = 6) draw_sprite(spr_hollow_menu_selector,0,x+fun_offsets[save_selection[2]-5]-8,y+104)
	if selection != 7 draw_sprite(spr_hollow_menu_selector,0,x+6,y+128)
}