if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	if (!surface_exists(surf)) surf = surface_create(128-6,72-2)

	surface_set_target(surf)
	
	draw_clear_alpha(c_black,0)
	draw_set_color(c_black)
	
	for (var i = 0; i < array_length(global.inventory); i += 1)
	{
		draw_text_ext_transformed(12,6+12*i,global.inventory[i][0],1,4000,0.8,0.8,0)
	}
	draw_text_ext_transformed(12,6+12*array_length(global.inventory),translate("key_cancel",global.lang),1,4000,0.8,0.8,0)
	
	surface_reset_target()
	
	draw_surface(surf, x+2, y+4)
	
	draw_sprite(spr_menu_selector,0,x+6,y+10+selection*12)
}