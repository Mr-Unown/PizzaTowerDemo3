function scr_player_cannonprep() {	hsp = 0
	
	//Shoot
	if key_slap2
	{
		vsp = -15
		movespeed = 12.5 * image_xscale
		state = states.cannonshoot
		if (character != "V")
			sprite_index = spr_mach2jump
		else
			sprite_index = spr_playerV_spinjump1   
        suplexmove = 0
		other.has_tricked = true
		ds_list_add(global.saveroom, other.id)
	}


}
