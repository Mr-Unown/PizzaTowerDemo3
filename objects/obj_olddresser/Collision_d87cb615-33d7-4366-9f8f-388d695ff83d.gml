with other.id
{
	if key_up2
	{
		if character = "P" || character = "PZ"
		{
			if (paletteselect < sprite_get_width(spr_palette) - 1)
				paletteselect += 1
			else
				paletteselect = 1
		}
		else
		{
			if (paletteselect < sprite_get_width(spr_palette) - 1)
				paletteselect += 1
			else
				paletteselect = 0
		}
		var _depth = depth - 5
		with (instance_create((x + random_range(-5, 5)), (y + random_range(-5, 5)), obj_balloonpop))
		{
			depth = _depth
			image_index = 0.35
			sprite_index = spr_bigpoofclouds
			image_angle = choose(0,90,180,360)
		}			
	}
}