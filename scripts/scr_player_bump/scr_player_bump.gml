function scr_player_bump() {
	sprite_index = spr_bump
	   /*if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 0
	}
	 move = (key_left + key_right)
	    if (move != 0)
	        xscale = move
	    hsp = (move * movespeed)
	    {
	if move != 0
	  movespeed = 4
	else
	  movespeed = 0
	    }
	    movespeed = 4*/
	     if (scr_solid((x + sign(hsp)), y) && ((xscale == 1) && ((move == 1) && (!place_meeting((x + 1), y, obj_slope)))))
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && ((xscale == -1) && ((move == -1) && (!place_meeting((x - 1), y, obj_slope)))))
	    movespeed = 0
	mach2 = 0
	start_running = 1

	if (grounded && vsp > 0)
	    hsp = 0
	if (floor(image_index) == 6)
	    state = 0
	if (sprite_index != spr_player_catched) && (sprite_index != spr_player_mach3hitwall) && sprite_index != spr_tumbleend
	    sprite_index = spr_bump
	image_speed = 0.35
	if audio_is_playing(sound_tumble)
		audio_stop_sound(sound_tumble)
		if grounded 
		{
			state = 0	
		}



}
