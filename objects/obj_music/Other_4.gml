if (live_call()) return live_result;
ini_open("saveData.ini")
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()

if (global.panic == 0 && global.snickchallenge == 0)
{
    var roomtag = asset_get_tags(room, asset_room);
	var muid = (is_array(roomtag) ? (array_length(roomtag) >= 1 ? roomtag[0] : "none") : "none");
	var trackposition = 0
	switch (muid)
	{
		case "title":
			music = mu_title
			break
		case "characterselect":
			music = mu_characterselect
			break
		case "hub":
			music = mu_hub
			break
		case "tutorial":
			music = mu_tutorial
			break
		case "entrance":
			switch(obj_player1.character)
			{
				default:
					music = mu_entrance
					break
				case "P":
					music = mu_entrance
					break
				case "N":
					music = mu_entranceN
					break
				case "V":
					music = mu_entranceV
					break
				case "S":
					music = mu_entranceS
					break
				case "PZ":
					music = mu_entrancePZ
					break
			}
			trackposition = 1
			break
		case "medievalentrance":
			music = mu_medievalentrance
			trackposition = 1
			break
		case "medieval":
			music = mu_medieval
			trackposition = 1
			break
		case "medievalremix":
			music = mu_medievalremix
			trackposition = 1
			break
		case "medievalsecret":
			music = mu_medievalsecret
			trackposition = 1
			break
		case "chateau":
			music = mu_chateau
			trackposition = 1
			break
		case "ruin":
			music = mu_ruin
			trackposition = 1
			break
		case "ruinbmix":
			music = mu_ruinbmix
			trackposition = 1
			break
		case "ruinremix":
			music = mu_ruinremix
			trackposition = 1
			break
		case "ruinsecret":
			music = mu_ruinsecret
			trackposition = 1
			break
		case "sanctum":
			music = mu_sanctum
			trackposition = 1
			break
		case "dungeon":
			music = mu_dungeon
			trackposition = 1
			break
		case "dungeonsecret":
			music = mu_dungeonsecret
			trackposition = 1
			break
		case "strongcold":
			music = mu_strongcold
			trackposition = 1
			break
		case "desert":
			music = mu_desert
			trackposition = 1
		case "ufo":
			music = mu_ufo
			break
		case "beach":
			music = mu_beach
			break
		case "forest1":
			music = mu_forest1
			break
		case "gustavo":
			music = mu_gustavo
			break
		case "forest2":
			music = mu_forest2
			break
		case "freezer1":
			music = mu_freezer1
			break
		case "freezer2":
			music = mu_freezer2
			break
		case "factory1":
			music = mu_factory1
			break
		default:
			music = noone
			break
	}
	
    /*if (room == Scootert
	ransition)
    {
        if (!audio_is_playing(mu_characterselect))
        {
            scr_soundstopall()
            scr_sound(mu_characterselect)
            pausedmusic = mu_characterselect
        }
    }
    if (string_letters(roomname) == "NewRealtitlescreen" || string_letters(roomname) == "Realtitlescreen")
    {
        if (!audio_is_playing(mu_title))
        {
            scr_soundstopall()
            scr_sound(mu_title)
            pausedmusic = mu_title
        }
    }
	
    if (string_letters(roomname) == "characterselect")
    {
        if (!audio_is_playing(mu_characterselect))
        {
            scr_soundstopall()
            scr_sound(mu_characterselect)
            pausedmusic = mu_characterselect
        }
    }
    if (string_letters(roomname) == "hubroom" || room == Tutorialtrap || room = cowboytask || string_letters(roomname) == "Titlescreen")
    {
        if (!audio_is_playing(mu_hub))
        {
            scr_soundstopall()
            scr_sound(mu_hub)
            pausedmusic = mu_hub
        }
    }
    if room = hub_roomSNICK
    {
        if (!audio_is_playing(mu_snickchallengeend))
        {
            scr_soundstopall()
            scr_sound(mu_snickchallengeend)
            pausedmusic = mu_snickchallengeend
        }
    }
    if (string_letters(roomname) == "PProom")
    {
        if (!audio_is_playing(mu_tutorial))
        {
            scr_soundstopall()
            scr_sound(mu_tutorial)
            pausedmusic = mu_tutorial
        }
    }

    if (string_letters(roomname) == "minigolf") || (string_letters(roomname) == "resto")
    {
        if (!audio_is_playing(mu_golf))
        {
            scr_soundstopall()
            scr_sound(mu_golf)
            pausedmusic = mu_golf
        }
    }

    if (string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret" || string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret") && global.coop == 0
    {
        if (obj_player1.character == "P")
        {
            if (!audio_is_playing(mu_entrance))
            {
                scr_soundstopall()
                scr_sound(mu_entrance)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = mu_entrance
            }
        }
        else if (obj_player1.character == "N")
        {
            if (!audio_is_playing(mu_entranceN))
            {
                scr_soundstopall()
                scr_sound(mu_entranceN)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = mu_entranceN
            }
        }
        else if (obj_player1.character == "S")
        {
            if (!audio_is_playing(mu_entranceS))
            {
                scr_soundstopall()
                scr_sound(mu_entranceS)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = mu_entranceS
            }
        }
        else if (obj_player1.character == "V")
        {
            if (!audio_is_playing(mu_entranceV))
            {
                scr_soundstopall()
                scr_sound(mu_entranceV)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = mu_entranceV
            }
        }
		else
		{
            if (!audio_is_playing(mu_entrancePZ)) //Technically it's Creampuff's theme lol //Not anymore its not
            {
                scr_soundstopall()
                scr_sound(mu_entrancePZ)
                audio_sound_set_track_position(global.music, fadeoff)
                pausedmusic = mu_entrancePZ
            }			
		}
    }
    if (string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret" || string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret") && global.coop = 1
    {
        if (!audio_is_playing(mu_entrance2p))
        {
            scr_soundstopall()
            scr_sound(mu_entrance2p)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_entrance2p
        }
    }

    if (string_letters(roomname) == "dungeon")
    {
        if (!audio_is_playing(mu_dungeon))
        {
            scr_soundstopall()
            scr_sound(mu_dungeon)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_dungeon
        }
    }
	
    if (string_letters(roomname) == "desert" || string_letters(roomname) == "olddesert")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("desert_" + string(i)) && i <= 11)
            {
                if (!audio_is_playing(mu_desert))
                {
                    scr_soundstopall()
                    scr_sound(mu_desert)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_desert
                }
            }
            else if (roomname == ("desert_" + string(i)) && i > 11)
            {
                if (!audio_is_playing(mu_ufo))
                {
                    scr_soundstopall()
                    scr_sound(mu_ufo)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_ufo
                }
            }
        }
    }
	if (string_letters(roomname) == "factory")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("factory_" + string(i)) && i <= 5)
            {
                if (!audio_is_playing(mu_factory1))
                {
                    scr_soundstopall()
                    scr_sound(mu_factory1)
                    pausedmusic = mu_factory1
                }
            }
            else if (roomname == ("factory_" + string(i)) && i > 5)
            {
                if (!audio_is_playing(mu_factory2))
                {
                    scr_soundstopall()
                    scr_sound(mu_factory2)
                    pausedmusic = mu_factory2
                }
            }
        }
    }
	if string_letters(roomname) = "beach" 
	{
		if !audio_is_playing(mu_beach) && playintro = true  
		{
			if !audio_is_playing(mu_beachintro)
			{
				scr_soundstopall()
				playintro = false
				#region Beach Intro
				global.music = audio_play_sound(mu_beachintro, 10, false)
				ini_open("saveData.ini")
					global.musicvolume = ini_read_real("Option", "musicvolume", 1)
				ini_close()
				audio_sound_gain(global.music, (0.6 * global.musicvolume), 0)	
				#endregion
				audio_sound_set_track_position(global.music, 0)
				pausedmusic = mu_beachintro
			}
		}
		if !audio_is_playing(mu_beach) && !audio_is_playing(mu_beachintro) && playintro = false
		{
			scr_soundstopall()
			scr_sound(mu_beach)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_beach
		}	
	}    
    if (string_letters(roomname) == "sewer")
    {
        for (i = 0; i < 20; i++)
        {
            if ((roomname == ("sewer_" + string(i)) && i <= 6) /*|| room == sewer_12)
            {
                if (!audio_is_playing(mu_sewer1))
                {
                    scr_soundstopall()
                    scr_sound(mu_sewer1)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_sewer1
                }
            }
            else if (roomname == ("sewer_" + string(i)) && i > 6 /*&& room != sewer_12)
            {
                if (!audio_is_playing(mu_sewer2))
                {
                    scr_soundstopall()
                    scr_sound(mu_sewer2)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_sewer2
                }
            }
        }
    }
    if (string_letters(roomname) == "oldfreezer")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("oldfreezer_" + string(i)) && i <= 6)
            {
                if (!audio_is_playing(mu_freezer1))
                {
                    scr_soundstopall()
                    scr_sound(mu_freezer1)
                    pausedmusic = mu_freezer1
                }
            }
            else if ((roomname == ("oldfreezer_" + string(i)) && i > 6) /*|| room == oldfreezer_11)
            {
                if (!audio_is_playing(mu_freezer2))
                {
                    scr_soundstopall()
                    scr_sound(mu_freezer2)
                    pausedmusic = mu_freezer2
                }
            }
        }
    }
    if (string_letters(roomname) == "mansion")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("mansion_" + string(i)) && i <= 7)
            {
                if (!audio_is_playing(mu_forest))
                {
                    scr_soundstopall()
                    scr_sound(116)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 116
                }
            }
            else if (roomname == ("mansion_" + string(i)) && i > 7)
            {
                if (!audio_is_playing(mu_mansion))
                {
                    scr_soundstopall()
                    scr_sound(117)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 117
                }
            }
        }
    }
    if (string_letters(roomname) == "strongcold") || room = strongcold_miniboss
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("strongcold_" + string(i)) && i > 1) || room = strongcold_miniboss
            {
                if (!audio_is_playing(mu_strongcold))
                {
                    scr_soundstopall()
                    scr_sound(mu_strongcold)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_strongcold
                }
            }
            else if (roomname == "strongcold_1") && room != strongcold_miniboss
            {
                if (!audio_is_playing(mu_scary))
                {
                    scr_soundstopall()
                    scr_sound(mu_scary)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_scary
                }
            }
        }
    }
    if (string_letters(roomname) == "medieval")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("medieval_" + string(i)) && i <= 2)
            {
                if (!audio_is_playing(mu_medievalentrance))
                {
                    scr_soundstopall()
                    scr_sound(mu_medievalentrance)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_medievalentrance
                }
            }
            else if (roomname == ("medieval_" + string(i)) && i > 2 && i <= 5) || room == medieval_3_1
            {
                if (!audio_is_playing(mu_medievalremix))
                {
                    scr_soundstopall()
                    scr_sound(mu_medievalremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_medievalremix
                }
            }
            else if (roomname == ("medieval_" + string(i)) && i > 5)
            {
                if (!audio_is_playing(mu_medieval))
                {
                    scr_soundstopall()
                    scr_sound(mu_medieval)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_medieval
                }
            }
        }
    }
    if (string_letters(roomname) == "sanctum")
    {	
        if (!audio_is_playing(mu_sanctum))
        {
            scr_soundstopall()
            scr_sound(mu_sanctum)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_sanctum
        }		
	}
	 if (string_letters(roomname) == "pinball")
    {	
        if (!audio_is_playing(mu_pinball))
        {
            scr_soundstopall()
            scr_sound(mu_pinball)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_pinball
        }		
	}
    if (string_letters(roomname) == "ruin")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("ruin_" + string(i)) && i <= 6)
            {
                if ((!audio_is_playing(mu_ruin)) && global.ruinmusic == 0)
                {
                    scr_soundstopall()
                    scr_sound(mu_ruin)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_ruin
					audio_sound_gain(mu_ruin, (1), 0)					
					audio_sound_gain(mu_ruinbmix, (1), 0)						
                }
                else if ((!audio_is_playing(mu_ruinbmix)) && global.ruinmusic == 1)
                {
                    scr_soundstopall()
                    scr_sound(mu_ruinbmix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_ruinbmix
					audio_sound_gain(mu_ruinbmix, (1), 0)								
                }
            }
            else if (roomname == ("ruin_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_ruinremix))
                {
                    scr_soundstopall()
                    scr_sound(mu_ruinremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_ruinremix
                }
            }
        }
    }
    if (string_letters(roomname) == "chateau")
    {
        if (!audio_is_playing(mu_chateau))
        {
            scr_soundstopall()
            scr_sound(mu_chateau)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_chateau
        }
    }
    if (string_letters(roomname) == "ruinsecret") || (string_letters(roomname) == "sanctumsecret")
    {
        if (!audio_is_playing(mu_ruinsecret))
        {
            scr_soundstopall()
            scr_sound(mu_ruinsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_ruinsecret
        }
    }

    if (string_letters(roomname) == "strongcoldsecret" || string_letters(roomname) == "dungeonsecret")
    {
        if (!audio_is_playing(mu_dungeonsecret))
        {
            scr_soundstopall()
            scr_sound(mu_dungeonsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_dungeonsecret
        }
    }
    if (string_letters(roomname) == "chateausecret" || string_letters(roomname) == "medievalsecret")
    {
        if (!audio_is_playing(mu_medievalsecret))
        {
            scr_soundstopall()
            scr_sound(mu_medievalsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_medievalsecret
        }
    }
    if (string_letters(roomname) == "desertsecret" && global.desertnight != 1)
    {
        if (!audio_is_playing(mu_desertsecret))
        {
            scr_soundstopall()
            scr_sound(mu_desertsecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_desertsecret
        }
    }
	if (string_letters(roomname) == "wasteyardsecret")
    {
        if (!audio_is_playing(mu_cowboysecret))
        {
            scr_soundstopall()
            scr_sound(mu_cowboysecret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = mu_cowboysecret
        }
    }/*
    if (string_letters(roomname) == "desertsecret" && global.desertnight == 1)
    {
        if (!audio_is_playing(mu_cowboysecret))
        {
            scr_soundstopall()
            scr_sound(111)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 111
        }
    }
    if (string_letters(roomname) == "mansionsecret")
    {
        if (!audio_is_playing(mu_forestsecret))
        {
            scr_soundstopall()
            scr_sound(124)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 124
        }
    }
	if (string_letters(roomname) == "kungfu")
    {
        if (!audio_is_playing(mu_kungfu))
        {
            scr_soundstopall()
            scr_sound(mu_kungfu)
            pausedmusic = mu_kungfu
        }
    }
	if (string_letters(roomname) == "wasteyard")
    {
        if (!audio_is_playing(mu_cowboy))
        {
            scr_soundstopall()
            scr_sound(mu_cowboy)
            pausedmusic = mu_cowboy
        }
    }
	if (string_letters(roomname) == "factory")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("factory_" + string(i)) && i <= 6)
            {
                if ((!audio_is_playing(mu_factory1)) && global.factorymusic == 0)
                {
                    scr_soundstopall()
                    scr_sound(mu_factory1)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_factory1
					audio_sound_gain(mu_factory1, (1), 0)					
					audio_sound_gain(mu_factory1, (1), 0)						
                }
                else if ((!audio_is_playing(mu_factory2)) && global.factorymusic == 1)
                {
                    scr_soundstopall()
                    scr_sound(mu_factory2)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_factory2
					audio_sound_gain(mu_factory2, (1), 0)								
                }
            }
            else if (roomname == ("factory_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_factory2))
                {
                    scr_soundstopall()
                    scr_sound(mu_factory2)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_factory2
                }
            }
        }
    }
	if (string_letters(roomname) == "freezer")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("freezer_" + string(i)) && i <= 6)
            {
                if (!audio_is_playing(mu_freezer1))
                {
                    scr_soundstopall()
                    scr_sound(mu_freezer1)
                    pausedmusic = mu_freezer1
                }
            }
            else if ((roomname == ("freezer_" + string(i)) && i > 6) /*|| room == freezer_11)
            {
                if (!audio_is_playing(mu_freezer2))
                {
                    scr_soundstopall()
                    scr_sound(mu_freezer2)
                    pausedmusic = mu_freezer2
                }
            }
        }
    }
	if (string_letters(roomname) == "forest")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("forest_" + string(i)) && i <= 3)
            {
                if (!audio_is_playing(mu_forest1))
                {
                    scr_soundstopall()
                    scr_sound(mu_forest1)
                    pausedmusic = mu_forest1
                }
            }
            else if ((roomname == ("forest_" + string(i)) && i = 4) /*|| room == freezer_11)
            {
                if (!audio_is_playing(mu_gustavo))
                {
                    scr_soundstopall()
                    scr_sound(mu_gustavo)
                    pausedmusic = mu_gustavo
                }
            }
			else if ((roomname == ("forest_" + string(i)) && i >= 5) || room == freezer_11)
            {
                if (!audio_is_playing(mu_forest2))
                {
                    scr_soundstopall()
                    scr_sound(mu_forest2)
                    pausedmusic = mu_forest2
                }
            }
        }
    }
	if room = room_test1
	{
	    if (!audio_is_playing(mu_freezer2))
        {
             scr_soundstopall()
             scr_sound(mu_freezer2)
             pausedmusic = mu_freezer2
        }	
	}
	if room = room_test4 || room = room_test3
	{
	    if (!audio_is_playing(mu_desert))
        {
             scr_soundstopall()
             scr_sound(mu_desert)
             pausedmusic = mu_desert
        }	
	}	
		if room = room_test5
	{
	    if (!audio_is_playing(mu_freezer2))
        {
             scr_soundstopall()
             scr_sound(mu_freezer2)
             pausedmusic = mu_freezer2
        }	
	}
		if room = room_test6
	{
	    if (!audio_is_playing(mu_forest1))
        {
             scr_soundstopall()
             scr_sound(mu_forest1)
             pausedmusic = mu_forest1
        }	
	}
	*/
	
	if (music != noone && !audio_is_playing(music)) 
	{
    audio_stop_all();
    scr_sound(music);
    pausedmusic = music;
	}
	if trackposition = 1
	audio_sound_set_track_position(global.music, fadeoff)
	audio_sound_gain(global.music, (0.6 * global.musicvolume), 0)
}


