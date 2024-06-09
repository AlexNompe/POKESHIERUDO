if velocity[0] = 0
{
	x = ceil_floor(x/16, previous_velocity[0])*16
	
}
if velocity[1] = 0
{
	y = ceil_floor(y/16, previous_velocity[1])*16
}

camera_set_view_pos(view_camera[0],x-80+sprite_height/2,y-72+sprite_width/2)