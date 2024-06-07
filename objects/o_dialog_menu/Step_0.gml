x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible
{
	//var writing_string = text
	//writing_string = string_trim_start(writing_string, [current_text])
	
	if string_height_ext(current_text, -1, 144)/13 < iii + 2 and char_timer = 0
	{
		if not (current_text = global.text) char_timer = 0.5 / global.text_speed / global.text_speed
		alarm[2] = 1
		current_text += string_char_at(global.text,string_length(current_text)+1)
		if global.text_speed >= 3 current_text += string_char_at(global.text,string_length(current_text)+1)
	}
	
	if string_height_ext(global.text, -1, 144)/13 > iii + 1 and keyboard_check_pressed(ord("Z")) and not global.press_z_safe and text_animation_progress = floor(text_animation_progress) and not (alarm[2] = 1)
	{
		alarm[0] = 1
	}
	else if string_height_ext(global.text, -1, 144)/13 <= iii + 1 and keyboard_check_pressed(ord("Z")) and not global.press_z_safe and text_animation_progress = floor(text_animation_progress) and char_timer <= 0
	{
		for (var i = 0; i < array_length(global.choice_pool); i += 1)
		{
			if global.choice = i
			{
				global.choice_pool[i][1]()
			}
		}
	} 
}