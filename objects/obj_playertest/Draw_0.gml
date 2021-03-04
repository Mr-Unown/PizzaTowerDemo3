if surface_exists(surf_pallete)
{
	surface_set_target(surf_pallete);
	pal_swap_draw_palette(spr_palette,0,0,0)
	pal_swap_draw_palette(spr_palette,paletteselect,1,0)
	for (var i = 0; i < sprite_get_height(spr_palette); i++) {
	    draw_point_color(1,i,color[i]);
	}
	surface_reset_target();	
	
	pal_swap_set(surf_pallete, 1, true)
	draw_sprite_ext(playerid.sprite_index, playerid.image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	shader_reset()
}


