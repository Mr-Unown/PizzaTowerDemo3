function scr_player_current() {
	var drafty = 0;
	static movehsp = 0;
	static movevsp = 0;
	static vmovespeed = 0;
	static vdir = -1;
	hsp = (movespeed * xscale) + movehsp
	vsp = (vmovespeed * vdir) + movevsp
	//Water Currents
	with instance_place(x, y, obj_watercurrent)
	{
	    other.sprite_index = other.spr_slipnslide
		other.xscale = sign(image_xscale)
	    if (movespeed < 10)
	        movespeed += 1

	}
	//Water Drafts
	with instance_place(x, y, obj_waterdraft)
	{
	    other.sprite_index = other.spr_machfreefall
		vdir = -sign(image_yscale)
	    if (vmovespeed < 10)
	        vmovespeed += 1		
	    if (sign(image_yscale) == 1)
	        drafty = 1	
	}
	//Sorta Swimming
	move = (key_right + key_left)
	//Horizontal
	movehsp = 4 * sign(move)
	if move != 0 
		xscale = move
	//Vertical
	if key_up
		movevsp = -4
	if key_down
		movevsp = 4

	//Get out of Current
	if in_water = false || !place_meeting(x, y, obj_watercurrent)
	{
	    if (movespeed > 0)
	        movespeed--
	}
	if in_water = false || !place_meeting(x, y, obj_waterdraft)
	{
	    if (vmovespeed > 0)
	        vmovespeed--
	}	
	if ( in_water = false || (!place_meeting(x, y, obj_watercurrent) && !place_meeting(x, y, obj_waterdraft)) ) && movespeed <= 5 
	{
	    if (drafty == 1)
	    {
	        state = 58
	        sprite_index = spr_machfreefall
	        jumpstop = 1
	    }
	    else
	        state = 60
	}
	image_speed = 0.35



}
