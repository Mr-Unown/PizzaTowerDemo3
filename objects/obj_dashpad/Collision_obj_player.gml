with (other.id)
{
    if (state == 69 || state == states.throwdynamite || state == states.shotgun || state == states.pistol || state == 70 || state == states.machslide || state == states.machroll || state == states.freefallland || state == states.freefall || state == states.freefallprep || state == states.Sjumpprep || state == states.jump || state == states.normal || state == states.handstandjump || state == states.kingknightroll || state == states.crouch || state == states.crouchjump || state == states.crouchslide || state == states.slipnslide || state == states.boxxedpep)
    {
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
		image_index = 0
        sprite_index = spr_mach3dashpad
		mach3dash = true
		mach3dashbuffer = 25
        instance_create(x, y, obj_jumpdust)
        movespeed = 14
    }
	else if (state != states.frozen && cutscene = false && bbox_bottom < other.bbox_bottom) && !(state == states.Sjump || state == 24 || state == 18 || state == states.wallcling || state == 91  || state == states.climbwall) && 	!(state = 86 || state = states.pogo ||  (state = states.jetpack && jetpacking = true) )
	{
		xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
		image_index = 0
        sprite_index = spr_mach3dashpad
		mach3dash = true
		mach3dashbuffer = 25
        instance_create(x, y, obj_jumpdust)
        movespeed = 14
	}
	else if (state == states.Sjump || state == states.wallcling || state == states.climbwall) && bbox_bottom < other.bbox_bottom
	{
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
		image_index = 0			
        sprite_index = spr_mach3dashpad
		mach3dash = true
		mach3dashbuffer = 25
        instance_create(x, y, obj_jumpdust)
        movespeed = 14
    }
    else if state == 91 
    {
		xscale = other.image_xscale
        if (movespeed < 14)
            movespeed = 14
		if sprite_index = spr_mach4 
		{
			image_index = 0
			sprite_index = spr_mach3dashpad	
		}
		mach3dash = true
		mach3dashbuffer = 25			
        instance_create(x, y, obj_jumpdust)
    }
	else if (state == 24 || state == 18) 
    {
		#region Debris
            if (character == "P")
            {
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 0
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 1
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 2
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 3
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 4
                    sprite_index = spr_knightdebris
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 5
                    sprite_index = spr_knightdebris
                }
            }
            else if (character == "N")
            {
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 0
                    sprite_index = spr_playerN_knightarmor
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 1
                    sprite_index = spr_playerN_knightarmor
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 2
                    sprite_index = spr_playerN_knightarmor
                }
                with (instance_create(x, y, obj_knightdebris))
                {
                    image_index = 3
                    sprite_index = spr_playerN_knightarmor
                }
            }
            else
            {
                repeat (6)
                    instance_create(x, y, obj_metaldebris)
            }
			#endregion
        scr_soundeffect(sfx_bumpwall)
        scr_soundeffect(sfx_loseknight)
        image_index = 0
		xscale = other.image_xscale
		mach2 = 100
		machhitAnim = 0
		state = 91
		if mach3dash = false
			flash = 1
		sprite_index = spr_mach3dashpad
		instance_create(x, y, obj_jumpdust)
		mach3dash = true
		mach3dashbuffer = 25			
		movespeed = 14
    }
	else if state = 86 
	{
		repeat (4)
			instance_create(x, y, obj_wooddebris)
        scr_soundeffect(sfx_bumpwall)
        scr_soundeffect(sfx_loseknight)
        image_index = 0
        xscale = other.image_xscale
		mach2 = 100
		machhitAnim = 0
		state = 91
		if mach3dash = false
			flash = 1
		sprite_index = spr_mach3dashpad
		mach3dash = true
		mach3dashbuffer = 25		
		instance_create(x, y, obj_jumpdust)
		movespeed = 14
	}
	else if  (state = states.pogo) || (state = states.jetpack && jetpacking = true) 
	{
		jetpacking = false
	    xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
		if mach3dash = false
			flash = 1
		image_index = 0			
        sprite_index = spr_mach3dashpad
		mach3dash = true
		mach3dashbuffer = 25		
        instance_create(x, y, obj_jumpdust)
        movespeed = 14		
	}
}


