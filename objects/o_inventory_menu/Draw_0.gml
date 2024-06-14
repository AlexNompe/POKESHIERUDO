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
	
	for (var i = 0; i < array_length(variable_struct_get(global.inventory,"items")); i += 1)
	{
		draw_text_ext_transformed(12,6+13*i,shorten_inventory_text(translate(variable_struct_get(global.inventory,"items")[i][0],global.lang),8),1,4000,0.92,0.92,0)
	}
	draw_text_ext_transformed(12,6+13*array_length(variable_struct_get(global.inventory,"items")),shorten_inventory_text(translate("key_cancel",global.lang),8),1,4000,0.92,0.92,0)
	
	surface_reset_target()
	
	draw_surface(surf, x+2, y+4)
	
	if not global.menus[7] draw_sprite(spr_menu_selector,0,x+6,y+11+selection*13)
	else draw_sprite(spr_hollow_menu_selector,0,x+6,y+11+selection*13)
	
	safe_selection = selection
	
	if safe_selection = array_length(variable_struct_get(global.inventory,"items")) safe_selection = selection-1
	
	draw_text_ext_transformed(x+88,y+16,string_insert(variable_struct_get(global.inventory,"items")[safe_selection][2],"x ",2),1,4000,0.92,0.92,0)
}