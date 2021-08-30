with other.id {
	if y < other.y && sprite_index != spr_player_mach2jump && (state == 58 || state == 69 || state == 46) && sprite_index != spr_stompprep
	{
		scr_soundeffect(12)
		image_index = 0
		instance_create(x, (y + 50), obj_stompeffect)
		stompAnim = 1
		if key_jump2
		vsp = -11
		else
		vsp = -9
		if (state != 46)
			sprite_index = spr_stompprep
	}	
}