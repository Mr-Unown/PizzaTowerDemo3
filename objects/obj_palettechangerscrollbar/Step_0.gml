scr_getinput()
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var button_x = (draw_x + (_sprite_width * value))
var button_y = draw_y
var button_radius = (button_sprite_width / 2)
var _mouse_x = (mouse_x - _cam_x)
var _mouse_y = (mouse_y - _cam_y)




if mouse_check_button_pressed(mb_left) 
{
    if point_in_circle(_mouse_x, _mouse_y, button_x, button_y, button_radius) 
	{
        selected = true;
    }
}

if !mouse_check_button(mb_left) 
{
    selected = false;
}

if selected 
{
    value = clamp((_mouse_x - x) / sprite_width, 0, max_value);
	obj_palettechanger.customcolor[customcolor] = value
}
