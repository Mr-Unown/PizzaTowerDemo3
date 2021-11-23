function scr_player_freefallprep() {
	move = (key_left + key_right)
	if (!grounded)
	{
	    hsp = (move * movespeed)
	    if (move != xscale && momemtum == 1 && movespeed != 0)
	        movespeed -= 0.05
	    if (movespeed == 0)
	        momemtum = 0
	    if ((move == 0 && momemtum == 0) || scr_solid((x + hsp), y))
	    {
	        movespeed = 0
	        mach2 = 0
	    }
	    if (move != 0 && movespeed < 7)
	        movespeed += 0.25
	    if (movespeed > 7)
	        movespeed -= 0.05
	    if ((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1))
	        movespeed = 0
	    if (dir != xscale)
	    {
	        mach2 = 0
	        dir = xscale
	        movespeed = 0
	    }
	    if (move == (-xscale))
	    {
	        mach2 = 0
	        movespeed = 0
	        momemtum = 0
	    }
	    if (move != 0)
	        xscale = move
	}
	if sprite_index != spr_mach2jump 
	image_speed = 0.5
	else
	image_speed = (movespeed/12) * 0.8
if global.freefallstyle = 0
{
	if (floor(image_index) == (image_number - 1))
	{
	    vsp += 14
	    state = 74
	    if (shotgunAnim == 0)
	    sprite_index = spr_bodyslamfall
	    else
	    sprite_index = spr_shotgunjump3
	}
}
else if global.freefallstyle = 1
vsp += 14
state = 74
sprite_index = spr_mach2jump
}
