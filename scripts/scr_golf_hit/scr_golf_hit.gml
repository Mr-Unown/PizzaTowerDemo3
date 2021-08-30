function scr_golf_hit() {
	grav = 0.35
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
	if ((scr_solid((x + sign(hsp)), y) || place_meeting((x + hsp), y, obj_hallway)) && (!(place_meeting((x + hsp), y, obj_destructibles))))
	{
	    if ((!place_meeting((x + sign(hsp)), y, obj_slope))  && (!place_meeting(x, (y + 1), obj_slope)))
	    {
	        image_xscale *= -1
	        if (movespeed >= 0.25)
	            movespeed /= 2
	        if (railspeed >= 0.25)
	            railspeed /= 2
			if !instance_exists(bumpid)
	        with (instance_create(x, y, obj_bumpeffect))
	            other.bumpid = id
	    }
	    else if ((!place_meeting((x + sign(hsp)), y, obj_slope)) && place_meeting(x, (y + 1), obj_slope))
	    {
	        image_xscale *= -1
	        if (movespeed > 0.25)
	            movespeed /= 2
	        if (railspeed >= 0.25)
	            railspeed /= 2
	        vsp = ((-movespeed) + (-railspeed))
			if !instance_exists(bumpid)
	        with (instance_create(x, y, obj_bumpeffect))
	            other.bumpid = id
	    }
	}
	if ((movespeed <= 0 || hsp == 0) && grounded)
	{
	    thrown = 0
	    state = 98
	    intensity = 0
	    grabbed = 0
	    thrown = 0
	    hit = 0
	    poweringup = 0
	    going_up = 1
	}
	if (grounded && movespeed <= 5)
	{
	    if (sprite_index == spr_pizzaball_flying)
	    {
	        sprite_index = spr_pizzaball_flyingstop
	        image_index = 0
	        image_speed = 0.2
	    }
	}
	if (sprite_index == spr_pizzaball_flyingstop && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_pizzaball_stun
	    image_index = 0
	    image_speed = 0.35
	}
	if (stunned < 200)
	    stunned++



}
