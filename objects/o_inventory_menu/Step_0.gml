x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible
{
	if keyboard_check_pressed(vk_down)
	{
		if local_choice < array_length(global.inventory)-1 local_choice += 1
	}
	else if keyboard_check_pressed(vk_up)
	{
		if local_choice > 0 local_choice -= 1
	}
}