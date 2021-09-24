function tile_meeting_slope(argument0,argument1,argument2){
///@description tile_meeting_slope(x,y,layer)
///@param x
///@param y
///@param layer
var answer = 0;
var _layer = argument2,
    _tm = layer_tilemap_get_id(_layer),
    _checker = noone,
	_point1 = noone,
	_point2 = noone;
	
var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (argument0 - x), y),
    _y1 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_top + (argument1 - y)),
    _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (argument0 - x), y),
    _y2 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_bottom + (argument1 - y));
	
if(!instance_exists(_checker)) _checker = instance_create_depth(0,0,0,obj_precise_tile_checker);
if(!instance_exists(_point1)) _point1 = instance_create_depth(argument0,_y2,0,obj_slope_tile_checker); 
if(!instance_exists(_point2)) _point2 = instance_create_depth(argument0,_y2,0,obj_slope_tile_checker); 



for(var _x = _x1; _x <= _x2; _x++)
{
	for(var _y = _y1; _y <= _y2; _y++)
	{
		var _tile = tile_get_index(tilemap_get(_tm, _x, _y));
		if(_tile)
		{
			if(_tile < 29 && _tile > 34)
			{
				//If Tile is Just Solid it's fine otherwise..
				answer = 0;
				break;
			}
			_checker.x = _x * tilemap_get_tile_width(_tm);
			_checker.y = _y * tilemap_get_tile_height(_tm);
			_point1.x = _x * tilemap_get_tile_width(_tm);
			_point2.x = (_x * tilemap_get_tile_width(_tm)) + 31;

			_checker.image_index = _tile;
			if(place_meeting(argument0,argument1,_checker))
			{
				with _checker
				{		
					var _xscale = 1;
					switch _tile
					{
						case tiletype.rightslope1:
						case tiletype.rightslope2:
						case tiletype.rightsteepslope:
							_xscale = -1
						break;	
						default:
							_xscale = 1
						break;
					}
					var flip = _xscale = -1 ? 180 : 0
					var degree = (point_direction(_point1.x,_point1.y,_point2.x,_point2.y)) - flip					
					//return degree;
					answer = degree;
					break;
				}
			}
		}
	}
}
instance_destroy(_checker)
instance_destroy(_point1)
instance_destroy(_point2)
return answer;
}