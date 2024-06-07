//velocity = [keyboard_check_direct(vk_right)-keyboard_check_direct(vk_left), keyboard_check_direct(vk_down)-keyboard_check_direct(vk_up)]

//move_and_collide(velocity[0]*acceleration,velocity[1]*acceleration,o_collision)

if velocity[0] = 0 and velocity[1] = 0
{
	image_speed = 0
	image_index = 0
}
else
{
	image_speed = 0.4*delta_time/10000
}

sprite_center = [sprite_xoffset+sprite_width/2,sprite_yoffset+sprite_height/2]

if velocity[0] != 0 previous_velocity[0] = velocity[0]
if velocity[1] != 0 previous_velocity[1] = velocity[1]

if xprevious = x velocity[0] = 0
if yprevious = y velocity[1] = 0

if abs(velocity[0])+abs(velocity[1]) == 2
{
	acceleration = sqrt(sqr(default_acceleration)/2)*delta_time/10000
}
else
{
	acceleration = default_acceleration*delta_time/10000
}

if tile_transition[0] > 1
{
	//tile_pos[0] = floor(x/16)*16+velocity[0]*16
	alarm[0] = 1
}

if tile_transition[1] > 1
{
	//tile_pos[1] = floor(y/16)*16+velocity[1]*16
	alarm[1] = 1
}

if collision_point(x+sprite_center[0]+(sprite_width/2)*velocity[0],y+sprite_center[1],o_collision,true,true)
{
	velocity[0] = 0
}

if collision_point(x+sprite_center[0],y+sprite_center[1]+(sprite_height/2)*velocity[1],o_collision,true,true)
{
	velocity[1] = 0
}

if global.no_menus_open
{
	if keyboard_check_direct(vk_right) and not keyboard_check_direct(vk_left) and not collision_point(x+sprite_center[0]+sprite_width/2+1,y+sprite_center[1],o_collision,true,true)
	{
		velocity[0] = 1
		tile_pos[0] = floor(x/16)*16+velocity[0]*16
		alarm[0] = 1
	}
	else if keyboard_check_direct(vk_left) and not keyboard_check_direct(vk_right) and not collision_point(x+sprite_center[0]-sprite_width/2-1,y+sprite_center[1],o_collision,true,true)
	{
		velocity[0] = -1
		tile_pos[0] = ceil(x/16)*16+velocity[0]*16
		alarm[0] = 1
	}
	if keyboard_check_direct(vk_down) and not keyboard_check_direct(vk_up) and not collision_point(x+sprite_center[0],y+sprite_center[1]+sprite_height/2+1,o_collision,true,true)
	{
		velocity[1] = 1
		tile_pos[1] = floor(y/16)*16+velocity[1]*16
		alarm[1] = 1
	}
	else if keyboard_check_direct(vk_up) and not keyboard_check_direct(vk_down) and not collision_point(x+sprite_center[0],y+sprite_center[1]-sprite_height/2-1,o_collision,true,true)
	{
		velocity[1] = -1
		tile_pos[1] = ceil(y/16)*16+velocity[1]*16
		alarm[1] = 1
	}
	
	if velocity[1] = 1
	{
		sprite_direction = "down"
	}
	else if velocity[1] = -1
	{
		sprite_direction = "up"
	}
	else if velocity[0] = 1
	{
		sprite_direction = "right"
	}
	else if velocity[0] = -1 
	{
		sprite_direction = "left"
	}
}
sprite_index = asset_get_index("spr_DEBUG"+"_"+"character"+"_"+sprite_direction)