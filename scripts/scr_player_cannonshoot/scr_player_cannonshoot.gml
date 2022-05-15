function scr_player_cannonshoot() {
	hsp = xscale * movespeed

	//this is just the ramp trick state without the tricks lol

	//Wallrun
	if (((!grounded) && scr_solid(x + hsp,y) && (!place_meeting((x + hsp), y, obj_destructibles)) && (!scr_slope_ext(x + sign(hsp), y))) || (grounded && (scr_solid(x + sign(hsp),y - 2) && !scr_slope_ext(x + sign(hsp), y)) && (!place_meeting((x + hsp), y, obj_destructibles))  && scr_slope() ) )
	{
	    wallspeed = clamp(movespeed,0,24)
	    state = 17
	}
	//Land
	if (grounded && vsp > 0)
	{
		movespeed = 12.5 * image_xscale
	    state = 70
	}

	//Animations
	if floor(image_index) >= (image_number - 1) && (sprite_index = spr_supertaunt1 || sprite_index = spr_supertaunt2 || sprite_index = spr_supertaunt3 || sprite_index = spr_supertaunt4)
		sprite_index = spr_mach2jump
	if (floor(image_index) >= (image_number - 1) && sprite_index == spr_playerV_spinjump1)
	    sprite_index = spr_mach2jump

	if (sprite_index = spr_supertaunt1 || sprite_index = spr_supertaunt2 || sprite_index = spr_supertaunt3 || sprite_index = spr_supertaunt4)
		image_speed = 0.35
	else
		image_speed = 0.5


}
