var playerid = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));

if relax = false && global.freezeframe = false && room != rank_room && !instance_exists(obj_safespace) && !instance_exists(obj_treasureshadow)
{
	if playerid.cutscene = false
	{
    x = median((x - maxspeed), playerid.x, (x + maxspeed))
    y = median((y - maxspeed), playerid.y, (y + maxspeed))
	}
    if (place_meeting(x, y, playerid) && (!instance_exists(obj_fadeout)) && (!instance_exists(obj_endlevelfade)) && playerid.state != 73)
    {
		/*
        
        {
            scr_soundeffect(sfx_groundpound)
            scr_hurtplayer(playerid)
            with (instance_create(x, y, obj_shake))
                sprite_index = other.sprite_index
			if instance_exists(obj_shake)
            relax = 1
        }*/
		if ( !(playerid.state = states.mach3 || playerid.state = states.jetpack) && playerid.cutscene = false && playerid.state != states.mach3 && playerid.state != states.backbreaker && playerid.state != states.jetpack && playerid.state != 114) && relax = false
		{
			if ds_list_size(global.toppinlist) <= 0
			{
				#region Timesup

				with obj_player1
				{
					if room != timesuproom
					{
						audio_stop_all()
						state = states.timesup
						obj_camera.alarm[2] = -1
						room = timesuproom
						scr_soundeffect(mu_timesup)
					}
				}
				#endregion
			}
			else if ds_list_size(global.toppinlist) > 0
			{
				#region Kill Followers
				var toppin = ds_list_find_value(global.toppinlist, ds_list_size(global.toppinlist) - 1)
				with toppin
				{
					ds_list_delete(global.follower,ds_list_find_index(global.follower,id))
					ds_list_delete(global.toppinlist,ds_list_size(global.toppinlist) - 1)
					switch (object_index)
					{
						case obj_pizzakinshroom:
						global.shroomfollow = false;
						with (instance_create(other.x, other.y, obj_shake))
							sprite_index = spr_pizzakinshroom_panic						
						break;
						case obj_pizzakincheese:
						global.cheesefollow = false;
						with (instance_create(other.x, other.y, obj_shake))
							sprite_index = spr_pizzakincheese_panic							
						break;
						case obj_pizzakintomato:
						global.tomatofollow = false;
						with (instance_create(other.x, other.y, obj_shake))
							sprite_index = spr_pizzakintomato_panic							
						break;
						case obj_pizzakinsausage:
						global.sausagefollow = false;
						with (instance_create(other.x, other.y, obj_shake))
							sprite_index = spr_pizzakinsausage_panic							
						break;		
						case obj_pizzakinpineapple:
						global.pineapplefollow = false;
						with (instance_create(other.x, other.y, obj_shake))
							sprite_index = spr_pizzakinpineapple_panic							
						break;			
					}
					global.toppinlist = clamp(global.toppinlist - 1,0,global.toppinlist + 100)
					instance_destroy();
				}
				#region Remove Score
					if (playerid.collectscore > 1000)
					{
						playerid.collectscore = (playerid.collectscore - 1000)
						with (instance_create(x, y, obj_smallnumber))
						{
	                        color = 1
							number = "-1000"
						}
					}
					else if (playerid.collectscore > 0)
					{
	                    with (instance_create(x, y, obj_smallnumber))
						{
	                        color = 1
							number = ("-" + string(playerid.collectscore))
							playerid.collectscore = 0
						}
					}
					else
	                    playerid.collectscore = 0					
					
					
					#endregion				
				scr_soundeffect(sfx_groundpound)

				with (instance_create(x, y, obj_shake))
					sprite_index = other.sprite_index
				scr_sleep();
				relax = true
				pizzafacetimer = 500				
				#endregion
			}
		}
		else if playerid.state = states.mach3 || playerid.state = states.jetpack
		{
			//Original Auto Parry
			with (playerid)
			{
				scr_soundeffect(sfx_parry)
				state = 114
				sprite_index = choose(spr_parry1, spr_parry2, spr_parry3)
				image_index = 0
				taunttimer = 20
				parry_id = -4
				image_speed = 0.35
				parried_baddie = 8
				flash = 1
				movespeed = 8
				tauntstoredstate = states.normal
				tauntstoredmovespeed = 0
				tauntstoredsprite = spr_idle
				tauntstoredimage = image_index
			}
		}
    }
    maxspeed += 0.01
}
if (relax == 1)
{
    x = median((x - maxspeed), playerid.x, (x + maxspeed))
    y = -200
}
if ((global.panic == 0) && room != rank_room)
{
    with (instance_create(x, y, obj_shake))
        sprite_index = other.sprite_index
    instance_destroy()
    instance_destroy(afterid)
}

if (relax == 1 && pizzafacetimer <= 0) && can_countdown = true
{
	scr_soundeffect(sfx_pizzaface)
    relax = 0
    maxspeed = 1
	can_countdown = false
}
if can_countdown = true
{
	pizzafacetimer = approach(pizzafacetimer,0,1)
}