if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	if (!surface_exists(surf)) surf = surface_create(160-4,48-10)

	surface_set_target(surf)
	
	draw_clear_alpha(c_black,0)
	draw_set_color(c_black)
	
	draw_text_ext_transformed(8,6-text_animation_progress*16,current_text,16,144,1,1,0)
	
	surface_reset_target()
	
	draw_surface(surf, x+2, y+4)
	
	if string_height_ext(global.text, -1, 144)/13 > iii + 1
	{
		draw_sprite(spr_dialog_next,0,x+144,y+40+(sin(current_time/100))*4)
	}
}