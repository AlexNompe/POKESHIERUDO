x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible
{
	if keyboard_check_pressed(vk_down)
	{
		if selection < array_length(global.inventory) selection += 1
	}
	else if keyboard_check_pressed(vk_up)
	{
		if selection > 0 selection -= 1
	}
	
	if keyboard_check_pressed(ord("X")) or (selection = array_length(global.inventory) and keyboard_check_pressed(ord("Z"))) and not global.press_z_safe
	{
		global.menus[menu_id] = false
	}
}