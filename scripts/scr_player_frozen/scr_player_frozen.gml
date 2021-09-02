function scr_player_frozen() {
	move = (key_right + key_left)
	if !key_jump2 
	{
		input_buffer_jump = frozenjumpbuffer;
	}
	else
	{
		input_buffer_jump = 0;
	}
	//Freeze Frame
	if global.freezeframe = true
	{
		for (var i = 0; i < 10; i++)
		{
			if alarm_get(i) > 0 
				alarm_set(i, -1);
		}
		vsp = 0
		hsp = 0
		image_speed = 0
		movespeed = 0
		cutscene = true;
	}
	else
	{
		for (var i = 0; i < 10; i++)
		{
			alarm_set(i, frozenalarm[i]);
		}	
		sprite_index = frozenspriteindex;
		image_index = frozenimageindex;
		image_speed = frozenimagespeed;
		movespeed = frozenmovespeed;
		grav = frozengrav;
		freefallsmash =	frozensmash;
		hsp = frozenhsp;
		vsp = frozenvsp;
		if input_buffer_jump < 8
		{
		#region Jumping
		if place_meeting(x,y,obj_baddiecollisionbox) && (!grounded && frozenstate != 74 && instakillmove = true)
	    {
			if (frozenstate == 70 || (frozenstate == 91 && fightball == 0))
	        {
				if (character != "V")
					sprite_index = spr_mach2jump
	            else
	                sprite_index = spr_playerV_spinjump1
	        }
	        suplexmove = 0
	        vsp = -11
	    }
		if grounded && frozenstate = states.mach3 && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1)
		{
			scr_soundeffect(sfx_jump)
			if (sprite_index != spr_fightball1 && sprite_index != spr_fightball2)
			{
		        image_index = 0
				sprite_index = spr_mach3jump
			}
			if (character == "P")
				vsp = -11
			else
				vsp = -13	
		}
		if frozenstate = states.mach2 && (grounded && (!(move == 1 && xscale == -1)) && (!(move == -1 && xscale == 1)))
		{
	    image_index = 0
	    sprite_index = spr_secondjump1
	    scr_soundeffect(sfx_jump)
	    if (character == "P")
	        vsp = -11
	    else
	        vsp = -13
		}
		if (frozenstate = states.mach1 && grounded)
		{
			scr_soundeffect(sfx_jump)
			sprite_index = spr_airdash1
			dir = xscale
			momemtum = 1
			if (character == "P")
				vsp = -11
			else
		        vsp = -13
			jumpAnim = 1
			image_index = 0
		}	
	#endregion
		}
	#region Machslide
			switch (frozenstate)
			{
				case states.mach2:
					if (((!key_attack) && move != xscale && grounded) || (character == "S" && move == 0 && grounded)) && !grinding
					{
						image_index = 0
						frozenstate = 71
						scr_soundeffect(sfx_break)
						sprite_index = spr_machslidestart
					}
					if (move == (-xscale) && grounded && character != "S")
					{
						scr_soundeffect(sfx_machslideboost)
						image_index = 0
						frozenstate = 71
						sprite_index = spr_machslideboost
						machhitAnimtimer = 500
						machhitAnim = 0
					}
				break;
				case states.mach3:
					if ((((!key_attack) && fightball == 0 && grounded && character != "S") || (character == "S" && (move == 0 || move != xscale) && turnbuffer >= 50 && grounded && fightball == 0))) && !place_meeting(x, y, obj_dashpad) && mach3dash = false
					{
						sprite_index = spr_machslidestart
						scr_soundeffect(sfx_break)
						frozenstate = 71
						image_index = 0
					}
					if (move == (-xscale) && grounded && character != "S" && fightball == 0) && !place_meeting(x, y, obj_dashpad) && mach3dash = false
					{
						scr_soundeffect(sfx_machslideboost)
						sprite_index = spr_mach3boost
						frozenstate = 71
						image_index = 0
					}			
				break;
			}
	#endregion
		state =	frozenstate;
		cutscene = false;
	}



}
