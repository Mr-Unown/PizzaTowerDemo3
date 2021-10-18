if global.newhud = false
{
		
var player = obj_player1
var player2 = obj_player2
if (obj_player1.spotlight == 0)
{
    player = obj_player2
    player2 = obj_player1
}
else
{
    player = obj_player1
    player2 = obj_player2
}
if global.hudmode == false
{
if (obj_player1.spotlight == 0)
	if	obj_player1.custompalette = true
		pal_swap_set(obj_player1.surf_pallete, 1, true)
	else if	obj_player1.custompalette = false
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
else
	if	obj_player2.custompalette = true
		pal_swap_set(obj_player2.surf_pallete, 1, true)
	else if	obj_player2.custompalette = false
		pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)
		
if (player2.state != 55)
{
    if (player2.character == "P")
    {
        if (shoving == 1)
        {
            if (image_index < 3)
                draw_sprite_ext(spr_pepinoHUD, image_index, 125, 100, 1, 1, 1, c_white, alpha)
        }
    }
    if (player2.character == "N")
    {
        if (shoving == 1)
        {
            if (image_index < 3)
                draw_sprite_ext(spr_noiseHUD_idle, image_index, 125, 100, 1, 1, 1, c_white, alpha)
        }
    }
    if (player2.character == "V")
    {
        if (shoving == 1)
        {
            if (image_index < 3)
                draw_sprite_ext(spr_playerV_normalHUD, image_index, 125, 100, 1, 1, 1, c_white, alpha)
        }
    }
    if (player2.character == "S")
    {
        if (shoving == 1)
        {
            if (image_index < 3)
                draw_sprite_ext(spr_snickHUD_normal, image_index, 125, 60, 1, 1, 1, c_white, alpha)
        }
    }
    shader_reset()
    if ((player.y < 200 && player.x < 200) || (player2.y < 200 && player2.x < 200))
        alpha = 0.5
    else
        alpha = 1
}
}
draw_set_blend_mode(0)


}