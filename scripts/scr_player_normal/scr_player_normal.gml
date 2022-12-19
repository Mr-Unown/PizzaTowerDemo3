function scr_player_normal() {
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 2
	    facehurt = 0
	}
	mach2 = 0
	move = (key_left + key_right)
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (move * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((move * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((move * movespeed) + 5)
	if (machslideAnim == 0 && landAnim == 0 && shotgunAnim == 0)
	{
	    if (move == 0)
	    {
	        if (idle < 400)
	            idle++
	        if (idle >= 300 && floor(image_index) == (image_number - 1))
	        {
	            shotgunAnim = 0
	            facehurt = 0
	            idle = 0
	            image_index = 0
	        }
			if sprite_index != spr_caneidle
			{
		        if (idle >= 300 && sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3)
		        {
			
		            randomise()
		            idleanim = random_range(0, 100)
		            if (idleanim <= 33)
		                sprite_index = spr_idle1
		            else if (idleanim > 33 && idleanim < 66)
		                sprite_index = spr_idle2
		            else if (idleanim > 66)
		                sprite_index = spr_idle3
		            image_index = 0
		        }
		        if (idle < 300)
		        {
		            if (facehurt == 0)
		            {
		                if (windingAnim < 1800 || angry == 1)
		                {
		                    start_running = 1
		                    movespeed = 0
                    
		                    if (angry == 1)
		                        sprite_index = spr_player_3hpidle
							if global.cane == 1
								sprite_index = spr_caneidle
		                    else
		                        sprite_index = spr_idle
		                }
		                else if (character == "P")
		                {
		                    idle = 0
		                    windingAnim--
		                    sprite_index = spr_player_winding
		                }
		            }
		            else if (facehurt == 1 && character == "P")
		            {
		                windingAnim = 0
		                if (sprite_index != spr_player_facehurtup && sprite_index != spr_player_facehurt)
		                    sprite_index = spr_player_facehurtup
		                if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_facehurtup)
		                    sprite_index = spr_player_facehurt
		            }
		        }
			}
	    }
	    if (move != 0)
	    {
	        machslideAnim = 0
	        idle = 0
	        facehurt = 0
	        //if (global.playerhealth == 1)
	            //sprite_index = spr_hurtwalk
	         if (angry == 1)
	            sprite_index = spr_player_3hpwalk
			if global.cane == 1
				sprite_index = spr_canewalk
	        else
	            sprite_index = spr_move
	    }
	    if (move != 0)
	        xscale = move
	}



	if (landAnim == 1)
	{
	    if (shotgunAnim == 0)
	    {
	        if (move == 0)
	        {
	            movespeed = 0
	            sprite_index = spr_land
	            if (floor(image_index) == (image_number - 1))
	                landAnim = 0
	        }
	        if (move != 0)
	        {
	            sprite_index = spr_land2
	            if (floor(image_index) == (image_number - 1))
	            {
	                landAnim = 0
					if global.cane == 0
						sprite_index = spr_move
					else
						sprite_index = spr_canewalk
	                image_index = 0
	            }
	        }
	    }
	    if (shotgunAnim == 1)
	    {
	        sprite_index = spr_shotgun_land
	        if (floor(image_index) == (image_number - 1))
	        {
	            landAnim = 0
					if global.cane == 0
						sprite_index = spr_move
					else
						sprite_index = spr_canewalk
	            image_index = 0
	        }
	    }
	}
	if (machslideAnim == 1)
	{
	    sprite_index = spr_machslideend
	    if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideend)
	        machslideAnim = 0
	}
	if (sprite_index == spr_player_shotgun && floor(image_index) == (image_number - 1))
	    sprite_index = spr_shotgun_idle
	if (landAnim == 0)
	{
	    if (shotgunAnim == 1 && move == 0 && sprite_index != spr_player_shotgun)
	        sprite_index = spr_shotgun_idle
	    else if (shotgunAnim == 1 && sprite_index != spr_player_shotgun)
	        sprite_index = spr_shotgun_walk
	}
	if (scr_solid((x + sign(hsp)), y) && xscale == 1 && move == 1 && (!place_meeting((x + 1), y, obj_slope)))
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && xscale == -1 && move == -1 && (!place_meeting((x - 1), y, obj_slope)))
	    movespeed = 0
	jumpstop = 0
	if ((!grounded) && (!key_jump))
	{
	    if (shotgunAnim == 0)
	        sprite_index = spr_fall
	    else
	        sprite_index = spr_shotgun_fall
	    jumpAnim = 0
	    state = 51
	    image_index = 0
	}
	if character == "P"
	{
		if (key_attack && grounded && (!(scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + xscale), y, obj_slope)))) && (!(scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + xscale), y, obj_slope)))))
		{
		    mach2 = 0
		    movespeed = 0
		    sprite_index = spr_mach1
		    jumpAnim = 1
		    state = 62
		    image_index = 0
		}
	}
	if character == "DEEZNUTS"
	{
		if (key_attack && grounded && (!(scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + xscale), y, obj_slope)))) && (!(scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + xscale), y, obj_slope)))))
		{
		    mach2 = 0
		    movespeed = 0
		    sprite_index = spr_null
		    jumpAnim = 1
		    state = 999
		    image_index = 0
		}
	}
	/*if character == "DEEZNUTS"
	{
		if (key_attack && grounded && (!(scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + xscale), y, obj_slope)))) && (!(scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + xscale), y, obj_slope)))))
		{
		    mach2 = 0
		    movespeed = 0
		    sprite_index = spr_null_handstandjumpbegin
		    jumpAnim = 1
		    state = 62
		    image_index = 0
		}
	}*/
	if (key_jump && grounded && (!key_down))
	{
	    scr_sound(sound_jump)
	    sprite_index = spr_jump
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgun_jump
	    instance_create(x, y, obj_highjumpcloud2)
	    vsp = -11
	    state = 51
	    image_index = 0
	    jumpAnim = 1
	}
	if (grounded && input_buffer_jump < 8 && (!key_down) && (!key_attack) && vsp > 0)
	{
	    scr_sound(sound_jump)
	    sprite_index = spr_jump
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgun_jump
	    instance_create(x, y, obj_highjumpcloud2)
	    stompAnim = 0
	    vsp = -11
	    state = 51
	    jumpAnim = 1
	    jumpstop = 0
	    image_index = 0
	    freefallstart = 0
	}
	if ((key_down && grounded) || scr_solid(x, (y - 3)))
	{
	    state = 59
	    landAnim = 0
	    crouchAnim = 1
	    image_index = 0
	    idle = 0
	}
	if (move != 0)
	{
	    if (movespeed < 7)
	        movespeed += 0.5
	    else if (floor(movespeed) == 7)
	        movespeed = 7
	}
	else
	    movespeed = 0
	if (movespeed > 7)
	    movespeed -= 0.1
	if (key_slap2 && shotgunAnim == 1 && (!instance_exists(obj_cutscene_upstairs)))
	{
	    global.ammo -= 1
	    instance_create(x, y, obj_shotgunbullet)
	    sprite_index = spr_player_shotgun
	    state = 31
	    image_index = 0
	}
	momemtum = 0
	if (move != 0)
	{
	    xscale = move
	    if (movespeed < 3 && move != 0)
	        image_speed = 0.35
	    else if (movespeed > 3 && movespeed < 6)
	        image_speed = 0.45
	    else
	        image_speed = 0.6
	}
	else
	    image_speed = 0.35
	if (key_slap2 && (!key_down) && suplexmove == 0 && shotgunAnim == 0 && global.cane != 1)
	{
	    scr_sound(sound_suplex1)
	    instance_create(x, y, obj_slaphitbox)
	    suplexmove = 1
	    vsp = 0
	    instance_create(x, y, obj_jumpdust)
	    image_index = 0
	    sprite_index = spr_suplexdash
	    state = 15
	    if (character == "DEEZNUTS")
	        vsp = -5
	}
	/*if (key_slap2 && (!key_down) && suplexmove == 0 && shotgunAnim == 0)
	{
	    scr_sound(sound_suplex1)
	    instance_create(x, y, obj_slaphitbox)
	    suplexmove = 1
	    vsp = 0
	    instance_create(x, y, obj_jumpdust)
	    image_index = 0
	    sprite_index = spr_canesuplex
	    state = 15
	    if (character == "DEEZNUTS")
	        vsp = -5
	}*/
	else if (key_shoot2) && !key_up
	{
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = 44
		//scr_sound(sound_taunt)
	    image_index = random_range(0, 7)
	    sprite_index = spr_player_taunt
	    instance_create(x, y, obj_taunteffect)
	}
	/*if (key_shoot2 && (!key_up))
	{
	    sprite_index = spr_player_pistol
	    state = 32
	    image_index = 0
	    shoot = 1
	}
	else if (key_up && key_shoot2 && move == 0)
	{
	    sprite_index = spr_player_shootup
	    state = 32
	    image_index = 0
	    shoot = 1
	}
	else if (key_up && key_shoot2 && move != 0)
	{
	    sprite_index = spr_player_shootdiagonal
	    state = 32
	    image_index = 0
	    shoot = 1
	}
	*/
	if ((!instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, (y + 43), obj_cloudeffect)
	if ((!instance_exists(obj_cloudeffect)) && grounded && move != 0 && (sprite_index == spr_player_downslopes || sprite_index == spr_player_upslopes))
	    instance_create(x, (y + 43), obj_cloudeffect)
	/*if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
	{
	    scr_sound(7)
	    steppy = 1
	}
	if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
	    steppy = 0*/
		if key_slap2 && key_up
		{
		state = 101	
		grounded = 0
		vsp = -15
		sprite_index = spr_player_uppercutbegin
		}
	
	
	if global.cane == 1
	{
		if (scr_solid((x + sign(hsp)), y) && ((xscale == 1) && ((move == 1) && (!place_meeting((x + 1), y, obj_slope)))))
			movespeed = 0
		if (scr_solid((x + sign(hsp)), y) && ((xscale == -1) && ((move == -1) && (!place_meeting((x - 1), y, obj_slope)))))
			movespeed = 0
	
		if key_jump2 && grounded && canrebound = 0
		{
			sprite_index = spr_player_canefall
			vsp = -15
			canrebound = 1
			state = 51
		}
		if (key_slap2 && (!key_down) && suplexmove == 0 && shotgunAnim == 0)
		{
		    scr_sound(sound_suplex1)
		    instance_create(x, y, obj_slaphitbox)
		    suplexmove = 1
		    vsp = 0
		    instance_create(x, y, obj_jumpdust)
		    image_index = 0
		    sprite_index = spr_canesuplex
		    state = 15
		    if (character == "DEEZNUTS")
		        vsp = -5
		}
	}
		if key_shoot2 && key_up && breakdanceammo > 0
		{
		state = 114	
		sprite_index = spr_player_breakdancebeach
		image_index = 0
		breakdanceammo -= 1
		}


}
