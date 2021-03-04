//Scared
var player = instance_nearest(x, y, obj_player)
if (state != 109)
{
    if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 60) && y >= (player.y - 60))
    {
        if (state != 94 && state != 106 && (player.state == 91 || player.state = "jetpack" || player.state == 10))
        {
            state = 94
            if (x != player.x)
                image_xscale = (-sign((x - player.x)))
			scarebuffer = 100
			if (sprite_index != scaredspr)
			{
				sprite_index = scaredspr
				vsp = -5
			}			
        }
    }
}
