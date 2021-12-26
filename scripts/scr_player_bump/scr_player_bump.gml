function scr_player_bump() {
    movespeed = 0
    mach2 = 0
    start_running = 1
    alarm[4] = 14
    if (grounded && vsp > 0)
        hsp = 0
    if (floor(image_index) == (image_number - 1) && sprite_index != spr_rockethitwall)
        state = 0
	if (grounded && sprite_index == spr_rockethitwall)
		state = 0
    if (sprite_index != spr_player_catched && sprite_index != spr_tumbleend && sprite_index != spr_hitwall && sprite_index != spr_suplexmash1 && sprite_index != spr_suplexmash2 && sprite_index != spr_suplexmash3 && sprite_index != spr_suplexmash4 && sprite_index != spr_punch && sprite_index != spr_rockethitwall)
        sprite_index = spr_bump
    image_speed = 0.35
	if sprite_index = spr_player_sjumpcancel
		sprite_index = spr_player_splat
	
	if (sprite_index == spr_suplexmash1 || sprite_index == spr_suplexmash2 || sprite_index == spr_suplexmash3 || sprite_index == spr_suplexmash4 || sprite_index == spr_punch)
	{
		var slowdownspeed = 9 * (suplexdashtimer/12);    
	    if (floor(image_index) >= (image_number - 1))
	        image_speed = 0
	    else
	        image_speed = 0.35
	    if suplexdashtimer >= 12 && slowdownspeed >= 9 && !key_attack 
	    {
	        image_speed = 0.35
	        state = 0
	    }
	}



}
