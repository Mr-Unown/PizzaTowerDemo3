function scr_player_barrelroll() {
	hsp = (xscale * movespeed)
	mask_index = spr_crouchmask
	image_speed = 0.35



	//Reset back to speed
	if grounded && vsp > 0
	    movespeed = 11

	//Collide with Wall
	if place_meeting((x + sign(hsp)), y, obj_solid) && (!place_meeting((x), y + 1, obj_slope) && !scr_slope()) && !place_meeting((x + hsp), y, obj_barrelblock) && !place_meeting((x + hsp), y, obj_destructibles)
	{
	    state = 72
	    hsp = (2.5 * -xscale)
	    vsp = -4
	    repeat (4)
	        instance_create(x, y, obj_wooddebris)
	}
	else if place_meeting((x + sign(hsp)), y, obj_solid) && (place_meeting((x), y + 1, obj_slope) || scr_slope()) && !place_meeting((x + hsp), y, obj_barrelblock) && !place_meeting((x + hsp), y, obj_destructibles)
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


}
