if can_draw = true
{
	var cam_x = camera_get_view_x(view_camera[0])
	var cam_y = camera_get_view_y(view_camera[0])
	if (!surface_exists(surf))
	{
		surf = surface_create(960 + 64,540 + 64)
		surface_set_target(surf)
		draw_clear_alpha(c_black, 0)
		surface_reset_target()
	}
	else if surface_exists(surf) 
	{
		surface_set_target(surf)
		//Clear Surface
		draw_clear_alpha(c_black, darkness);
		//Punch Holes into it
		gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white)
		//Player Holes
		with (obj_player1)
		{
			draw_set_alpha(other.darkness);
			draw_circle((x - cam_x + random_range(-1, 1)), (y - cam_y + random_range(-1, 1)), (300 + random_range(-1, 1)), 0);
			draw_set_alpha(1);
	        draw_circle((x - cam_x + random_range(-1, 1)), (y - cam_y + random_range(-1, 1)), (250 + random_range(-1, 1)), 0);
		}
		if global.coop = true
		{
			with (obj_player2)
			{
				draw_set_alpha(other.darkness);
				draw_circle((x - cam_x + random_range(-1, 1)), (y - cam_y + random_range(-1, 1)), (300 + random_range(-1, 1)), 0);
				draw_set_alpha(1);
				draw_circle((x - cam_x+ random_range(-1, 1)), (y - cam_y + random_range(-1, 1)), (250 + random_range(-1, 1)), 0);
			}
		}
		//Other Lightsources
		draw_set_alpha(1);
		with (obj_lamp)
			draw_circle(((x - cam_x + random_range(-1, 1))), (y - cam_y + random_range(-1, 1)), (40 + random_range(-1, 1)), 0)
		with (obj_entrancelamp)
		{	
			if image_index = 0 
			{
				var _x = x - sprite_xoffset - cam_x
				var _y = y - sprite_yoffset - cam_y
				draw_circle((((x - 26) - cam_x + random_range(-1, 1))), ((y - 63) - cam_y + random_range(-1, 1)), (70 + random_range(-1, 1)), 0)		
				draw_sprite_pos(spr_graybox, 0, _x + 43, _y + 65, _x + 65, _y + 67, _x +  98, _y + 255, _x + 0, _y +  255, 1);
			}
		}		
		
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1)
		surface_reset_target()


		draw_surface(surf, cam_x, cam_y);
	}
}