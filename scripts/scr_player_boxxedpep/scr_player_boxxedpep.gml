function scr_player_boxxedpep() {
	mask_index = spr_crouchmask
	key_particles = 0
	alarm[5] = 2
	alarm[7] = 60
	hurted = 1
	if key_jump
	input_buffer_jump = 0
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if key_jump && !grounded
	{	
		if boxxedjump = 0
		{
		boxxedjump += 1
		vsp = -11
		}
		else if boxxedjump = 1
		{
		boxxedjump += 1
		vsp = -9
		}
		else if boxxedjump = 2
		{
		boxxedjump += 1
		vsp = -7
		}
		else if boxxedjump = 3
		{
		boxxedjump += 1
		vsp = -5
		}
		else if boxxedjump = 4
		{
		boxxedjump += 1
		vsp = -3
		}
		else if boxxedjump = 5
		{
		boxxedjump += 1
		vsp = -1
		}	
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 0
	}
	if (sprite_index != spr_boxxedintro)
	{
	    move = (key_left + key_right)
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (move * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((move * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((move * movespeed) + 5)
	}
	if (scr_solid((x + sign(hsp)), y) && xscale == 1 && move == 1 && (!scr_slope_ext(x + 1, y)))
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && xscale == -1 && move == -1 && (!scr_slope_ext(x - 1, y)))
	    movespeed = 0
	if (input_buffer_jump < 8 && vsp > 0 && (!scr_solid(x, (y - 16))) && (!scr_solid(x, (y - 32))))
	{
			{	
		if boxxedjump = 0
		{
		boxxedjump += 1
		vsp = -11
		scr_soundeffect(sfx_jump)
	    instance_create(x, y, obj_highjumpcloud2)
		}
		else if boxxedjump = 1
		{
		boxxedjump += 1
		vsp = -9
		scr_soundeffect(sfx_jump)
	    instance_create(x, y, obj_highjumpcloud2)
		}
		else if boxxedjump = 2
		{
		boxxedjump += 1
		vsp = -7
		scr_soundeffect(sfx_jump)
	    instance_create(x, y, obj_highjumpcloud2)
		}
		else if boxxedjump = 3
		{
		boxxedjump += 1
		vsp = -5
		scr_soundeffect(sfx_jump)
	    instance_create(x, y, obj_highjumpcloud2)
		}
		else if boxxedjump = 4
		{
		boxxedjump += 1
		vsp = -3
		scr_soundeffect(sfx_jump)
	    instance_create(x, y, obj_highjumpcloud2)
		}
		else if boxxedjump = 5
		{
		boxxedjump += 1
		vsp = -1
		scr_soundeffect(sfx_jump)
	    instance_create(x, y, obj_highjumpcloud2)
		}	
	}
	}
    if (!key_attack)
    {
        if (move != 0)
        {
            if (movespeed < 6)
                movespeed += 0.5
            else if (floor(movespeed) == 6)
                movespeed = 6
        }
        else
            movespeed = 0
        if (movespeed > 6)
            movespeed -= 0.1
    }
    else if (movespeed < 10 && (!grounded))
    {
        if (dir != xscale)
        {
            dir = xscale
            movespeed = 0
        }
        if (move != 0)
        {
            if (movespeed < 6)
                movespeed += 0.5
            else if (floor(movespeed) == 6)
                movespeed = 6
            xscale = move
        }
        else
            movespeed = 0
    }
    else
        movespeed = 10
	if (sprite_index == spr_boxxedintro && floor(image_index) == (image_number - 1))
	    sprite_index = spr_boxxedidle
	if (sprite_index != spr_boxxedintro)
	{
	    if (move != 0)
	        xscale = move
	    if grounded
	    {
	        if (move != 0)
			{
				if movespeed >= 9
				sprite_index = spr_boxxeddash
				else
	            sprite_index = spr_boxxedwalk
			}
	        else
	            sprite_index = spr_boxxedidle
	    }
	    else if movespeed < 9
	        sprite_index = spr_boxxedair
	}
	if ((!instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, (y + 43), obj_cloudeffect)
	if ((!instance_exists(obj_cloudeffect)) && grounded && move != 0 && (sprite_index == spr_player_downslopes || sprite_index == spr_player_upslopes))
	    instance_create(x, (y + 43), obj_cloudeffect)
	if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
	{
	    scr_soundeffect(sfx_step)
	    steppy = 1
	}
	if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
	    steppy = 0
	if (place_meeting(x, y, obj_spike) || place_meeting(x, y, obj_baddie))
	{
	    if (x != other.x)
	        obj_player.hsp = (sign((x - other.x)) * 5)
	    else
	        obj_player.hsp = 5
	    vsp = -3
	    scr_soundeffect(sfx_bumpwall)
	    scr_soundeffect(sfx_loseknight)
	    image_index = 0
	    obj_player.image_index = 0
	    obj_player.flash = 1
	    state = 72
	}
	if grounded
	boxxedjump = 0
}
