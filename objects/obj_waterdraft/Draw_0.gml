/*		for (var o = 0; o < abs(image_yscale); o++)
		{
			for (var z = 0; z < abs(image_xscale); z++)
			{
				if (sign(image_yscale) == 1)
					draw_sprite_ext(spr_waterdraft, -1, (x + (32 * z)), (y + (32 * o)), 1, sign(image_yscale), image_angle, image_blend, alpha)
				else
					draw_sprite_ext(spr_waterdraft, -1, (x + (32 * z)), (y - (32 * o)), 1, sign(image_yscale), image_angle, image_blend, alpha)
			}
		}