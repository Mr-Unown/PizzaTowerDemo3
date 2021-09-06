function scr_player_slipnslide() {
	mach2 = 0
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 0
	machhitAnim = 0
	hsp = (xscale * movespeed)

	movespeed = approach(movespeed,0,0.19)

	machhitAnim = 0
	crouchslideAnim = 1
	if (movespeed <= 0)
	{
	    state = 0
	    movespeed = 0
	    mach2 = 0
	    image_index = 0
	}
	if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope))) && !place_meeting((x + sign(hsp)), y, obj_destructibles)
	{
	    state = states.jump
		vsp = -11
		jumpstop = 1
		movespeed = 0
	}
	if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope))) && !place_meeting((x + sign(hsp)), y, obj_destructibles)
	{
		state = states.jump
		vsp = -11
		jumpstop = 1
		movespeed = 0
	}
	sprite_index = spr_slipnslide
	image_speed = 0.35
	if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 1.5)
	{
	    with (instance_create(x, y, obj_slidecloud))
	        image_xscale = other.xscale
	}



}
