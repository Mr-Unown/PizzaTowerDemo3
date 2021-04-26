if (global.timeattack == 1 && stop == 0)
{
    global.taseconds += 1

    if (global.taseconds > 59)
    {
        global.taseconds = 0
        global.taminutes += 1
    }
}
alarm[1] = 60

