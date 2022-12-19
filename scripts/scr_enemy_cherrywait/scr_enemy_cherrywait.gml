function scr_enemy_cherrywait() {
	image_speed = 0.35
	hsp = 0
	movespeed = 0
		if global.panic = 0
		{	
			sprite_index = spr_charcherry_wait	
		}
		
			else if global.panic = 1 && sprite_index != spr_charcherry_popout && (((obj_player.x > (x - 400)) && (obj_player.x < (x + 400))) && ((y <= (obj_player.y + 60)) && (y >= (obj_player.y - 60))))
			{
				image_index = 0
				sprite_index = spr_charcherry_popout	
			}
	if (floor(image_index) == (image_number - 1)) && sprite_index = spr_charcherry_popout
	{
		sprite_index = spr_charcherry_run
		state = 94
	}


}
