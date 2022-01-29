function scr_endlevel()
{
	//Gate Transition Effect
	var obj_index = object_index == obj_treasure ? id : other.id
	if !instance_exists(obj_gatetransition)
		instance_create(obj_index.x, obj_index.y, obj_gatetransition)
	//Stop Timeattack
	if (global.timeattack == 1)
		obj_timeattack.stop = 1
		
	#region End Combo
	global.combotime = 0;
	scr_soundeffect(sfx_comboend);
	//Quips
	if global.combo > 3
	{
		var randomchance = irandom_range(0,100);
		if (randomchance < global.quipsfrequency)
		{
			scr_soundeffect(sfx_yipee,sfx_prettygood);
		}
	}
	//Shake
	if obj_player1.storedscore > 0 || obj_player2.storedscore > 0
	{
		if global.newhud = false
		{
			with obj_tv
			{
				shake = true;
				alarm[2] = 50;
			}
		}
		else
		{
			with obj_camera
			{
				shakemag = 7
			}
		}
	}
	//End it all
	global.combo = 0
	obj_player1.collectscore += obj_player1.storedscore;
	obj_player2.collectscore += obj_player2.storedscore;	
	obj_player1.storedscore = 0;
	obj_player2.storedscore = 0;
	#endregion		
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
				//Snick Challenge
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
		if ((global.timeattack_value) <= global.stimerank)
		{
			if global.toppintotal >= 5 && global.deathmode == true
				global.rank = "p"
			else if	global.toppintotal >= 5 || global.deathmode == true
				global.rank = "s+"
			else
				global.rank = "s"
		}
		else if ((global.timeattack_value) <= global.atimerank)
			global.rank = "a"
		else if ((global.timeattack_value) <= global.btimerank)
			global.rank = "b"
		else if ((global.timeattack_value) <= global.ctimerank)
			global.rank = "c"
		else
			global.rank = "d"
		#endregion
	}
	
	#region Rank Music
	var player = focused_player()
	switch global.rank
	{
		case "p":
		case "s+":
		case "s":
		if player.character == "PZ"
			scr_soundstop(mu_ranksPZ)
		else
			scr_soundstop(mu_ranks)
		break;
		case "a":
		 if player.character == "PZ"
			scr_soundstop(mu_rankaPZ)
		else
			scr_soundstop(mu_ranka)
		break;
		case "b":
		 if player.character == "PZ"
			scr_soundstop(mu_rankbPZ)
		else			
			scr_soundstop(mu_rankb)
		break;
		case "c":
		 if player.character == "PZ"
			scr_soundstop(mu_rankcPZ)
		else			
			scr_soundstop(mu_rankc)
		break;
		case "d":
		 if player.character == "PZ"
			scr_soundstop(mu_rankdPZ)
		else			
			scr_soundstop(mu_rankd)
		break;
		
	}
	#endregion
	
	#region Save File Stuff
	ini_open("playerData_"+global.savefile+".ini")		
		//Secrets
		if (ini_read_string("Secret", string(global.levelname), 0) < global.secretfound)
			ini_write_string("Secret", string(global.levelname), global.secretfound);		
		//Treasure
		if (ini_read_string("Treasure", string(global.levelname), 0) == 0)
			ini_write_string("Treasure", string(global.levelname), global.treasure);								
		//Highscore
		if (ini_read_string("Highscore", string(global.levelname), 0) < global.collect) && global.timeattack = false
			ini_write_string("Highscore", string(global.levelname), global.collect);
		//Time Attack Time
		if (ini_read_real("TimeAttack", string(global.levelname), 0) > global.timeattack_value)
			ini_write_real("TimeAttack", string(global.levelname), global.timeattack_value);
		//Laps
		if (ini_read_real("Laps", string(global.levelname), 0) < global.lapping)
			ini_write_real("Laps", string(global.levelname), global.lapping);
		//Deathmode
		if (ini_read_string("Deathmode", string(global.levelname), 0) == 0)
			ini_write_string("Deathmode", string(global.levelname), global.deathmode);
		#region Toppins
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
		#endregion
		//Rescued Toppins
		if ini_read_real("Rescued", string(global.levelname), 0) < global.toppintotal
			ini_write_real("Rescued", string(global.levelname), global.toppintotal);		
		//Ranks
		var string_rank = string(global.timeattack == false ? "Ranks" : "Time")
		if rank_checker(global.rank) > rank_checker(ini_read_string(string_rank, string(global.levelname), "d"))
			ini_write_string(string_rank, string(global.levelname), global.rank);
	ini_close()
	#endregion
		
	//End Level Fade + Go to Rank Room
	if !instance_exists(obj_endlevelfade)
	{
		with instance_create(x, y, obj_endlevelfade)		
		{
			#region Endlevelfade
			var messaged = ""
			if global.timeattack = false
			{
				if global.snickchallenge == false
				{
					messaged = "GOT THE SECRET TREASURE!!"
					if global.treasure == true
						ds_queue_enqueue(_meesage_queue,messaged);
					messaged = "HELD THE COMBO UNTIL THE END!"
					if global.comboended == false
						ds_queue_enqueue(_meesage_queue,messaged);
				}
				else
				{
					messaged = "RESCUED ALL 15 TOPPINS!!"		
					if global.toppintotal >= 15
						ds_queue_enqueue(_meesage_queue,messaged);
					messaged = "ESCAPED WITH NO HITS TAKEN!"			
					if global.got_hurt == false
						ds_queue_enqueue(_meesage_queue,messaged);
				}
			}	
			else
			{
				messaged = "SURVIVED DEATH MODE!!"
				if global.deathmode == true
					ds_queue_enqueue(_meesage_queue,messaged);	
				messaged = "ESCAPED WITH ALL TOPPINS!"
				if global.toppintotal >= 5
					ds_queue_enqueue(_meesage_queue,messaged);		
			}
			#endregion
		}
	}
	obj_player1.state = 78
	obj_player1.sprite_index = obj_player1.spr_lookdoor
	if instance_exists(obj_player2)
	{
		obj_player2.state = 78
		obj_player2.sprite_index = obj_player2.spr_lookdoor
	}
	obj_endlevelfade.alarm[0] = 510
	image_index = 0
	//Reset Variables
	global.panic = 0;
	global.snickchallenge = 0;
	global.fakepeppino = 0;
	global.lapping = 0;
	global.laptouched = 0;
}