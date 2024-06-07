if char_timer > 0
{
	char_timer -= 1 * delta_time / 100000
	alarm[2] = 1
}
else
{
	char_timer = 0
}