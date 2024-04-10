function scr_player_knightpepslopes() {
	var _movespeed = movespeed + clamp(round(knightslidespeed/32),0,7)
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (xscale * _movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * _movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * _movespeed) + 5)
	alarm[5] = 2
	alarm[7] = 60
	hurted = 1
	if (sprite_index == spr_knightpepdownslope)
	    movespeed = clamp(movespeed,15,movespeed + 100)
	if place_meeting(x,y + 1,obj_slope) && grounded = true
	{
		var slope = instance_place(x, y + 1,obj_slope) 
		if sign(slope.image_xscale) != xscale
			sprite_index = spr_knightpepdownslope
		else
			sprite_index = spr_knightpepcharge
	}
	else if tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope2 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope2
	{
		var _slope = scr_tileslope(x, y + 1)
		if _slope[0] != noone
		{
			var _xscale = _slope[1]
			if sign(_xscale) != xscale
				sprite_index = spr_knightpepdownslope
			else
				sprite_index = spr_knightpepcharge			
		}

	}	
	else if grounded = true
		sprite_index = spr_knightpepcharge
	//Jump
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}

	if (grounded)
	    jumpstop = 0
	
	if (key_jump && grounded) 
	{
	    scr_soundeffect(sfx_jump);
	    vsp = -10;
		movespeed = clamp(movespeed - 2,13,100)
		knightslidespeed = clamp(knightslidespeed - 64,0,500);
	    sprite_index = spr_knightpepslidejump;	
	}
	//Groundpound Again
	if !grounded && key_down2
	{	
		knightmaxy = y;
		knightroomy = y;
		image_index = 0
		sprite_index = spr_knightpepattack;
		vsp = -5;
		knightpoundbuffer = 0;
		state = states.knightpepattack
		flash = true
		with (instance_create(x,y,obj_heataftereffectspawner))
		{
			image_index = other.image_index
			sprite_index = other.sprite_index
			image_xscale = other.image_xscale				
		}	
	}

	if sprite_index = spr_knightpepslidejump && floor(image_index) >= image_number - 1
		sprite_index = spr_knightpepfall
	//Bump into wall
	if ( ( scr_slope() && scr_solid(x+ sign(hsp),y - 2) && !scr_slope_ext(x + sign(hsp), y)) || scr_solid(x+ sign(hsp),y) && !scr_slope_ext(x + sign(hsp), y) && !scr_slope() ) && (!place_meeting((x + sign(hsp)), y, obj_metalblock) && !place_meeting((x + sign(hsp)), y, obj_metalblockhard) && (!place_meeting((x + sign(hsp)), y, obj_destructibles))) 
	{
	    if (character == "P")
	    {
		#region Peppino
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 0
	            sprite_index = spr_knightdebris
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 1
	            sprite_index = spr_knightdebris
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 2
	            sprite_index = spr_knightdebris
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 3
	            sprite_index = spr_knightdebris
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 4
	            sprite_index = spr_knightdebris
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 5
	            sprite_index = spr_knightdebris
	        }
		#endregion
	    }
	    else if (character == "N")
	    {
		#region Noise
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 0
	            sprite_index = spr_playerN_knightarmor
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 1
	            sprite_index = spr_playerN_knightarmor
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 2
	            sprite_index = spr_playerN_knightarmor
	        }
	        with (instance_create(x, y, obj_knightdebris))
	        {
	            image_index = 3
	            sprite_index = spr_playerN_knightarmor
	        }
		#endregion
	    }
		else if (character == "not in the game")
	    {
		#region  dead pizzelle
					for (var i = 0; i < sprite_get_number(spr_playernot in the game_knightdebris) - 1; ++i) 
					{
						with (instance_create(x, y, obj_knightdebris))
						{
							image_index = i
							sprite_index = spr_playernot in the game_knightdebris
						}
					}
				#endregion
	    }			
	    else
	    {
	        repeat (6)
	            instance_create(x, y, obj_metaldebris)
	    }
		hsp = 5 * -xscale
	    vsp = -3
	    scr_soundeffect(sfx_bumpwall)
	    scr_soundeffect(sfx_loseknight)
	    image_index = 0
	    flash = 1
	    state = 72
	}
	if (movespeed <= 0 && sprite_index == spr_knightpepcharge)
	{
	    sprite_index = spr_knightpepidle
	    state = 24
	}
	image_speed = 0.4



}
