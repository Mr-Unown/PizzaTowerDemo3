function scr_golf_hit() {
	grav = 0.35
	//if (vsp >= 10 && vsp < 20)
	//   vsp += grav
	var devvsp = (vsp / 2)
	hsp = (image_xscale * (railspeed + movespeed))
	if (grounded && (!scr_slope_ext(x, y + 1)))
	{
	    if (movespeed > 0)
	        {
                vsp = (-jspd)
                jspd /= 2
                movespeed /= 2
            }
	    if (vsp > 0.5)
	        vsp = (-devvsp)
	}
	else if (!grounded)
	{
	    if (movespeed > 10)
	        movespeed -= 0.2
	}
	if place_meeting(x, y + 1,obj_slope)
	{
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
	}
	if tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope2 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope2
	{
		var _slope = scr_tileslope(x, y + 1)
		if _slope[0] != noone
		{
			var _xscale = _slope[1]
			if (movespeed > grav && image_xscale == sign(_xscale))
		        movespeed -= 0.25
			else if (movespeed <= 10 || image_xscale == sign((-_xscale)))
			{
				image_xscale = sign((-_xscale))
				movespeed += 0.25
			}			
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
	    if ((!scr_slope_ext(x + sign(hsp), y))  && (!scr_slope_ext(x, y + 1)))
	    {
	        image_xscale *= -1
	        if (movespeed >= 0.25)
	            movespeed /= 2
	        if (railspeed >= 0.25)
	            railspeed /= 2
			if !instance_exists(bumpid)
	        with (instance_create(x, y, obj_bumpeffect))
	            other.bumpid = id
			sprite_index = spr_pizzaball_wallbounce
	    }
	    else if ((!scr_slope_ext(x + sign(hsp), y)) && scr_slope_ext(x, y + 1))
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
	if grounded && jspd > 1
	{
		sprite_index = spr_pizzaball_bounce
	    image_index = 0
	    image_speed = 0.35
	}	
	if (sprite_index == spr_pizzaball_bounce && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_pizzaball_flying
	    image_index = 0
	    image_speed = clamp(movespeed,0.35,0.8)
	}
	if (grounded && movespeed <= 0 && jspd < 1)
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
		jspd = 8
	}
	if (sprite_index == spr_pizzaball_wallbounce && floor(image_index) == (image_number - 1))
	{
	    sprite_index = spr_pizzaball_flying
	    image_index = 0
	    image_speed = clamp(movespeed,0.1,0.8)
	}
	if (stunned < 200)
	    stunned++
}
