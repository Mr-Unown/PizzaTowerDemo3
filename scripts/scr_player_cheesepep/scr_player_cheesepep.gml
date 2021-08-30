function scr_player_cheesepep() {
	//Variables
	mask_index = spr_crouchmask

	key_particles = 0
	mach2 = 0
	alarm[5] = 2
	alarm[7] = 60
	hurted = 1
	//Jump
	if key_jump
	    input_buffer_jump = 0
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	//Movement	
	move = (key_left + key_right)
	if grounded
	{
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (move * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((move * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((move * movespeed) + 5)
	}
	else 
		hsp = (move * movespeed)
	//Direction
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 0
	}
	//Walkspr
	if (grounded && move != 0 && sprite_index == spr_cheesepep_idle)
	    sprite_index = spr_cheesepep_walk
	else if (grounded && move == 0 && sprite_index == spr_cheesepep_walk)
	    sprite_index = spr_cheesepep_idle
	//Jumpstart
	if (input_buffer_jump < 8 && vsp > 0 && grounded && (sprite_index != spr_cheesepep_land && sprite_index != spr_cheesepep_jumpstart))
	{
	    scr_soundeffect(sfx_jump)
	    image_index = 0
	    sprite_index = spr_cheesepep_jumpstart
	}
	//Jump
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_cheesepep_jumpstart)
	{
	    vsp = -11
		movespeed = 4
	    sprite_index = spr_cheesepep_jump
	}
	//Fall
	if ((floor(image_index) == (image_number - 1) && sprite_index == spr_cheesepep_jump) || ((!grounded) && sprite_index != spr_cheesepep_jump) || (vsp > 0 && sprite_index == spr_cheesepep_jump))
	    sprite_index = spr_cheesepep_fall
	//Land
	if (sprite_index == spr_cheesepep_fall && grounded)
	{
	    image_index = 0

	    freefallstart = 0
	    momemtum = 0
		with instance_create(x, y, obj_landcloud)
		{
			playerid = other.id
			image_xscale = other.xscale
		}	
	    sprite_index = spr_cheesepep_land
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_cheesepep_land)
	    sprite_index = spr_cheesepep_idle
	//Move cont.
	if (move != 0)
	    xscale = move
	if (move != 0)
	{
	    if (movespeed < 7)
	        movespeed += 0.5
	    else if (movespeed == 7)
	        movespeed = 7
	}
	else
	    movespeed = 0
	//Stick to Walls and Such
	if place_meeting((x + hsp), y, obj_solid) && !place_meeting((x + sign(hsp)), y, obj_slope)
	{
		state = 14
		sprite_index = spr_cheesepep_stickwall	
		if xscale = 1
		_direction = 1
		else
		_direction = -1	
	}
	//Stick to Walls when falling
	if move != 0 && !scr_solid(x + sign(hsp),y + 1) && grounded && place_meeting(x, y + 1, obj_solid) && !place_meeting(x + sign(hsp), y + 1, obj_solid) && !place_meeting((x + sign(hsp)), y + 1, obj_slope) && !place_meeting((x + sign(hsp)), y, obj_slope)
	{
		x = x + sign(hsp)
		y = y + 3
		hsp = 0
		vsp = 0
		state = 14
		sprite_index = spr_cheesepep_stickwall
		xscale *= -1
		if xscale = 1
		_direction = 1
		else
		_direction = -1
	}




	//Animation speed
	if (move != 0)
	{
	    if (movespeed < 1)
	        image_speed = 0.15
	    else if (movespeed > 1 && movespeed < 4)
	        image_speed = 0.35
	    else
	        image_speed = 0.6
	}
	else
	    image_speed = 0.35
	//Intro Animation
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_cheesepep_intro)
	    sprite_index = spr_cheesepep_idle
	//Cloud Effect
	if ((!instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, (y + 43), obj_cloudeffect)



}
