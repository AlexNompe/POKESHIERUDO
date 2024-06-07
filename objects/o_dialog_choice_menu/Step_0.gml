x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id] and (o_dialog_menu.current_text = global.text)

if visible
{
	if keyboard_check_pressed(vk_down)
	{
		if global.choice < array_length(global.choice_pool)-1 global.choice += 1
	}
	else if keyboard_check_pressed(vk_up)
	{
		if global.choice > 0 global.choice -= 1
	}
}