bol = true
for (i = 0; i < array_length(global.menus); i += 1)
{
	if global.menus[i] = true
	{
		bol = false
	}
}
global.no_menus_open = bol

global.time += 1 * delta_time / 1000000

//window_center()
//window_set_size(480 + sin(current_time/100)*64, 432 + cos(current_time/100)*64)