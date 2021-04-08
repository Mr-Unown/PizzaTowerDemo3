if instance_exists(baddieID)
{
    with (baddieID)
    {
        state = 106
		if stunned < 200
			stunned = 200
        vsp = -10
		hsp = 0	
		momentum = 0
		hp -= 1
    }
}

