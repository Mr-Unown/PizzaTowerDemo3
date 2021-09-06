if place_meeting(x,y,obj_water) && other.y > obj_water.bbox_top + 32
{
	with (other)
	{
		if (state != 87)
		{
			sprite_index = spr_machfreefall
			state = 87
		}
	}
}