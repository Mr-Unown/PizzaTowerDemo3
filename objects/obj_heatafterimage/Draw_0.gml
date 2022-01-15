if player.custompalette = true
	pal_swap_set(player.surf_pallete, 1, true)
else if	player.custompalette = false
	pal_swap_set(player.spr_palette, player.paletteselect, false)
draw_sprite_ext(player.sprite_index, player.image_index, x, y, player.xscale, player.yscale, image_angle, image_blend, alpha)
shader_reset()