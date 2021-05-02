if ((!pause) && (!instance_exists(obj_fadeout)))
{
    if (obj_player1.key_start && room != rank_room && room != Realtitlescreen && room != timesuproom)
    {
        selected = 0
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
    if ((obj_player2.key_jump || keyboard_check_pressed(vk_f5)) && global.coop == 0 && room != rank_room && room != Scootertransition && room != Realtitlescreen && room != timesuproom)
    {
        global.coop = 1
        with (obj_player2)
        {
            blackblend = 0
            image_blend = make_colour_hsv(0, 0, 255)
            x = obj_player1.x
            y = obj_player1.y
            state = 0
            if (!instance_exists(obj_coopflag))
                instance_create(x, y, obj_coopflag)
        }
        with (obj_tv)
        {
            message = "PLAYER 2 HAS ENTERED THE GAME"
            showtext = 1
            alarm[0] = 100
        }
    }
    if (global.debugmode == 1)
    {
        if (keyboard_check_pressed(vk_f5) && global.coop == 0)
        {
            global.coop = 1
            with (obj_player2)
            {
                blackblend = 0
                image_blend = make_colour_hsv(0, 0, 255)
                x = obj_player1.x
                y = obj_player1.y
                state = 0
                if (!instance_exists(obj_coopflag))
                    instance_create(x, y, obj_coopflag)
            }
            with (obj_tv)
            {
                message = "PLAYER 2 HAS ENTERED THE GAME"
                showtext = 1
                alarm[0] = 100
            }
        }
        if keyboard_check_pressed(vk_f10)
        {
            global.combotime = 60
			global.pausecombotime = true
			obj_tv.alarm[1] = 75
            global.combo = 3
            global.peppermode = 0
        }
        if keyboard_check_pressed(vk_f11)
		{
			global.pausecombotime = false
            global.peppermode = 1
		}
		//For Development Purposes only
        if keyboard_check_pressed(vk_f12)
		{
			var rm_name = room_get_name(room);
			var lay_id = layer_get_id("Tiles_1")
			var map_id = layer_tilemap_get_id(lay_id)
			screenshot_surface = surface_create(room_width,room_height)
			surface_set_target(screenshot_surface)
			draw_tilemap(map_id,0,0)
			surface_reset_target()
			surface_save(screenshot_surface, "screenshot_" + string(rm_name) +".png");	
		}
    }
}
if keyboard_check_pressed(vk_f6)
{
    global.debugmode = !global.debugmode
	if global.debugmode = 1
    with (obj_tv)
    {
        message = "DEBUG MODE ON"
        showtext = 1
        alarm[0] = 100
    }
	else
	with (obj_tv)
    {
        message = "DEBUG MODE OFF"
        showtext = 1
        alarm[0] = 100
    }
}
if keyboard_check_pressed(vk_f7)
{
    global.hudmode = !global.hudmode
	if global.hudmode = 1
    with (obj_tv)
    {
        message = "HUD OFF"
        showtext = 1
        alarm[0] = 100
    }
	else
	with (obj_tv)
    {
        message = "HUD ON"
        showtext = 1
        alarm[0] = 100
    }
}

if (instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout))
    instance_destroy(obj_pausefadeout)
if (pause == 1 && (!instance_exists(obj_mainconfig)))
{
    scr_getinput()
    application_surface_draw_enable(1)
    if ((key_down2 || key_right2) && selected < 2)
    {
        selected += 1
        scr_soundeffect(29)
    }
    else if (key_down2 || key_right2)
    {
        selected = -1
        scr_soundeffect(29)
    }
    if ((key_up2 || (-key_left2)) && selected > -1)
    {
        selected -= 1
        scr_soundeffect(29)
    }
    else if (key_up2 || (-key_left2))
    {
        selected = 2
        scr_soundeffect(29)
    }
    if (key_jump2 && selected == -1)
    {
        if (!instance_exists(obj_mainconfig))
            instance_create(x, y, obj_mainconfig)
        scr_soundeffect(8)
        if (!audio_is_playing(global.pausenicemusic))
        {
            global.pausenicemusic = audio_play_sound(mu_options, 10, true)
            audio_sound_gain(global.pausenicemusic, (0.6 * global.musicvolume), 1)
        }
        else
            audio_resume_sound(global.pausenicemusic)
    }
    if (!instance_exists(obj_mainconfig))
    {
        if audio_is_playing(global.pausenicemusic)
            audio_pause_sound(global.pausenicemusic)
    }
    if (key_jump && selected == 1)
    {
        var roomname = room_get_name(room)
        global.lapping = 0
        global.laptouched = 0
        if (global.snickchallenge == 0)
        {
            if (string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret") ||/* room = entrance_pizzamart ||*/ room = entrance_treasure
            {
                instance_activate_all()
                room = entrance_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "medieval" || string_letters(roomname) == "medievalsecret") || room = medieval_pizzamart || room = medieval_treasure
            {
                instance_activate_all()
                room = medieval_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "ruin" || string_letters(roomname) == "ruinsecret") || room = ruin_pizzamart || room = ruin_treasure
            {
                instance_activate_all()
                room = ruin_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "dungeon" || string_letters(roomname) == "dungeonsecret") || room = dungeon_pizzamart || room = dungeon_treasure
            {
                instance_activate_all()
                room = dungeon_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret") ||/* room = ancient_pizzamart ||*/ room = ancient_treasure
            {
                instance_activate_all()
                room = ancient_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }				
            else if (string_letters(roomname) == "chateau" || string_letters(roomname) == "chateausecret") || room = chateau_pizzamart || room = chateau_treasure
            {
                instance_activate_all()
                room = chateau_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }			
            else if (string_letters(roomname) == "strongcold" || string_letters(roomname) == "strongcoldsecret") || room = strongcold_pizzamart || room = strongcold_treasure
            {
                instance_activate_all()
                room = strongcold_10
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "golf" || string_letters(roomname) == "golfsecret")
            {
                instance_activate_all()
                room = golf_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "resto" || string_letters(roomname) == "restosecret")
            {
                instance_activate_all()
                room = resto_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }			
            else if (string_letters(roomname) == "desert" || string_letters(roomname) == "desertsecret")
            {
                instance_activate_all()
                room = desert_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "factory" || string_letters(roomname) == "factorysecret")
            {
                instance_activate_all()
                room = factory_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "sewer" || string_letters(roomname) == "sewersecret")
            {
                instance_activate_all()
                room = sewer_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "freezer" || string_letters(roomname) == "freezersecret")
            {
                instance_activate_all()
                room = freezer_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "mansion" || string_letters(roomname) == "mansionsecret")
            {
                instance_activate_all()
                room = mansion_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }
            else if (string_letters(roomname) == "kungfu" || string_letters(roomname) == "kungfusecret")
            {
                instance_activate_all()
                room = kungfu_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }			
            else
                scr_soundeffect(8)
        }
        else if (global.snickchallenge == 1)
        {
            instance_activate_all()
            room = medieval_1
            scr_playerreset()
            global.lapping = 0
            global.laptouched = 0
            obj_player1.collectscore = 10000
            global.seconds = 59
            global.minutes = 9
            global.wave = 0
            global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
            if global.panicbg = true
                scr_panicbg_init()
            obj_player1.targetDoor = "A"
            global.snickchallenge = 1
            global.nocombo = 1
            pause = 0
        }
    }
    if (key_jump2 && selected == 2)
    {
        if (room == hub_room1 || room == Titlescreen || room == Scootertransition || room == characterselect)
        {
            pause = 0
            instance_activate_all()
            global.lapping = 0
            global.nocombo = 0
            global.laptouched = 0
            room = Realtitlescreen
            with (obj_player1)
            {
                character = "P"
                scr_characterspr()
            }
            scr_playerreset()
            obj_player.state = 8
            global.cowboyhat = 0
            obj_player1.targetDoor = "A"
            if instance_exists(obj_player2)
                obj_player2.targetDoor = "A"
            global.coop = 0
        }
        else
        {
            pause = 0
            instance_activate_all()
            global.lapping = 0
            global.laptouched = 0
			global.levelname = "none"
			global.fakepeppino = 0
			scr_playerreset()

			if obj_player.backtohubroom != noone {
			obj_player1.targetDoor = "start"
			if instance_exists(obj_player2)			
			obj_player2.targetDoor = "start"				
			room = obj_player.backtohubroom		 
			}
			else {
			obj_player1.targetDoor = "A"
			if instance_exists(obj_player2)
			obj_player2.targetDoor = "A"				
			room = hub_room1
			}
        }
    }
    if (key_jump2 && selected == 0)
    {
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}


