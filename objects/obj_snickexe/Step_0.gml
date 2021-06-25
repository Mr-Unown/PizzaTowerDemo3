if global.freezeframe = false
{
if (obj_player1.spotlight == 1)
    playerid = obj_player1
else
    playerid = obj_player2
var anyplayer = instance_nearest(x, y, obj_player)

x = median((x - maxspeed), playerid.x, (x + maxspeed))
y = median((y - maxspeed), playerid.y, (y + maxspeed))

if (x != playerid.x)
    image_xscale = (-sign((x - playerid.x)))
if (global.snickchallenge == 0)
    instance_destroy()
if (hitboxcreate == 0 && anyplayer.instakillmove == 0 && anyplayer.state != 111 && anyplayer.state != 22)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        sprite_index = other.sprite_index
        ID = other.id
    }
}
if (place_meeting(x, y, anyplayer) && (anyplayer.instakillmove == 1 || anyplayer.state == 111 || anyplayer.state == 22))
{
    repeat (6)
    {
        with (instance_create((x + random_range(-100, 100)), (y + random_range(-100, 100)), obj_balloonpop))
            sprite_index = spr_shotgunimpact
    }
    x = (room_width / 2)
    y = -100
}

if (global.snickchallenge == 1 && global.minutes < 2 && warning == 0)
{
    with instance_create(x, y, obj_panicchanger)
	{
		depth = -99999
	}
    warning = 1
}


}