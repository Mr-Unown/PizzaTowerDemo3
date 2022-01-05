        if (global.timeattack == 1)
            obj_timeattack.stop = 1
        global.lapping = 0
        global.laptouched = 0
        targetDoor = "A"
        obj_camera.alarm[2] = -1
        scr_stopescapemusic()
		//Rank Decide
		if global.timeattack = false
		{ 
			#region Ranks
			if ((global.collect) >= global.srank)
			{
				if (global.snickchallenge == false)
				{
					//If both Plus Conditions Ring True go P
					if global.comboended == false && global.treasure == true
						global.rank = "p"
					else if global.comboended == false || global.treasure == true
						global.rank = "s+"
					else
						global.rank = "s"				
				}
				else
				{
					//If both Plus Conditions Ring True go P
					if global.got_hurt == false && global.toppintotal >= 15
						global.rank = "p"
					else if global.got_hurt == false || global.toppintotal >= 15
						global.rank = "s+"						
					else
						global.rank = "s"						
				}
			}
			else if ((global.collect) > global.arank)
				global.rank = "a"
			else if ((global.collect) > global.brank)
	            global.rank = "b"
			else if ((global.collect) > global.crank)
	            global.rank = "c"
			else
				global.rank = "d"
			#endregion
		}
		else
		{
			#region Timeattack
			if ((global.timeattackpoints) <= global.stimerank)
			{
				if global.toppintotal >= 5 && global.deathmode == true
					global.rank = "p"
				else if	global.toppintotal >= 5 || global.deathmode == true
					global.rank = "s+"
				else
					global.rank = "s"
			}
			else if ((global.timeattackpoints) <= global.atimerank)
				global.rank = "a"
			else if ((global.timeattackpoints) <= global.btimerank)
	            global.rank = "b"
			else if ((global.timeattackpoints) <= global.ctimerank)
	            global.rank = "c"
			else
				global.rank = "d"
			#endregion
		}
		switch global.rank
		{
			case "p":
			case "s+":
			case "s":
				scr_soundstop(mu_ranks)
			break;
			case "a":
				scr_soundstop(mu_ranka)
			break;
			case "b":
				scr_soundstop(mu_rankb)
			break;
			case "c":
				scr_soundstop(mu_rankc)
			break;
			case "d":
				scr_soundstop(mu_rankd)
			break;
			
		}

		#region Get Score
		ini_open("playerData_"+global.savefile+".ini")
			if (ini_read_string("Secret", string(global.levelname), 0) < global.secretfound)
				ini_write_string("Secret", string(global.levelname), global.secretfound)		
			if (ini_read_string("Treasure", string(global.levelname), 0) == 0)
				ini_write_string("Treasure", string(global.levelname), global.treasure)			
			if (ini_read_string("Deathmode", string(global.levelname), 0) == 0)
				ini_write_string("Deathmode", string(global.levelname), global.deathmode)						
			if (ini_read_string("Highscore", string(global.levelname), 0) < global.collect) && global.timeattack = false
				ini_write_string("Highscore", string(global.levelname), global.collect)
			if (ini_read_string("Toppin", (string(global.levelname) + "1"), 0) == 0)
				ini_write_string("Toppin", (string(global.levelname) + "1"), global.shroomfollow)
			if (ini_read_string("Toppin", (string(global.levelname) + "2"), 0) == 0)
				ini_write_string("Toppin", (string(global.levelname) + "2"), global.cheesefollow)
			if (ini_read_string("Toppin", (string(global.levelname) + "3"), 0) == 0)
				ini_write_string("Toppin", (string(global.levelname) + "3"), global.tomatofollow)
			if (ini_read_string("Toppin", (string(global.levelname) + "4"), 0) == 0)
				ini_write_string("Toppin", (string(global.levelname) + "4"), global.sausagefollow)
			if (ini_read_string("Toppin", (string(global.levelname) + "5"), 0) == 0)
				ini_write_string("Toppin", (string(global.levelname) + "5"), global.pineapplefollow)
			//Snick Challenge
			if (global.snickchallenge == true)
			{
				if ini_read_real("Rescued", string(global.levelname), 0) < global.toppintotal
					ini_write_real("Rescued", string(global.levelname), global.toppintotal)				
			}				
			var string_rank = string(global.timeattack == false ? "Ranks" : "Time")

			if rank_checker(global.rank) > rank_checker(ini_read_string(string_rank, string(global.levelname), "d"))
				ini_write_string(string_rank, string(global.levelname), global.rank)
        ini_close()
		#endregion
		
        if (!instance_exists(obj_endlevelfade))
            instance_create(x, y, obj_endlevelfade)
		if (!instance_exists(obj_gatetransition))
			instance_create(x, y, obj_gatetransition)		
        obj_player1.state = 78
		obj_player1.image_index = 0
        obj_player1.sprite_index = obj_player1.spr_lookdoor
        if instance_exists(obj_player2)
        {
            obj_player2.state = 78
            obj_player2.sprite_index = obj_player2.spr_lookdoor
			obj_player2.image_index = 0
        }
        obj_endlevelfade.alarm[0] = 510
        image_index = 0
        global.panic = 0
        global.snickchallenge = 0
		global.fakepeppino = 0

