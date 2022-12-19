function scr_player_uppercut() {
	if grounded 
	{
	state = 0	
	}
	if sprite_index = spr_player_uppercutbegin && image_index = 14
	{
	sprite_index = spr_player_uppercutend	
	}
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 0
	}
	 move = (key_left + key_right)
	    if (move != 0)
	        xscale = move
	    hsp = (move * movespeed)
	    {
	if move != 0
	  movespeed = 4
	else
	  movespeed = 0
	    }
	    movespeed = 4


}
