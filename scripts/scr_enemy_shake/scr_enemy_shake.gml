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
			if hp < 0
			instance_destroy()
			with instance_create(x,y,obj_balloonpop)
			{
					image_speed = 0.35
					sprite_index = spr_bigpoofclouds
					image_angle = choose(0,90,180,270)
			}
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
	        hp -= 99
	        thrown = 1
			hittinged = true
			canrotate = true
			image_angle += rotatevalue * rotatedirection
			
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
	        hp -= 999

	        thrown = 1
	    }
		else if (blowdirection == 5)
		{
			alarm[1] = 2
	        shakebuffer = 2.5
	        flash = 1
	        hsp = obj_player1.hsp
            vsp = -5
			squashed = true
	        state = 106
	        hp -= 1
	        thrown = 1
			grounded = 0
			invtime = 20
			stunned = 100
			hittinged = true
			with instance_create(x,y,obj_balloonpop)
			sprite_index = spr_parryeffect
		}
		else
		{
			instance_destroy()
		}

	}
	sprite_index = spr_dead



}
