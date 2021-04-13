if (!surface_exists(surf))
     surf = surface_create(room_width + 128, room_height + 128)
else if surface_exists(surf)
{
    surface_set_target(surf)
    draw_set_color(c_black)
    draw_set_alpha(darkness)
    draw_rectangle(-64, -64, room_width + 64, room_height + 64, 0)
    draw_set_blend_mode(3)
    draw_set_color(c_white)
    with (obj_player1)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (300 + random_range(-1, 1)), 0)
    draw_set_color(c_white)
    draw_set_alpha(1)
    with (obj_player1)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (250 + random_range(-1, 1)), 0)
	if global.coop = true
	{
    with (obj_player2)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (300 + random_range(-1, 1)), 0)
    draw_set_color(c_white)
    draw_set_alpha(1)
    with (obj_player2)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (250 + random_range(-1, 1)), 0)		
	}
    with (obj_lamp)
        draw_circle(((x + random_range(-1, 1))), (y + random_range(-1, 1)), (40 + random_range(-1, 1)), 0)
    with (obj_entrancelamp)
	{	
		if image_index = 0 {
			var _x = x - sprite_xoffset + random_range(-1, 1)
			var _y = y - sprite_yoffset + random_range(-1, 1)
			draw_circle((((x - 26) + random_range(-1, 1))), ((y - 63) + random_range(-1, 1)), (70 + random_range(-1, 1)), 0)		
			draw_sprite_pos(spr_graybox, 0, _x + 43, _y + 65, _x + 65, _y + 67, _x +  0, _y + 255, _x + 98, _y +  255, 1);
		}
	}
    draw_set_blend_mode(0)
    draw_set_alpha(1)
    surface_reset_target()
	draw_surface(surf, 0, 0)
}

