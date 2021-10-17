function scr_player_murder() {
	landAnim = 0
	if grounded
	{
	    if (movespeed > 0)
	        movespeed -= 0.1
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (xscale * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((xscale * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((xscale * movespeed) + 5)
	}
	else if (!grounded)
	    hsp = (xscale * movespeed)
	if (floor(image_index) >= (image_number - 1) && sprite_index == spr_murder)
	{
		image_speed = 0.35
		image_index = 0
		sprite_index = spr_idle
		state = 0
		breakdancebuffer = 50
	}
	image_speed = 0.4



}
