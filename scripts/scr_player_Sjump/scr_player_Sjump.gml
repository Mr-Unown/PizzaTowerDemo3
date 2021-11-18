function scr_player_Sjump() {

	mach2 = 0
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 0
	machhitAnim = 0
	move = (key_right + key_left)

	if jetpacking = true
	{
		hsp = 3 * sign(move)
	}
	else
		hsp = 0
	if (superspringjump = false)
	{
		vsp = -15
	}
	else if (superspringjump == true)
	{
		vsp -= 0.5
	}
	if (scr_solid(x, (y + vsp)) && (!place_meeting(x, (y + vsp), obj_destructibles)))
	{
	    a = 0
	    if (sprite_index == spr_player_supersidejump)
	        sprite_index = spr_player_supersidejumpland
	    if (sprite_index == spr_superjump)
	        sprite_index = spr_superjumpland
	    with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
	            image_index = 0
	            if grounded
	                vsp = -7
	        }
	    }
	    scr_soundeffect(sfx_groundpound)
	    image_index = 0
	    state = 93
	    machhitAnim = 0
		jetpacking = false	
	    superspringjump = false	
	}
	if (character == "V")
	{
	    if (floor(image_index) == 10 && sprite_index == spr_playerV_superjump)
	    {
	        sprite_index = spr_playerV_superjump
	        image_index = 5
	    }
	}
	if (superspringjump != 1)
	{

		if (key_attack2 && jetpacking = true) && character = "N"
	    {
			jetpacking = true		
			scr_soundeffect(sfx_noisewoah)
			state = states.jetpackstart
			image_index = 0
			sprite_index = spr_playerN_jetpackstart
			hsp = 0
			vsp = 0
			if move != 0
			  xscale = move
	    }
		else if (key_jump2 && jetpacking = true) && character = "N"
	    {
			jetpacking = false
			scr_soundeffect(sfx_jump)
			scr_soundeffect(sfx_rollgetup)
			jumpstop = false
			vsp = -15
			state = 58
			sprite_index = spr_playerN_spinjump
			image_index = 0
			with instance_create(x,y,obj_jumpdust)
				image_xscale = other.xscale
	    }
		else if (key_attack2) && character = "PZ"
		{			
			jetpacking = false
	        if (move != 0)
	            xscale = move
	        movespeed = 10
	        machhitAnim = 0
	        state = 70
	        flash = 1
			vsp = -11
	        sprite_index = spr_mach2jump
	        with (instance_create(x, y, obj_jumpdust))
	            image_xscale = other.xscale
		}	
	    else if (key_attack2) && character != "P" && !(character == "N" && pogo = true) && jetpacking = false
	    {
			jetpacking = false
	        if (move != 0)
	            xscale = move
	        movespeed = 12
	        machhitAnim = 0
	        state = 91
	        flash = 1
	        image_index = 0
	        sprite_index = spr_mach3dashpad
	        with (instance_create(x, y, obj_jumpdust))
	            image_xscale = other.xscale
	    }	
	    else if (key_attack2) && character == "P"
	    {
			jetpacking = false
	        if (move != 0)
	            xscale = move
	        movespeed = 12
	        machhitAnim = 0
	        state = states.jetpackstart
	        flash = 1
	        image_index = 0
	        sprite_index = spr_player_sjumpcancelprep
	        with (instance_create(x, y, obj_jumpdust))
	            image_xscale = other.xscale
	    }	
	
	

	}
	if character != "PZ"
		image_speed = 0.5
	else
		image_speed = 0.35
	scr_collide_player()



}
