// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function draw_text_like_crazy(vx,vy,vstringk,vsep,vw,vxscale,vyscale,vangle,temp_index,additional_char_info=0){
	if additional_char_info == 0
	{
		if not is_array(vstringk)
		{
			vstringk = reformat_text_by_effects(vstringk,["<wave>","<shake>"])
		}
		size = 0
		for (var j = 0; j < array_length(vstringk); j++)
		{
			effect = ""
			
			lines = 1
			
			if is_array(vstringk[j])
			{
				effect = vstringk[j][1]
				vstring[j] = vstringk[j][0]
			}
			else
			{
				vstring = vstringk
			}
			
			if effect == ""
			{
				for (var i = 0; i < string_length(string(vstring[j])); i += 1)
				{
					char = string_char_at(string(vstring[j]),i+1)
					if char == "Ꙩ" char = ","
					default_fa = draw_get_halign()
					draw_set_halign(fa_left)
					draw_text_ext_transformed(vx+global.start_pos[temp_index]+size*vxscale,vy,char,0,9999,vxscale,vyscale,vangle)
					draw_set_halign(default_fa)
					if font_get_info(draw_get_font()).glyphs[$ char] != undefined size += font_get_info(draw_get_font()).glyphs[$ char].shift
				}
			}
			else if effect == "wave"
			{
				for (var i = 0; i < string_length(string(vstring[j])); i += 1)
				{
					char = string_char_at(string(vstring[j]),i+1)
					if char == "Ꙩ" char = ","
					default_fa = draw_get_halign()
					draw_set_halign(fa_left)
					draw_text_ext_transformed(vx+global.start_pos[temp_index]+size*vxscale,vy+sin(current_time/200+size/32)*2*vxscale,char,0,9999,vxscale,vyscale,vangle)
					draw_set_halign(default_fa)
					if font_get_info(draw_get_font()).glyphs[$ char] != undefined size += font_get_info(draw_get_font()).glyphs[$ char].shift
				}
			}
			else if effect == "shake"
			{
				for (var i = 0; i < string_length(string(vstring[j])); i += 1)
				{
					char = string_char_at(string(vstring[j]),i+1)
					if char == "Ꙩ" char = ","
					default_fa = draw_get_halign()
					draw_set_halign(fa_left)
					draw_text_ext_transformed(vx+global.start_pos[temp_index]+size*vxscale+random_range(-2,2)*vxscale/4,vy+random_range(-2,2)*vyscale/4,char,0,9999,vxscale,vyscale,vangle)
					draw_set_halign(default_fa)
					if font_get_info(draw_get_font()).glyphs[$ char] != undefined size += font_get_info(draw_get_font()).glyphs[$ char].shift
				}
			}
		}
		if draw_get_halign() == fa_center
		{
			global.start_pos[temp_index] = -size/2*vxscale
		}
		else if draw_get_halign() == fa_right
		{
			global.start_pos[temp_index] = -size*vxscale
		}
	}
	else
	{
		if not is_array(additional_char_info)
		{
			additional_char_info = reformat_text_by_effects(additional_char_info,["<wave>","<shake>"])
		}
		vstringk = string_split(vstringk,",")
		if not is_array(vstringk)
		{
			vstringk = reformat_text_by_effects(vstringk,["<wave>","<shake>"])
		}
		
		//show_debug_message(additional_char_info)
		size = 0
		for (var j = 0; j < array_length(vstringk); j++)
		{
			effect = ""
			
			lines = 1
			
			if j < array_length(additional_char_info) and is_array(additional_char_info[j])
			{
				effect = additional_char_info[j][1]
				additional_char_info[j][0] = vstringk[j]
				vstring[j] = additional_char_info[j][0]
			}
			else
			{
				vstring = vstringk
			}
			
			if effect == ""
			{
				for (var i = 0; i < string_length(string(vstring[j])); i += 1)
				{
					char = string_char_at(string(vstring[j]),i+1)
					if char == "Ꙩ" char = ","
					default_fa = draw_get_halign()
					draw_set_halign(fa_left)
					draw_text_ext_transformed(vx+global.start_pos[temp_index]+size*vxscale,vy,char,0,9999,vxscale,vyscale,vangle)
					draw_set_halign(default_fa)
					if font_get_info(draw_get_font()).glyphs[$ char] != undefined size += font_get_info(draw_get_font()).glyphs[$ char].shift
				}
			}
			else if effect == "wave"
			{
				for (var i = 0; i < string_length(string(vstring[j])); i += 1)
				{
					char = string_char_at(string(vstring[j]),i+1)
					if char == "Ꙩ" char = ","
					default_fa = draw_get_halign()
					draw_set_halign(fa_left)
					draw_text_ext_transformed(vx+global.start_pos[temp_index]+size*vxscale,vy+sin(current_time/200+size/32)*2*vxscale,char,0,9999,vxscale,vyscale,vangle)
					draw_set_halign(default_fa)
					if font_get_info(draw_get_font()).glyphs[$ char] != undefined size += font_get_info(draw_get_font()).glyphs[$ char].shift
				}
			}
			else if effect == "shake"
			{
				for (var i = 0; i < string_length(string(vstring[j])); i += 1)
				{
					char = string_char_at(string(vstring[j]),i+1)
					if char == "Ꙩ" char = ","
					default_fa = draw_get_halign()
					draw_set_halign(fa_left)
					draw_text_ext_transformed(vx+global.start_pos[temp_index]+size*vxscale+random_range(-2,2)*vxscale,vy+random_range(-2,2)*vyscale,char,0,9999,vxscale,vyscale,vangle)
					draw_set_halign(default_fa)
					if font_get_info(draw_get_font()).glyphs[$ char] != undefined size += font_get_info(draw_get_font()).glyphs[$ char].shift
				}
			}
		}
		if draw_get_halign() == fa_center
		{
			global.start_pos[temp_index] = -size/2*vxscale
		}
		else if draw_get_halign() == fa_right
		{
			global.start_pos[temp_index] = -size*vxscale
		}
	}
}
