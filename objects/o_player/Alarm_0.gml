if (tile_pos[0]-x > 0 and velocity[0] = 1) or (tile_pos[0]-x < 0 and velocity[0] = -1)
{
	tile_transition[0] = abs(tile_pos[0]-x)/16
	move_and_collide(velocity[0]*acceleration/16,0,o_collision)
	//x += velocity[0]*acceleration/16
	alarm[0] = 1
}
else
{
	velocity[0] = 0
	tile_transition[0] = 0
}