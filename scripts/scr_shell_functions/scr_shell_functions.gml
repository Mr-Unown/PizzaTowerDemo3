function scr_shell_openconsole()
{
	global.shellactivate = true;
}
function scr_shell_closeconsole()
{
	global.shellactivate = false;
}

function scr_fartcommand(fartstring = "BALLS")
{
	switch fartstring
	{
		case "fart":
		case "poop":
		case "crap":
		case "fard":
		case "shart":
		case "shit":
		case "brap":		
			return true;
		break;
	}
}


#region Tile Solid
function scr_shell_roomstart()
{
	layer_set_visible("Tiles_Solid",global.showcollisions);
	//Start Script
	startscript = function()
	{
		if ((!variable_global_exists("solid_tile_surface")) || (!surface_exists(global.solid_tile_surface)))
		    global.solid_tile_surface = surface_create(room_width, room_height)
		if event_type == ev_draw and event_number == 0
		{
			surface_set_target(global.solid_tile_surface)
			draw_clear_alpha(c_black, 0)
			var _cam_x = camera_get_view_x(view_camera[0])
			var _cam_y = camera_get_view_y(view_camera[0])	
		}
	}	
	endscript = function()
	{
		if event_type == ev_draw && event_number == 0
		{	
			//Actually Set Shader
			surface_reset_target()	
			draw_surface_ext(global.solid_tile_surface, (camera_get_view_x(view_camera[0]) - 64), (camera_get_view_y(view_camera[0]) - 64), 1, 1, camera_get_view_angle(view_camera[0]), -1, 0.5)
		}
	}		
	layer_script_begin(layer_get_id("Tiles_Solid"),startscript)
	layer_script_end(layer_get_id("Tiles_Solid"),endscript)	
	

}

//image_alpha = 0.5
#endregion