function scr_player_ratmount()
{
image_speed = 0.35
image_xscale = xscale
if (sprite_index != spr_gustavo_bounce && sprite_index != spr_gustavo_ball && sprite_index != spr_gustavo_bouncewall)
	{
		bouncehsp = 9 * xscale
		bouncevsp = -9
	    move = (key_left + key_right)
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (move * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((move * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((move * movespeed) + 5)
		if key_jump
			input_buffer_jump = 0
		if (grounded && vsp > 0)
			jumpstop = 0
	}
	if (input_buffer_jump < 8 && vsp > 0 && grounded && (sprite_index == spr_gustavo_idle))
	{
	    image_index = 0
	    sprite_index = spr_gustavo_jump
		vsp = -13
	}
	if (move != 0)
	    xscale = move
	if (move != 0)
	{
	    if (movespeed < 11)
	        movespeed += 0.5
	    else if (movespeed == 11)
	        movespeed = 11
	}
	if grounded
	{
	if movespeed >= 0 
	sprite_index = spr_gustavo_idle
	else
	sprite_index = spr_gustavo_move
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_gustavo_jump) 
	sprite_index = spr_gustavo_fall
	if (sprite_index == spr_gustavo_fall && scr_solid(x,y+1) && vsp > 0)
	sprite_index = spr_gustavo_land
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_gustavo_land) 
	{
	if move = 0
		{
		sprite_index = spr_gustavo_idle
		image_index = 0
		}
		else if move = 1 && grounded
		{
			sprite_index = spr_gustavo_move
		}
	}
	//Bouncing
	if key_attack && scr_solid(x,y+1) && (sprite_index == spr_gustavo_idle || sprite_index == spr_gustavo_ball)
	{
	sprite_index = spr_gustavo_bounce
	image_index = 0
	vsp = 0
	hsp = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index = spr_gustavo_bounce)
	{
		if bouncevsp >= -18
		bouncevsp = bouncevsp - 3
		bouncehsp = (bouncehsp + 1)
		sprite_index = spr_gustavo_ball
		if sprite_index != spr_gustavo_bounce
		{
			vsp = bouncevsp
			hsp = bouncehsp * image_xscale
		}
		else
		{
			vsp = 0
			hsp = 0
		}
	}
	if (key_attack && scr_solid(x + xscale,y) && !scr_slope_ext(x + xscale,y) && sprite_index == spr_gustavo_ball)
	{
	sprite_index = spr_gustavo_bouncewall
	image_index = 0
	vsp = 0
	hsp = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index = spr_gustavo_bouncewall)
	{
		image_xscale = -image_xscale
		if bouncevsp >= -18
		bouncevsp = bouncevsp - 3
		bouncehsp = (bouncehsp + 3)
		sprite_index = spr_gustavo_ball
		if sprite_index != spr_gustavo_bouncewall
		{
			vsp = bouncevsp
			hsp = bouncehsp * image_xscale
		}
		else
		{
			vsp = 0
			hsp = 0
		}
	}
	if !key_attack && sprite_index == spr_gustavo_ball && scr_solid(x,y+1)
	{
	sprite_index = spr_gustavo_land
	}
	
}