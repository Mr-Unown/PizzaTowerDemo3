function tile_height_checker(argument0,argument1,argument2) {
	///@description tile_height_checker(x,y,tiledata)
	///@param x
	///@param y
	///@param tiledata
	
	var _tile = argument2
	var column = sprite_get_height(spr_solidtile) / TILE_SIZE, row = sprite_get_width(spr_solidtile) / TILE_SIZE;
	if _tile < (column * row) - 1
	{
		var posx = (_tile mod column), posy = floor(_tile / row), arraycheck = ((argument0 mod TILE_SIZE) + (posx * TILE_SIZE)),
		mapped = global.tile_heightmap[posy][arraycheck], //returns in pixels the distance from which there are empty pixels.
		donkey_kong = ((argument1 mod TILE_SIZE) >= (mapped));
		return donkey_kong;
	}
}

function tile_meeting_precise(argument0,argument1,argument2 = "Tiles_Solid") {
	///@description tile_meeting_precise(x,y,layer)
	///@param x
	///@param y
	///@param layer
	if !layer_exists(argument2)
		return false;
	var _layer = argument2,
		_tm = layer_tilemap_get_id_fixed(_layer)
		//_checker = obj_precise_tile_checker;
		//if(!instance_exists(_checker)) instance_create_depth(0,0,0,_checker); 
	

	var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (argument0 - x), y),
	    _y1 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_top + (argument1 - y)),
	    _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (argument0 - x), y),
	    _y2 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_bottom + (argument1 - y));
	
	for(var _x = _x1; _x <= _x2; _x++)
	{
		for(var _y = _y1; _y <= _y2; _y++)
		{
			var _tile = tile_get_index(tilemap_get(_tm, _x, _y));
			if _tile > 0
			{
				if (_tile == tiletype.solids)
					return _tile; //If Tile is Just Solid it's fine otherwise...
				else
				{
					var truth = false;
					truth = tile_height_checker(argument0,bbox_bottom + (argument1 - y),_tile) || tile_height_checker(bbox_left + (argument0 - x),bbox_bottom + (argument1 - y),_tile) || tile_height_checker(bbox_right + (argument0 - x),bbox_bottom + (argument1 - y),_tile);					
					//truth = tile_height_checker(argument0,bbox_bottom + (argument1 - y),_tile);
					//truth |= tile_height_checker(bbox_left + (argument0 - x),bbox_bottom + (argument1 - y),_tile);
					//truth |= tile_height_checker(bbox_right + (argument0 - x),bbox_bottom + (argument1 - y),_tile);
					if truth = true
						return _tile;
				}
			}
		}
	}
	return false;
}
				
/*Old Precise Checker

_checker.x = _x * tilemap_get_tile_width(_tm);
_checker.y = _y * tilemap_get_tile_height(_tm);
_checker.image_index = _tile;
if(place_meeting(argument0,argument1,_checker)) 
	return _tile;*/