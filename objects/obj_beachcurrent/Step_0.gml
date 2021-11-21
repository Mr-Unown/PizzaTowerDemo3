if place_meeting(x, (y - 1), obj_player1)
{
	with (obj_player1)
	{
		{
			if xscale == sign(obj_beachcurrent.image_xscale)
				sprite_index = spr_slipnslide;
				state = states.current;
				xscale = sign(obj_beachcurrent.image_xscale);
			if (movespeed < 12)
				movespeed -= 0.5
				
			if movespeed >= 12
			movespeed = 12
		}
	}	
}