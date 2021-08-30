/// @description Checks location for Solids
/// @param x 
/// @param y 
function scr_solidwall_noslope(argument0, argument1) {
	var old_x = x
	var old_y = y
	x = argument0
	y = argument1
	if place_meeting(x, y, obj_solid)
	{
	    x = old_x
	    y = old_y
	    return 1;
	}
	var movingplatform = noone
	if place_meeting(x, y, obj_movingplatform)
	{
		var movingplatform = instance_place(x, y, obj_movingplatform)
		if y > old_y && (!place_meeting(x, old_y, movingplatform))
		{
			x = old_x
			y = old_y
			return 1;
		}
	}
	var platform = noone
	if place_meeting(x, y, obj_platform)
	{
		var platform = instance_place(x, y, obj_platform)
		if (platform.image_yscale > 0)
		{
			if y > old_y && (!place_meeting(x, old_y, platform))
			{
				x = old_x
				y = old_y
				return 1;
			}
		}
		else
		{
			if y <= old_y && (!place_meeting(x, old_y, platform))
			{
				x = old_x
				y = old_y
				return 1;
			}
		}	
	}
	var platformside = noone
	if place_meeting(x, y, obj_platformside)
	{
		var platformside = instance_place(x, y, obj_platformside)	
		if (platformside.image_xscale > 0)
		{
			if x <= old_x && !place_meeting(old_x, y, platformside)
			{
				x = old_x
				y = old_y
				return 1;
			}
		}
		else
		{
			if x >= old_x && !place_meeting(old_x, y, platformside)
			{
				x = old_x
				y = old_y
				return 1;
			}
		}	
	}
	x = old_x
	y = old_y
	return 0;



}
