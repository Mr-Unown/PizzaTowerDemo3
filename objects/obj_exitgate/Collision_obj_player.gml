if (image_index == 1 && global.panic == 0 && global.snickchallenge == 0)
{
    with (obj_player)
    {
        if (state == 61 && floor(image_index) == (image_number - 2))
        {
            scr_soundeffect(15)
            with (obj_player1)
            {
                sprite_index = spr_Timesup
                image_index = 0
                with (obj_camera)
                {
                    shake_mag = 10
                    shake_mag_acc = (30 / room_speed)
                }
            }
            if (global.coop == 1)
            {
                with (obj_player2)
                {
                    sprite_index = spr_Timesup
                    image_index = 0
                    with (obj_camera)
                    {
                        shake_mag = 10
                        shake_mag_acc = (30 / room_speed)
                    }
                }
            }
            other.image_index = 0
            ds_list_add(global.saveroom, other.id)
        }
    }
}
with (obj_player)
{
    if (grounded && x > (other.x - 160) && x < (other.x + 160) && key_up && (state == 0 || state == 69 || state == 70 || state == 91) && (global.panic == 1 || global.snickchallenge == 1))
    {
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
				global.rank = "s"
				if (global.snickchallenge == 1)
					global.SAGEsnicksrank = 1
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
				global.rank = "s"
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
        if (global.rank == "s")
			scr_soundstop(mu_ranks)
        if (global.rank == "a")
            scr_soundstop(mu_ranka)
        if (global.rank == "b")
            scr_soundstop(mu_rankb)
        if (global.rank == "c")
            scr_soundstop(mu_rankc)
        if (global.rank == "d")
            scr_soundstop(mu_rankd)
        
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
			var string_rank = string(global.timeattack == false ? "Ranks" : "Time")
			if (global.rank == "s")
				ini_write_string(string_rank, string(global.levelname), global.rank)
			if (global.rank == "a" && "s" != ini_read_string(string_rank, string(global.levelname), "none"))
	            ini_write_string(string_rank, string(global.levelname), global.rank)
			if (global.rank == "b" && "s" != ini_read_string(string_rank, string(global.levelname), "none") && "a" != ini_read_string(string_rank, string(global.levelname), "none"))
				ini_write_string(string_rank, string(global.levelname), global.rank)
			if (global.rank == "c" && "s" != ini_read_string(string_rank, string(global.levelname), "none") && "a" != ini_read_string(string_rank, string(global.levelname), "none") && "b" != ini_read_string(string_rank, string(global.levelname), "none"))
				ini_write_string(string_rank, string(global.levelname), global.rank)
			if (global.rank == "d" && "s" != ini_read_string(string_rank, string(global.levelname), "none") && "a" != ini_read_string(string_rank, string(global.levelname), "none") && "b" != ini_read_string(string_rank, string(global.levelname), "none") && "c" != ini_read_string(string_rank, string(global.levelname), "none"))
				ini_write_string(string_rank, string(global.levelname), global.rank)
        ini_close()
		#endregion
        if (!instance_exists(obj_endlevelfade))
            instance_create(x, y, obj_endlevelfade)
        if (!instance_exists(obj_gatetransition))
            instance_create(other.x, other.y, obj_gatetransition)
        obj_player1.state = 78
        obj_player1.sprite_index = obj_player1.spr_lookdoor
        if instance_exists(obj_player2)
        {
            obj_player2.state = 78
            obj_player2.sprite_index = obj_player2.spr_lookdoor
        }
        obj_endlevelfade.alarm[0] = 510
        image_index = 0
        global.panic = 0
        global.snickchallenge = 0
		global.fakepeppino = 0
    }
}


