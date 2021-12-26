function scr_commonenemy() {
	//States
	scr_enemystates()

	//Heat Meter Palettes
	if global.heatmeter >= 4 && object_index != obj_shrimp && object_index != obj_shrimpred && object_index != obj_shrimpblue 
	{
		if object_index = obj_robot
			paletteselect = 2
		else
			paletteselect = 1
	}
	else if global.heatmeter < 4 && object_index != obj_shrimp && object_index != obj_shrimpred && object_index != obj_shrimpblue
	{
		if object_index = obj_robot
			paletteselect = 1
		else
			paletteselect = 0			
	}
	//Squash and Stretch
	if squashed = true
	{
		squashval = approach(squashval,0.4,0.15)
		if squashval >= 0.4
			squashed = false
	}
	else if squashed = false
	{
		squashval = approach(squashval,0,0.05)
	}
	//Stun
	if stuntouch > 0
	stuntouch--
	//invtime
	if (invtime > 0)
	    invtime--
	//Bomb
	if (bombreset > 0)
	    bombreset -= 1 + (global.heatmeter*0.5)
	
	
	//Heat
	heatreset = approach(heatreset,0,1)

	//Drain Scare
	if scarebuffer > 0
	scarebuffer--
	//Spaghetti Scare
	if scarebuffer > 0 && shake != 1 && state = 94 && state != states.frozen && state != 109 && thrown = 0 && state != 106 && markedfordeath != 1 {
	    state = 94
		if place_meeting(x, (y + 1), obj_railh)
			hsp = -5
		else if place_meeting(x, (y + 1), obj_railh2)
			hsp = 5
		else 
			hsp = 0
		if (sprite_index != scaredspr)
	    {
	       sprite_index = scaredspr
	       if (grav != 0 && grounded) 
			vsp = -3
	    }
	}
	else if !(state = 94 && scarebuffer > 0)
		scarebuffer = 0
	//An stinky attempt at preventing out of bound enemies
	if (markedfordeath == 1 && markedfordeathbuffer <= 0 && thrown == 1)
	    instance_destroy()
	if (thrown == 0 || markedfordeath == 0)
	{
	    markedfordeath = 0
	    markedfordeathbuffer = 50
	}
	if (markedfordeath == 1)
	    markedfordeathbuffer--
	if (thrown == 1 && place_meeting((x + hsp), (y + vsp), obj_hallway))
	    markedfordeath = 1

	//Pitfall Eenemy
	if y > (room_height * 1.1)
		markedfordeath = 1
	//Lower the Stuntimer
	if hp > 1 && stunned > 70
		stunned = 70
	//Dying
	if hp <= 0 {
		dying = true
		deathbuffer = 100
	}
	else if shake = 1 && hp <= 1 {
		dying = true
		deathbuffer = 100
	}
	else {
		dying = false
		deathbuffer = 100
	}
	if deathbuffer > 0 && dying = true {
		deathbuffer--
		stunned = 100
		var size = random_range(0.5, 1)
		var randomgore = random_range(-50,100)
		if randomgore >= 95 {
				with (instance_create((x + random_range(-5, 5)), ((y + random_range(-5, 5))), obj_slimedebris))
				{
					image_xscale = size
					image_yscale = image_xscale
					hsp = (initialhsp + other.hsp)
				}
		}
	}
	//Force Death
	if dying = true && thrown != 1 && ((state != 105 && state != 109 && state != 106 && state != 200)) && deathbuffer <= 0 {
		event_user(0)
	}
	//Force Death Two
	if dying = true && instance_exists(obj_fadeout) 
	{
		event_user(0)
	}




}
