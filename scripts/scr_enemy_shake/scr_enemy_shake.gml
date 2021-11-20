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
		with (instance_create((other.x + random_range(-16, 16)), (other.y + random_range(-16, 16)), obj_balloonpop))
		{
			image_speed = 0.35
			sprite_index = spr_bigpoofclouds
			image_angle = choose(0,90,180,270)
		}	
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    instance_create(x, y, obj_baddiegibs)
	    instance_create(x, y, obj_baddiegibs)	
	    if (blowdirection == 3)
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = (0 * blowintensity)
	        vsp = (-25 * blowintensity)
	        grav = 0.5
	        state = 106
	        hp -= 1

	        thrown = 1
	    }
	    else if (blowdirection == 2)
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = (0 * blowintensity)
	        vsp = (25 * blowintensity)
	        grav = 0.5
	        state = 106
	        hp -= 1

	        thrown = 1
	    }
	    else if (blowdirection == 1)
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = ((playerxscale * 25) * blowintensity)
	        vsp = (-6 * blowintensity)
	        grav = 0.5
	        state = 106
	        hp -= 1

	        thrown = 1
	    }
	    else if (blowdirection == "parry")
	    {
	        alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = ((playerxscale * 25) * blowintensity)
	        vsp = (0 * blowintensity)
	        grav = 0
	        state = 106
	        hp -= 1

	        thrown = 1
	    }
		else if (blowdirection == 5) && hp > 1
		{
			alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = ((playerxscale * 10) * blowintensity)
	        vsp = (-12 * blowintensity)
	        grav = 0.5
	        state = 106
	        hp -= 1
	        thrown = 1
		}
		else
		{
		
			instance_destroy()
		}

	}
	sprite_index = spr_dead



}
