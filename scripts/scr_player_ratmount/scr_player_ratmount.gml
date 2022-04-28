function scr_player_ratmount()
{
	if (sprite_index != spr_gustavo_bounce && sprite_index != spr_gustavo_bouncewall)
	{
	    move = (key_left + key_right)
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (xscale * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((xscale * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((xscale * movespeed) + 5)
	}
	else
	hsp = 0
	//Bouncing
	if key_attack && scr_solid(x,y+1) && sprite_index == spr_gustavo_ball
	{
	sprite_index = spr_gustavo_bounce
	vsp = 0
	image_index = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index = spr_gustavo_bounce)
	{
		if audio_is_playing(sfx_ratbounce)
		audio_stop_sound(sfx_ratbounce)
		scr_soundeffect(sfx_ratbounce)
		sprite_index = spr_gustavo_ball
		if !key_jump
			vsp = -10
			else
			vsp = -14
	}
	if (key_attack && scr_solid(x + hsp,y) && !scr_slope_ext(x + xscale,y) && sprite_index == spr_gustavo_ball)
	{
	if scr_solid(x - xscale,y)
		xscale = -xscale
	sprite_index = spr_gustavo_bouncewall
	image_index = 0
	vsp = 0
	hsp = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index = spr_gustavo_bouncewall)
	{
		if audio_is_playing(sfx_ratbounce)
    audio_stop_sound(sfx_ratbounce)
scr_soundeffect(sfx_ratbounce)

		xscale = -xscale
		vsp = -10
		sprite_index = spr_gustavo_ball
		if sprite_index != spr_gustavo_bouncewall
		{
			vsp = -10
		}
		else
		{
			vsp = 0
			hsp = 0
		}
	}
	if sprite_index = spr_gustavo_ball 
	{
		if (move = -xscale)
		movespeed -= 0.2
		else if move = xscale
		movespeed += 0.2
	}
	if !key_attack
	{
	state = states.normal
	sprite_index = spr_fall
	}
	if sprite_index != spr_gustavo_ball
		image_speed = 0.35
		else
		image_speed = (movespeed/18) * 0.8
}