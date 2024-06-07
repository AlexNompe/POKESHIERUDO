x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if global.no_menus_open and keyboard_check_pressed(vk_enter)
{
	global.menus[menu_id] = true
}

if visible and not global.menus[2]
{
	if keyboard_check_pressed(vk_down)
	{
		selection = (selection+1) mod 6
	}
	else if keyboard_check_pressed(vk_up)
	{
		selection = (selection+5) mod 6
	}
	
	if keyboard_check_pressed(ord("Z")) and not global.press_z_safe
	{
		switch (selection)
		{
			case 5:
				global.menus[menu_id] = false
			break
			case 4:
				global.menus[menu_id] = false
				global.menus[1] = true
				o_settings_menu.selection = o_settings_menu.save_selection[0]
			break
			case 3:
				var choice_yes = function()
				{
					save()
					show_debug_message("saving...")
					global.menus[4] = false
					
					reset_global_text()
					
					reset_dialog_text()
					global.text = global.character_name + " " + translate("key_player_saved", global.lang)
					
					var end_dialog = function()
					{
						global.menus[menu_id] = false
						global.menus[2] = false
						global.menus[3] = false
						
						reset_global_text()
						
						global.press_z_safe = true
					}
					
					global.choice_pool = [["end", end_dialog]]
					
					global.press_z_safe = true
				}
				var choice_no = function()
				{
					global.menus[menu_id] = false
					global.menus[2] = false
					global.menus[4] = false
					global.menus[3] = false
					
					reset_global_text()
					
					global.press_z_safe = true
				}
				global.choice_pool = [[translate("key_yes", global.lang), choice_yes], [translate("key_no", global.lang), choice_no]]
				
				reset_dialog_text()
				global.text = translate("key_save_dialog", global.lang)
				
				global.menus[2] = true
				global.menus[3] = true
				global.menus[4] = true
				global.press_z_safe = true
			break
			case 2:
				global.menus[menu_id] = false
				global.menus[5] = true
				global.press_z_safe = true
			break
		}
	}
	
	if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_enter)
	{
		global.menus[menu_id] = false
	}
}