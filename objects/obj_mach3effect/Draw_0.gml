if custompalette = true
	pal_swap_set(playerid.surf_pallete, 1, true);
else if	custompalette = false
	pal_swap_set(spr_palette, paletteselect, false);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale, image_yscale, image_angle, image_blend, gonealpha * image_alpha)
shader_reset()