with (argument0)
{
    if ((state == 24 || state == 25 || state == 18) && cutscene == 0)
    {
    }
    else if (state == 27 && hurted == 0)
    {
    }
    else if (state == 86)
    {
    }	
    else if (state == 15)
    {
    }
    else if (state == 2)
    {
    }
    else if (state == 13 || state == 14)
    {
    }
    else if (state == 113) && state == states.frozen
    {
    }
    else if (image_index < 3 && state == 12 && sprite_index == spr_snick_jump)
    {
    }
    else if (state == 114 || (state == 51 && instance_exists(parry_id)))
    {
    }
    else if (state != 73 && hurted == 0 && cutscene == 0 && hurted == 0 && cutscene == 0)
    {
        if (state == 109)
        {
            if (object_index == obj_player1)
                y = obj_player2.y
            else
                y = obj_player1.y
        }
        scr_soundeffect(10)
        if (character != "V")
        {
            state = 73
            alarm[8] = 80
            alarm[7] = 50
        }
        if (character == "V")
        {
            if (vigihealth != 0) && pizzashield = false
            {
                state = 73
                alarm[8] = 80
                alarm[7] = 50
                vigihealth -= 45
            }
			else
			{
				state = 73
                alarm[8] = 80
                alarm[7] = 50
			}
        }
        if (vigihealth <= 0 && character == "V")
        {
            vigihealth = 0
            state = 55
            sprite_index = spr_deathstart
        }
		with obj_tv
		{
			image_speed = 0.1
			showtext = 1
			message = choose("OW!", "OUCH!", "OH!", "WOH!")
			alarm[0] = 50
			chose = 1
			tvsprite = spr_tvhurt
			once = 1
		}
        hurted = 1
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
        else
            sprite_index = spr_hurt
        movespeed = 10
        vsp = -5
        timeuntilhpback = 300
        if (instance_exists(obj_player2) && global.coop == 1)
        {
            if (object_index == obj_player2)
            {
                if (obj_player1.spotlight == 0)
                {
                    obj_camera.shoving = 1
                    obj_camera.image_index = 0
                    obj_player1.spotlight = 1
                    scr_changetoppings()
                    obj_player1.depth = -7
                    obj_player2.depth = -6
                }
            }
            if (object_index == obj_player1)
            {
                if (obj_player1.spotlight == 1)
                {
                    obj_camera.shoving = 1
                    obj_camera.image_index = 0
                    obj_player1.spotlight = 0
                    scr_changetoppings()
                    obj_player1.depth = -6
                    obj_player2.depth = -7
                }
            }
        }
        instance_create(x, y, obj_spikehurteffect)
        image_index = 0
        flash = 1
        if (pizzashield == false)
        {
			global.style = (global.style - 10)
            global.hurtcounter = (global.hurtcounter + 1)
            if (object_index == obj_player1)
            {
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
                if (obj_player1.collectscore != 0)
                {
                    repeat (10)
                    {
                        with (instance_create(x, y, obj_pizzaloss))
                        {
                            if (obj_player.character == "P")
                                sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
                            else if (obj_player.character == "N")
                                sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
                            else if (obj_player.character == "S")
                                sprite_index = spr_snickcollectible1
                            else if (obj_player.character == "V")
                                sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
                        }
                    }
                }
            }
            else if (object_index == obj_player2)
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
                if (obj_player2.collectscore != 0)
                {
                    repeat (10)
                    {
                        with (instance_create(x, y, obj_pizzaloss))
                        {
                            if (obj_player.character == "P")
                                sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
                            else if (obj_player.character == "N")
                                sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
                            else if (obj_player.character == "S")
                                sprite_index = spr_snickcollectible1
                            else if (obj_player.character == "V")
                                sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
                        }
                    }
                }
            }
        }
        else
        {
            with (instance_create(x, y,  obj_baddie_dead))
            {
				sprite_index = spr_pizzashield_block
				image_index = 0
				image_speed = 0
				image_xscale = argument0.image_xscale
            }
            if (pizzashieldbackup >= 1)
                pizzashieldbackup = pizzashieldbackup - 1
            else
                pizzashield = false
        }
    }
}
