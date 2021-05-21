if (obj_player1.collectscore >= obj_player2.collectscore)
    pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, 0)
if (obj_player2.collectscore > obj_player1.collectscore)
    pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
var plusx = 916
var plusy = 296
if (obj_player1.character == "PZ" && obj_player1.collectscore >= obj_player2.collectscore) || (obj_player2.character == "PZ" && obj_player2.collectscore > obj_player1.collectscore)
{
	plusx = 852
	plusy = 78
}
if global.treasure = true && global.rank == "s" && floor(image_index) == (image_number - 1)
{
	draw_sprite_ext(spr_rankplus,plusrankframes,plusx,plusy,1,1,0,c_white,1)
	plusrankframes = clamp(plusrankframes +0.35, 0,23)
}
shader_reset()


