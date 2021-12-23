function point_in_camera(argument0, argument1, argument2)
{
	/// @description Returns True if point is in camera's bounds
	/// @function point_in_camera	
    var cam_x = camera_get_view_x(argument2)
    var cam_y = camera_get_view_y(argument2)
    var cam_w = camera_get_view_width(argument2)
    var cam_h = camera_get_view_height(argument2)
    return point_in_rectangle(argument0, argument1, cam_x, cam_y, (cam_x + cam_w), (cam_y + cam_h));
}
/* To Do
function surface_set_shader(surface,shader_index,flag)
{
	/// @description Set Application Surface Shader
	/// @function surface_set_shader
	global.surfaceshader[surface] = {
		
	
	
	}
	
	
	
}