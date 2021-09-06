function scr_golf_idle() {
	grav = 0.5
	if (vsp >= 10 && vsp < 20)
	    vsp += grav
	var devvsp = (vsp / 2)
	hsp = (image_xscale * (railspeed + movespeed))
	if (grounded && (!instance_place(x, (y + 1), obj_slope)))
	{
	    if (movespeed > 0)
	        movespeed -= 0.2
	    if (vsp > 0.5)
	        vsp = (-devvsp)
	}
	else if (!grounded)
	{
	    if (movespeed > 10)
	        movespeed -= 0.2
	}
	with (instance_place(x, (y + 1), obj_slope))
	{
	    if (other.movespeed > other.grav && other.image_xscale == sign(image_xscale))
	        other.movespeed -= 0.25
	    else if (other.movespeed <= 10 || other.image_xscale == sign((-image_xscale)))
	    {
	        other.image_xscale = sign((-image_xscale))
	        other.movespeed += 0.25
	    }
	}
	var railmove = 0
	if place_meeting(x, (y + 1), obj_railh)
	{
	    railmove = -1
	    if (movespeed > 5 && image_xscale == (-railmove))
	        movespeed -= 1
	    else if (movespeed < 5 || image_xscale == sign(railmove))
	    {
	        movespeed = 0
	        image_xscale = sign(railmove)
	        if (railspeed < 5)
	            railspeed += 1
	    }
	}
	else if place_meeting(x, (y + 1), obj_railh2)
	{
	    railmove = 1
	    if (movespeed > 5 && image_xscale == (-railmove))
	        movespeed -= 1
	    else if (movespeed < 5 || image_xscale == sign(railmove))
	    {
	        movespeed = 0
	        image_xscale = sign(railmove)
	        if (railspeed < 5)
	            railspeed += 1
	    }
	}
	else
	{
	    railmove = 0
	    if grounded
	        railspeed = 0
	    else if (railspeed > 0)
	        railspeed -= 0.25
	}
	if ((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1) || place_meeting((x + hsp), y, obj_hallway))
	{
	    if ((!place_meeting((x + sign(hsp)), y, obj_slope)) && (!instance_exists(bumpid)) && (!place_meeting(x, (y + 1), obj_slope)))
	    {
	        image_xscale *= -1
	        if (movespeed >= 0.25)
	            movespeed /= 2
	        if (railspeed >= 0.25)
	            railspeed /= 2
	        with (instance_create(x, y, obj_bumpeffect))
	            other.bumpid = id
	    }
	    else if ((!place_meeting((x + sign(hsp)), y, obj_slope)) && (!instance_exists(bumpid)) && place_meeting(x, (y + 1), obj_slope))
	    {
	        image_xscale *= -1
	        if (movespeed > 0.25)
	            movespeed /= 2
	        if (railspeed >= 0.25)
	            railspeed /= 2
	        vsp = ((-movespeed) + (-railspeed))
	        with (instance_create(x, y, obj_bumpeffect))
	            other.bumpid = id
	    }
	}
	if (sprite_index == spr_pizzaball_flying && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_pizzaball_flyingstop
	    image_index = 0
	}
	if (sprite_index == spr_pizzaball_flyingstop && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_pizzaball_stun
	    image_index = 0
	}
	if (sprite_index == spr_pizzaball_stun && stunned <= 0 && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_pizzaball_idle
	    vsp = -5
	    image_index = 0
	    stunned = 0
	}
	if (sprite_index == spr_pizzaball_walk && grounded)
	    sprite_index = spr_pizzaball_idle
	if (obj_player.state == states.freefallland && grounded)
	{
	    if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	    {
	        sprite_index = spr_pizzaball_walk
	        vsp = -6
	    }
	}
	if (sprite_index == spr_pizzaball_walk)
	    image_speed = 0.45
	else if (sprite_index == spr_pizzaball_flyingstop)
	    image_speed = 0.2
	else
	    image_speed = 0.35
	if (stunned > 0)
	    stunned--
	if (thrown == 0)
	{
	    with (obj_camera)
	        golf = 0
	}



}
