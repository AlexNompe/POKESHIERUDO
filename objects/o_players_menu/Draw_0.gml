if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	if array_length(variable_struct_get(global.inventory,"players")) > 0
	{
		for (var i = 0; i < array_length(variable_struct_get(global.inventory,"players")); i += 1)
		{
			draw_sprite_ext(variable_struct_get(global.inventory,"players")[i][0],floor(current_time/200) mod sprite_get_number(variable_struct_get(global.inventory,"players")[i][0]),x+14,y+6+13*i,1,1,0,c_white,1)
			draw_text_ext_transformed(x+32,y+10+13*i,shorten_inventory_text(variable_struct_get(global.inventory,"players")[i][1],8),1,4000,0.92,0.92,0)
		}
		
		draw_sprite(spr_menu_selector,0,x+6,y+11+selection*13)
		
		draw_text_ext_transformed(x+12,y+112,translate("key_choose_player",global.lang),1,4000,1,1,0)
	}
}