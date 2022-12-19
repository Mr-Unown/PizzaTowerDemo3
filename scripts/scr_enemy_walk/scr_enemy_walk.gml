function scr_enemy_walk() {
	if (grounded || (grounded && (!place_meeting(x, y, obj_platform)) || (!place_meeting(x, y, obj_cottonplatform))))
	{
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (image_xscale * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((image_xscale * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((image_xscale * movespeed) + 5)
	    else
	        hsp = 0
	}
	if (roaming == 0)
	{
	    if (grounded || (grounded && (!place_meeting(x, y, obj_platform)) || (!place_meeting(x, y, obj_cottonplatform))))
	    {
	        hsp = 0
	        state = 86
	        image_index = 0
	    }
	}
	if (grounded || (grounded && (!place_meeting(x, y, obj_platform)) || (!place_meeting(x, y, obj_cottonplatform))))
	    sprite_index = walkspr
	else
	{
	    sprite_index = idlespr
	    state = 86
	}
	image_speed = 0.35
	if ((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1) || place_meeting((x + hsp), y, obj_hallway))
	{
	    if (!place_meeting((x + sign(hsp)), y, obj_slope))
	        image_xscale *= -1
	}
	if (!(scr_solid((x + 15), (y + 31)) || place_meeting((x + 15), (y + 31), obj_platform) || place_meeting((x + 15), (y + 31), obj_cottonplatform)))
	{
	    if (image_xscale == 1 && movespeed > 0)
	    {
	        /*if (object_index == obj_ninja)
	        {
	            vsp = -11
	            scr_sound(5)
	            image_index = 0
	            image_xscale = (-sign((x - obj_player.x)))
	            state = 88
	        }
	        else*/
	            image_xscale *= -1
	    }
	}
	if (!(scr_solid((x - 15), (y + 31)) || place_meeting((x - 15), (y + 31), obj_platform) || place_meeting((x - 15), (y + 31), obj_cottonplatform)))
	{
	    if (image_xscale == -1 && movespeed > 0)
	    {
	        /*if (object_index == obj_ninja)
	        {
	            vsp = -11
	            scr_sound(5)
	            image_index = 0
	            image_xscale = (-sign((x - obj_player.x)))
	            state = 88
	        }
	        else*/
	            image_xscale *= -1
	    }
	}
	if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform)) || (!place_meeting(x, y, obj_cottonplatform))))) && hsp < 0)
	    hsp += 0.1
	else if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform)) || (!place_meeting(x, y, obj_cottonplatform))))) && hsp > 0)
	    hsp -= 0.1



}
