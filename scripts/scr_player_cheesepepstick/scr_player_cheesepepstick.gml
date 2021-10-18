function scr_player_cheesepepstick() {
	alarm[5] = 2
	alarm[7] = 60
	hurted = 1
	//Move
	move = (key_left + key_right)
	if (move != 0)
	{
	    if (movespeed < 7)
	        movespeed += 0.5
	    else if (movespeed == 7)
	        movespeed = 7
	}
	else
	    movespeed = 0
	//Spaghetti Code incoming
	//Stick Ceiling
	if place_meeting(x, (y - 1), obj_solid) && sprite_index = spr_cheesepep_stickceilling
	{
	    vsp = 0
		hsp = -(move * movespeed)
		if hsp != 0
		xscale = sign(hsp)
		//Wall Stick
		if place_meeting(x + sign(hsp),y, obj_solid)
		{
			if hsp != 0
			xscale = sign(hsp)
			_direction *= -1
			hsp = 0
			vsp = 0
			sprite_index = spr_cheesepep_stickwall
			vsp = (-(move * movespeed)) * _direction	
		} //Sideways stick
		else if !scr_solid(x + sign(hsp), y - 1) && place_meeting(x, y - 1, obj_solid) && !place_meeting(x + sign(hsp), y - 1, obj_solid)
		{
			x = x + sign(hsp)
			y = y - 3
			hsp = 0
			vsp = 0
			if hsp != 0
			xscale = sign(-hsp)
			sprite_index = spr_cheesepep_stickwall
		}	

	} //Stick Wall
	else if (place_meeting((x + xscale), y, obj_solid)) && sprite_index = spr_cheesepep_stickwall
	{
		hsp = 0
	    vsp = 0	
		//Xscale
	    if place_meeting((x + 1), y, obj_solid)
	        xscale = 1
	    else
	        xscale = -1	
		//Move up and Down
		vsp = (-(move * movespeed)) * _direction
		//Edge
		if !place_meeting(x + xscale, y - 1, obj_solid) && place_meeting(x + xscale, y, obj_solid)
		{
			y = y - abs(vsp)
			x = x + (xscale * 2)
			vsp = 0
			hsp = 0
			hsp = (move * movespeed)			
			state = 13
			sprite_index = spr_cheesepep_walk
		}
		else if !place_meeting(x + xscale, y + 1, obj_solid) && place_meeting(x + xscale, y, obj_solid)
		{
			y = y + abs(vsp)
			x = x + (xscale * 2)
			vsp = 0
			xscale *= -1
			sprite_index = spr_cheesepep_stickceilling
			hsp = -(move * movespeed)
		}	
		else if place_meeting(x, y - 1, obj_solid)
		{
			vsp = 0
			xscale *= -1
			sprite_index = spr_cheesepep_stickceilling
			hsp = -(move * movespeed)
		}
		else if place_meeting(x, y + 1, obj_solid)
		{
			hsp = (move * movespeed)			
			xscale *= -1
			state = 13
			sprite_index = spr_cheesepep_walk
		}	
	}
	if (key_jump && sprite_index = spr_cheesepep_stickwall)
	{
	    scr_soundeffect(sfx_jump)
	    vsp = -9
	    image_index = 0
	    sprite_index = spr_cheesepep_jump
	    state = 13

	}
	if (key_jump && sprite_index = spr_cheesepep_stickceilling)
	{
	    scr_soundeffect(sfx_jump)
	    vsp = 1
	    image_index = 0
	    sprite_index = spr_cheesepep_jump
	    state = 13

	}
	//Cloud Effect
	if ((!instance_exists(obj_cloudeffect)) && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, (y + 43), obj_cloudeffect)
	image_speed = 0.35



}
