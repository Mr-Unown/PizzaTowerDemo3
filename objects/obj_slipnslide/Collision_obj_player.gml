if (drop == 0)
{
	drop = 1
    with (other.id)
    {
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
			state = states.slipbanana
			sprite_index = spr_slipbanana1
			image_index = 0
			vsp = -11
			grounded = 0
		}
    }
}

