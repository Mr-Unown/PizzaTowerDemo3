function scr_player_barrelnormal() {
	mask_index = spr_player_mask
    image_speed = 0.35
	move = (key_left + key_right)
	    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	        hsp = (move * movespeed)
	    else if place_meeting(x, (y + 1), obj_railh)
	        hsp = ((move * movespeed) - 5)
	    else if place_meeting(x, (y + 1), obj_railh2)
	        hsp = ((move * movespeed) + 5)
    if key_jump
	{
        input_buffer_jump = 0
		sprite_index = spr_player_barreljump
	}
    if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 2
        jumpstop = 1
    }
    if (grounded && vsp > 0)
        jumpstop = 0
    if (dir != xscale && (!key_attack))
    {
        dir = xscale
        movespeed = 0
    }
	if (scr_solid((x + sign(hsp)), y) && xscale == 1 && move == 1 && (!scr_slope_ext(x + 1, y)))
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && xscale == -1 && move == -1 && (!scr_slope_ext(x - 1, y)))
	    movespeed = 0
	if (move != 0)
        {
            if (movespeed < 11)
                movespeed += 0.2
            else if (floor(movespeed) == 6)
                movespeed = 6
        }
        else
            movespeed = 0
        if (movespeed > 11)
            movespeed -= 0.1
	if (move != 0)
	{
		xscale = move
		if movespeed <= 10
		{
		sprite_index = spr_player_barrelmove
		image_speed = ((movespeed/12) * 0.6) + 0.1
		}
		else
		sprite_index = spr_player_barrelslipnslide
	}
	else
		sprite_index = spr_player_barrelidle
	if (sprite_index == spr_player_barrelslipnslide && floor(image_index) == (image_number - 1))
	{
		state = states.barrelroll
		movespeed = 11
		sprite_index = spr_player_barrelroll
	}
}
