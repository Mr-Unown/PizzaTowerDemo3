function scr_player_forknight()
{
if (sprite_index == spr_forknight_idle || sprite_index == spr_forknight_walk)
	{
	    move = (key_left + key_right)
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (move * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((move * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((move * movespeed) + 5)
	}
	else if (sprite_index == spr_forknight_heat)
	{
		hsp = (xscale * 7)
	}
	else
	{
		move = 0	
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (move * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((move * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((move * movespeed) + 5)
	
	}
	if (grounded && move != 0 && sprite_index == spr_forknight_idle)
	    sprite_index = spr_forknight_walk
	if move = -xscale
	{
		sprite_index = spr_forknight_turn
		image_index = 0
	}
	if (sprite_index == spr_forknight_turn && floor(image_index) == (image_number - 1))
	{
		if move = 0
		sprite_index = spr_forknight_idle
		else 
		sprite_index = spr_forknight_walk
	}
	if (sprite_index == spr_forknight_heat && floor(image_index) == (image_number - 1))
			{
				image_index = 0;
				if move = 0
					sprite_index = spr_forknight_idle
				else 
					sprite_index = spr_forknight_walk
				instance_destroy(obj_heataftereffectspawner)
			}
	if (move != 0 && sprite_index == spr_forknight_walk)
	{
	    if (movespeed < 6)
	        movespeed += 0.5
	    else if (movespeed == 6)
	        movespeed = 6
	}
	else
	    movespeed = 0
	if (move != 0)
	    xscale = move
	//Heat Attack
	if key_slap2 && (sprite_index != spr_forknight_heatstart && sprite_index != spr_forknight_heat && sprite_index != spr_forknight_turn)
	{
		sprite_index = spr_forknight_heatstart
		movespeed = 0
		flash = true
		vsp = 0
		heatreset = 100
        image_index = 0
		with (instance_create(x,y,obj_heataftereffectspawner))
			{
				image_index = other.image_index
				sprite_index = other.sprite_index
				image_xscale = other.image_xscale				
			}
	}
	if (sprite_index == spr_forknight_heatstart && floor(image_index) == (image_number - 1))
	{
		image_index = 0;
		sprite_index = spr_forknight_heat;
		vsp = 0
			with instance_create(x,y,obj_forkhitbox)
			{
			ID = focused_player()
			friendly = 1
			}
	}
	if key_shoot2
	{
		state = states.ghost
		sprite_index = spr_player_ghostidle
		vsp = -6
		instance_activate_object(baddiegrabbedID)
		with (instance_create((x + random_range(-5, 5)), (y + random_range(-5, 5)), obj_balloonpop))
		{
			image_speed = 0.35
			sprite_index = spr_bigpoofclouds
			image_angle = choose(0,90,180,270)
		}		
	}
	
}