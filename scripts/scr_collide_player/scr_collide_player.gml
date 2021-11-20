function scr_collide_player() {
	if global.freezeframe = true
		return false;
	//Variables
	grounded = false
	grinding = false
	vsp_carry = 0;
	hsp_carry = 0;
	platformid = noone;
	
	// Moving Platform
	with instance_place(x, y + 2, obj_movingplatform)
	{
		with other
		{
			if place_meeting(x, y + (1 + abs(other.v_vel)), other)
			{
				platformid = other.id
				hsp_carry = other.hsp
				if abs(other.vsp) > 2
					vsp_carry = other.vsp
			}
		}
	}
	var vsp_final = vsp + vsp_carry

	
	// Vertical
	repeat(abs(vsp_final)) {
	    if !scr_solid(x, y + sign(vsp_final))
	        y += sign(vsp_final); 
	    else {
	        vsp = 0;
	        break;
	    }
	}

	var hsp_final = hsp + hsp_carry

	// Horizontal
	repeat(abs(hsp_final)) {
	    // Move up slope
	    if scr_solid(x + sign(hsp_final), y) && !scr_solid(x + sign(hsp_final), y - 1)
	        y--
    
	    // Move down slope
	    if !scr_solid(x + sign(hsp_final), y) && !scr_solid(x + sign(hsp_final), y + 1) && scr_solid(x + sign(hsp_final), y + 2)
	        y++;

	    if !scr_solid(x + sign(hsp_final), y)
	        x += sign(hsp_final); 
	    else {
	        hsp = 0;
	        break;
	    }
	}
	#region Better Moving Platforms
	if platformid != noone
	{
		if vsp < 0 or !instance_exists(platformid) or !place_meeting(x, y + 32 + abs(platformid.v_vel) * 2, platformid)
		{
			platformid = noone
			y = floor(y)
		}
		else
		{
			grounded = true
			vsp = grav
			if platformid.vsp > 0 vsp = abs(platformid.v_vel)
				y = platformid.y - 46
		
			if !place_meeting(x, y + 1, platformid)
			{
				var i = 0
				while !place_meeting(x, y + 1, platformid)
				{
					y++
					if i > abs(sprite_height)
						break
					i++
				}
			}
		
			if platformid.vsp != 0
			{
				if scr_solid()
				{
					var i = 0
					while scr_solid()
					{
						y--
						if i > 32
							break
						i++
					}
				}
			
				if scr_solid()
				{
					var i = 0
					while scr_solid()
					{
						y++
						if i > 64
							break
						i++
					}
				}
			}
		
		}
	}
	#endregion


	var _grav = (in_water == true ? grav / 1.5 : grav);
	if (vsp < 20)
	  vsp += _grav;

	grounded |= scr_solid(x, y + 1)
	//grounded |= !place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform)
	grounded |= scr_solid_player(x,y + 1) && (!place_meeting(x, y, obj_water) && place_meeting(x, y + 1, obj_water))
	//grounded |= grinding
	if platformid != noone or (place_meeting(x, y + 1, obj_movingplatform) and !place_meeting(x, y - 2, obj_movingplatform))
		grounded |= true	



}
