function scr_player_barrelroll() {
	//if (live_call()) return live_result;
	move = (key_left + key_right)
	hsp = (xscale * movespeed)
	mask_index = spr_crouchmask
	image_speed = 0.35



	//Reset back to speed
	if grounded && vsp > 0 && move != -xscale
	    movespeed = 11

	//Collide with Wall
	if place_meeting((x + sign(hsp)), y, obj_solid) && (!scr_slope_ext(x, y + 1) && !scr_slope()) && !place_meeting((x + hsp), y, obj_barrelblock) && !place_meeting((x + hsp), y, obj_destructibles)
	{
	    xscale = -xscale
	}
	else if place_meeting((x + sign(hsp)), y, obj_solid) && (scr_slope_ext(x, y + 1) || scr_slope()) && !place_meeting((x + hsp), y, obj_barrelblock) && !place_meeting((x + hsp), y, obj_destructibles)
	{
		vsp = -9
		jumpstop = 1
		movespeed = 0
		xscale *= -1	
	}
	//Slam Down
	if (key_down2 && (!key_jump2))
	    vsp = 10
	
	//Jump
	if key_jump
	    input_buffer_jump = 0
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded && hsp != 0)
	    vsp = -10
	if move = -xscale
	movespeed -= .2
	if movespeed <= 6
	state = states.barrelnormal

}
