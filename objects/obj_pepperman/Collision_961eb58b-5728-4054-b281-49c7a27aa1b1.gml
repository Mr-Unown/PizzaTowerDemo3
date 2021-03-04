with (other.id)
{
    if (state != 4 && other.dead == 0)
    {
        instance_create(x, y, obj_bangeffect)
        repeat (6)
            instance_create(x, y, obj_slapstar)
        vsp = -10
        if (global.coop == 0)
        {
            scr_soundstopall()
            state = 4
            scr_soundeffect(87)
        }
        else if (global.coop == 1)
        {
            if (obj_player1.spotlight == 1)
            {
                if (other.id == 3)
                {
                    scr_soundstopall()
                    state = 4
                    scr_soundeffect(87)
                }
                with (obj_player2)
                {
                    x = obj_player1.x
                    y = obj_player1.y
                }
            }
            else if (obj_player1.spotlight == 0)
            {
                if (other.id == 4)
                {
                    scr_soundstopall()
                    state = 4
                    scr_soundeffect(87)
                }
                with (obj_player1)
                {
                    x = obj_player2.x
                    y = obj_player2.y
                }
            }
        }
    }
}


