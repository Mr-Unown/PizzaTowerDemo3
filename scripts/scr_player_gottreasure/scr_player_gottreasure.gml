function scr_player_gottreasure() {
	sprite_index = spr_gottreasure
	mach2 = 0
	image_speed = 0.2
	if (obj_player.character == "S")
	{
	    if (floor(image_index) == (image_number - 1))
	        image_speed = 0
	}



}
