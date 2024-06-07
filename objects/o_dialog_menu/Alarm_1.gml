if text_animation_progress < iii
{
	text_animation_progress += 1 * delta_time / 100000 / 3 * global.text_speed
	alarm[1] = 1
}
else
{
	text_animation_progress = iii
	text_y_pos += 1
	iii += 1
	global.press_z_safe = true
}