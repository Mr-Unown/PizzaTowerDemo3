if (global.timeattack == 1 && stop == 0)
{
    global.taseconds += 1
    if (obj_player1.collectscore >= 5)
        obj_player1.collectscore -= 5
    if instance_exists(obj_player2)
    {
        if (obj_player2.collectscore >= 5)
            obj_player2.collectscore -= 5
    }
    if (global.taseconds > 59)
    {
        global.taseconds = 0
        global.taminutes += 1
    }
}
alarm[1] = 60

