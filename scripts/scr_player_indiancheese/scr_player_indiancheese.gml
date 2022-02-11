function scr_player_indiancheese()
{
if (sprite_index != spr_indiancheese_spotted)
	{
	    move = (key_left + key_right)
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (move * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((move * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((move * movespeed) + 5)
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
	if (grounded)
	    sprite_index = spr_indiancheese_walk
	if key_jump2 && sprite_index = spr_indiancheese_walk

	{
		input_buffer_jump = 0
		vsp = -11
		instance_create(x, y, obj_highjumpcloud2)
		sprite_index = spr_indiancheese_jump
		image_index = 0
	}
	if ((!grounded) && sprite_index == spr_indiancheese_jump && floor(image_index) == (image_number - 1))
    image_speed = 0
	if sprite_index = spr_indiancheese_jump && grounded = true && floor(image_index) == (image_number - 1)
		sprite_index = spr_indiancheese_land
	if (move != 0 && sprite_index == spr_indiancheese_walk || sprite_index == spr_indiancheese_jump)
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
	if sprite_index != spr_indiancheese_jump
		image_speed = .35
}