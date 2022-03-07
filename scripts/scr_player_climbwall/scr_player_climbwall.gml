function scr_player_climbwall() {
	var left = key_left
	var right = key_right
	if (windingAnim < 200)
	    windingAnim++
	if (character != "S")
	    move = (key_left + key_right)
	else if (character == "S")
	{
	    if (left != 0)
	        move = 1
	    if (right != 0)
	        move = 1
	    if (right == 0 && left == 0)
	        move = 0
	}
	suplexmove = 0
	vsp = (-wallspeed)
	if !place_meeting(x + xscale, y, obj_unclimbablewall) && character != "PZ"
	{
		if (character != "S")
		{
			if (wallspeed < 90 && move == xscale)
				wallspeed += 0.05
		}
		else if (wallspeed < 24)
			wallspeed += 0.08
	}
	else if character = "PZ" && !place_meeting(x + xscale, y, obj_unclimbablewall) {
		if wallspeed > 0
			wallspeed -= 0.125
		else
			wallspeed = 0
	}
	else {
		if wallspeed > 0
			wallspeed -= 0.25
		else
			wallspeed = 0
	}
	crouchslideAnim = 1
	if character != "P"
	sprite_index = spr_machclimbwall
	else
	{
		if global.wallrunstyle = 0
		{
			if wallspeed < 5
			sprite_index = spr_player_NEWwallclimb
			else 
			sprite_index = spr_player_NEWwallclimb2
		}
		else if global.wallrunstyle = 1
			sprite_index = spr_machclimbwall
		else if global.wallrunstyle = 2 && character = "P"
			sprite_index = spr_player_machclimbwall
	}
	if (character != "S")
	{
	    if (!key_attack)
	    {
	        state = 0
	        movespeed = 0
	    }
	}
	else if (move == 0)
	{
	    state = 0
	    movespeed = 0
	}
	if (scr_solid(x, (y - 1)) && (!place_meeting(x, (y - 1), obj_destructibles)) && (!scr_slope_ext(x + sign(hsp), y)) && (!scr_slope_ext(x - sign(hsp), y)))
	{
	    sprite_index = spr_superjumpland
	    scr_soundeffect(sfx_groundpound)
	    image_index = 0
	    state = 93
	    machhitAnim = 0
	}
	if (!scr_solid((x + xscale), y,true))
	{
	    instance_create(x, y, obj_jumpdust)
	    vsp = 0
		if (wallspeed >= 12)
	    {
	        state = 91
	        sprite_index = spr_mach4
			movespeed = clamp(wallspeed,12,24)
	    }
	    else if wallspeed >= 4 {
	        state = 70
			movespeed = clamp(wallspeed,8,12)
		}
		else {
		    state = 58
			sprite_index = spr_fall
		}
	}
	if key_jump
	{
		if character != "PZ"
			movespeed = clamp(floor(wallspeed /1.5),8,11)
		else
			movespeed = clamp(round(wallspeed /1.25),8,15)
	    state = 70
	    image_index = 0
		if character != "PZ"
			sprite_index = spr_walljumpstart
		else
			sprite_index = spr_mach2jump
	    if (character == "P" || character = "PZ")
	        vsp = -11
	    else
	        vsp = -13
	    xscale *= -1
	    jumpstop = 0
	}
	if ((grounded && wallspeed <= 0) || wallspeed <= 0)
	{
	    state = 58
	    sprite_index = spr_fall
	}
	image_speed = 0.6
	if (!instance_exists(obj_cloudeffect))
	    instance_create(x, (y + 43), obj_cloudeffect)


}
