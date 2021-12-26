if ((!pause) && (!instance_exists(obj_fadeout)))
{
	
    if (obj_player1.key_start && room != rank_room && room != global.roomstart[global.newtitlescreen] && room != timesuproom)
    {
        selected = 0
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
    if global.shellactivate == false && ((obj_player2.key_jump || keyboard_check_pressed(vk_f5)) && global.coop == 0 && room != rank_room && room != Scootertransition && room != global.roomstart[global.newtitlescreen] && room != timesuproom) && !instance_exists(obj_palettechanger)
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
            _message = "PLAYER 2 HAS ENTERED THE GAME"
            showtext = 1
            alarm[0] = 100
        }
    }
    if (global.debugmode == 1) && global.shellactivate == false
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
                _message = "PLAYER 2 HAS ENTERED THE GAME"
                showtext = 1
                alarm[0] = 100
            }
        }
        if keyboard_check_pressed(vk_f10)
        {
            global.combotime = 60
			global.pausecombotime = true
			obj_tv.alarm[1] = 75
            global.combo += 10
			global.style += 3
            //global.peppermode = 0
			obj_player1.supertauntcharged = true;
			obj_player2.supertauntcharged = true;
			if obj_player1.murderammo <= 3
			obj_player1.murderammo += 1;
			if obj_player2.murderammo <= 3
			obj_player2.murderammo += 1;			
        }
        if keyboard_check_pressed(vk_f11)
		{
			global.pausecombotime = false
            //global.peppermode = 1
		}
		if DEBUG
		{
			//Todo: Snapshot Mode like super mario 3d world + bowser's furry collection
			if keyboard_check_pressed(vk_f12)
			{
				screenshot_surface = surface_create(960,540)
				surface_set_target(screenshot_surface)
				draw_clear_alpha(c_black, 0)
				gpu_set_blendenable(false)
				draw_surface(application_surface,0,0)
				gpu_set_colorwriteenable(0, 0, 0, 1)
				draw_set_color(c_white)
				draw_rectangle(-192, -192, 960 + 192, 540 + 192, 0)
				gpu_set_blendenable(true)
				gpu_set_colorwriteenable(1, 1, 1, 1)
				surface_reset_target()
	
				var file;
				file = get_save_filename_ext("screenshot|*.png", "", working_directory, "Save your Screenshot");
				if file != ""
				{
					surface_save(screenshot_surface, file);
				}	
			}
		}
    }
}
//if keyboard_check_pressed(vk_f6)
//{
//    global.debugmode = !global.debugmode
//	if global.debugmode = 1
//    with (obj_tv)
//    {
//        _message = "DEBUG MODE ON"
//        showtext = 1
//        alarm[0] = 100
//    }
//	else
//	with (obj_tv)
//    {
//        _message = "DEBUG MODE OFF"
//        showtext = 1
//        alarm[0] = 100
//    }
//}
if keyboard_check_pressed(vk_f7)
{
    global.hudmode = !global.hudmode
	if global.hudmode = 1
    with (obj_tv)
    {
        _message = "HUD OFF"
        showtext = 1
        alarm[0] = 100
    }
	else
	with (obj_tv)
    {
        _message = "HUD ON"
        showtext = 1
        alarm[0] = 100
    }
}

if (instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout))
    instance_destroy(obj_pausefadeout)
if (pause == 1 && (!instance_exists(obj_mainconfig)))
{
    scr_getinput()
    application_surface_draw_enable(true)
    if ((key_down2 || key_right2) && selected < 2)
    {
        selected += 1
        scr_soundeffect(sfx_step)
    }
    else if (key_down2 || key_right2)
    {
        selected = -1
        scr_soundeffect(sfx_step)
    }
    if ((key_up2 || (-key_left2)) && selected > -1)
    {
        selected -= 1
        scr_soundeffect(sfx_step)
    }
    else if (key_up2 || (-key_left2))
    {
        selected = 2
        scr_soundeffect(sfx_step)
    }
	if key_jump
	{
		switch (selected) 
		{
			case -1:
		#region Config
        if (!instance_exists(obj_mainconfig))
            instance_create(x, y, obj_mainconfig)
        scr_soundeffect(sfx_enemyprojectile)
        if (!audio_is_playing(global.pausenicemusic))
        {
            global.pausenicemusic = audio_play_sound(mu_options, 10, true)
            audio_sound_gain(global.pausenicemusic, (0.6 * global.musicvolume), 1)
        }
        else
            audio_resume_sound(global.pausenicemusic)
		#endregion				
				break;			
			case 0:
		#region Leave
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)		
		#endregion
				break;			
		    case 1:
		#region Restart
        var roomname = room_get_name(room);
        global.lapping = 0;
        global.laptouched = 0;
        if (global.snickchallenge == 0)
        {
            if (string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret") ||/* room = entrance_pizzamart ||*/ room = entrance_treasure
            {
                instance_activate_all();
				room_goto(entrance_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }
            else if (string_letters(roomname) == "medieval" || string_letters(roomname) == "medievalsecret") || room = medieval_pizzamart || room = medieval_treasure
            {
                instance_activate_all();
               	room_goto(medieval_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }
            else if (string_letters(roomname) == "ruin" || string_letters(roomname) == "ruinsecret") || room = ruin_pizzamart || room = ruin_treasure
            {
                instance_activate_all();
				room_goto(ruin_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }
            else if (string_letters(roomname) == "dungeon" || string_letters(roomname) == "dungeonsecret") || room = dungeon_pizzamart || room = dungeon_treasure
            {
                instance_activate_all();
				room_goto(dungeon_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }
            else if (string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret") ||/* room = ancient_pizzamart ||*/ room = ancient_treasure
            {
                instance_activate_all();
                room_goto(ancient_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }				
            else if (string_letters(roomname) == "chateau" || string_letters(roomname) == "chateausecret") || room = chateau_pizzamart || room = chateau_treasure
            {
                instance_activate_all();
                room_goto(chateau_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }		
            else if (string_letters(roomname) == "sanctum" || string_letters(roomname) == "sanctumsecret") || room = sanctum_pizzamart || room = sanctum_treasure
            {
                instance_activate_all();
				room_goto(sanctum_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }			
            else if (string_letters(roomname) == "strongcold" || string_letters(roomname) == "strongcoldsecret") ||  room = strongcold_miniboss || room = strongcold_pizzamart || room = strongcold_treasure
            {
                instance_activate_all();;
                room_goto(strongcold_10);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }/*
            else if (string_letters(roomname) == "golf" || string_letters(roomname) == "golfsecret")
            {
                instance_activate_all()
                room = golf_1
                scr_playerreset()
                pause = 0
                obj_player1.targetDoor = "A"
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A"
            }*/
            else if (string_letters(roomname) == "resto" || string_letters(roomname) == "restosecret")
            {
                instance_activate_all();
                room_goto(resto_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
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
			/*
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
            }*/
            else if (string_letters(roomname) == "kungfu" || string_letters(roomname) == "kungfusecret")
            {
                instance_activate_all();
				room_goto(kungfu_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }			
			else if (string_letters(roomname) == "factory" || string_letters(roomname) == "factorysecret")
            {
                instance_activate_all();;
                room_goto(factory_1);
                script_execute(scr_playerreset);
                pause = 0;
                obj_player1.targetDoor = "A";
                if instance_exists(obj_player2)
                    obj_player2.targetDoor = "A";
            }
            else if !audio_is_playing(sfx_enemyprojectile)
                scr_soundeffect(sfx_enemyprojectile);
        }
        else if (global.snickchallenge == 1)
        {
            instance_activate_all();
			room_goto(medieval_1);
            script_execute(scr_playerreset);
            global.lapping = 0;
            global.laptouched = 0;
            with (obj_camera)
            {
                alarm[1] = 60;
                global.seconds = 59;
                global.minutes = 9;
            }
            global.wave = 0;
            global.maxwave = (((global.minutes * 60) + global.seconds) * 60);
            if global.panicbg = true
                scr_panicbg_init();
           	with obj_player1
			{
				collectscore = 10000;
				targetDoor = "A";
			}	
			with obj_player2
			{
				targetDoor = "A"
			}
            global.snickchallenge = 1;
            global.nocombo = 1;
            pause = 0;
        }
		#endregion
		        break;
			case 2:
		#region Quit
		//I know this is a useless localvar
		//I have a feeling that this will fix the YYC problem
		var _room = room
        if (_room == hub_room1 || _room == hub_room2 || _room == hub_room3 || _room == cowboytask || _room == Titlescreen || _room == Scootertransition || _room == characterselect)
        {
			with instance_create(x,y,obj_pausefadeout)
			{
				global.flushtextures = true;
				fadein = 1;
				fadealpha = 1;
			}
			pause = 0;
            instance_activate_all();
            global.lapping = 0;
            global.nocombo = 0;
            global.laptouched = 0;
			global.levelname = "none";
			global.timeattack = 0;
			room_goto(global.roomstart[global.newtitlescreen]);
            with (obj_player1)
            {
                character = "P";
                scr_characterspr();
            }
            script_execute(scr_playerreset);
            obj_player.state = 8;
            //global.equippedhat = 0;
			with obj_player
			{
				targetDoor = "A";
			}		
            global.coop = 0;
        }
        else if (_room != hub_room1 && _room != hub_room2 && _room != hub_room3 && _room != cowboytask && _room != Titlescreen && _room != Scootertransition && _room != characterselect)
        {
			with instance_create(x,y,obj_pausefadeout)
			{
				global.flushtextures = true;
				fadein = 1;
				fadealpha = 1;
			}
			pause = 0;
            instance_activate_all();
            global.lapping = 0;
            global.laptouched = 0;
			global.fakepeppino = 0;
			global.timeattack = 0;
			script_execute(scr_playerreset);
			var _backtohubroom = hub_room1;
			var roomname = room_get_name(room)
			if global.levelname != "none"
			{
				with obj_player1
				{
					targetDoor = "start";
					_backtohubroom = backtohubroom;
				}
				with obj_player2
				{
					targetDoor = "start";
				}		
			}
			else
			{
				targetDoor = "A";
				_backtohubroom = hub_room1;
			}
			global.levelname = "none";
			room_goto(_backtohubroom); 
        }
		#endregion		
				break;
		}
	}
    if (!instance_exists(obj_mainconfig))
    {
        if audio_is_playing(global.pausenicemusic)
            audio_pause_sound(global.pausenicemusic)
    }	
}


