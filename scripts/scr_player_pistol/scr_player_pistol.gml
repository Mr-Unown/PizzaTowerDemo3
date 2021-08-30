function scr_player_pistol() {
	landAnim = 0
	if grounded
	{
	    if (movespeed > 0)
	        movespeed -= 0.1
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (xscale * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((xscale * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((xscale * movespeed) + 5)
	}
	else if (!grounded)
	    hsp = (xscale * movespeed)
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_revolverstart)
	    sprite_index = spr_playerV_revolverhold
	if ((sprite_index == spr_playerV_revolverhold || sprite_index == spr_playerV_airrevolverstart || sprite_index == spr_playerV_revolverstart) && (!key_slap))
	{
	    if grounded
	        sprite_index = spr_playerV_revolvershoot
	    else
	        sprite_index = spr_playerV_airrevolver
	    image_index = 0
	    with (instance_create((x + (xscale * 25)), (y + 20), obj_shotgunbullet))
	        playerid = other.id
	    scr_soundeffect(sfx_killingblow)
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_revolvershoot)
	{
	    image_index = 0
	    state = 0
	    sprite_index = spr_playerV_revolverend
	    movespeed = 2
	}
	if ((sprite_index == spr_playerV_airrevolverend || sprite_index == spr_playerV_airrevolver || sprite_index == spr_playerV_airrevolverstart) && grounded)
	{
	    if (key_attack && movespeed >= 6)
	        state = 70
	    else
	        state = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_airrevolver)
	{
	    if (key_attack && movespeed >= 6)
	        state = 70
	    else
	    {
	        image_index = 0
	        state = 0
	    }
	}
	image_speed = 0.4



}
