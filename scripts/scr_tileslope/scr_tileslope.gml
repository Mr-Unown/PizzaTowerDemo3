/// @description scr_tileslope - detects a slope and spits out the angle
/// @param x
/// @param y
function scr_tileslope(argument0, argument1) {
	var old_x = x;
	var old_y = y;
	var _return;
	_return[0] = noone
	x = argument0
	y = argument1
	if layer_exists("Tiles_Solid")
	{
		if tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.leftslope1 || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.leftslope2 || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.leftsteepslope || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.rightsteepslope || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.rightslope1 || tile_meeting_precise(x,y,"Tiles_Solid") == tiletype.rightslope2
		{
			#region Tile Slopes
			var _tiletype = tile_meeting_precise(x, y, "Tiles_Solid")
			var _xscale = 1
			var _yscale = 1
			switch (_tiletype)
			{
				case tiletype.rightslope1:
					_xscale = -2
					_yscale = 1
				break;
				case tiletype.rightslope2:
					_xscale = -2
					_yscale = 1
				break;
				case tiletype.rightsteepslope:
					_xscale = -1
					_yscale = 1
				break;	
				case tiletype.leftslope1:
					_xscale = 2
					_yscale = 1
				break;
				case tiletype.leftslope2:
					_xscale = 2
					_yscale = 1
				break;
				case tiletype.leftsteepslope:
					_xscale = 1
					_yscale = 1
				break;	
			}
			#endregion	
		
			_return[0] = _tiletype
			_return[1] = _xscale
			_return[2] = _yscale
			x = old_x
			y = old_y
			return _return;			
		}
	}		
	
	x = old_x
	y = old_y
	return _return;
}
