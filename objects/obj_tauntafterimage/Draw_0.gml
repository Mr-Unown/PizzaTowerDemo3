var drawx = x
var drawy = y
drawx += random_range(-1, 1)
drawy += random_range(-1, 1)

if custompalette = true
	pal_swap_set(playerid.surf_pallete, 1, true);
else if	custompalette = false
	pal_swap_set(spr_palette, paletteselect, false);



draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, gonealpha  * image_alpha)
if (sprite_index == spr_player_taunt && floor(image_index) == 11)
    draw_sprite_ext(spr_promotion, image_index, drawx, drawy, 1, image_yscale, image_angle, image_blend, gonealpha  * image_alpha)
shader_reset()

draw_sprite_ext(spr_supertauntcharge, supertauntindex, drawx, drawy, image_xscale, image_yscale, image_angle, c_white, clamp((gonealpha * image_alpha),0,0.85))