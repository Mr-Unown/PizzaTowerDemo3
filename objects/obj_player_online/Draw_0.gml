if !surface_exists(online_surf_pallete)
{
	online_surf_pallete = surface_create(surf_width,surf_height)
	#region Surface
	surface_set_target(online_surf_pallete);
	draw_clear_alpha(c_white,0)
	pal_swap_draw_palette(spr_palette,0,0,0)
	pal_swap_draw_palette(spr_palette,paletteselect,1,0)
	for (var i = 0; i < colorheight; i++) {
	    draw_point_color(1,i,color[i]);
	}
	surface_reset_target();	
	#endregion	
}
else
{
	#region Surface
	surface_set_target(online_surf_pallete);
	draw_clear_alpha(c_white,0)
	pal_swap_draw_palette(spr_palette,0,0,0)
	pal_swap_draw_palette(spr_palette,paletteselect,1,0)
	for (var i = 0; i < colorheight; i++) {
	    draw_point_color(1,i,color[i]);
	}
	surface_reset_target();	
	#endregion	
}
var drawx = x
var drawy = y
var player_xscale = xscale * scale, player_yscale = yscale * scale;


if surface_exists(online_surf_pallete) && (paletteselect >= sprite_get_width(spr_palette) - 1)
{
	pal_swap_set(online_surf_pallete, 1, true)
}
else if (paletteselect < sprite_get_width(spr_palette) - 1)
	pal_swap_set(spr_palette, paletteselect, false)

draw_sprite_ext(sprite_index, image_index, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)

if (character == "P" && sprite_index == spr_taunt && floor(image_index) == 11)
    draw_sprite_ext(spr_promotion, image_index, drawx, drawy, 1, player_yscale, draw_angle, image_blend, image_alpha)
shader_reset()
if flash
{
    shader_set(shd_hit)
	draw_sprite_ext(sprite_index, image_index, drawx, drawy, player_xscale, player_yscale, draw_angle, image_blend, image_alpha)
    if (character == "P" && sprite_index == spr_taunt && floor(image_index) == 11)
        draw_sprite_ext(spr_promotion, image_index, drawx, drawy, 1, player_yscale, draw_angle, image_blend, image_alpha)
    shader_reset()
}

scr_draw_player_name(name, gms_other_admin_rights(player_id));