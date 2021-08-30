with other.id
{
	if (state == 22)
	{
    instance_create((x + (xscale * 40)), y, obj_punchdust)
    image_index = 0
    sprite_index = spr_haulingstart
    heavy = 1
    state = 46
    baddiegrabbedID = other.id
    other.playerid = object_index
    other.grabbed = 1
	}
}