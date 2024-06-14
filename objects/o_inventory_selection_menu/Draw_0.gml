if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	draw_text_ext_transformed(x+14,y-2,translate("key_use",global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+11,translate("key_info",global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+14,y+24,translate("key_toss",global.lang),1,4000,1,1,0)
	
	draw_sprite(spr_menu_selector,0,x+6,y+1+selection*13)
}