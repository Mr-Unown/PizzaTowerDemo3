//Move
if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (image_xscale * movespeed)
else if (grounded && place_meeting(x, (y + 1), obj_railh))
    hsp = ((image_xscale * movespeed) - 5)
else if (grounded && place_meeting(x, (y + 1), obj_railh2))
    hsp = ((image_xscale * movespeed) + 5)

switch object_index
{
	case obj_cheeseslime:
	if floor(image_index) >= image_number - 1
	{
		image_index = 0
        sprite_index = walkspr
        state = 102
        movespeed = 1
		
	}
	break;
}
bombreset = 100