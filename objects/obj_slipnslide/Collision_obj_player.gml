if (drop == 0)
{
    with (other.id)
    {
		
        other.drop = 1
        other.vsp = -5
		if state != 37 && !(state == 24 || state == states.knightpepattack || state == states.frozen ||  state = states.Sjump || state = states.backbreaker || state == 27 || state == 18 || state == 25 || state == 15 || state == 11 || state == 13 || state == 14 || state == 86)
		{
			if state != 60
			{
				var randomchance = irandom_range(0,100);
				if (randomchance < global.quipsfrequency)
				{
					scr_soundeffect(sfx_dizzy);
				}				
			}
			state = 60
			if (movespeed < 12)
				movespeed = 12
		}
    }
}

