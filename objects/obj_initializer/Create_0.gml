/// @description Initializes Crap
#macro TILE_SIZE 32
instance_create(0,0,obj_precise_tileinitializer);
width = sprite_get_width(spr_solidtile);
height = sprite_get_height(spr_solidtile);
collisionwidth = width / TILE_SIZE;
collisionheight = height / TILE_SIZE;

/*Create Tile Layer

var layerid = layer_create(0,"Tiles")
tilemapid = layer_tilemap_create(layerid,0,0,tile_solid,collisionwidth,collisionheight);

for (var i = 0; i <= collisionheight; ++i) 
{
	for (var z = 0; z <= collisionwidth; ++z) 
	{
		tilemap_set(tilemapid,z,z,i)
	}	
}*/
//global.newsjumpcancel = false;
//global.newtitlescreen = 0;
//global.wallrunstyle = 0;
//global.collectstyle = 0;
//global.npcs = true;
//scr_init();
//looking for the initialization stuff? check scr_init()
