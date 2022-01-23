/// @description Obtain Information on the BG Layers

//Variables
_cam_x = camera_get_view_x(view_camera[0]);
_cam_y = camera_get_view_y(view_camera[0]);
_centeredcam_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
_centeredcam_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

//Foreground Moment
var lay_id = layer_get_id("Backgrounds_foreground")
layer_depth(lay_id,-15);

#region Loop through all layers to find if they are a Background layer
layernum = 0;
var a = layer_get_all(), i = 0;
while (i < array_length(a)) 
{
	var back_id = layer_background_get_id_fixed(layer_get_name(a[i]))
	if back_id != -1 && !layer_get_depth(a[i]) <= 0 && layer_get_visible(a[i])
	{
		layers[layernum++] = 
		{
			layer_id : a[i],
			layer_image_speed : layer_background_get_speed(back_id),
			layer_xoffset : layer_get_x(a[i]),
			layer_yoffset : layer_get_y(a[i]),
			layer_xspeed : layer_get_hspeed(a[i]),
			layer_yspeed : layer_get_vspeed(a[i]),
			layer_xshift : global.scrolloffset * layer_get_hspeed(a[i]),
			layer_yshift : global.scrolloffset * layer_get_vspeed(a[i]),			
			layer_parallax_value : default_function //If this was not the function name it would instead return only the funny thing
		} 
	}
	else
	{
		layers[layernum++] = undefined;
	}
	i++
}
#endregion



/*
var lay_id = layer_get_id("Backgrounds_1")
var back_id = layer_background_get_id_fixed(lay_id)
var lay_id2 = layer_get_id("Backgrounds_2")
var back_id2 = layer_background_get_id_fixed(lay_id2)
var lay_id3 = layer_get_id("Backgrounds_3")
var back_id3 = layer_background_get_id_fixed(lay_id3)
var lay_id4 = layer_get_id("Backgrounds_sky")
var back_id4 = layer_background_get_id_fixed(lay_id4)
var lay_id5 = layer_get_id("Backgrounds_sky2")
var back_id5 = layer_background_get_id_fixed(lay_id5)
var lay_id6 = layer_get_id("Backgrounds_far1")
var back_id6 = layer_background_get_id_fixed(lay_id6)
var lay_id7 = layer_get_id("Backgrounds_Ground1")
var back_id7 = layer_background_get_id_fixed(lay_id7)
var lay_id8 = layer_get_id("Backgrounds_Ground2")
var back_id8 = layer_background_get_id_fixed(lay_id8)
var lay_id9 = layer_get_id("Backgrounds_scroll")
var back_id9 = layer_background_get_id_fixed(lay_id9)
var lay_id10 = layer_get_id("Backgrounds_far")
var back_id10 = layer_background_get_id_fixed(lay_id10)
var lay_id11 = layer_get_id("Backgrounds_4")
var back_id11 = layer_background_get_id_fixed(lay_id11)
var lay_id12 = layer_get_id("Backgrounds_long")
var back_id12 = layer_background_get_id_fixed(lay_id12)



var lay_id14 = layer_get_id("Backgrounds_H1")
var back_id14 = layer_background_get_id_fixed(lay_id14)
var lay_id15 = layer_get_id("Backgrounds_H2")
var back_id15 = layer_background_get_id_fixed(lay_id15)

var lay_id16 = layer_get_id("Backgrounds_long2")
var back_id16 = layer_background_get_id_fixed(lay_id16)

scrolloffset = global.scrolloffset
layer_x("Backgrounds_sky", 0)
layer_y("Backgrounds_sky", 0)
layer_x("Backgrounds_sky2", 0)
layer_y("Backgrounds_sky2", 0)
layer_x("Backgrounds_scroll", 0)
layer_y("Backgrounds_scroll", 0)
x_shift_1 = 0
y_shift_1 = 0
x_shift_2 = 0
y_shift_2 = 0
x_shift_3 = 0
y_shift_3 = 0
groundy = layer_get_y("Backgrounds_Ground1")
ground2y = layer_get_y("Backgrounds_Ground2")
longy = layer_get_y("Backgrounds_long")
longy2 = layer_get_y("Backgrounds_long2")
back1 = layer_background_get_speed(back_id)
back2 = layer_background_get_speed(back_id2)
back3 = layer_background_get_speed(back_id3)
back4 = layer_background_get_speed(back_id4)
back5 = layer_background_get_speed(back_id5)
back6 = layer_background_get_speed(back_id6)
back7 = layer_background_get_speed(back_id7)
back8 = layer_background_get_speed(back_id8)
back9 = layer_background_get_speed(back_id9)
back10 = layer_background_get_speed(back_id10)
back11 = layer_background_get_speed(back_id11)
back12 = layer_background_get_speed(bsc
back14 = layer_background_get_speed(back_id14)
back15 = layer_background_get_speed(back_id15)

back15 = layer_background_get_speed(back_id16)
*/