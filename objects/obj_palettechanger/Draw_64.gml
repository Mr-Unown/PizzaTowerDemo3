var draw_x = camera_get_view_width(view_camera[0]) /2
var draw_y = camera_get_view_height(view_camera[0]) /2
//Darken BG
draw_set_alpha(0.5)
draw_rectangle_color(-32, -32, 992, 572, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

if !surface_exists(surface) && surface_exists(player.surf_pallete)
{
	surface = surface_create(2,10);
	surface_copy(surface,0,0,player.surf_pallete);
}
//Draw Palettes
if surface_exists(surface)
{
	surface_set_target(surface)
	draw_surface(player.surf_pallete,0,0)
	for (var i = 0; i < player.colorheight; i++) 
	{
		draw_point_color(1,i,color[i]);
	}
	surface_reset_target()
	draw_surface_ext(surface, 96, draw_y - 160,40,40,0,c_white,1)
}
draw_sprite(spr_palettechanger_selection,-1,96,draw_y - 160)

//Player Sprite
pal_swap_set(surface, 1, true);
draw_sprite_ext(player.sprite_index,player.image_index,draw_x - 152,draw_y + 16,4,4,0,c_white,1)
pal_swap_reset();

/*

draw_sprite_ext(sprite_index,optionselected,draw_x,draw_y,1,1,0,c_white,1)

//Draw Text
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)

#region Palette
var paletteselected = 0

if player.paletteselect != sprite_get_width(player.spr_palette) - 1
{
	if player.character = "P" || player.character = "PZ" || (player.character = "N" && player.pogo = true)
		paletteselected = player.paletteselect
	else
		paletteselected = player.paletteselect + 1
}
else
	paletteselected = "CUSTOM"	

#endregion

if (optionselected == 0)
    draw_text_colour(480, 100, "PALETTE : "+string(paletteselected), c_white, c_white, c_white, c_white, 1)
else 
    draw_text_colour(480, 100, "PALETTE : "+string(paletteselected), c_white, c_white, c_white, c_white, 0.5)
	
if (optionselected == 1)
    draw_text_colour(500, 200, "EDIT MODE", c_white, c_white, c_white, c_white, 1)
else 
    draw_text_colour(500, 200, "EDIT MODE", c_white, c_white, c_white, c_white, 0.5)
	
if (optionselected == 2)
    draw_text_colour(480, 350, string_upper(string(characters)), c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 350, string_upper(string(characters)), c_white, c_white, c_white, c_white, 0.5)	

if (optionselected == 3)
    draw_text_colour(64, 25, "HATS", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(64, 25, "HATS", c_white, c_white, c_white, c_white, 0.5)	
	

if player.custompalette = true
	pal_swap_set(player.surf_pallete, 1, true)
else if	player.custompalette = false
	pal_swap_set(player.spr_palette, player.paletteselect, false)

draw_sprite_ext(player.sprite_index,player.image_index,draw_x - 4,draw_y - 19,player.xscale,player.yscale,player.image_angle,player.image_blend,1)
shader_reset();
*/