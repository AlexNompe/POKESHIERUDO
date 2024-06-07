x = camera_get_view_x(view_camera[0])+start_pos[0]
y = camera_get_view_y(view_camera[0])+start_pos[1]

visible = global.menus[menu_id]

if visible
{
	if selection = 0 or selection = 1 or selection = 2
	{
		save_selection[0] = selection
	}
	else if selection = 3 or selection = 4
	{
		save_selection[1] = selection
	}
	else if selection = 5 or selection = 6
	{
		save_selection[2] = selection
	}
	else if selection = 7
	{
		save_selection[3] = selection
	}
	
	if keyboard_check_pressed(vk_down)
	{
		if selection = 0 or selection = 1 or selection = 2
		{
			selection = save_selection[1]
		}
		else if selection = 3 or selection = 4
		{
			selection = save_selection[2]
		}
		else if selection = 5 or selection = 6
		{
			selection = save_selection[3]
		}
		else if selection = 7
		{
			selection = save_selection[0]
		}
	}
	else if keyboard_check_pressed(vk_up)
	{
		if selection = 0 or selection = 1 or selection = 2
		{
			selection = save_selection[3]
		}
		else if selection = 3 or selection = 4
		{
			selection = save_selection[0]
		}
		else if selection = 5 or selection = 6
		{
			selection = save_selection[1]
		}
		else if selection = 7
		{
			selection = save_selection[2]
		}
	}
	
	if keyboard_check_pressed(vk_right)
	{
		if selection = 0 or selection = 1 or selection = 2
		{
			selection = (selection+1) mod 3
		}
		else if selection = 3 or selection = 4
		{
			global.saved_translations = []
			global.saved_translation_ids = []
			selection = (selection-3+1) mod 2 + 3
		}
		else if selection = 5 or selection = 6
		{
			selection = (selection-5+1) mod 2 + 5
		}
	}
	else if keyboard_check_pressed(vk_left)
	{
		if selection = 0 or selection = 1 or selection = 2
		{
			selection = (selection+2) mod 3
		}
		else if selection = 3 or selection = 4
		{
			global.saved_translations = []
			global.saved_translation_ids = []
			selection = (selection-3+1) mod 2 + 3
		}
		else if selection = 5 or selection = 6
		{
			selection = (selection-5+1) mod 2 + 5
		}
	}
	
	if selection = 7 and keyboard_check_pressed(ord("Z"))
	{
		global.menus[menu_id] = false
		global.menus[0] = true
	}
	
	if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_enter)
	{
		global.menus[menu_id] = false
		global.menus[0] = true
	}
}

switch (save_selection[0])
{
	case 0:
		global.text_speed = 3
	break
	case 1:
		global.text_speed = 2
	break
	case 2:
		global.text_speed = 1
	break
}
switch (save_selection[1])
{
	case 3:
		global.lang = "en_us"
	break
	case 4:
		global.lang = "ru_ru"
	break
}
switch (save_selection[2])
{
	case 5:
		global.fun = false
	break
	case 6:
		global.fun = true
	break
}