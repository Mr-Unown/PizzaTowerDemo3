if other.in_water == true
{
	with (other)
	{
		if (state != states.current)
		{
			sprite_index = spr_machfreefall
			state = states.current
		}
	}
}