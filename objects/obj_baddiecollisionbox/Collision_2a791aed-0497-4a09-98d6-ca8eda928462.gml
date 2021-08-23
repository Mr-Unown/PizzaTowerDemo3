if instance_exists(baddieID) && global.freezeframe = false
{
	var vec = point_direction(other.x,other.y,x,y)
	var len = random_range(10,15)
    with (baddieID)
    {
        if (state != enemystates.enemyshake && state != enemystates.enemyfrozen)
        {
			if hp > 1 {
				state = 106
				if stunned < 100
					stunned = 100
				vsp = -5
				hsp = 0	
				momentum = 0
				hp = (hp - 1)
			}
			else {
				initialvsp = lengthdir_y(len,vec)
				initialhsp = lengthdir_x(len,vec)
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
