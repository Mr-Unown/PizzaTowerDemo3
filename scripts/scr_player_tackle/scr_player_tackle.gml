function scr_player_tackle() {
	combo = 0
	mach2 = 0
	hsp = xscale * movespeed
	if (movespeed > 0)
	    movespeed -= 0.35
	start_running = 1
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
	if (floor(image_index) == (image_number - 1))
	    image_speed = 0
	else
		image_speed = 0.35
	//Regular Stop
	if floor(image_index) >= (image_number - 1) && grounded && !key_attack && vsp > 0
	{
		image_speed = 0.35
	    state = 0
	}
	//Mach Stop
	if ((floor(image_index) == (image_number - 1) || sprite_index == spr_suplexdashjump || sprite_index == spr_suplexdashjumpstart) && (grounded || character = "PZ") && key_attack)
	{
		image_speed = 0.35
		if (character == "N" && pogo = true) && !key_slap2 
		{
			sprite_index = spr_playerN_pogostart
			state = states.pogo
			image_index = 0
			pogomovespeed = 9
		}
		else
			state = 70
			grav = 0.5
	}
	//Crouchslip
	if (key_down && grounded && vsp > 0)
	{
		grav = 0.5
	    sprite_index = spr_crouchslip
	    machhitAnim = 0
	    state = 68
	    movespeed = 15
	}


}
