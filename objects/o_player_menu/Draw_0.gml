if visible
{
	draw_self()
	
	draw_set_font(f_pokeshierudo)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	
	draw_text_ext_transformed(x+16,y-1,translate("key_name",global.lang),1,4000,0.8,0.8,0)
	
	draw_text_ext_transformed(x+16,y+12,translate("key_name_stat",global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+16+string_width(translate("key_name_stat",global.lang)),y+12," / ",1,4000,1,1,0)
	draw_text_ext_transformed(x+16+string_width(translate("key_name_stat",global.lang))+string_width(" / "),y+12,global.character_name,1,4000,1,1,0)
	
	draw_text_ext_transformed(x+18,y+30,translate("key_idno",global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+16+string_width(translate("key_idno",global.lang)),y+30,"  ",1,4000,1,1,0)
	draw_text_ext_transformed(x+16+string_width(translate("key_idno",global.lang))+string_width("  "),y+30,global.character_id,1,4000,1,1,0)
	
	draw_text_ext_transformed(x+16,y+48,translate("key_money_stat",global.lang),1,4000,1,1,0)
	draw_text_ext_transformed(x+16+string_width(translate("key_money_stat",global.lang)),y+48," / $",1,4000,1,1,0)
	draw_text_ext_transformed(x+16+string_width(translate("key_money_stat",global.lang))+string_width(" / $"),y+48,global.money,1,4000,1,1,0)
	
	draw_text_ext_transformed(x+16,y+66,translate("key_time",global.lang)+"",1,4000,1,1,0)
	draw_text_ext_transformed(x+16+string_width(translate("key_time",global.lang)),y+66," / ",1,4000,1,1,0)
	
	if floor((global.time/60)) mod 60 >= 10 draw_text_ext_transformed(x+16+string_width(translate("key_time",global.lang))+string_width(" / "),y+66,string(floor(floor(global.time/60)/60))+" : "+string(floor((global.time/60)) mod 60),1,4000,1,1,0)
	else draw_text_ext_transformed(x+16+string_width(translate("key_time",global.lang))+string_width(" / "),y+66,string(floor(floor(global.time/60)/60))+" : 0"+string(floor((global.time/60)) mod 60),1,4000,1,1,0)
	
	draw_text_ext_transformed(x+16,y+79,translate("key_badge",global.lang),1,4000,0.8,0.8,0)
}