/// @description Generate Height Map
draw_tilemap(tilemapid,0,0);
/*
for (var i = heightstoget - 1; i >= 0; i--)
{
	var check = 0;
	while (check <= TILE_SIZE)
	{
		global.heights[i] = check;
		if check >= TILE_SIZE 
			break;
		if (surface_getpixel(application_surface,i,check)) != make_color_rgb(7,7,7)
				check++
		
	}
}*/
for (var i = collisionheight - 1; i >= 0; i--)
{
	for (var z = width - 1; z >= 0; z--) 
	{
		var check = 0;
		while (check <= TILE_SIZE)
		{
			global.heights[z][i] = check;
			if check >= TILE_SIZE 
				break;
			if (surface_getpixel(application_surface,z,check)) != make_color_rgb(7,7,7)
					check++
		
		}
	}	
}
//GET OUT OF HERE
room_goto(Realtitlescreen);