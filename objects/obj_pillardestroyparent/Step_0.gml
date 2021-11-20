if (shake)
{
	alarm[0] = 10
	shakemag = 0.2
}
if(obj_player.state = 22)
{
	if place_meeting((x - obj_player1.hsp), y, obj_player1)
	{
		with (obj_player1)
		{
			if place_meeting((x + hsp), y, obj_pillardestroyparent)
			{
				with(other.id)
				{
					shake = 1
					if (hp <= 1)
						instance_destroy()
					if (hp > 1)
						hp--
				}
				sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
				suplexdashtimer = image_index;
				image_index = 0
				state = 57
				vsp = image_xscale * 1
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