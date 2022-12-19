scr_getinput()
#region //states
scr_playerstate()
#endregion
with obj_player {
    /*if (global.playerhealth <= 0 && state != 48)
    {
        image_index = 0
        sprite_index = spr_deathstart
        state = 48
    }*/
	
	if state != 48 and y > room_height * 1.1 {
		x = roomstartx
		y = roomstarty
	}
	
    if (state == 48 && sprite_index == spr_deathend && y > (room_height + 400))
        game_restart()
    if ((!instance_exists(baddiegrabbedID)) && (state == 39 || (state == 36 && sprite_index != spr_piledriverland) || state == 88))
        state = 0
    if (!(state == 39 || state == 36))
        baddiegrabbedID = 0
    if grinding
        state = 38
    if (character == "P")
    {
        if (anger == 0)
            angry = 0
        if (anger > 0)
        {
            angry = 1
            anger -= 1
        }
    }
    if (state == 62 && grounded)
    {
        if (!audio_is_playing(sound_dash1))
            scr_sound(sound_dash1)
    }
    else
        audio_stop_sound(sound_dash1)
    if (state == 63)
    {
        if (!audio_is_playing(sound_dash2))
            scr_sound(sound_dash2)
    }
    else
        audio_stop_sound(sound_dash2)
    if (state == 83)
    {
        if (!audio_is_playing(sound_maxspeed))
            scr_sound(sound_maxspeed)
    }
    else
        audio_stop_sound(sound_maxspeed)
    if (state == 30)
    {
        if (!audio_is_playing(sound_machroll))
            scr_sound(sound_machroll)
    }
    else
        audio_stop_sound(sound_machroll)
    if (sprite_index == spr_player_winding && state != 0)
        windingAnim = 0
    if (state == 58)
    {
    }
    else
        audio_stop_sound(sound_superjumpcharge2)
	if (state == 111 && sprite_index = spr_cotton_run)
    {
        if (!audio_is_playing(sound_dash1))
            scr_sound(sound_dash1)
    }
    else
        audio_stop_sound(sound_dash1)
	if (state == 111 && sprite_index = spr_cotton_maxrun)
    {
        if (!audio_is_playing(sound_dash2))
            scr_sound(sound_dash2)
    }
    else
        audio_stop_sound(sound_dash2)
    if (suplexmove == 1 && scr_solid(x, (y + 1)))
    {
        suplexmove = 0
        flash = 1
    }
    if (obj_player.state != 15)
        grav = 0.5
    if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
        instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit)
    if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
    {
        with (instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit))
            sprite_index = spr_vomit2
    }
   /* if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == 0)
        instance_create(x, y, obj_sweat)*/
    if (angry == 1 && (!instance_exists(obj_angrycloud)) && obj_player.state == 0)
        instance_create(x, y, obj_angrycloud)
	
	if global.combomode = 0
	{
	if (global.combotime > 0)
        global.combotime -= 0.5
    if (global.combotime == 0 && global.combo != 0)
        global.combo = 0
	}
		if global.combomode = 1
		{
		if global.combofreeze > 0
		global.combofreeze -= 0.2
		
		if (global.combotime > 0 && global.combofreeze = 0)
        global.combotime -= 0.5
		
		if (global.combotime == 0 && global.combo != 0 && global.combofreeze = 0)
        global.combo = 0	
		}
		
    if (input_buffer_jump < 8)
        input_buffer_jump++
    if (input_buffer_secondjump < 8)
        input_buffer_secondjump++
    if (input_buffer_highjump < 8)
        input_buffer_highjump++
    if (key_particles == 1)
        instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
    if (inv_frames == 0 && hurted == 0)
        image_alpha = 1
    if (state == 63 || state == 88 || state == 37 || state == 17 || state == 8 || state == 6 || state == 11 || state == 18 || state == 20 || state == 27 || state == 33 || state == 27 || state == 30 || state == 83 || state == 67 || state == 56)
        attacking = 1
    else
        attacking = 0
    if (state == 34 || state == 40 || state == 41 || state == 43 || state == 42)
        grabbing = 1
    else
        grabbing = 0
    if (state == 83 || state == 2 || state == 37 || state == 28 || state == 67 || state == 56 || state == 30 || state == 33 || state == 88 || (state == 36 && sprite_index == spr_piledriver) || state == 17 || state == 18 || state == 11 || state == 8 || state == 6 || state == 4)
        instakillmove = 1
    else
        instakillmove = 0
    if (flash == 1 && alarm[0] <= 0)
        alarm[0] = (0.15 * room_speed)
    if (state != 83 && state != 64)
        autodash = 0
    if ((state != 51 && state != 60 && state != 5) || vsp < 0)
        fallinganimation = 0
    if (state != 70 && state != 0 && state != 64)
        facehurt = 0
    if (state != 0 && state != 64)
        machslideAnim = 0
    if (state != 0)
    {
        idle = 0
        dashdust = 0
    }
    if (state != 62 && state != 51 && state != 2 && state != 15 && state != 0 && state != 63 && state != 83 && state != 84 && state != 17 && state != 31 && state != 11)
        momemtum = 0
    if (state != 56 && state != 58)
        a = 0
    if (state != 27)
        facestompAnim = 0
    if (state != 67 && state != 27 && state != 36 && state != 70)
        superslam = 0
    if (state != 63)
        machpunchAnim = 0
    if (state != 51)
        ladderbuffer = 0
    if (state != 51)
        stompAnim = 0
    if ((state == 83 || state == 63 || state == 2 || state == 30 || state == 88 || state == 15 || state == 110 || state == 111 || (state == 64 && mach2 >= 100)) && (!instance_exists(obj_mach3effect)))
    {
        toomuchalarm1 = 6
        instance_create(x, y, obj_mach3effect)
    }
    if (toomuchalarm1 > 0)
    {
        toomuchalarm1 -= 1
        if (toomuchalarm1 <= 0 && (state == 83 || state == 2 || state == 63 || state == 88 || (state == 64 && mach2 >= 100) || state == 30 || state == 15 || state == 110 || state == 111 || (state == 26 && mach2 >= 100)))
        {
            instance_create(x, y, obj_mach3effect)
            toomuchalarm1 = 6
        }
    }
	if (sprite_index == spr_null || sprite_index == spr_null) && !instance_exists(obj_mach3effect)
    {
        toomuchalarm1 = 6
        instance_create(x, y, obj_mach3effect)
    }
    if (toomuchalarm1 > 0)
    {
        toomuchalarm1 -= 1
        if (toomuchalarm1 <= 0 && (sprite_index == spr_null || sprite_index == spr_null))
        {
            instance_create(x, y, obj_mach3effect)
            toomuchalarm1 = 6
        }
    }
    if (state != 65 && state != 59 && state != 8 && state != 32 && state != 109 && sprite_index != spr_player_crouchshoot && state != 58 && state != 26 && state != 30 && state != 66 && state != 61 && state != 60)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
    if (state == 16 || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == 49 || state == 71 || state == 57 || state == 54 || state == 48)
        cutscene = 1
    else
        cutscene = 0
    if (state != 66)
        hurtsound = 0
    if ((place_meeting(x, y, obj_door) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == 0)
        instance_create(x, y, obj_uparrow)
    if (state == 63 && (!instance_exists(obj_speedlines)))
        instance_create(x, y, obj_speedlines)
}
scr_collide_destructibles()
if (state != 1 && state != 71 && state != 56 && state != 54 && state != 81 && state != 49 && state != 57 && state != 12 && state != 29 && state != 16 && state != 48 && state != 71)
    scr_collide_player()
if (state == 81)
    scr_collide_player()

if state != 104
{
bushdetection = 0	
}
	if state != 59
	{
	crouchjumptimer = 0	
	}
	if global.combomode = 1
	{
		if global.combo >= 5 && global.combotime <= 0.5
		{
		breakdanceammo += 1	
		}
	}