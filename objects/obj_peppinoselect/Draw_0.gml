pal_swap_set(spr_peppalette, 1, false)
if sprite_index = spr_peppinoselect && c > 0 {
	draw_sprite_ext(spr_peppinoselectshadow, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, c/255)
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
shader_reset()

