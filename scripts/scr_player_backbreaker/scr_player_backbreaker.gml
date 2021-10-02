function scr_player_backbreaker() {
	mach2 = 0
	if (sprite_index != spr_player_machfreefall)
	{
	    hsp = 0
	    movespeed = 0
	}
	else
	    hsp = (xscale * movespeed)
	landAnim = 0
	if (sprite_index == spr_player_machfreefall && place_meeting(x, (y + 1), obj_solid))
	{
	    state = 71
	    sprite_index = spr_player_crouchslide
	}
	if (sprite_index == spr_playerN_machfreefall1 && place_meeting(x, (y + 1), obj_solid))
	{
	    state = 92
	    sprite_index = spr_playerN_bodyslam
	}
	if (sprite_index == spr_bossintro && floor(image_index) == (image_number - 1))
	{
	    state = 0
	    image_index = 0
	}
	if (sprite_index == spr_playerV_dynamitethrow && floor(image_index) == (image_number - 1))
	{
	    state = 0
	    image_index = 0
	}
	if (sprite_index == spr_taunt)
	{
		image_speed = 0
	    if (!instance_exists(parry_id))
	    {
	        parry_id = instance_create(x, y, obj_parryhitbox)
	        with (parry_id)
	        {
	            playerid = other.id
	            image_xscale = other.xscale
	        }
	    }
	    if (taunttimer < 10)
	    {
	        if instance_exists(parry_id)
	        {
	            instance_destroy(parry_id)
				parry_id = noone
	        }
	    }
	    if (supertauntcharged = true && (!instance_exists(obj_tauntaftereffectspawner)) && character != "V")
	    {
		#region supertaunt
		
			with (obj_pizzaface)
			{
	            scr_soundeffect(sfx_groundpound)
	            with (instance_create(x, y, obj_shake))
	                sprite_index = other.sprite_index
				relax = true
				pizzafacetimer = 500
			}		
	        with (instance_create(x, y, obj_tauntaftereffectspawner))
	            playerid = other.id
	        with (obj_baddie)
	        {
				var _cam_x = camera_get_view_x(view_camera[0])
				var _cam_y = camera_get_view_y(view_camera[0])
				var _cam_w = camera_get_view_width(view_camera[0])
				var _cam_h = camera_get_view_height(view_camera[0])
	            if point_in_rectangle(x, y, (_cam_x) - 32, (_cam_y) - 32, (_cam_x + _cam_w) + 32, (_cam_y + _cam_h) + 32)
				{
					scarebuffer = 0;
					blowdirection = 5;
					blowintensity = 1;
					playerxscale = choose(1,-1)
					newshakebuffer = 15;
					state = enemystates.enemyshake;	
					var vec = point_direction(other.x,other.y,x,y)
					var len = random_range(15,25)
					initialvsp = lengthdir_y(len,vec)
					initialhsp = lengthdir_x(len,vec)
				}
	        }
	        with (obj_camera)
	        {
				scr_sleep();
	            shake_mag = 10
	            shake_mag_acc = (30 / room_speed)
	        }
			obj_player1.supertauntcharged = false;
			obj_player1.supertauntbuffer = 0;
			obj_player2.supertauntcharged = false;
			obj_player2.supertauntbuffer = 0;		
		#endregion
	    }
	    if (global.debugmode == 1)
	    {
			if key_down2
			{
				if character = "P" || character = "PZ" || (character = "N" && pogo = true)
				{
					if (paletteselect < sprite_get_width(spr_palette) - 1)
						paletteselect += 1
					else if customsavedpalette < 5
						customsavedpalette += 1				
					else
					{
						paletteselect = 1
						customsavedpalette = 1
					}
				}
				else
				{
					if (paletteselect < sprite_get_width(spr_palette) - 1)
						paletteselect += 1
					else if customsavedpalette < 5
						customsavedpalette += 1				
					else
					{
						paletteselect = 0	
						customsavedpalette = 1
					}
				}
				taunttimer = 20
				if paletteselect >= sprite_get_width(spr_palette) - 1
				{
					scr_playercolors();
					customupdate = true;	
				}			
			}
	        if key_up2
	        {
	            if (character == "P")
	            {
	                character = "N"
					pogo = false
	                paletteselect = 0
					scr_characterspr();
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }
	            else if (character == "N") && pogo = false
	            {
	                character = "N"
					pogo = true
	                paletteselect = 0
					scr_characterspr();
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }			
	            else if (character == "N") && pogo = true
	            {
	                character = "S"
					pogo = false
	                paletteselect = 0
					scr_characterspr();
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }
	            else if (character == "S")
	            {
	                character = "V"
	                paletteselect = 0
					scr_characterspr();
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }
				else if (character == "V")
	            {
	                character = "PZ"
	                paletteselect = 0
					scr_characterspr();
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }
				else if (character == "PZ")
	            {
					//dougie probably wont be done by then, so do this
					if DOUGIE
						character =  "D"
					else
						character = "PM"
	                paletteselect = 0
					scr_characterspr();
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }			
	            else if (character == "D")
	            {
	                character = "PM"
	                paletteselect = 0
					scr_characterspr();
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }
	            else if (character == "PM")
	            {
	                character = "P"
	                paletteselect = 1
					scr_characterspr()
	                tauntstoredsprite = spr_idle;
					tauntstoredimage = 0;
	            }
	            scr_characterspr()
	            scr_changetoppings()
	            scr_soundeffect(sfx_taunt)
	            taunttimer = 20
	            state = 51
	            image_index = irandom_range(0, sprite_get_number(spr_taunt))
	            sprite_index = spr_taunt
	            tauntstoredstate = 0
	            with (instance_create(x, y, obj_taunteffect))
	            {
	                playerid = other.id
	                baddie = 0
	            }
	        }
	    }
	    taunttimer--
	    vsp = 0
	}
	if (taunttimer == 0 && sprite_index == spr_taunt)
	{
	    movespeed = tauntstoredmovespeed
	    sprite_index = tauntstoredsprite
	    state = tauntstoredstate
		image_index = tauntstoredimage;
	    if instance_exists(parry_id)
	    {
	        instance_destroy(parry_id)
	        parry_id = -4
	    }
	}
	//Supertaunt Stuff
	if (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4)
	{
		image_speed = 0.35
		hsp = 0
		vsp = 0
	    if (supertauntcharged = true && (!instance_exists(obj_tauntaftereffectspawner)) && character != "V")
	    {
		#region supertaunt
			with (obj_pizzaface)
			{
	            scr_soundeffect(sfx_groundpound)
	            with (instance_create(x, y, obj_shake))
	                sprite_index = other.sprite_index
				relax = true
				pizzafacetimer = 500			
			}	
	        with (instance_create(x, y, obj_tauntaftereffectspawner))
	            playerid = other.id
	        with (obj_baddie)
	        {
				var _cam_x = camera_get_view_x(view_camera[0])
				var _cam_y = camera_get_view_y(view_camera[0])
				var _cam_w = camera_get_view_width(view_camera[0])
				var _cam_h = camera_get_view_height(view_camera[0])
	            if point_in_rectangle(x, y, (_cam_x) - 32, (_cam_y) - 32, (_cam_x + _cam_w) + 32, (_cam_y + _cam_h) + 32)
				{
					scarebuffer = 0;
					blowdirection = 5;
					blowintensity = 1;
					playerxscale = choose(1,-1)
					newshakebuffer = 15;
					state = enemystates.enemyshake;	
					var vec = point_direction(other.x,other.y,x,y)
					var len = random_range(15,25)
					initialvsp = lengthdir_y(len,vec)
					initialhsp = lengthdir_x(len,vec)
				}
	        }
	        with (obj_camera)
	        {
				scr_sleep();
	            shake_mag = 10
	            shake_mag_acc = (30 / room_speed)
	        }
			obj_player1.supertauntcharged = false;
			obj_player1.supertauntbuffer = 0;
			obj_player2.supertauntcharged = false;
			obj_player2.supertauntbuffer = 0;		
		#endregion
	    }
	}
	if (floor(image_index) >= image_number - 1 && (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4))
	{
	    movespeed = tauntstoredmovespeed
	    sprite_index = tauntstoredsprite
	    state = tauntstoredstate
		image_index = tauntstoredimage;		
	    if instance_exists(parry_id)
	    {
	        instance_destroy(parry_id)
	        parry_id = -4
	    }
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_eatspaghetti)
	    state = 0
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && place_meeting(x, y, obj_exitgate))
	    state = 0
	if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_levelcomplete || sprite_index == spr_playerN_victory || sprite_index == spr_snick_victory || sprite_index == spr_playerV_victory))
	    state = 0
	if (key_jump && sprite_index == spr_player_phoneidle)
	{
	    global.panic = 1
	    sprite_index = spr_bossintro
	    image_index = 0
	    with (instance_create(x, y, obj_debris))
	    {
	        image_index = 0
	        sprite_index = spr_phonedebris
	    }
	}
	if (global.miniboss == 1 && sprite_index == spr_bossintro && floor(image_index) == (image_number - 1))
	    state = 0
	if sprite_index != spr_taunt &&  !(sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3 || sprite_index == spr_supertaunt4)
		image_speed = 0.35
	if (character == "N" && sprite_index == spr_playerN_dab)
	{
	    image_index = (gamepad_button_value(0, gp_shoulderlb) * 20)
	    if (gamepad_button_value(0, gp_shoulderlb) == 0)
	        state = 0
	    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
	    {
			if global.combotime > 0
			global.combotime -= 20
			else
			global.combotime = 0
			global.pausecombotime = false
	        scr_soundeffect(sfx_taunt)
	        instance_create(x, y, obj_taunteffect)
	        instance_create(x, y, obj_tauntaftereffectspawner)
	        with (obj_baddie)
	        {
	            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	            {
	                dropcoin = 1
	                instance_destroy()
	            }
	        }
	        with (obj_camera)
	        {
	            shake_mag = 10
	            shake_mag_acc = (30 / room_speed)
	        }
	    }
	}
	if (character == "P" && sprite_index == spr_player_smirk)
	{
	    if (gamepad_button_value(0, gp_shoulderlb) == 0)
	        state = 0
	    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
	    {
			if global.combotime > 0
			global.combotime -= 20
			else
			global.combotime = 0
			global.pausecombotime = false		
	        scr_soundeffect(sfx_taunt)
	        instance_create(x, y, obj_taunteffect)
	        instance_create(x, y, obj_tauntaftereffectspawner)
	        with (obj_baddie)
	        {
	            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	            {
	                dropcoin = 1
	                instance_destroy()
	            }
	        }
	        with (obj_camera)
	        {
	            shake_mag = 10
	            shake_mag_acc = (30 / room_speed)
	        }
	    }
	}
	if (character == "S" && sprite_index == spr_snick_exe)
	{
	    if (gamepad_button_value(0, gp_shoulderlb) == 0)
	        state = 0
	    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
	    {
			if global.combotime > 0
			global.combotime -= 20
			else
			global.combotime = 0
			global.pausecombotime = false
	        scr_soundeffect(sfx_taunt)
	        instance_create(x, y, obj_taunteffect)
	        instance_create(x, y, obj_tauntaftereffectspawner)
	        with (obj_baddie)
	        {
	            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	            {
	                dropcoin = 1
	                instance_destroy()
	            }
	        }
	        with (obj_camera)
	        {
	            shake_mag = 10
	            shake_mag_acc = (30 / room_speed)
	        }
	    }
	}
	if (character == "V" && sprite_index == spr_playerV_revolverstart)
	{
	    image_index = (gamepad_button_value(0, gp_shoulderlb) * 7)
	    if (gamepad_button_value(0, gp_shoulderlb) == 0)
	        state = 0
	    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
	    {
			if global.combotime > 0
			global.combotime -= 20
			else
			global.combotime = 0
			global.pausecombotime = false		
	        scr_soundeffect(sfx_taunt)
	        instance_create(x, y, obj_taunteffect)
	        instance_create(x, y, obj_tauntaftereffectspawner)
	        with (obj_baddie)
	        {
	            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	            {
	                dropcoin = 1
	                instance_destroy()
	            }
	        }
	        with (obj_camera)
	        {
	            shake_mag = 10
	            shake_mag_acc = (30 / room_speed)
	        }
	    }
	}



}
