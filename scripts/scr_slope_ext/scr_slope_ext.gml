/// @description scr_slope_ext - an advanced slope collision detection code
/// @param x
/// @param y
function scr_slope_ext(argument0, argument1) 
{
	var old_x = x;
	var old_y = y;
	x = argument0
	y = argument1
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
	        if other.bbox_bottom >= sslope
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
	x = old_x
	y = old_y
	return false;





}
