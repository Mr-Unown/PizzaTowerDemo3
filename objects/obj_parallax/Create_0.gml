//Remove Duplicate obj_parallax
if (instance_number(obj_parallax) > 1) 
{
	var first = instance_find(obj_parallax, 0);
	if (id != first) { instance_destroy(); exit; }
}
//Initialize Funny Layers
var i = 5;
repeat(5)
{
	layers[i--] = noone;
}
layernum = 0;
//Camera Values
_cam_x = camera_get_view_x(view_camera[0]);
_cam_y = camera_get_view_y(view_camera[0]);
_centeredcam_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
_centeredcam_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

//Default Function for the Parallax
default_function = function(layer_id = noone)
{
	return (_cam_y * (0.25 * layer_get_depth(layer_id) / 500)) //return (0)
	/*
	if layer_id != noone
		return (_cam_y);
	else
		return (_cam_y * (0.25 * layer_get_depth(layer_id) / 500) );
	*/
}

bg = 1205

scrolloffset = global.scrolloffset
randomscrolloffset1 = 0
randomscrolloffset2 = 0
randomscrolloffset3 = 0
layer_x("Backgrounds_sky", 0)
layer_y("Backgrounds_sky", 0)
layer_x("Backgrounds_sky2", 0)
layer_y("Backgrounds_sky2", 0)
layer_x("Backgrounds_scroll", 0)
layer_y("Backgrounds_scroll", 0)
groundy = 0
ground2y = 0
longy = 0
longy2 = 0
x_shift_1 = 0
y_shift_1 = 0
x_shift_2 = 0
y_shift_2 = 0
x_shift_3 = 0
y_shift_3 = 0
back1 = 15
back2 = 15
back3 = 15
back4 = 15
back5 = 15
back6 = 15
back7 = 15
back8 = 15
back9 = 15
back10 = 15
back11 = 15
back12 = 15
back14 = 15
back15 = 15
back16 = 15