if global.freezeframe = false
{
if place_meeting(x, (y - 1), obj_player1)
{
    with (obj_player1)
    {
        if (cutscene == 0) && state != states.frozen
        {
			/*if state != 60
			{
				var randomchance = irandom_range(0,100);
				if (randomchance < global.quipsfrequency)
				{
					scr_soundeffect(sfx_dizzy);
				}				
			}	*/		
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }
    }
}
if place_meeting(x, (y - 1), obj_player2)
{
    with (obj_player2)
    {
        if (cutscene == 0) && state != states.frozen
        {
			/*if state != 60
			{
				var randomchance = irandom_range(0,100);
				if (randomchance < global.quipsfrequency)
				{
					scr_soundeffect(sfx_dizzy);
				}				
			}	*/		
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }
    }
}
}
