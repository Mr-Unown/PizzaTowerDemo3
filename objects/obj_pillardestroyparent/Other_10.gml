if(obj_player.state == 22 || obj_player.state == 70)
{
	if place_meeting((x - obj_player1.hsp), y, obj_player1)
	{
		with (obj_player1)
		{
			if place_meeting((x + hsp), y, obj_pillardestroyparent)
			{
				with(other.id)
				{
					shaketime = 5
					if (hp <= 1)
						instance_destroy()
					if (hp > 1)
						hp--
				}
				sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
				suplexdashtimer = image_index;
				image_index = 0
				state = 72
				hsp = (-3.2 * xscale)
				vsp = -3
				with other 
				{ 	
					initialhsp = 9 * sign(other.image_xscale)
					initialvsp = random_range(-4, -1)
					event_user(0) 
				}
			}
		}
	}
}
else
	instance_destroy()
