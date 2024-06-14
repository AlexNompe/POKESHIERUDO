if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	if counter < 10 draw_text_ext_transformed(x+6,y+4,string_insert(counter,"x0",3),1,4000,1,1,0)
	else draw_text_ext_transformed(x+6,y+4,string_insert(counter,"x",2),1,4000,1,1,0)
}