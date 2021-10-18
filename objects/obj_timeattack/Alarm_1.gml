if (global.timeattack == 1 && stop == 0 && room != hub_room1 && room != hub_room2 && room != hub_room3 && room != cowboytask && room != timesuproom && room != Scootertransition && room != Tutorialtrap  && room != Titlescreen  && room != Realtitlescreen)
{
    global.taseconds += 1

    if (global.taseconds > 59)
    {
        global.taseconds = 0
        global.taminutes += 1
    }
}
alarm[1] = 60

