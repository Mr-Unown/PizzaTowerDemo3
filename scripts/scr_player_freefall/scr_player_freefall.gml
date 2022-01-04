function scr_player_freefall() {
	landAnim = 1
	if vsp < 15
		vsp = 15;
	vsp = clamp(vsp + 0.15,15,20);
	freefallsmash += clamp(vsp/15,1,2);
	move = (key_left + key_right)
	if (!grounded)
	{
	    hsp = (move * movespeed)
		if global.groundpoundstyle = 0
		{
			if (move != xscale && momemtum == 1 && movespeed != 0)
				movespeed -= 0.020
			if (movespeed == 0)
				momemtum = 0
			if ((move == 0 && momemtum == 0) || scr_solid((x + hsp), y))
			{
				movespeed = 0
		        mach2 = 0
			}
			if (move != 0 && movespeed < 7)
				movespeed += 0.25
			if (movespeed > 7)
				movespeed -= 0.05
		}
		else if global.groundpoundstyle = 1
			movespeed = 7
	    if ((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1))
	        movespeed = 0
	    if (dir != xscale)
	    {
	        mach2 = 0
	        dir = xscale
	        movespeed = 0
	    }
	    if (move == (-xscale))
	    {
	        mach2 = 0
	        movespeed = 0
	        momemtum = 0
	    }
	    if (move != 0)
	        xscale = move
	}


	if (freefallsmash > 10 && (!instance_exists(superslameffectid)))
	{
	    with (instance_create(x, y, obj_superslameffect))
	    {
	        playerid = other.object_index
	        other.superslameffectid = id
	    }
	}
	if (grounded && (!input_buffer_jump < 8) && scr_slope() && freefallsmash > 10 && key_down && (!place_meeting(x, (y + 1), obj_destructibles)))
	{
	#region Roll
		with instance_place(x,y+1,obj_slope)
		{
			other.xscale = -sign(image_xscale)
		}
		if tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftslope2 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.leftsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightsteepslope || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope1 || tile_meeting_precise(x,y + 1,"Tiles_Solid") == tiletype.rightslope2
		{
			var _slope = scr_tileslope(x, y + 1)
			if _slope[0] != noone
			{
				var _xscale = _slope[1]
				xscale = -sign(_xscale)		
			}
		}
	    with (instance_create(x, y, obj_jumpdust))
	        image_xscale = other.xscale
		with instance_create(x, y, obj_landcloud)
		{
			playerid = other.id
			image_xscale = other.xscale
		}			
		movespeed = clamp(abs(vsp),3,12)
	    flash = 0
	    state = 37
	    vsp = 10
		jumpAnim = 1
	    jumpstop = 0

	    freefallstart = 0
		freefallsmash = 0
		combo = 0
	    bounce = 0	
	#endregion
	}
	else if (grounded && (!input_buffer_jump < 8) && (!place_meeting(x, (y + 1), obj_destructibles)) /* && !key_down*/ )
	{
	#region Land
	    scr_soundeffect(sfx_groundpound)
	    freefallsmash = 0
	    if (shotgunAnim == 0)
	        sprite_index = spr_bodyslamland
	    else
	        sprite_index = spr_shotgunjump2
	    image_index = 0
	    state = 77
	    jumpAnim = 1
	    jumpstop = 0
	    with (obj_baddie)
	    {
	        if (grounded && shake != 1 && state != 109 && markedfordeath != 1 && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0))))
	        {
				state = 106
				if stunned < 60
					stunned = 60
				image_xscale *= -1
	            vsp = -11
	            hsp = 0
				momentum = 0
	        }
	    }
	    with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }

		with instance_create(x, y, obj_landcloud)
		{
			playerid = other.id
			image_xscale = other.xscale
		}	
	    freefallstart = 0
		combo = 0
	    bounce = 0
	#endregion
	}

	//Groundpound Cancel
	if (key_attack2) && !(character = "N" && pogo = true) && !grounded && freefallsmash > 10
	{		
	        if (move != 0)
	            xscale = move
	        movespeed = 10
	        machhitAnim = 0
	        state = states.mach2
	        flash = 1
			vsp = -2
	        sprite_index = spr_mach2jump
	        with (instance_create(x, y, obj_jumpdust))
	            image_xscale = other.xscale
			scr_soundeffect(sfx_rollgetup)			
	}
	if key_attack && (character == "N" && pogo = true) && !key_slap2 && pogojetcharge = false
	{
	    sprite_index = spr_playerN_pogostart
	    state = states.pogo
	    image_index = 0
		pogomovespeed = 6	
	}
	if key_attack2 && (character == "N" && pogo = true) && pogojetcharge = true
	{
		scr_soundeffect(sfx_noisewoah)	
	    if !key_up
		sprite_index = spr_playerN_jetpackstart
		else
		sprite_index = spr_superjumpprep
	    state = states.jetpackstart
		if move != 0
			xscale = move
	    hsp = 0
		vsp = 0
	    image_index = 0
	    superjumpprepsnd = audio_play_sound(sfx_superjumpprep, 1, false)
	    audio_sound_gain(superjumpprepsnd, (1 * global.soundeffectsvolume), 0)
	}
	image_speed = 0.35



}
