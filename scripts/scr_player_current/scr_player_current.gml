function scr_player_current() {
	landAnim = 1
	mach2 = 0
	jumpAnim = 1
	dashAnim = 1
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 0
	machhitAnim = 0
	var drafty = 0
	with (instance_place(x, y, obj_watercurrent))
	{
	    other.sprite_index = other.spr_slipnslide
	    if (other.movespeed < 15)
	        other.movespeed += 1
	    other.xscale = sign(image_xscale)
	}
	with (instance_place(x, y, obj_waterdraft))
	{
	    other.sprite_index = other.spr_machfreefall
	    other.vsp = (15 * (-sign(image_yscale)))
	    if (sign(image_yscale) == 1)
	        drafty = 1
	}
	if (!place_meeting(x, y, obj_watercurrent))
	{
	    if (movespeed > 5)
	        movespeed--
	}
	if (movespeed <= 5 && (!place_meeting(x, y, obj_watercurrent)) && (!place_meeting(x, y, obj_waterdraft)))
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
	hsp = (movespeed * xscale)
	image_speed = 0.35



}
