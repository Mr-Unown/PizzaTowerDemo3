/// @description Generate Height Map
//draw_sprite(spr_solidtile,0,0,0)
/*
for (var i = heightstoget - 1; i >= 0; i--)
{
	var check = 0;
	while (check <= TILE_SIZE)
	{
		global.tile_heightmap[i] = check;
		if check >= TILE_SIZE 
			break;
		if (surface_getpixel(application_surface,i,check)) != make_color_rgb(7,7,7)
				check++
		
	}
}*/
for (var i = collisionheight - 1; i >= 0; i--) //for each row
{
	for (var z = width - 1; z >= 0; z--)
	{
		var check = 0;
		while (check <= TILE_SIZE)
		{
			global.tile_heightmap[i][z] = check;
			if check == TILE_SIZE 
				break;
			if instance_position(z,check,obj_precise_tileinitializer) 
				break;
			check++
		}
	}	
}
//GET OUT OF HERE
show_debug_message("Generated Heightmap Array")
room_goto(Realtitlescreen);