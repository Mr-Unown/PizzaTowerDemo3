for (var i = 0; i < abs(image_xscale); i++) {
    draw_sprite_ext(spr_hurtboxslope, 0, (x + ((32 * i) * sign(image_xscale))), y + (32 * i), sign(image_xscale), 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(spr_hurtboxslope, 1, (x + ((32 * i) * sign(image_xscale))), (y + 32) + (32 * i), sign(image_xscale), 1, image_angle, image_blend, image_alpha)
}