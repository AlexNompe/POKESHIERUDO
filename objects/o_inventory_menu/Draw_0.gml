if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	draw_text_ext_transformed(x+10,y+10,translate("key_player", global.lang),1,4000,1,1,0)
}