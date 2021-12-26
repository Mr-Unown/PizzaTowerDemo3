if	obj_player1.custompalette = true
		pal_swap_set(obj_player1.surf_pallete, 1, true)
	else if	obj_player1.custompalette = false
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
draw_sprite_ext(obj_player.sprite_index, obj_player.image_index, x, y, obj_player.xscale, obj_player.yscale, image_angle, image_blend, alpha)
shader_reset()