if (place_meeting(x, (y + 4), obj_player) && global.pizzacoin >= 4 && image_speed == 0)
{
    scr_soundeffect(63)
	global.pausecombotime = true
	obj_tv.alarm[1] = 75
    global.pizzacoin = (global.pizzacoin - 4)
    image_speed = 0.35
    if (global.snickchallenge == 1)
        global.SAGEshotgunsnicknumber = (global.SAGEshotgunsnicknumber + 1)
}


