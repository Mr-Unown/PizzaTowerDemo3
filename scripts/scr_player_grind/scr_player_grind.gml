function scr_player_grind() {
	vsp = 0
	machhitAnim = 0
	crouchslideAnim = 1
	hsp = (xscale * movespeed)
	if movespeed < 9
	{
		movespeed += 0.5
	}
	else if (movespeed > 12) {
	    movespeed -= 0.1
	}
	sprite_index = spr_grinding	
	if (!grinding) {
		if movespeed < 11 {
			state = 70		
			sprite_index = spr_secondjump1
		}
		else {
			state = 91
			sprite_index = spr_mach3jump		
		}
	    grinding = 0
	    suplexmove = 0
	    image_index = 0
	}

	if key_jump
	{
		if movespeed < 9 {
			state = 70		
			sprite_index = spr_secondjump1
		}
		else {
			state = 91
			sprite_index = spr_mach3jump		
		}
	    vsp = -10
	    grinding = 0
	    instance_create(x, y, obj_jumpdust)
	    suplexmove = 0
	    image_index = 0
	    scr_soundeffect(sfx_jump)
	}
	//Bump
	if scr_solid(x + xscale ,y) && !scr_slope_ext(x + xscale,y)
	{
		grinding = true
		instance_create((x + (10 * sign(xscale))), (y + 10), obj_bumpeffect)
		xscale *= -1
	}
	image_speed = 0.35
	if (!instance_exists(grindeffect))
	    with instance_create(x, y, obj_grindeffect)
		{
			other.grindeffect = id
			playerid = other.id
		}


}
