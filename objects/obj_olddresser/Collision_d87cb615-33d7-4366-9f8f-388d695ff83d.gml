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
		with (instance_create((other.x + random_range(-16, 16)), (other.y + random_range(-16, 16)), obj_balloonpop))
		{
			image_index = 0.35
			sprite_index = spr_dust_effect
		}			
	}
}