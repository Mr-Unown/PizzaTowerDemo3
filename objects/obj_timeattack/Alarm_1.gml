if (global.timeattack == 1 && stop == 0 && room != hub_room1 && room != hub_room2 && room != hub_room3 && room != cowboytask && room != timesuproom && room != Scootertransition && room != Tutorialtrap  && room != Titlescreen  && room != global.roomstart[global.newtitlescreen])
{
    global.taseconds += 1

    if (global.taseconds > 59)
    {
        global.taseconds = 0
        global.taminutes += 1
    }
	global.timeattack_points = ((global.taminutes * 60) + global.taseconds) * 60;

}
alarm[1] = 60

