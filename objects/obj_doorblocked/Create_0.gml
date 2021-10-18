depth = 2
if (room == medieval_1)
{
    depth = 51
    sprite_index = spr_goldendoorvisited
}
if place_meeting(x,y, obj_player) && sprite_index != spr_goldendoorvisited	 
{
	image_index = 0	
	image_speed = 0.35
	sprite_index = spr_doorblockedclosing
}

//blocked = 0


