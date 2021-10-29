if other.in_water == true
{
	with (other)
	{
		if (state != states.current)
		{
			if (vsp = 0 || sign(vsp) == -sign(other.image_yscale))
			{
				sprite_index = spr_machfreefall
				state = states.current
			}
			else if (vsp != 0)
				vsp = approach(vsp,0,1)		
		}
	}
}