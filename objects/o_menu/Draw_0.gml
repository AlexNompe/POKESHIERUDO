if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	
	draw_text_ext_transformed(x+14,y+10,translate("key_players", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+26,translate("key_pack", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+42,global.character_name,1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+58,translate("key_save", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+74,translate("key_options", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+90,translate("key_exit", global.lang),1,4000,1,1,0)
	
	draw_sprite(spr_menu_selector,0,x+6,y+12+selection*16)
}