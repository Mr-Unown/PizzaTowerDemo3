if instance_exists(baddieID)
{
    with (baddieID)
    {
        if (state != 200)
        {
			state = 106
			if stunned < 100
				stunned = 100
			vsp = -5
			hsp = 0	
			momentum = 0
        }
    }
}