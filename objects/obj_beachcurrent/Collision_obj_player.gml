if other.in_water = true
{
	with (other)
	{
		if (state != states.current)
		{
			if (movespeed <= 3 || xscale == sign(other.image_xscale))
			{
				sprite_index = spr_slipnslide;
				state = states.current;
				xscale = sign(other.image_xscale);
			}
			else if (movespeed > 3)
				movespeed--
		}
	}
}