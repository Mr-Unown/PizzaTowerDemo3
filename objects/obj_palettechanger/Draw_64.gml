if	player.custompalette = true
	pal_swap_set(player.surf_pallete, 1, true)
else if	player.custompalette = false
	pal_swap_set(player.spr_palette, player.paletteselect, false)

draw_sprite_ext(player.sprite_index,player.image_index,480,20,player.xscale,player.yscale,player.image_angle,player.image_blend,player.image_alpha)
shader_reset();
//Draw Text
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)

#region Palette
var paletteselected = 0

if player.paletteselect != sprite_get_width(player.spr_palette) - 1
{
	if player.character = "P" || player.character = "PZ"
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
    draw_text_colour(480, 350, "PEPPINO", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 350, "PEPPINO", c_white, c_white, c_white, c_white, 0.5)	

if (optionselected == 3)
    draw_text_colour(64, 25, "HATS", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(64, 25, "HATS", c_white, c_white, c_white, c_white, 0.5)	