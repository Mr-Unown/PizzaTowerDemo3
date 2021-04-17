if instance_exists(baddieID) && global.freezeframe = false
{
    with (baddieID)
    {
		if (state != enemystates.enemyshake && state != enemystates.enemyfrozen) {
			if hp > 1 {
				state = 106
				if stunned < 200
					stunned = 200
				vsp = -10
				hsp = 0	
				momentum = 0
				hp = (hp - 1)
			}
			else {
				dying = true
				scarebuffer = 0
				blowdirection = 5;
				blowintensity = 1;
				playerxscale = image_xscale;
				state = enemystates.enemyshake;	
			}	
		}
    }
}

