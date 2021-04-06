pal_swap_set(spr_noisepalette, 0, 0)
if sprite_index = spr_noiseselect && blackblend > 0 {
	draw_sprite_ext(spr_noiseselectshadow, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend,blackblend/255)
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
shader_reset()


