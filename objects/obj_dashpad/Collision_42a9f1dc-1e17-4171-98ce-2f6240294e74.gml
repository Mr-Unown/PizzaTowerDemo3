with (other.id)
{
    if (grounded && (state == 69 || state == 70))
    {
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
        flash = 1
        sprite_index = spr_mach4
        instance_create(x, y, obj_jumpdust)
        movespeed = 14
    }
    else if (grounded && state == 91)
    {
        flash = 1
        if (movespeed < 14)
            movespeed = 14
        instance_create(x, y, obj_jumpdust)
    }
	else if (state == 24 || state == 18) && key_attack
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
            scr_soundeffect(16)
            scr_soundeffect(17)
            image_index = 0
            image_index = 0
			xscale = other.image_xscale
			mach2 = 100
			machhitAnim = 0
			state = 91
			flash = 1
			sprite_index = spr_mach4
			instance_create(x, y, obj_jumpdust)
			movespeed = 14
        }
	else if state = 86  && key_attack
	{
		repeat (4)
			instance_create(x, y, obj_wooddebris)
        scr_soundeffect(16)
        scr_soundeffect(17)
        image_index = 0
        xscale = other.image_xscale
		mach2 = 100
		machhitAnim = 0
		state = 91
		flash = 1
		sprite_index = spr_mach4
		instance_create(x, y, obj_jumpdust)
		movespeed = 14
	}
	else if (state = "pogo") || (state = "jetpack" && key_attack && jetpacking = true) 
	{
		jetpacking = false
	    xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 91
        flash = 1
        sprite_index = spr_mach4
        instance_create(x, y, obj_jumpdust)
        movespeed = 14		
	}
}


