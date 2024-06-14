x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible and not global.menus[3] and not global.menus[8]
{
	if keyboard_check_pressed(vk_down)
	{
		if selection < 2 selection += 1
	}
	else if keyboard_check_pressed(vk_up)
	{
		if selection > 0 selection -= 1
	}
	
	if keyboard_check_pressed(ord("X")) and not global.press_x_safe
	{
		global.menus[menu_id] = false
		global.menus[3] = false
		global.press_x_safe = true
	}
	
	if keyboard_check_pressed(ord("Z")) and not global.press_z_safe
	{
		switch selection
		{
			case 0:
				if variable_struct_get(global.inventory,"items")[o_inventory_menu.selection][3] != noone variable_struct_get(global.inventory,"items")[o_inventory_menu.selection][3]()
				global.press_z_safe = true
			break
			case 1:
				var end_dialog = function()
				{
					global.menus[menu_id] = false
					global.menus[3] = false
					
					reset_global_text()
					
					global.press_z_safe = true
				}
				
				global.choice_pool = [["end", end_dialog]]
				
				reset_dialog_text()
				global.text = translate(variable_struct_get(global.inventory,"items")[o_inventory_menu.selection][1],global.lang)
				
				global.menus[menu_id] = false
				global.menus[3] = true
				global.press_z_safe = true
			break
			case 2:
				global.menus[8] = true
				o_toss_count_menu.counter = 1
				global.press_z_safe = true
			break
		}
	}
}