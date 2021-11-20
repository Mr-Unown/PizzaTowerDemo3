#region Palette		
if (obj_player1.spotlight == 1)
	if	obj_player1.custompalette = true
		pal_swap_set(obj_player1.surf_pallete, 1, true)
	else if	obj_player1.custompalette = false
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
else
	if	obj_player2.custompalette = true
		pal_swap_set(obj_player2.surf_pallete, 1, true)
	else if	obj_player2.custompalette = false
		pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)		
#endregion		
draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
shader_reset()