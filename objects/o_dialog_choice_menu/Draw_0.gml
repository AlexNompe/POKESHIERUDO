if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	if array_length(global.choice_pool) = 2
	{
		draw_text_ext_transformed(x+16,y-2,global.choice_pool[0][0],1,4000,1,1,0)
		draw_text_ext_transformed(x+16,y+12,global.choice_pool[1][0],1,4000,1,1,0)
	}
	
	draw_sprite(spr_menu_selector,0,x+8,y+1+global.choice*14)
}