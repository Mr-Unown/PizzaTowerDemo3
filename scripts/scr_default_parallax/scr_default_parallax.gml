//Default Parallax
#region Backgrounds_1
bg = function()
{
	var _camera = camera_get_position_struct(view_camera[0]);
	var array = noone;
	array[0] = (_camera.centeredcam_x * 0.25);
	array[1] = (_camera.centeredcam_y * 0.25);
	return array;
}
add_parallax_function("Backgrounds_1",bg);
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
add_parallax_function("Backgrounds_2",bg);
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
add_parallax_function("Backgrounds_3",bg);
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
add_parallax_function("Backgrounds_4",bg);
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
add_parallax_function("Backgrounds_5",bg);
#endregion