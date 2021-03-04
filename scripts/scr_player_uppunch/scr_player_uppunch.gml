if (momemtum == 0)
    hsp = (move * movespeed)
else
    hsp = (xscale * movespeed)
if (dir != xscale)
{
    dir = xscale
    movespeed = 2
    facehurt = 0
}
if (move != xscale)
    movespeed = 2
move = (key_left + key_right)
if (movespeed == 0)
    momemtum = 0
if scr_solid((x + hsp), y)
{
    movespeed = 0
    mach2 = 0
}
if (move != 0 && movespeed < 6)
    movespeed += 0.5
if (movespeed > 6)
    movespeed -= 0.1
if ((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1))
    movespeed = 0
if (dir != xscale)
    dir = xscale
landAnim = 1
if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
{
    vsp /= 10
    jumpstop = 1
}
if (ladderbuffer > 0)
    ladderbuffer--
if (scr_solid(x, (y - 1)) && jumpstop == 0 && jumpAnim == 1)
{
    vsp = grav
    jumpstop = 1
}

if sprite_index = spr_player_shoryumineken && floor(image_index) = image_number - 1
{
	sprite_index = spr_player_shoryukenend
    doublejump = 0
    input_buffer_secondjump = 0
    state = 0
    jumpAnim = 0
    jumpstop = 0
    image_index = 0
    freefallstart = 0
}
