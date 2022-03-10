function scr_player_bossintro() {
	hsp = 0
	xscale = 1
	hurted = 0
	inv_frames = 0
	if (sprite_index == spr_bossintro && animation_end())
        sprite_index = spr_idle;
	/*
	if (sprite_index == spr_player_levelcomplete && floor(image_index) == (image_number - 1))
	    image_speed = 0
	else
	    image_speed = 0.35
	*/
	 image_speed = 0.35;



}
