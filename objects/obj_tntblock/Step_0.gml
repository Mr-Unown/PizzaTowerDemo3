var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
if ((place_meeting((x + 1), y, player) || place_meeting((x - 1), y, player)) && player.state == states.firemouth)
    instance_destroy()
if ((place_meeting((x), y - 1, player) || place_meeting((x), y + 1, player)) && player.state == states.firemouth)
{
    with (player)
	{
		if vsp > 0
		{
			sprite_index = spr_player_firemouthjump
			if key_jump2
				vsp = -12					
			else
				vsp = -4
		}	
	}
	instance_destroy()				
}