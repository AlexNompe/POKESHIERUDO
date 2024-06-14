x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible and not global.menus[7] and not global.menus[3] and not global.menus[8]
{
	if keyboard_check_pressed(vk_down)
	{
		if selection < array_length(variable_struct_get(global.inventory,"items")) selection += 1
	}
	else if keyboard_check_pressed(vk_up)
	{
		if selection > 0 selection -= 1
	}
	
	if keyboard_check_pressed(ord("Z")) and not (selection = array_length(variable_struct_get(global.inventory,"items"))) and not global.press_z_safe
	{
		global.menus[7] = true
		global.press_z_safe = true
	}
	
	if (keyboard_check_pressed(ord("X")) and not global.press_x_safe) or (selection = array_length(variable_struct_get(global.inventory,"items")) and keyboard_check_pressed(ord("Z")) and not global.press_z_safe)
	{
		global.menus[menu_id] = false
		global.press_z_safe = true
		global.press_x_safe = true
	}
}