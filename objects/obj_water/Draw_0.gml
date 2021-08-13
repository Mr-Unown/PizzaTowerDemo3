// create a surface if it doesn't exist:
if (!surface_exists(watersurface)) 
{
    watersurface = surface_create(room_width,room_height);
}
if (!surface_exists(masksurface)) 
{
    // create the clip-surface, if needed
    masksurface = surface_create(room_width, room_height);
}

if surface_exists(masksurface)
{
	surface_set_target(masksurface)
	draw_clear(c_black);
	draw_set_blend_mode(bm_subtract);
	#region Draw itself
	for (var i = 0; i < abs(image_xscale); i++)
		draw_sprite_ext(spr_cheesewater, -1, (x + (32 * i)), y, 1, 1, image_angle, image_blend, 1)
	for (var o = 1; o < abs(image_yscale); o++)
	{	
		for (var z = 0; z < abs(image_xscale); z++)
			draw_sprite_ext(spr_cheesewater2, -1, (x + (32 * z)), (y + (32 * o)), 1, 1, image_angle, image_blend, 1)
	}
	#endregion
	draw_set_blend_mode(bm_normal);
	surface_reset_target()
}
if surface_exists(watersurface)
{
	surface_set_target(watersurface)
	draw_clear_alpha(c_black, 0);
	#region Draw itself
	for (var o = 1; o < abs(image_yscale); o++)
	{	
		for (var z = 0; z < abs(image_xscale); z++)
			draw_sprite_ext(spr_cheesewater2, -1, (x + (32 * z)), (y + (32 * o)), 1, 1, image_angle, image_blend, 1)
	}
	#endregion
	with obj_watercurrent
	{
		event_perform(ev_draw,0)
	}
	with obj_waterdraft
	{
		event_perform(ev_draw,0)
	}
	draw_set_blend_mode(bm_subtract);
	draw_surface(masksurface, 0, 0);
	draw_set_blend_mode(bm_normal);
	for (var i = 0; i < abs(image_xscale); i++)
		draw_sprite_ext(spr_cheesewater, -1, (x + (32 * i)), y, 1, 1, image_angle, image_blend, 1)	
	surface_reset_target();
}
draw_surface_ext(watersurface,0,0,1,1,0,c_white,alpha);