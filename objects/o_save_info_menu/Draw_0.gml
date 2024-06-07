if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	draw_text_ext_transformed(x+10,y+10,translate("key_player", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+10,y+26,translate("key_badges", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+10,y+42,translate("key_msh_wiki", global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+10,y+58,translate("key_time", global.lang),1,4000,1,1,0)
	
	draw_text_ext_transformed(x+64,y+10,global.character_name,1,4000,1,1,0)
	
	draw_set_halign(fa_right)
	
	draw_text_ext_transformed(x+120,y+26,global.badges,1,4000,1,1,0)
	draw_text_ext_transformed(x+120,y+42,global.msh_wiki,1,4000,1,1,0)
	if floor((global.time/60)) mod 60 >= 10 draw_text_ext_transformed(x+120,y+58,string(floor(floor(global.time/60)/60))+" : "+string(floor((global.time/60)) mod 60),1,4000,1,1,0)
	else draw_text_ext_transformed(x+120,y+58,string(floor(floor(global.time/60)/60))+" : 0"+string(floor((global.time/60)) mod 60),1,4000,1,1,0)
	
	draw_set_halign(fa_left)
}