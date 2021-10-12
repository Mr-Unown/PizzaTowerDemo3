function scr_solid_player(argument0 = x, argument1 = y) {
	var old_x = x
	var old_y = y
	x = argument0
	y = argument1
	
	#region Moving Platform
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
	#endregion 

	#region Floating Platform
	var floatingplatform = noone
	if place_meeting(x, y, obj_floatingplatform)
	{
		var floatingplatform = instance_place(x, y, obj_floatingplatform)
		if y > old_y && (!place_meeting(x, old_y, floatingplatform))
		{
			x = old_x
			y = old_y
			return true;
		}
	}	
	#endregion
	
	#region Solid
	//Object
	if place_meeting(x, y, obj_solid)
	{
	    x = old_x
	    y = old_y
	    return 1;
	}
	//Tile
	if layer_exists("Tiles_Solid")
	{
		if tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.solids
		{
			x = old_x
			y = old_y
			return 1;
		}
	}
	#endregion
	
	#region Platform
	if state != states.ladder {
	#region Object
	var platform = noone
	if place_meeting(x, y, obj_platform)
	{
		var platform = instance_place(x, y, obj_platform)
		if y > old_y && (sign(platform.image_yscale) >= 1)
		{
			var _list = ds_list_create();
			var _num = instance_place_list(x, y, obj_platform, _list, false);
			var collided = false;
			if _num > 0
			{
				for (var i = 0; i < _num; ++i;)
				{
					var platform = (_list[| i]);
					if place_meeting(x, y, platform) && !place_meeting(x, old_y, platform)
					{
						collided = true;
					}
				}
			}
			ds_list_destroy(_list);
			if collided
			{
				x = old_x
				y = old_y
				return true;
			}
		}
		else if y <= old_y && (sign(platform.image_yscale) <= -1)
		{
			if (!place_meeting(x, old_y, platform))
			{
				x = old_x
				y = old_y
				return true;
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
				return true;
			}
		}
		else
		{
			if x >= old_x && !place_meeting(old_x, y, platformside)
			{
				x = old_x
				y = old_y
				return true;
			}
		}	
	}
	#endregion
	
	
	#region Tiles
	if layer_exists("Tiles_Solid")
	{	
		var type = tile_meeting_precise(x,y,"Tiles_Solid")
		switch(type)
		{
			case tiletype.upplatform:
			if y > old_y
			{
				var collide = false
				if tile_meeting_precise(x,y,"Tiles_Solid") == type &&  tile_meeting_precise(x,old_y,"Tiles_Solid") != type
					collide = true
				if collide = true
				{
					x = old_x
					y = old_y
					return true;
				}
			}
			break;
			case tiletype.downplatform:
			if y <= old_y
			{
				if tile_meeting_precise(x,y,"Tiles_Solid") == type &&  tile_meeting_precise(x,old_y,"Tiles_Solid") != type
				{
					x = old_x
					y = old_y
					return true;
				}
			}
			break;
			case tiletype.rightplatform:
			if x <= old_x
			{
				if tile_meeting_precise(x,y,"Tiles_Solid") == type &&  tile_meeting_precise(old_x,y,"Tiles_Solid") != type
				{
					x = old_x
					y = old_y
					return true;
				}
			}
			break;
			case tiletype.leftplatform:
			if x >= old_x
			{
				if tile_meeting_precise(x,y,"Tiles_Solid") == type &&  tile_meeting_precise(old_x,y,"Tiles_Solid") != type
				{
					x = old_x
					y = old_y
					return true;
				}				
			}
			break;			
		}
	}
	#endregion
	}
	#endregion
	
	#region Slopes
	#region Object
	if place_meeting(x,y, obj_slope)
	{
		var slope = instance_place(x, y, obj_slope)
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
	        if other.bbox_bottom = sslope && other.bbox_top < sslope && object_side != sslope 
	        {	
				other.x = old_x
				other.y = old_y
	            return true;
	        }
	    }
	}
	#endregion
	
	#region Tile
	if layer_exists("Tiles_Solid")
	{
		if tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.leftslope1 || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.leftslope2 || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.leftsteepslope || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.rightsteepslope || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.rightslope1 || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.rightslope2
		{
			x = old_x
			y = old_y
			return true;
		}
	}		
	#endregion

	

	#endregion
	#region Player Only Collisions
	
	#region Water
	var water = noone
	if place_meeting(x, y, obj_water)
	{
		var water = instance_place(x, y, obj_water)
		if y > old_y && (!place_meeting(x, old_y, water)) && (state == states.mach3 || state == states.backbreaker || (state == states.jetpack && vsp = 0) || sprite_index == spr_mach3boost)
		{
			x = old_x
			y = old_y
			return 1;
		}
	}
	#endregion	
	if (y > old_y && (!place_meeting(x, old_y, obj_grindrail)) && place_meeting(x, y, obj_grindrail))
	{
		if !cutscene && !scr_transformationcheck(other)
		{
		grinding = true
		x = old_x
		y = old_y
		return 1;
		}
	}
	if place_meeting(x,y, obj_grindrailslope)
	{
		var grindslope = instance_place(x, y, obj_grindrailslope)
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
			if  other.y >= old_y && other.bbox_bottom = grindsslope && other.bbox_top < grindsslope && gobject_side != grindsslope && !other.cutscene && !scr_transformationcheck(other)
	        {
	            other.x = old_x
	            other.y = old_y
				other.grinding = true
	            return 1;
	        }
	    }
	}
	#endregion
	x = old_x
	y = old_y
	return 0;



}
