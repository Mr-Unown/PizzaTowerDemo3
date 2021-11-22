function scr_enemy_charge() {
	//Rail Shit
	var rail = 0;
	if grounded
		rail = ( place_meeting(x,y+1,obj_railh) ? -5 : (place_meeting(x,y+1,obj_railh2) ? 5 : 0) );
	else
		rail = 0	
	if (object_index == obj_peasanto)
	{
	    if (grounded || (grounded && (!place_meeting(x, y, obj_platform))))
	        hsp = (image_xscale * (movespeed * 4)) + rail
	    else
	        hsp = 0 + rail
	    image_speed = 0.35
	    if (((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1)) && (!scr_slope_ext(x + sign(hsp),y)))
	        image_xscale *= -1
	    if ((!(scr_solid((x + 15), (y + 31)) || scr_solid((x + 15), (y + 31)))) && image_xscale == 1 && movespeed > 0)
	        image_xscale *= -1
	    if ((!(scr_solid((x - 15), (y + 31)) || scr_solid((x - 15), (y + 31)))) && image_xscale == -1 && movespeed > 0)
	        image_xscale *= -1
	    if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp < 0)
	        hsp += 0.1
	    else if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp > 0)
	        hsp -= 0.1
	    sprite_index = spr_peasanto_attack
	}
	if (object_index == obj_pizzice)
	{
	    hsp = (image_xscale * movespeed) + rail
	    image_speed = 0.35
	    if (scr_solid(x + sign(image_xscale),y) && !scr_slope_ext(x + sign(hsp),y)) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
	        image_xscale *= -1
	    sprite_index = spr_pizzice_walk
	}
	if (object_index == obj_fencer)
	{
	    if (grounded || (grounded && (!place_meeting(x, y, obj_platform))))
	        hsp = (image_xscale * movespeed) + rail
	    else
	        hsp = 0 + rail
	    if (scr_solid(x + sign(image_xscale),y) && !scr_slope_ext(x + sign(hsp),y)) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
	        image_xscale *= -1
		movespeed = approach(movespeed,5,0.5)
	}
	if (object_index == obj_banditochicken)
	{
	    if (grounded || (grounded && (!place_meeting(x, y, obj_platform))))
	        hsp = (image_xscale * movespeed) + rail
	    else
	        hsp = 0 + rail
	    if (scr_solid(x + sign(image_xscale),y) && !scr_slope_ext(x + sign(hsp),y)) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
	        image_xscale *= -1
		movespeed = approach(movespeed,10,0.5)
		sprite_index = spr_banditochicken_chase
	}	
	if (object_index == obj_treasureguy)
	{
		var targetplayer =  nearest_player()
	    image_speed = 0.5
	    if (hsp != 0)
		    sprite_index = spr_treasureguy_escape
		else
			sprite_index = spr_treasureguy_escape
		if (runmovespeed < runmovespeed_max)
			runmovespeed += accel
		else
	        runmovespeed = runmovespeed_max
	    hsp = (image_xscale * runmovespeed) + rail
	    if grounded
	    {
			if scr_solid((x + sign(hsp)), y)
			{
	            if (!jumped)
				{
	                vsp = -9
					jumped = 1
				}
				else
				{
	                runmovespeed = 0
					image_xscale *= -1
					jumped = 0
				}
			}
			else
	            jumped = 0
			if place_meeting((x + sign(image_xscale)), y, obj_hallway) 
			{
				runmovespeed = 0
				image_xscale *= -1
				jumped = 0
			}
	    }
	    if (distance_to_object(targetplayer) > idle_threshold)
		{
			state = enemystates.enemywalk
			activated = false;
			sprite_index = spr_treasureguy_idle;
			movespeed = 0;
			runmovespeed = 0;
		}
	}	
	if (object_index == obj_minijohn || object_index == obj_piraneapple)
	{
		if global.coop = true
		var targetplayer = instance_nearest(x,y, obj_player)
		else
		var targetplayer = obj_player1
	    var playerposition = (x - targetplayer.x)
	    if (x != targetplayer.x && image_xscale != (-sign(playerposition)))
	    {
	        if (object_index == obj_piraneapple)
	            movespeed = 9
	        else
	            movespeed = 7
	        image_xscale = (-sign(playerposition))
	        slide = ((-image_xscale) * (movespeed + 4))
	    }
	    if (slide <= 0)
	        slide += 0.1
	    else if (slide > 0)
	        slide -= 0.1
	    hsp = ((image_xscale * movespeed) + slide) + rail
	    if (scr_solid(x + sign(image_xscale),y) && !scr_slope_ext(x + sign(hsp),y)) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
	    {
	        image_xscale *= -1
	        if (object_index != obj_piraneapple)
	            vsp = -3
	        else
	            slide /= 2
	    }
	}
	if object_index = obj_shrimpred
	{
		if global.coop = true
		var targetplayer = instance_nearest(x,y, obj_player)
		else
		var targetplayer = obj_player1
	    var playerposition = (x - targetplayer.x)
	    if (x != targetplayer.x && image_xscale != (-sign(playerposition)))
	    {
	        movespeed = 7
	        image_xscale = (-sign(playerposition))
			slide = ((-image_xscale) * (movespeed + 4))
		}
		if (slide <= 0)
	        slide += 0.1
	    else if (slide > 0)
	        slide -= 0.1
	    hsp = (image_xscale * movespeed) + slide + rail
	} 
	if object_index = obj_shrimpblue
	{
		if global.coop = true
		var targetplayer = instance_nearest(x,y, obj_player)
		else
		var targetplayer = obj_player1
	    var playerposition = (x - targetplayer.x)
		if (x != targetplayer.x && image_xscale != (-sign(playerposition)))
	    {
	        movespeed = 7
			runbuffer = 100
	        image_xscale = (-sign(playerposition))
			cautious = 1
			slide = ((-image_xscale) * (movespeed + 4))
		}
		if distance_to_object(targetplayer) < 100 && runbuffer <= 0
		{
			movespeed = 7
			runbuffer = 100
			cautious = -1
			slide = ((image_xscale) * (movespeed + 4))		
		}
		else if runbuffer <= 0 && distance_to_object(targetplayer) >= 300
		{
			movespeed = 7
			runbuffer = 100
			cautious = 1
			slide = ((-image_xscale) * (movespeed + 4))
		}
		if (slide <= 0)
	        slide += 0.1
	    else if (slide > 0)
	        slide -= 0.1
	    hsp = (((image_xscale* cautious) * movespeed) + slide) + rail
	}
	if (object_index == obj_ancho)
	{
	    hsp = (image_xscale * movespeed) + rail
	    if scr_solid(x + hsp,y)//place_meeting((x + hsp), y, obj_solid)
	    {
	        state = 106
	        stunned = 100
	    }
	}
	if (object_index == obj_ninja)
	{
	    hsp = (image_xscale * (movespeed * 2)) + rail
	    image_speed = 0.35
	    if (grounded && vsp > 0)
	        state = 102
	    if (scr_solid(x + sign(image_xscale),y) && !scr_slope_ext(x + sign(hsp),y)) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
	        image_xscale *= -1
	    if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp < 0)
	        hsp += 0.1
	    else if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp > 0)
	        hsp -= 0.1
	    sprite_index = spr_ninja_attack
	}


}
