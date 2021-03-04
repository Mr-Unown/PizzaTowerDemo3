var playerid = obj_player1
if (obj_player1.spotlight == 0)
    playerid = obj_player2
else
    playerid = obj_player1
if (relax == 0)
{
    x = median((x - maxspeed), playerid.x, (x + maxspeed))
    y = median((y - maxspeed), playerid.y, (y + maxspeed))
    if (place_meeting(x, y, playerid) && (!instance_exists(obj_fadeout)) && (!instance_exists(obj_endlevelfade)) && playerid.state != 73)
    {
        if (playerid.state != 51 && playerid.state != 114)
        {
            scr_soundeffect(15)
            scr_hurtplayer(playerid)
            with (instance_create(x, y, obj_shake))
                sprite_index = other.sprite_index
			if instance_exists(obj_shake)
            relax = 1
        }
    }
    maxspeed += 0.01
}
if (relax == 1)
{
    x = median((x - maxspeed), playerid.x, (x + maxspeed))
    y = -128
}
if ((global.panic == 0 || global.lapping < 3) && room != rank_room)
{
    with (instance_create(x, y, obj_shake))
        sprite_index = other.sprite_index
    instance_destroy()
    instance_destroy(afterid)
}


