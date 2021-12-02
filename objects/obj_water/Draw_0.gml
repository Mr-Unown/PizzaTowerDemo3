#region Old Code
/*
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
if (!surface_exists(watersurface)) 
    watersurface = surface_create(960,540);
if (!surface_exists(masksurface)) 
    masksurface = surface_create(960, 540);

if surface_exists(masksurface)
{
	surface_set_target(masksurface)
	draw_clear(c_black);
	#region Draw itself
	for (var i = 0; i < abs(image_xscale); i++)
		draw_sprite_ext(spr_cheesewater, -1, (x + (32 * i)), y, 1, 1, image_angle, image_blend, 1)
	//draw_sprite_ext(spr_cheesewater2, -1, x, y + 32, image_xscale, round((room_height + 128)/32), image_angle, image_blend, 1)
	draw_rectangle(x - 32, y + 32,x + room_width + 32, y + room_height + 32,false)
	//draw_sprite_ext(spr_cheesewater2,-1,x - 32,clamp(y - 32,bbox_top + 32,room_height + 550),32,20,image_angle,c_white,1)
	#endregion
	surface_reset_target()
}
if surface_exists(watersurface)
{
	surface_set_target(watersurface)
	draw_clear_alpha(c_black, 0);
	#region Draw itself
	draw_sprite_ext(spr_cheesewater2, -1, x - _cam_x, (y + 32) - _cam_y, image_xscale, round((room_height + 128)/32), image_angle, image_blend, 1)
	//draw_sprite_ext(spr_cheesewater2,-1,_cam_x - 32,clamp(_cam_y - 32,bbox_top + 32,room_height + 550),32,20,image_angle,c_white,1)
	#endregion
	with obj_watercurrent
	{
		for (var o = 0; o < abs(image_yscale); o++)
		{
			for (var z = 0; z < abs(image_xscale); z++)
			{
				if (sign(image_xscale) == 1)
					draw_sprite_ext(spr_watercurrent, -1, (x + (32 * z) - _cam_x), (y + (32 * o) - _cam_y), sign(image_xscale), 1, image_angle, image_blend, 1)
				else
					draw_sprite_ext(spr_watercurrent, -1, (x - (32 * z) - _cam_x), (y + (32 * o) - _cam_y), sign(image_xscale), 1, image_angle, image_blend, 1)
			}
		}
	}
	with obj_waterdraft
	{
		for (var o = 0; o < abs(image_yscale); o++)
		{
			for (var z = 0; z < abs(image_xscale); z++)
			{
				if (sign(image_yscale) == 1)
					draw_sprite_ext(spr_waterdraft, -1, (x + (32 * z) - _cam_x), (y + (32 * o) - _cam_y), 1, sign(image_yscale), image_angle, image_blend, 1)
				else
					draw_sprite_ext(spr_waterdraft, -1, (x + (32 * z) - _cam_x), (y - (32 * o) - _cam_y), 1, sign(image_yscale), image_angle, image_blend, 1)
			}
		}
	}
	draw_set_blend_mode(bm_subtract);
	draw_surface(masksurface, _cam_x, _cam_y);
	draw_set_blend_mode(bm_normal);
	for (var i = 0; i < abs(image_xscale); i++)
		draw_sprite_ext(spr_cheesewater, -1, (x + (32 * i)  - _cam_x), y  - _cam_y, 1, 1, image_angle, image_blend, 1)	
	surface_reset_target();
}
draw_surface_ext(watersurface,_cam_x,_cam_y,1,1,0,c_white,alpha);
*/
#endregion
//Setup
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
if (!surface_exists(watersurface)) 
    watersurface = surface_create(960,540);

if surface_exists(watersurface)
{
	//Set Surface Water
	surface_set_target(watersurface)
	draw_clear_alpha(c_white, 0);
	
	//Draw body
	draw_sprite_ext(spr_cheesewater2, -1, x - _cam_x, (bbox_top + 32) - _cam_y, image_xscale, round((room_height + 960)/32), image_angle, image_blend, 1)
	
	
	with obj_watercurrent
		draw_sprite_ext(sprite_index, -1, x - _cam_x, y - _cam_y, image_xscale, image_yscale, image_angle, image_blend, 1)
	with obj_waterdraft
		draw_sprite_ext(sprite_index, -1, x - _cam_x, y - _cam_y, image_xscale, image_yscale, image_angle, image_blend, 1)
		
	//Draw Clipping Mask
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_black);
	draw_rectangle(0,0,960, ( bbox_top + 16 ) -_cam_y,false)
	gpu_set_blendmode(bm_normal);
	/*
	for (var i = 0; i < abs(image_xscale); i++)
		draw_sprite_ext(spr_cheesewater, -1, (x + (32 * i)  - _cam_x), y  - _cam_y, 1, 1, image_angle, image_blend, 1)	
		*/
	draw_sprite_ext(sprite_index,-1,x - _cam_x, y - _cam_y,image_xscale,1,0,c_white,1)
	surface_reset_target();
}

//Draw Surface
shader_set(shd_water)
var time_id = shader_get_uniform(shd_water, "time")
shader_set_uniform_f(time_id, (current_time / 1000))
draw_surface_ext(watersurface,_cam_x,_cam_y,1,1,0,c_white,alpha);
shader_reset()
