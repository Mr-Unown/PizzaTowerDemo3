//Debris
if global.panic == true && !instance_exists(obj_treasure)
{
	repeat(10)
	with instance_create(random(room_width), random(room_height + 32) - 16, obj_debris)
	{
		image_speed = irandom_range(35,50) / 100
		sprite_index = spr_brickdebris
		vsp = 12
		rotatedirection = choose(-1,0,1)
		rotatevalue = irandom_range(-10,10)			
	}
}
var lay_id = layer_get_id("Backgrounds_1")
var back_id = layer_background_get_id_fixed(lay_id)
var lay_id2 = layer_get_id("Backgrounds_2")
var back_id2 = layer_background_get_id_fixed(lay_id2)
var lay_id3 = layer_get_id("Backgrounds_3")
var back_id3 = layer_background_get_id_fixed(lay_id3)
var lay_id4 = layer_get_id("Tiles_1")
var tile_id1 = layer_tilemap_get_id_fixed(lay_id4)
var lay_id5 = layer_get_id("Tiles_2")
var tile_id2 = layer_tilemap_get_id_fixed(lay_id5)
var lay_id6 = layer_get_id("Backgrounds_sky")
var back_id4 = layer_background_get_id_fixed(lay_id6)
var lay_id7 = layer_get_id("Backgrounds_sky2")
var back_id5 = layer_background_get_id_fixed(lay_id7)
var lay_id8 = layer_get_id("Backgrounds_far1")
var back_id6 = layer_background_get_id_fixed(lay_id8)
var lay_id9 = layer_get_id("Backgrounds_Ground1")
var back_id7 = layer_background_get_id_fixed(lay_id9)
var lay_id10 = layer_get_id("Backgrounds_Ground2")
var back_id8 = layer_background_get_id_fixed(lay_id10)
var lay_id11 = layer_get_id("Backgrounds_scroll")
var back_id9 = layer_background_get_id_fixed(lay_id11)
var roomname = room_get_name(room)
//Ancient John Room
if (global.panic == 1 && layer_background_get_sprite(back_id) == bg_darkjohn)
    layer_background_sprite(back_id, bg_darkjohnescape)	
//Nightsky Moon
if (global.panic == 1 && layer_background_get_sprite(back_id6) == bg_nightsky)
	layer_background_sprite(back_id6, bg_nightskyescape)	
//Entrance bg Pizzas
if global.panic == 1
    layer_change_background(bg_entrance2,bg_entrance2escape)
//Freezer bg escape
//Entrance bg Pizzas
if global.panic == 1
    layer_change_background(bg_freezer1,bg_freezer1escape)
//Desert Night
if global.desertnight = true
{
	layer_change_background(bg_desert1,bg_desert1Night);
	layer_change_background(bg_desert2,bg_desert2Night);
	layer_change_background(bg_desert3,bg_desert3Night);
	layer_change_background(bg_desert4,bg_desert4Night);
	layer_change_background(bg_desertfront,bg_desertfrontNight);
	layer_change_background(bg_cavern,bg_cavern2);
}

/*
if (global.panic == 1 && (layer_background_get_sprite(back_id2) == 1208 || layer_background_get_sprite(back_id2) == 1211))
    layer_background_sprite(back_id2, 1467)
if (global.desertnight == 1 && layer_background_get_sprite(back_id) == 1205)
    layer_background_sprite(back_id, 1466)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1205)
    layer_background_sprite(back_id, 1206)
if (global.panic == 1 && layer_background_get_sprite(back_id6) == 1712)
    layer_background_sprite(back_id6, 1714)
if (global.panic == 1 && layer_background_get_sprite(back_id2) == 1713)
    layer_background_sprite(back_id2, 1715)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1502)
    layer_background_sprite(back_id, 1503)
if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1634)
    layer_background_sprite(back_id3, 1633)
if (global.panic == 1 && layer_background_get_sprite(back_id2) == 1636)
    layer_background_sprite(back_id2, 1635)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1466)
    layer_background_sprite(back_id, 1206)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1230)
    layer_background_sprite(back_id, 1229)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1227)
    layer_background_sprite(back_id, 1228)
if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1232)
    layer_background_sprite(back_id3, 1233)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1196)
    layer_background_sprite(back_id, 1197)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1199)
    layer_background_sprite(back_id, 1200)
if (global.panic == 1 && layer_background_get_sprite(back_id5) == 1201)
    layer_background_sprite(back_id5, 1202)
if (global.panic == 1 && layer_background_get_sprite(back_id5) == 1643)
    layer_background_sprite(back_id5, 1642)
if (global.panic == 1 && layer_background_get_sprite(back_id) == 1266)
    layer_background_sprite(back_id, 1267)
if (global.panic == 1 && layer_background_get_sprite(back_id2) == 1264)
    layer_background_sprite(back_id2, 1265)
if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1262)
    layer_background_sprite(back_id3, 1263)
if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1270)
    layer_background_sprite(back_id3, 1647)
	*/
	/*
if (global.snickchallenge == 1 && global.minutes < 2)
{
    layer_background_blend(back_id, 255)
    layer_background_blend(back_id2, 255)
    layer_background_blend(back_id3, 255)
    layer_background_blend(back_id4, 255)
    layer_background_blend(back_id5, 255)
    layer_background_blend(back_id6, 255)
    layer_background_blend(back_id7, 255)
    layer_background_blend(back_id8, 255)
    layer_background_blend(back_id9, 255)
}*/


