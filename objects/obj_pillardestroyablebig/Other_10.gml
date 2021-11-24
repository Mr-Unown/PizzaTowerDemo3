var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
if (player.state == 22 || player.state == 70 || player.state == 111)
{
	if place_meeting((x - player.hsp), y, player)
	{
		with (player)
		{
			if place_meeting((x + hsp), y, obj_pillardestroyablebig)
			{
				with(other.id)
				{
					shaketime = 5
					if (hp <= 1)
						instance_destroy()
					if (hp > 1)
						hp -= 1
				}
				sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
				suplexdashtimer = image_index;
				image_index = 0
				state = states.tackle;
				substate = 1;
				movespeed = 5;
				vsp = -3
			}
		}
	}
}
else
	instance_destroy()
