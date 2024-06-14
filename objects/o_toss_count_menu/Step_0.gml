x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible and not global.menus[3]
{
	if keyboard_check_pressed(vk_up)
	{
		if counter < variable_struct_get(global.inventory,"items")[o_inventory_menu.safe_selection][2] counter += 1
	}
	else if keyboard_check_pressed(vk_down)
	{
		if counter > 1 counter -= 1
	}
	
	if keyboard_check_pressed(ord("X")) and not global.press_x_safe
	{
		global.menus[menu_id] = false
		global.menus[3] = false
		global.press_x_safe = true
	}
	
	if keyboard_check_pressed(ord("Z")) and not global.press_z_safe
	{
		var choice_yes = function()
		{
			global.menus[4] = false
			
			reset_global_text()
			
			reset_dialog_text()
			global.text = string_replace_all(string_replace_all(translate("key_dialog_threw_away",global.lang),"_item", translate(variable_struct_get(global.inventory,"items")[o_inventory_menu.safe_selection][0],global.lang)),"_player",global.character_name)
			
			var end_dialog = function()
			{
				global.menus[menu_id] = false
				global.menus[3] = false
				global.menus[7] = false
				
				if variable_struct_get(global.inventory,"items")[o_inventory_menu.safe_selection][2] - counter > 0 variable_struct_get(global.inventory,"items")[o_inventory_menu.safe_selection][2] -= counter
				else array_delete(variable_struct_get(global.inventory,"items"),o_inventory_menu.safe_selection,1)
				
				reset_global_text()
				
				global.press_z_safe = true
			}
			
			global.choice_pool = [["end", end_dialog]]
			
			global.press_z_safe = true
		}
		var choice_no = function()
		{
			global.menus[menu_id] = false
			global.menus[4] = false
			global.menus[3] = false
			
			reset_global_text()
			
			global.press_z_safe = true
		}
		global.choice_pool = [[translate("key_yes", global.lang), choice_yes], [translate("key_no", global.lang), choice_no]]
		
		reset_dialog_text()
		global.text = string_replace_all(translate("key_dialog_toss",global.lang),"_item", translate(variable_struct_get(global.inventory,"items")[o_inventory_menu.safe_selection][0],global.lang))
		
		global.menus[3] = true
		global.menus[4] = true
		o_dialog_choice_menu.pos_offset = [7*16,0]
		global.press_z_safe = true
	}
}