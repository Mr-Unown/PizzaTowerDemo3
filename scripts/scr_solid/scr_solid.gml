/// @description Checks location for Solids
/// @param x 
/// @param y 
function scr_solid(argument0, argument1) {
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
	/*
	if (y > old_y && (bbox_bottom % 16) == 0 && (!place_meeting(x, old_y, obj_grindrail)) && place_meeting(x, y, obj_grindrail))
	{
	    x = old_x
	    y = old_y
	    return 1;
	}
	*/ 
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
	var slope = instance_place(x, y, obj_slope)
	if slope
	{
	    with (slope)
	    {
	        var object_side = 0
	        var slope_start = 0
	        var slope_end = 0
	        if (image_xscale > 0)
	        {
	            object_side = other.bbox_right
	            slope_start = bbox_bottom
	            slope_end = bbox_top
	        }
	        else
	        {
	            object_side = other.bbox_left
	            slope_start = bbox_top
	            slope_end = bbox_bottom
	        }
	        var m = ((sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left))
	        var sslope = (slope_start - round((m * (object_side - bbox_left))))
	        if (other.bbox_bottom >= sslope)
	        {
	            other.x = old_x
	            other.y = old_y
	            return 1;
	        }
	    }
	}
	/*
	var grindslope = instance_place(x, y, obj_grindrailslope)
	if grindslope
	{
	    with (grindslope)
	    {
	        var gobject_side = 0
	        var gslope_start = 0
	        var gslope_end = 0
	        if (image_xscale > 0)
	        {
	            gobject_side = other.bbox_right
	            gslope_start = bbox_bottom
	            gslope_end = bbox_top
	        }
	        else
	        {
	            gobject_side = other.bbox_left
	            gslope_start = bbox_top
	            gslope_end = bbox_bottom 
	        }
	        var n = ((sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left))
	        var grindsslope = (gslope_start - round((n * (gobject_side - bbox_left))))
			if other.bbox_bottom >= grindsslope
	        {
	            other.x = old_x
	            other.y = old_y
	            return 1;
	        }
	    }
	}
	*/
	x = old_x
	y = old_y
	return 0;



}
