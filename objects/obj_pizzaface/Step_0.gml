var playerid = obj_player1
if (global.coop = true)
    playerid = instance_nearest(x,y,obj_player)

if relax = false && global.freezeframe = false && room != rank_room && !instance_exists(obj_safespace) && !instance_exists(obj_treasureshadow)
{
    x = median((x - maxspeed), playerid.x, (x + maxspeed))
    y = median((y - maxspeed), playerid.y, (y + maxspeed))
    if (place_meeting(x, y, playerid) && (!instance_exists(obj_fadeout)) && (!instance_exists(obj_endlevelfade)) && playerid.state != 73)
    {
		/*
        
        {
            scr_soundeffect(15)
            scr_hurtplayer(playerid)
            with (instance_create(x, y, obj_shake))
                sprite_index = other.sprite_index
			if instance_exists(obj_shake)
            relax = 1
        }*/
		if (playerid.state != 51 && playerid.state != states.mach3 && playerid.state != states.jetpack && playerid.state != 114) && relax = false
		{
			with obj_player
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
		}
    }
    maxspeed += 0.01
}
if (relax == 1)
{
    x = median((x - maxspeed), playerid.x, (x + maxspeed))
    y = -200
}
if ((global.panic == 0 || global.timeattack = true) && room != rank_room)
{
    with (instance_create(x, y, obj_shake))
        sprite_index = other.sprite_index
    instance_destroy()
    instance_destroy(afterid)
}


