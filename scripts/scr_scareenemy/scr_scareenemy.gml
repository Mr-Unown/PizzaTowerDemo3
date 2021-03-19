//Scared
var player = instance_nearest(x, y, obj_player)
if (state != 109)
{
    if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 60) && y >= (player.y - 60))
    {
        if (state != 94 && state != 106 && (player.state == 91 || player.state = states.jetpack || player.state == 10))
        {
            state = 94
            if (x != player.x)
                image_xscale = (-sign((x - player.x)))
			scarebuffer = 100
		if place_meeting(x, (y + 1), obj_railh)
			hsp = -5
		else if place_meeting(x, (y + 1), obj_railh2)
			hsp = 5
		else 
			hsp = 0
			if (sprite_index != scaredspr) 
			{
				sprite_index = scaredspr
				if grav != 0
					vsp = -5
			}			
        }
    }
}
