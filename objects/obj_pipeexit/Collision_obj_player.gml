with other.id
{
	if state = states.pipe
	{	
		visible = true
		flash = true
		x = other.centerX
		y = other.centerY		
		if other.pipedirection = "up"
		{
			if other.shoot = true
			{
			#region JetpackUp
			scr_soundeffect(sfx_superjumprelease)
			sprite_index = spr_superjump
			state = states.Sjump
			vsp = -15
			superspringjump = false
			jetpacking = true
			
			instance_create(x, y, obj_explosioneffect)			
			#endregion
			}
			else
			#region SuperJump
			scr_soundeffect(sfx_superjumprelease)
			sprite_index = spr_superjump
			state = states.Sjump
			superspringjump = 1
			vsp = -20
			instance_create(x, y, obj_explosioneffect)
			#endregion
		}
		else if other.pipedirection = "down"
		{
			if other.shoot = true
			{
			#region JetpackDown
			vsp += 14
			state = 74
			sprite_index = spr_bodyslamfall
			#endregion
			}
			else
			#region Freefall
			vsp += 14
			state = 74
			sprite_index = spr_bodyslamfall
			#endregion
		}
		else if other.pipedirection = "right"
		{
			if other.shoot = true
			{
			#region JetpackRight
	        xscale = 1
			mach2 = 100
			machhitAnim = 0
			state = states.jetpack
			flash = 1
			instance_create(x, y, obj_jumpdust)
			movespeed = 14	
			#endregion
			}
			else
			{
			#region MachRight


	        xscale = 1
			mach2 = 100
			machhitAnim = 0
			state = 91
			image_index = 0
			sprite_index = spr_mach3dashpad
			mach3dash = true
			mach3dashbuffer = 25
			instance_create(x, y, obj_jumpdust)
			movespeed = 14	
			#endregion
			}
		}
		else if other.pipedirection = "left"
		{
			if other.shoot = true
			{
			#region JetpackLeft
	        xscale = -1
			mach2 = 100
			machhitAnim = 0
			state = states.jetpack
			flash = 1
			instance_create(x, y, obj_jumpdust)
			movespeed = 14	
			#endregion
			}
			else
			{
			#region MachLeft
	        xscale = -1
			mach2 = 100
			machhitAnim = 0
			state = 91
			image_index = 0
			sprite_index = spr_mach3dashpad
			mach3dash = true
			mach3dashbuffer = 25
			instance_create(x, y, obj_jumpdust)
			movespeed = 14	
			#endregion
			}
		}
		else
		{
			#region DUMMY
	        xscale = 1
			mach2 = 100
			machhitAnim = 0
			state = 91
			flash = 1
			sprite_index = spr_mach4
			instance_create(x, y, obj_jumpdust)
			movespeed = 14	
			#endregion
		}

	}
}