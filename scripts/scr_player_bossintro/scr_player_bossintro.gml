function scr_player_bossintro() {
	hsp = 0
	xscale = 1
	hurted = 0
	inv_frames = 0
	if (sprite_index == spr_bossintro && floor(image_index) == (image_number - 1))
	{
		if obj_inputAssigner.device_selected[0]
		{
	    state = 0
		movespeed = 0
	    image_index = 0
		}
	}
	if (sprite_index == spr_player_levelcomplete && floor(image_index) == (image_number - 1))
	    image_speed = 0
	else
	    image_speed = 0.35
	if (sprite_index == spr_idle && floor(image_index) == (image_number - 1))
	    image_speed = 0
	else
	    image_speed = 0.35



}
