with other {
	
	if state != states.cotton and state != states.cottonroll {
		if state != states.Sjumpprep {
			if movespeed < 12
				movespeed = 12
			state = states.mach3
			sprite_index = spr_player_mach4
			xscale = sign(other.image_xscale)
		}
	}
	else {
		if movespeed < 13
			movespeed = 13
		state = states.cottonroll
		sprite_index = spr_cotton_maxrun
		xscale = sign(other.image_xscale)
	}
}
