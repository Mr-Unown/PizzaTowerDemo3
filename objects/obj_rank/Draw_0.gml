if (obj_player1.collectscore >= obj_player2.collectscore)
{
	if	obj_player1.custompalette = true
		pal_swap_set(obj_player1.surf_pallete, 1, true)
	else if	obj_player1.custompalette = false
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
}
else if (obj_player2.collectscore > obj_player1.collectscore)
{
	if	obj_player2.custompalette = true
		pal_swap_set(obj_player2.surf_pallete, 1, true)
	else if	obj_player2.custompalette = false
		pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)		
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
shader_reset()
var plusx = 916
var plusy = 296
if (obj_player1.character == "PZ" && obj_player1.collectscore >= obj_player2.collectscore) || (obj_player2.character == "PZ" && obj_player2.collectscore > obj_player1.collectscore)
{
	plusx = 852
	plusy = 78
}
if global.rank == "s+" && animation_end()
{
	draw_sprite_ext(spr_rankplus,plusrankframes,plusx,plusy,1,1,0,c_white,1)
	plusrankframes = clamp(plusrankframes +0.35, 0,23)
}

