function scr_player_throwdynamite() {
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = xscale * movespeed
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = (xscale * movespeed) - 5
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = (xscale * movespeed) + 5
	if grounded
	{		
	    if (movespeed > 0)
	        movespeed -= 0.1
	}
	landAnim = 0
	if (floor(image_index) == (image_number - 1) && (sprite_index == spr_playerV_dynamitethrow || sprite_index == spr_playerGB_kick))
	{
	    if (key_attack && hsp != 0)
	        state = 70
		else if scr_solid(x,y-3)
		{
			state = 66
			landAnim = 0
			image_index = 0
			idle = 0
		}
	    else
	        state = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerN_noisebombthrow)
	{
		if scr_solid(x,y-3)
		{
			state = 66
			landAnim = 0
			image_index = 0
			idle = 0
		}
		else
			state = 0
	}
	image_speed = 0.4
	


}
