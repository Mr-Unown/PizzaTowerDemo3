function scr_enemy_shake() {
	if (grabbedby == 1)
	    var player = obj_player1
	else if (grabbedby == 2)
	    player = obj_player2
	hsp = 0
	vsp = 0
	if global.freezeframe = false
	{
		if newshakebuffer > 0
			newshakebuffer--
	}

	if global.freezeframe = false && newshakebuffer <= 0
	    shake = 0
	else
		shake = 1
	
	if global.freezeframe = false && newshakebuffer <= 0
	{
	    with (instance_create(x, y, obj_bumpeffect))
			sprite_index = spr_parryeffect
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    instance_create(x, y, obj_baddiegibs)
	    instance_create(x, y, obj_baddiegibs)
		if hp <= 0
		with (instance_create((x + random_range(-16, 16)), (y + random_range(-16, 16)), obj_balloonpop))	
		{	
			image_speed = 0.35	
			sprite_index = spr_bigpoofclouds	
			image_angle = choose(0,90,180,270)	
		}			
	    if (blowdirection == 3) //Up Punch
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = (0 * blowintensity)
	        vsp = (-25 * blowintensity)
	        grav = 0.5
	        state = 106
	        //hp = 0
	        thrown = 1
	    }
	    else if (blowdirection == 2) //Down Punch
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = (0 * blowintensity)
	        vsp = (25 * blowintensity)
	        grav = 0.5
	        state = 106
	        //hp = 0
	        thrown = 1
	    }
	    else if (blowdirection == 1) //Directional Punch
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = ((playerxscale * 25) * blowintensity)
	        vsp = (-6 * blowintensity)
	        grav = 0.5
	        state = 106
	        //hp = 0
	        thrown = 1
			visible = 1
	    }
	    else if (blowdirection == "parry") //Parry
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = ((playerxscale * 25) * blowintensity)
	        vsp = (0 * blowintensity)
	        grav = 0
	        state = 106
	        hp = 0
	        thrown = 1
	    }
		else if (blowdirection == 5 && hp > 1) //Supertaunt and Explosions
		{
			alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
			hsp = ((playerxscale * 10) * blowintensity)
            vsp = (-12 * blowintensity)
			squashed = true
	        state = 106
	        hp = 0;
	        thrown = 1
			grounded = 0
			invtime = 20
			stunned = 100
			hittinged = true
			with instance_create(x,y,obj_balloonpop)
				sprite_index = spr_parryeffect
		}
		else if blowdirection == 6 //"Instakill" Moves
		{
			alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = player.xscale * 9
            vsp = -7
			squashed = true
	        state = 106
	        hp -= 1
	        thrown = 1
			grounded = 0
			invtime = 20
			stunned = 100
			hittinged = true
			global.style += 1
			with instance_create(x,y,obj_balloonpop)
				sprite_index = spr_parryeffect	
			with instance_create(x,y,obj_balloonpop)
				sprite_index = spr_bangeffect
			with (obj_camera)
			{
				shake_mag = 3
				shake_mag_acc = (3 / room_speed)
			}
			GamepadSetVibration((object_index == obj_player1 ? 0 : 1), 0.8, 0.8, 0.6)
		}
		else
		{
			instance_destroy()
		}
		if hp <= 0
		{
			hittinged = true
			canrotate = true
			enemydraw_angle += rotatevalue * rotatedirection
		}	
	}
	if hittinged = false
	sprite_index = stunfallspr
	else 
	sprite_index = spr_dead



}
