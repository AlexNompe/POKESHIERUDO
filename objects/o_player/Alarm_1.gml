if (tile_pos[1]-y > 0 and velocity[1] = 1) or (tile_pos[1]-y < 0 and velocity[1] = -1)
{
	tile_transition[1] = abs(tile_pos[1]-y)/16
	move_and_collide(0,velocity[1]*acceleration/16,o_collision)
	//y += velocity[1]*acceleration/16
	alarm[1] = 1
}
else
{
	velocity[1] = 0
	tile_transition[1] = 0
}