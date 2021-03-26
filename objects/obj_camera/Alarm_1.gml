if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
{
    global.seconds -= 1
    if (obj_player1.collectscore >= 5)
        obj_player1.collectscore -= 5
    if instance_exists(obj_player2)
    {
        if (obj_player2.collectscore >= 5)
            obj_player2.collectscore -= 5
    }
    if (global.seconds < 0)
    {
        global.seconds = 59
        global.minutes -= 1
    }
	
}
alarm[1] = 60


