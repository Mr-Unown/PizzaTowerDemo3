if abs(image_xscale) > 2
{
	for (var i = 1; i < (abs(image_xscale) - 1); i++) 
	{
		draw_sprite_ext(spr_railh2, -1, (x + (32 * i)), y, 1, 1, image_angle, image_blend, image_alpha)
	}
	draw_sprite_ext(spr_railh2left, -1, (x + (32 * 0)), y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(spr_railh2right, -1, (x + (32 * (abs(image_xscale)-1))), y, 1, 1, image_angle, image_blend, image_alpha)
}
else if abs(image_xscale) > 1
{
	draw_sprite_ext(spr_railh2left, -1, (x + (32 * 0)), y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(spr_railh2right, -1, (x + (32 * (abs(image_xscale)-1))), y, 1, 1, image_angle, image_blend, image_alpha)
}
else 
	draw_self();