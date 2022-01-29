//Default Parallax
function scr_default_parallax(overwrite = false)
{
bg = undefined;	
#region Backgrounds_1
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.25);
	array[1] = (_camera.centeredcam_y * 0.25);
	return array;
}
add_parallax_function("Backgrounds_1", bg, overwrite);
#endregion
#region Backgrounds_2
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.15);
	array[1] = (_camera.centeredcam_y * 0.15);
	return array;
}
add_parallax_function("Backgrounds_2", bg, overwrite);
#endregion
#region Backgrounds_3
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.05);
	array[1] = (_camera.centeredcam_y * 0.05);
	return array;
}
add_parallax_function("Backgrounds_3", bg, overwrite);
#endregion
#region Backgrounds_4
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.005);
	array[1] = (_camera.centeredcam_y * 0.005);
	return array;
}
add_parallax_function("Backgrounds_4", bg, overwrite);
#endregion
#region Backgrounds_5
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_5"));
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.0005);
	array[1] = (_camera.cam_y - clamp(_camera.cam_y * 0.0005 * (540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540 ) ));
	return array;
}
add_parallax_function("Backgrounds_5", bg, overwrite);
#endregion
#region Backgrounds_foreground
bg = function()
{
	var foregroundoffsety = (room_height - sprite_get_height(layer_background_get_sprite(back_id)))
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_foreground"));
	var array = noone;
	array[0] = (_camera.centeredcam_x * 1.5);
	array[1] = clamp(((_camera.centeredcam_y * 0.90) +  camera_get_view_height(view_camera[0])  - sprite_get_height(layer_background_get_sprite(back_id))  ) ,foregroundoffsety,foregroundoffsety + 8);
	return array;
}
add_parallax_function("Backgrounds_foreground", bg, overwrite);
#endregion
#region Backgrounds_long2 //(long1)
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	var lay_y = 0;
	#region Parallax Clamp
	if instance_exists(obj_parallax)
	{
		for (var i = 0; i < array_length(obj_parallax.layers); ++i) 
		{
			if obj_parallax.layers[i] != undefined
			{
				with obj_parallax.layers[i]
				{
					if layer_get_name(layer_id) == "Backgrounds_long2"
					{ 
						lay_y = layer_yoffset;
					}
				}
			}
		}
	}
	#endregion
	array[0] = (_camera.centeredcam_x * 0.25);
	array[1] = clamp(((_camera.centeredcam_y * 0.15) + lay_y),lay_y - 192,lay_y + 32);
	return array;
}
add_parallax_function("Backgrounds_long2", bg, overwrite);
#endregion
#region Backgrounds_long //(long2)
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	var lay_y = 0;
	#region Parallax Clamp
	if instance_exists(obj_parallax)
	{
		for (var i = 0; i < array_length(obj_parallax.layers); ++i) 
		{
			if obj_parallax.layers[i] != undefined
			{
				with obj_parallax.layers[i]
				{
					if layer_get_name(layer_id) == "Backgrounds_long"
					{ 
						lay_y = layer_yoffset;
					}
				}
			}
		}
	}
	#endregion
	array[0] = (_camera.centeredcam_x * 0.15);
	array[1] = clamp(((_camera.centeredcam_y * 0.15) + lay_y),lay_y - 192,lay_y + 32);
	return array;
}
add_parallax_function("Backgrounds_long", bg, overwrite);
#endregion
#region Backgrounds_Ground1
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.25);
	array[1] = (_camera.cam_y * 0.25);
	return array;
}
add_parallax_function("Backgrounds_Ground1", bg, overwrite);
#endregion
#region Backgrounds_Ground2
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.15);
	array[1] = (_camera.cam_y * 0.15);
	return array;
}
add_parallax_function("Backgrounds_Ground2", bg, overwrite);
#endregion
#region Backgrounds_scroll //(sky1)
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.25);
	array[1] = (_camera.centeredcam_y * 0.25);
	return array;
}
add_parallax_function("Backgrounds_scroll", bg, overwrite);
#endregion
#region Backgrounds_sky //(sky2)
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.15);
	array[1] = (_camera.centeredcam_y * 0.15);
	return array;
}
add_parallax_function("Backgrounds_sky", bg, overwrite);
#endregion
#region Backgrounds_sky2 //(sky3)
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.05);
	array[1] = (_camera.centeredcam_y * 0.05);
	return array;
}
add_parallax_function("Backgrounds_sky2", bg, overwrite);
#endregion
#region Backgrounds_H2 //This is actually supposed to be H1 (Compat)
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_H1"));
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.25);
	array[1] = (_camera.cam_y - clamp(_camera.cam_y * 0.25 * (540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540 ) ));
	return array;
}
add_parallax_function("Backgrounds_H2", bg, overwrite);
#endregion
#region Backgrounds_H1 //This is actually supposed to be H2 (Compat)
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_H2"));
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.15);
	array[1] = (_camera.cam_y - clamp(_camera.cam_y * 0.15 * (540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540 ) ));
	return array;
}
add_parallax_function("Backgrounds_H1", bg, overwrite);
#endregion
#region Backgrounds_V1
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_V1"));
	var array = noone;
	array[0] = (_camera.cam_x - clamp(_camera.cam_x * 0.25 * (960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960 ) ));
	array[1] = (_camera.centeredcam_y * 0.25);
	return array;
}
add_parallax_function("Backgrounds_V1", bg, overwrite);
#endregion
#region Backgrounds_V2
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_V2"));
	var array = noone;
	array[0] = (_camera.cam_x - clamp(_camera.cam_x * 0.15 * (960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960 ) ));
	array[1] = (_camera.centeredcam_y * 0.15);
	return array;
}
add_parallax_function("Backgrounds_V2", bg, overwrite);
#endregion
#region Backgrounds_far
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far"));
	var array = noone;
	array[0] = (_camera.cam_x - clamp(_camera.cam_x * 0.3 * (960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960 ) ));
	array[1] = (_camera.cam_y - clamp(_camera.cam_y * 0.3 * (540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540 ) ));
	return array;
}
add_parallax_function("Backgrounds_far", bg, overwrite);
#endregion
#region Backgrounds_far1
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far1"));
	var array = noone;
	array[0] = (_camera.cam_x - clamp(_camera.cam_x * 0.25 * (960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960 ) ));
	array[1] = (_camera.cam_y - clamp(_camera.cam_y * 0.25 * (540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540 ) ));
	return array;
}
add_parallax_function("Backgrounds_far1", bg, overwrite);
#endregion
#region Backgrounds_far2
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far2"));
	var array = noone;
	array[0] = (_camera.cam_x - clamp(_camera.cam_x * 0.15 * (960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960 ) ));
	array[1] = (_camera.cam_y - clamp(_camera.cam_y * 0.15 * (540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540 ) ));
	return array;
}
add_parallax_function("Backgrounds_far2", bg, overwrite);
#endregion
#region Backgrounds_far3
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var back_id = layer_background_get_id_fixed(layer_get_id("Backgrounds_far3"));
	var array = noone;
	array[0] = (_camera.cam_x - clamp(_camera.cam_x * 0.05 * (960 / room_width), 0, (sprite_get_width(layer_background_get_sprite(back_id)) - 960 ) ));
	array[1] = (_camera.cam_y - clamp(_camera.cam_y * 0.05 * (540 / room_height), 0, (sprite_get_height(layer_background_get_sprite(back_id)) - 540 ) ));
	return array;
}
add_parallax_function("Backgrounds_far3", bg, overwrite);
#endregion
bg = undefined;	
}
