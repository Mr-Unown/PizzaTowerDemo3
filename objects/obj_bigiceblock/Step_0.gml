/*if global.freezeframe = false
{
if place_meeting(x, (y - 1), obj_player1)
{
    with (obj_player1)
    {
        /*if (cutscene == 0) && state != states.frozen && state != states.knightpepattack
        {
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }*
		if movespeed > 0 && move = 0 && state = states.normal
		{
			sprite_index = spr_move
			movespeed = movespeed - .1
		}
    }
}
if place_meeting(x, (y - 1), obj_player2)
{
    with (obj_player2)
    {
        if (cutscene == 0) && state != states.frozen
        {
		
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }
    }
}
}*/
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