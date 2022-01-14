function scr_player_ratmount()
{
image_speed = 0.35
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
		if audio_is_playing(sfx_ratbounce)
    audio_stop_sound(sfx_ratbounce)
scr_soundeffect(sfx_ratbounce)
		if bouncevsp >= -18
		bouncevsp = bouncevsp - 3
		bouncehsp = bouncehsp + (2 * xscale)
		sprite_index = spr_gustavo_ball
		if sprite_index != spr_gustavo_bounce
		{
			vsp = bouncevsp
			hsp = bouncehsp
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
		if audio_is_playing(sfx_ratbounce)
    audio_stop_sound(sfx_ratbounce)
scr_soundeffect(sfx_ratbounce)
		bouncehsp = -bouncehsp
		xscale = -xscale
		if bouncevsp >= -18
		bouncevsp = bouncevsp / 2
		sprite_index = spr_gustavo_ball
		if sprite_index != spr_gustavo_bouncewall
		{
			vsp = bouncevsp
			hsp = bouncehsp 
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
	state = states.normal
	}
	//rat groundpound thing idk
	if !grounded && (sprite_index = spr_gustavo_jump || sprite_index == spr_gustavo_fall) && key_down2 && !instance_exists(obj_brickbullet)
	{
		sprite_index = spr_gustavo_downshoot
		image_index = 0
		input_buffer_jump = 0
		vsp = -11
		instance_create(x,y,obj_brickbullet)
	}
	if (floor(image_index) == (image_number - 1) && sprite_index = spr_gustavo_downshoot) 
		sprite_index = spr_gustavo_downshootfall
	if key_slap2 && grounded && suplexmove = 0 && sprite_index != spr_gustavo_dash && sprite_index != spr_gustavo_hauling
	{
			suplexmove = 1
			if (movespeed < 11 && grounded)
	        movespeed += 0.5
			image_index = 0
			sprite_index = spr_gustavo_dash
	        if (!instance_exists(crazyruneffectid))
	        {
				with (instance_create(x, y, obj_crazyrunothereffect))
				{
					playerid = other.object_index
					other.crazyruneffectid = id
				}
			}
		}
		if (floor(image_index) == (image_number - 1) && (sprite_index = spr_gustavo_dash || sprite_index = spr_gustavo_shoot)) 
			{
			sprite_index = spr_gustavo_idle
			suplexmove = 0
			}
			if key_slap2 && sprite_index == spr_gustavo_hauling
			{
			sprite_index = spr_gustavo_shoot
			
			}
			if sprite_index != spr_gustavo_bouncewall || sprite_index != spr_gustavo_ball || sprite_index != spr_gustavo_bounce
			state = states.normal
}