if (global.seconds == 0 && global.minutes == 0)
{
	alarm[1] = -1
    alarm[2] = 3
}

if (obj_player1.collectscore > 0)
{
    with (instance_create(obj_player1.x, obj_player1.y, obj_pizzaloss))
    {
        if (obj_player1.character == "P")
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
        else if (obj_player1.character == "N")
            sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
        else if (obj_player1.character == "S")
            sprite_index = spr_snickcollectible1
        else if (obj_player1.character == "V")
            sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
    }
}
if instance_exists(obj_player2)
{
    if (obj_player2.collectscore > 0)
    {
        with (instance_create(obj_player2.x, obj_player2.y, obj_pizzaloss))
        {
            if (obj_player2.character == "P")
                sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
            else if (obj_player2.character == "N")
                sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
            else if (obj_player2.character == "S")
                sprite_index = spr_snickcollectible1
            else if (obj_player2.character == "V")
                sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
        }
    }
}
if (obj_player1.collectscore > 0)
    obj_player1.collectscore = (obj_player1.collectscore - 5)

if (obj_player2.collectscore > 0)
    obj_player2.collectscore = (obj_player2.collectscore - 5)
/*
if (global.snickchallenge == 1 && global.rank == 0)
{
    with (obj_player)
    {
        state = 55
        sprite_index = spr_deathstart
        image_index = 0
        scr_soundstopall()
        scr_soundeffect(mu_timesup)
        obj_player1.spotlight = 1
        player = 3
        player2 = 4
    }
    alarm[2] = -1
}*/
if (global.miniboss == 1)
{
    with (obj_player)
    {
        instance_create(x, y, obj_bangeffect)
        repeat (6)
            instance_create(x, y, obj_slapstar)
        state = 4
        vsp = -10
        scr_soundstopall()
        scr_soundeffect(mu_timesup)
		#region Hurtplayer
        if (obj_player1.collectscore > 100)
        {
			obj_player1.collectscore = (obj_player1.collectscore - 100)
			with (instance_create(x, y, obj_smallnumber))
			{
				color = 1
				number = "-100"
			}
        }
		else if (obj_player1.collectscore != 0)
			{
			with (instance_create(x, y, obj_smallnumber))
			{
				color = 1
				number = ("-" + string(obj_player1.collectscore))
				obj_player1.collectscore = 0
			}
        }
		else
			obj_player1.collectscore = 0
		if instance_exists(obj_player2)
		{
			if (obj_player2.collectscore > 100)
			{
				obj_player2.collectscore = (obj_player2.collectscore - 100)
				with (instance_create(x, y, obj_smallnumber))
				{
					color = 1
					number = "-100"
				}
			}
			else if (obj_player2.collectscore != 0)
				{
				with (instance_create(x, y, obj_smallnumber))
				{
					color = 1
					number = ("-" + string(obj_player2.collectscore))
					obj_player2.collectscore = 0
				}
			}	
			else
				obj_player2.collectscore = 0
		}	
		#endregion
    }
    alarm[2] = -1
    global.miniboss = 0
}


