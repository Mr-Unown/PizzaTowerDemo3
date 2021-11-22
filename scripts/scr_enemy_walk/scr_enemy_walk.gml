function scr_enemy_walk() {
	//What the fuck does this mean
	var _movespeed = movespeed + ((clamp(global.heatmeter,0,3.25) ) * sign(movespeed)), _image_speed = 0.35 + ((global.heatmeter) * 0.05)
	/*
	if (grounded && (!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (image_xscale * _movespeed)
	else if ((sprite_index == spr_indiancheese_land || sprite_index == spr_indiancheese_jump) && (!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (image_xscale * _movespeed)
	else if object_index = obj_ufoolive
		hsp = (image_xscale * _movespeed)
	else if (object_index != obj_ancho)
	    hsp = 0	
	*/

	if (object_index != obj_spitcheese && object_index != obj_ninja && object_index != obj_trash && object_index != obj_fencer && object_index != obj_rancher && object_index != obj_banditochicken && object_index != obj_ancho)
		hsp = (image_xscale * _movespeed)	
	else if (object_index == obj_ancho)
		hsp = 0	
	//Rail Shit
	var rail = 0;
	rail = ( place_meeting(x,y+1,obj_railh) ? -5 : (place_meeting(x,y+1,obj_railh2) ? 5 : 0) )
	if grounded
		hsp += rail;
	
	if (object_index != obj_indiancheese && object_index != obj_spitcheese)
	    sprite_index = walkspr
	else if (object_index == obj_spitcheese)
	{
	}
	else if (sprite_index == scaredspr)
	    sprite_index = walkspr
	image_speed = _image_speed
	if (scr_solid(x + sign(image_xscale),y) && (!scr_slope_ext(x + sign(image_xscale),y)  ) ) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
	{
	    if grounded
	    {
	        if (object_index == obj_forknight)
	        {
	            image_xscale *= -1
	            image_index = 0
	            sprite_index = spr_forknight_turn
	            state = 94
	        }
			else if (object_index == obj_noisey)
	        {
	            image_xscale *= -1
	            image_index = 0
	            sprite_index = spr_noisey_turn
	            state = 94
	        }
	        else if grounded
	            image_xscale *= -1
	    }
		else if object_index = obj_ufoolive && (!scr_slope_ext(x + sign(image_xscale),y)  ) 
			image_xscale *= -1
	}
	if (object_index != obj_ancho) && object_index != obj_ufoolive
	{
	    if (!(scr_solid((x + (image_xscale * 15)), (y + 31)) || place_meeting((x + (image_xscale * 15)), (y + 31), obj_platform)))
	    {
	        if (movespeed > 0 && grounded)
	        {
	            if (object_index == obj_ninja)
	            {
	                vsp = -11
	                image_index = 0
	                image_xscale = (-sign((x - obj_player.x)))
	                state = 96
	            }
	            else if (object_index == obj_forknight)
	            {
	                image_xscale *= -1
	                image_index = 0
	                sprite_index = spr_forknight_turn
	                state = 94
	            }
				else if (object_index == obj_noisey)
				{
					image_xscale *= -1
					image_index = 0
					sprite_index = spr_noisey_turn
					state = 94
				}			
	            else
	                image_xscale *= -1
	        }
	    }
	}



}
