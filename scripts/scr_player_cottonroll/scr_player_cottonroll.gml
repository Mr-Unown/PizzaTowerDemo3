function scr_player_cottonroll() {
	image_speed = 0.35
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 0
	}
	hsp = (xscale * movespeed)

	if sprite_index = spr_cotton_run && (floor(image_index) == (image_number - 1))
	{
		sprite_index = spr_cotton_maxrun
		flash = 1
		movespeed = 13
	}

	if sprite_index != spr_cotton_maxrun
		movespeed += 0.25
	
	if !key_attack
	{
		state = 100
		sprite_index = spr_cotton_idle
		vsp = 0
		movespeed = 0
		image_index = 0
	}
	if (place_meeting(x + 1, y, obj_solid) || place_meeting(x - 1, y, obj_solid)) and !scr_slope()
	{
		if sprite_index = spr_cotton_maxrun
		{
			state = 100
			sprite_index = spr_cotton_slam
			vsp = -6
			image_index = 0
			movespeed = -4
		}
		else if sprite_index = spr_cotton_run
		{
			state = 100
			sprite_index = spr_cotton_idle
			vsp = 0
			movespeed = 0
			image_index = 0
		}
	}

	if grounded && key_jump2
		vsp = -12


}
