function scr_player_firemouth() {
	if (sprite_index == spr_firemouthintro || sprite_index == spr_firemouthend)
	    mask_index = spr_crouchmask
	else
	    mask_index = spr_player_mask
	if (sprite_index == spr_firemouthend && floor(image_index) == (image_number - 1))
	{
	    alarm[5] = 2
	    alarm[7] = 60
	    hurted = 1
	    state = 0
	    sprite_index = spr_idle
	    image_index = 0
	}
	if (sprite_index == spr_firemouthintro && floor(image_index) == (image_number - 1))
	    sprite_index = spr_player_firemouthidle
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 2
	    facehurt = 0
	}
	move = (key_left + key_right)
	if key_jump
		input_buffer_jump = 0
	hsp = 0
	mach2 = 0
	landAnim = 0
	alarm[5] = 2
	hurted = 0
	if(sprite_index != spr_firemouthintro && sprite_index != spr_firemouthend)
	{
		if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
		{
		    vsp /= 2
		    jumpstop = 1
		}
		if (move != 0)
			xscale = move
		if (grounded && vsp > 0)
		    jumpstop = 0
		if (move != 0)
		{
		    if (movespeed < 12 && move == xscale && move != 0)
		        movespeed += 0.2
		    else if (movespeed > 5 && move != xscale && move != 0)
		        movespeed -= 0.2
		    else if (movespeed <= 10)
		        movespeed += 0.2
		    if grounded
		    {
		        if (move != 0 && (!instance_exists(obj_bumpeffect)))
		        {
		            if (xscale != move)
		            {
		                if (movespeed <= 5)
		                    xscale = move
		            }
					sprite_index = spr_firemouth
		        }
		    }
			hsp = (move * movespeed)
		}
		else if(grounded)
		{
		    hsp = 0
		    movespeed = 0
			sprite_index = spr_player_firemouthidle
		}
		if (key_slap2 && sprite_index != spr_player_firemouthdash && !grounded)
		{
		    image_index = 0
		    sprite_index = spr_player_firemouthdash
		}
		if (sprite_index == spr_player_firemouthdash)
		{
			if(movespeed < 12)
				movespeed++
			vsp = 0
			hsp = (xscale * movespeed)
		}
		if (sprite_index == spr_player_firemouthdash && floor(image_index) == (image_number - 1))
		{
		    sprite_index = spr_player_firemouthidle
		    image_index = 0
		}
		if(sprite_index = spr_player_firemouthjump && grounded)
			sprite_index = spr_player_firemouthidle
		if(sprite_index = spr_player_firemouthidle && !grounded && !key_slap2 && sprite_index != spr_player_firemouthdash)
			sprite_index = spr_player_firemouthjump
/*		if (scr_solid((x + 1), y) && xscale == 1 && hsp != 0 && (!scr_slope_ext(x + sign(hsp), y)) && sprite_index != spr_firemouthshoot)
		{
		    instance_create((x + 10), (y + 10), obj_bumpeffect)
		    xscale *= -1
		    movespeed /= 2
		}
		if (scr_solid((x - 1), y) && xscale == -1 && hsp != 0 && (!scr_slope_ext(x + sign(hsp), y)) && sprite_index != spr_firemouthshoot)
		{
		    instance_create((x - 10), (y + 10), obj_bumpeffect)
		    xscale *= -1
		    movespeed /= 2
		}*/
		if (input_buffer_jump < 8 && grounded)
		{
		    vsp = -11
			sprite_index = spr_player_firemouthjump
			with(instance_create(x, y - 23, obj_jumpdust))
				sprite_index = spr_firemouthjumpeffect
		}
		if (sprite_index == spr_firemouth)
		{
		    if (movespeed < 4)
		        image_speed = 0.35
		    else if (movespeed > 4 && movespeed < 8)
		        image_speed = 0.45
		    else
		        image_speed = 0.6
		}
		else
		    image_speed = 0.35
		if (hsp != 0 && (floor(image_index) == 0 || floor(image_index) == 2) && steppy == 0 && grounded)
		    steppy = 1
		if (floor(image_index) != 0 && floor(image_index) != 2)
		    steppy = 0
		if ((!instance_exists(obj_dashcloud)) && grounded && hsp != 0)
		{
		    with (instance_create(x, y, obj_dashcloud))
		        image_xscale = other.xscale
	}
}



}
