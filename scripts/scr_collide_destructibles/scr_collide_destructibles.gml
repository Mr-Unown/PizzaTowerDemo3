function scr_collide_destructibles() {
#region Players
	with (obj_player1)
	{
	    if (state == 70 || state == 91 || state == states.jetpack || state == 37 || state == 18 || state == 2 || state == 10 || state == 9 || state = states.rocket || state = states.ratmount || state = states.forknight && sprite_index = spr_forknight_heat)
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
				{
					initialhsp = other.hsp
					initialvsp = other.vsp
					GamepadSetVibration(0, 0.8, 0.8, 0.5)
					event_user(0)
				}
	            if (state == 70)
	                machpunchAnim = 1
	        }
	    }
		if state == states.newbomb
		{
			#region Metalblock
	        if place_meeting((x + hsp), y + (vsp), obj_metalblockhard)
	        {
	            with (instance_place((x + hsp), y + (vsp), obj_metalblockhard))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }			
			
	        if place_meeting((x +sign(hsp)), y + sign(vsp), obj_metalblock)
	        {
	            with (instance_place((x +sign(hsp)), y + sign(vsp), obj_metalblock))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	        if place_meeting((x +sign(hsp)), y + sign(vsp), obj_metalblockhard)
	        {
	            with (instance_place((x +sign(hsp)), y + sign(vsp), obj_metalblockhard))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }	
			#endregion
	        if place_meeting((x + hsp), y + (vsp), obj_destructibles)
	        {
	            with (instance_place((x + hsp), y + (vsp), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	        if place_meeting((x + sign(hsp)), y + sign((vsp)), obj_destructibles)
	        {
	            with (instance_place((x + sign(hsp)), y + sign((vsp)), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }			
		}		
		if state == states.pogo && movespeed > 6
		{
	        if place_meeting((x + hsp), y + (vsp), obj_destructibles)
	        {
	            with (instance_place((x + hsp), y + (vsp), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	            if (state == 70)
	                machpunchAnim = 1
	        }		
		}
	    if (state == 73 && thrown == 1)
	    {
	        if place_meeting((x - hsp), y, obj_destructibles)
	        {
	            with (instance_place((x - hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
	    if ((state == 24 || state == 43 || state == 9) && vsp > 0)
	    {
	        if place_meeting(x, (y + vsp), obj_destructibles)
	        {
	            with (instance_place(x, (y + vsp), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
		if (state = states.knightpep)
		{
			if place_meeting(x + sign(hsp), y, obj_destructibles)
	        {
	            with (instance_place(x + sign(hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
		}
		if (state = states.firemouth)
		{
			//Horizontal
			if place_meeting(x + hsp, y, obj_destructibles)
	        {
	            with (instance_place(x + hsp, y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
			if place_meeting(x + sign(hsp), y, obj_destructibles)
	        {
	            with (instance_place(x + sign(hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }	
			//Vertical
			if place_meeting(x, y + vsp, obj_destructibles)
	        {
	            with (instance_place(x, y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
				if vsp > 0
				{
					sprite_index = spr_player_firemouthjump
					if key_jump2
						vsp = -12					
					else
						vsp = -4
				}
	        }
			if place_meeting(x, y + sign(vsp), obj_destructibles)
	        {
	            with (instance_place(x, y + sign(vsp), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}	
				if vsp > 0
				{
					sprite_index = spr_player_firemouthjump
					if key_jump2
						vsp = -12					
					else
						vsp = -4
				}			
	        }			
		}
		if (state = states.knightpepattack)
		{
			if place_meeting(x + hsp, y + vsp, obj_destructibles)
	        {
	            with (instance_place(x + hsp, y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
		}	
		if (state = states.slipnslide)
		{
			if place_meeting(x + sign(hsp), y, obj_destructibles)
	        {
	            with (instance_place(x + sign(hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
		}	
	    if (state == 68)
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
	    if (state == 111)
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
		if state = states.tackle
		{
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }			
		}
		if state = states.breakdance 
		{
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
		if sprite_index = spr_playerN_spinjump {
	        if place_meeting((x + hsp), y + vsp, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }		
		}
		if sprite_index = spr_shoryumineken && vsp < 0 {
	        if place_meeting((x + hsp), y + vsp, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }		
		}	
		if state = 86 
		{
	        if place_meeting((x + hsp), y, obj_barrelblock)
	        {
	            with (instance_place((x + hsp), y, obj_barrelblock))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }		
	    }	
		if state = 2
		{
	        if place_meeting((x + hsp), y, obj_ballblock)
	        {
	            with (instance_place((x + hsp), y, obj_ballblock))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }	
	    if place_meeting(x, (y + 1), obj_cheeseblock)
	    {
	        with (instance_place(x, (y + 1), obj_cheeseblock))
	        {
	            falling = 1
	            if (falling == 1)
	                image_speed = 0.35
	        }
	    }
		if state  == states.Sjump || (state == states.rocket && rocketup == 1)
		{
	        if place_meeting(x, (y + vsp), obj_destructibles)
	        {
	            with (instance_place(x, (y + vsp), obj_destructibles))
	            {
					initialhsp = random_range(-5, 5)
					initialvsp = other.vsp - 3
	                event_user(0)
				}
	        }		
		}
	    if (vsp <= 0.5 && (state == 58 || state == 17 || state == 6 || state == states.Sjump || state == 70 || state == 91 || state == states.jetpack))
	    {
	        if place_meeting(x, (y - 1), obj_destructibles)
	        {
	            with (instance_place(x, (y - 1), obj_destructibles))
	            {
					initialhsp = random_range(-2, 2) + other.hsp
					initialvsp = other.vsp - 3
	                event_user(0)
	                with (other.id)
	                {
	                    if (state != states.Sjump && state != 17)
	                        vsp = 0
	                }
	            }
	        }
	    }
	    if (vsp >= 0 && (state == 74 || state == 77))
	    {
	        if place_meeting(x, ((y + vsp) + 2), obj_destructibles)
	        {
	            with (instance_place(x, ((y + vsp) + 2), obj_destructibles))
	            {
	                with (obj_player1)
	                {
	                    if place_meeting(x, ((y + vsp) + 2), obj_bigdestructibles) && freefallsmash <= 10
	                    {
	                        if (shotgunAnim == 0)
	                            sprite_index = spr_bodyslamland
	                        else
	                            sprite_index = spr_shotgunjump2
	                        state = 77
	                        image_index = 0
	                    }
	                }
					initialhsp = random_range(-5, 5)
					initialvsp = other.vsp - 3
					
	                event_user(0)
	            }
	        }
	    }
	    if (state == 12)
	    {
	        with (obj_destructibles)
	        {
	            if place_meeting((x - obj_player1.hsp), y, obj_player1)
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
	    if (state == states.freefall || state == states.freefallland)
	    {
	        if (place_meeting(x, (y + 1), obj_metalblock) && freefallsmash > 10)
	        {
	            with (instance_place(x, (y + 1), obj_metalblock))
	            {
					initialhsp = random_range(-5, 5)
					initialvsp = other.vsp - 3
	                event_user(0)
				}
	        }		
	    }
	    if (state == 22)
	    {
	        with (obj_destructibles)
	        {
	            if place_meeting((x - obj_player1.hsp), y, obj_player1)
	            {
	                with (obj_player1)
	                {
	                    if place_meeting((x + hsp), y, obj_bigdestructibles)
	                    {
	                        if (key_shoot && shotgunAnim == 1)
	                        {
	                            state = 38
	                            image_index = 0
	                            sprite_index = spr_shotgunshoot
	                            if (character == "P" || character == "PZ")
	                            {
	                                instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = 4
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = -4
	                            }
	                            with other 
								{ 	
									initialhsp = 7 * sign(other.image_xscale)
									initialvsp = random_range(-4, -1)
									event_user(0) 
								}
	                        }
	                        else
	                        {
	                            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
								suplexdashtimer = image_index;
	                            image_index = 0
	                            state = 57
	                            vsp = 0
	                            with other 
								{ 	
									initialhsp = 9 * sign(other.image_xscale)
									initialvsp = random_range(-4, -1)
									event_user(0) 
								}
	                        }
	                    }
	                    else if (other.object_index != obj_bigdestructibles)
						{
	                            with other 
								{ 	
									initialhsp = 8 * sign(other.image_xscale)
									initialvsp = random_range(-4, -1)
									event_user(0) 
								}
						}
	                }
	            }
	        }
	    }
	}
	with (obj_player2)
	{
	    if (state == 70 || state == 91 || state == states.jetpack || state == 37 || state == 18 || state == 2 || state == 10 || state == 9)
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	            if (state == 70)
	                machpunchAnim = 1
	        }
	    }
		if state == states.newbomb
		{
			#region Metalblock
	        if place_meeting((x + hsp), y + (vsp), obj_metalblock)
	        {
	            with (instance_place((x + hsp), y + (vsp), obj_metalblock))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	        if place_meeting((x + hsp), y + (vsp), obj_metalblockhard)
	        {
	            with (instance_place((x + hsp), y + (vsp), obj_metalblockhard))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }			
			
	        if place_meeting((x +sign(hsp)), y + sign(vsp), obj_metalblock)
	        {
	            with (instance_place((x +sign(hsp)), y + sign(vsp), obj_metalblock))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	        if place_meeting((x +sign(hsp)), y + sign(vsp), obj_metalblockhard)
	        {
	            with (instance_place((x +sign(hsp)), y + sign(vsp), obj_metalblockhard))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }	
			#endregion			
	        if place_meeting((x + hsp), y + (vsp), obj_destructibles)
	        {
	            with (instance_place((x + hsp), y + (vsp), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	        if place_meeting((x + sign(hsp)), y + sign((vsp)), obj_destructibles)
	        {
	            with (instance_place((x + sign(hsp)), y + sign((vsp)), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }			
		}			
		if state == states.pogo && movespeed > 7
		{
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	            if (state == 70)
	                machpunchAnim = 1
	        }		
		}	
		if state  == states.Sjump
		{
	        if place_meeting(x, (y + vsp), obj_destructibles)
	        {
	            with (instance_place(x, (y + vsp), obj_destructibles))
	            {
					initialhsp = random_range(-5, 5)
					initialvsp = other.vsp - 3
	                event_user(0)
				}
	        }		
		}	
	    if (state == 73 && thrown == 1)
	    {
	        if place_meeting((x - hsp), y, obj_destructibles)
	        {
	            with (instance_place((x - hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
	    if ((state == 24 || state == 43 || state == 9) && vsp > 0)
	    {
	        if place_meeting(x, (y + vsp), obj_destructibles)
	        {
	            with (instance_place(x, (y + vsp), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
	    if (state == 68)
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
	    if (state == 111)
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
		if (state = states.knightpep )
		{
			if place_meeting(x + sign(hsp), y, obj_destructibles)
	        {
	            with (instance_place(x + sign(hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
		}
		if (state = states.firemouth)
		{
			//Horizontal
			if place_meeting(x + hsp, y, obj_destructibles)
	        {
	            with (instance_place(x + hsp, y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
			if place_meeting(x + sign(hsp), y, obj_destructibles)
	        {
	            with (instance_place(x + sign(hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }	
			//Vertical
			if place_meeting(x, y + vsp, obj_destructibles)
	        {
	            with (instance_place(x, y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
				if vsp > 0
				{
					sprite_index = spr_player_firemouthjump
					if key_jump2
						vsp = -12					
					else
						vsp = -4
				}
	        }
			if place_meeting(x, y + sign(vsp), obj_destructibles)
	        {
	            with (instance_place(x, y + sign(vsp), obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}	
				if vsp > 0
				{
					sprite_index = spr_player_firemouthjump
					if key_jump2
						vsp = -12					
					else
						vsp = -4
				}				
	        }		
		}		
		if (state = states.knightpepattack)
		{
			if place_meeting(x + hsp, y + vsp, obj_destructibles)
	        {
	            with (instance_place(x + hsp, y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
		}		
		if (state = states.slipnslide)
		{
			if place_meeting(x + sign(hsp), y, obj_destructibles)
	        {
	            with (instance_place(x + sign(hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
		}		
		if sprite_index = spr_playerN_spinjump {
	        if place_meeting((x + hsp), y + vsp, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }		
		}
		if sprite_index = spr_shoryumineken && vsp < 0 {
	        if place_meeting((x + hsp), y + vsp, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y + vsp, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }		
		}		
		if state = states.tackle
		{
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }			
		}		
		if state = states.breakdance 
		{
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
		if state = 86 
		{
	        if place_meeting((x + hsp), y, obj_barrelblock)
	        {
	            with (instance_place((x + hsp), y, obj_barrelblock))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }		
	    }	
		if state = 2
		{
	        if place_meeting((x + hsp), y, obj_ballblock)
	        {
	            with (instance_place((x + hsp), y, obj_ballblock))
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }		
	    if place_meeting(x, (y + 1), obj_cheeseblock)
	    {
	        with (instance_place(x, (y + 1), obj_cheeseblock))
	        {
	            falling = 1
	            if (falling == 1)
	                image_speed = 0.35
	        }
	    }
	    if (vsp <= 0.5 && (state == 58 || state == 17 || state == 6 || state == states.Sjump || state == 70 || state == 91 || state == states.jetpack))
	    {
	        if place_meeting(x, (y - 1), obj_destructibles)
	        {
	            with (instance_place(x, (y - 1), obj_destructibles))
	            {
					initialhsp = random_range(-2, 2) + other.hsp
					initialvsp = other.vsp - 3
	                event_user(0)
	                with (other.id)
	                {
	                    if (state != states.Sjump && state != 17)
	                        vsp = 0
	                }
	            }
	        }
	    }
	    if (vsp >= 0 && (state == 74 || state == 77))
	    {
	        if place_meeting(x, ((y + vsp) + 2), obj_destructibles)
	        {
	            with (instance_place(x, ((y + vsp) + 2), obj_destructibles))
	            {
	                with (obj_player2)
	                {
	                    if place_meeting(x, ((y + vsp) + 2), obj_bigdestructibles) && freefallsmash <= 10
	                    {
	                        if (shotgunAnim == 0)
	                            sprite_index = spr_bodyslamland
	                        else
	                            sprite_index = spr_shotgunjump2
	                        state = 77
	                        image_index = 0
	                    }
	                }
            
					initialhsp = random_range(-5, 5)
					initialvsp = other.vsp - 3
	                event_user(0)
			
	            }
	        }
	    }
	    if (state == 12)
	    {
	        with (obj_destructibles)
	        {
	            if place_meeting((x - obj_player2.hsp), y, obj_player2)
	            {
					initialhsp = other.hsp
					initialvsp = other.vsp
	                event_user(0)
				}
	        }
	    }
	    if (state == states.freefall || state == states.freefallland)
	    {
	        if (place_meeting(x, (y + 1), obj_metalblock) && freefallsmash > 10)
	        {
	            with (instance_place(x, (y + 1), obj_metalblock))
	            {
					initialhsp = random_range(-5, 5)
					initialvsp = other.vsp - 3
	                event_user(0)
				}
	        }		
	    }
	    if (state == 22)
	    {
	        with (obj_destructibles)
	        {
	            if place_meeting((x - obj_player2.hsp), y, obj_player2)
	            {
	                with (obj_player2)
	                {
	                    if place_meeting((x + hsp), y, obj_bigdestructibles)
	                    {
	                        if (key_shoot && shotgunAnim == 1)
	                        {
	                            state = 38
	                            image_index = 0
	                            sprite_index = spr_shotgunshoot
	                            if (character == "P")
	                            {
	                                instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = 4
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = -4
	                            }
	                            with other 
								{ 	
									initialhsp = 7 * sign(other.image_xscale)
									initialvsp = random_range(-4, -1)
									event_user(0) 
								}
	                        }
	                        else
	                        {
	                            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
								suplexdashtimer = image_index;								
	                            image_index = 0
	                            state = 57
	                            vsp = 0
	                            with other 
								{ 	
									initialhsp = 9 * sign(other.image_xscale)
									initialvsp = random_range(-4, -1)
									event_user(0) 
								}
	                        }
	                    }
	                    else if (other.object_index != obj_bigdestructibles)
						{
	                            with other 
								{ 	
									initialhsp = 9 * sign(other.image_xscale)
									initialvsp = random_range(-4, -1)
									event_user(0) 
								}
						}
	                }
	            }
	        }
	    }
	}
#endregion
#region Not Players
	with (obj_pizzaball)
	{
	    if (place_meeting((x + hsp), y, obj_destructibles) && thrown == 1)
		{
	        with instance_place(x + hsp, y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	    if (place_meeting(x, (y + vsp), obj_destructibles) && thrown == 1)
		{
	        with instance_place(x, y + vsp, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
		if (movespeed) > 0 && thrown == 1
		{
			if place_meeting(x + image_xscale, y, obj_destructibles)
			{
				with instance_place(x + image_xscale, y, obj_destructibles)
				{
					initialhsp = other.hsp
					initialvsp = other.vsp
					event_user(0)
				}		
			}
		}	 
	
	    if (place_meeting((x + sign(hsp)), y, obj_destructibles) && thrown == 1)
		{
	        with instance_place(x +  sign(hsp), y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	    if (place_meeting(x, (y +  sign(vsp)), obj_destructibles) && thrown == 1)
		{
	        with instance_place(x, y +  sign(vsp), obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}	
	}
	with (obj_mrcar)
	{
	    if (place_meeting((drawx + hsp), drawy, obj_destructibles) && collided == true)
		{
	        with instance_place(drawx + hsp, drawy, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	    if (place_meeting(drawx, (drawy + vsp), obj_destructibles) && collided == true)
		{
	        with instance_place(drawx, drawy + vsp, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	}
	with (obj_baddie)
	{
	    if (place_meeting((x + hsp), y, obj_destructibles) && (thrown = 1 || state = enemystates.enemyheat || state = "punch"))
		{
	        with instance_place(x + hsp, y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	    if (place_meeting(x, (y + vsp), obj_destructibles) && (thrown = 1 || state = "punch"))
		{
	        with instance_place(x, y + vsp, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
		
		if (movespeed) > 0
		{
			if (place_meeting(x + image_xscale,y  - 1, obj_destructibles) && (state = enemystates.enemyheat || state = "punch"))
			{
				with instance_place(x + image_xscale, y - 1, obj_destructibles)
				{
					initialhsp = other.hsp
					initialvsp = other.vsp
					event_user(0)
				}		
			}
		}		
		if abs(vsp) > 0
		{
			if (place_meeting(x, (y + vsp), obj_destructibles) && (state = enemystates.enemyheat || state = "punch"))
			{
				with instance_place(x, y + vsp, obj_destructibles)
				{
					initialhsp = other.hsp
					initialvsp = other.vsp
					event_user(0)
				}		
			}
		}
	}
	with (obj_noisekickbomb)
	{
	   if (place_meeting((x + hsp), y, obj_destructibles))
		{
	        with instance_place(x + hsp, y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
		if (movespeed) > 0
		{
			if place_meeting(x + image_xscale, y, obj_destructibles)
			{
				with instance_place(x + image_xscale, y, obj_destructibles)
				{
					initialhsp = other.hsp
					initialvsp = other.vsp
					event_user(0)
				}		
			}
		}	   
	}
	with (obj_brickball)
	{
	   if (place_meeting((x + hsp), y, obj_destructibles))
		{
	        with instance_place(x + hsp, y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
		if (movespeed) > 0
		{
			if place_meeting(x + image_xscale, y, obj_destructibles)
			{
				with instance_place(x + image_xscale, y, obj_destructibles)
				{
					initialhsp = other.hsp
					initialvsp = other.vsp
					event_user(0)
				}		
			}
		}	   
	}
	with (obj_meatballman)
	{
	    if place_meeting((x + hsp), y, obj_destructibles) && state = meatballstate.rolling
		{
	        with instance_place(x + hsp, y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	    if place_meeting((x + sign(hsp)), y, obj_destructibles) && state = meatballstate.rolling
		{
	        with instance_place(x + sign(hsp), y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}		
	}
	with (obj_throwableparent)
	{
	    if place_meeting((x + hsp), y, obj_destructibles) && (thrown = 1)
		{
	        with instance_place(x + hsp, y, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	    if place_meeting(x, (y + vsp), obj_destructibles) && (thrown = 1)
		{
	        with instance_place(x, y + vsp, obj_destructibles)
	        {
				initialhsp = other.hsp
				initialvsp = other.vsp
	            event_user(0)
			}		
		}
	}
#endregion


}
