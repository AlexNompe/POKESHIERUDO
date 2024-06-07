x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible
{
	if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("X"))) and not global.press_z_safe
	{
		global.menus[menu_id] = false
		global.menus[0] = true
		global.press_z_safe = true
	}
}