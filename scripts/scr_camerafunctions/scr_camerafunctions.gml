function point_in_camera(pos_x, pos_y, camera = view_camera[0])
{
	/// @description Returns True if point is in camera's bounds
	/// @function point_in_camera	
    var cam_x = camera_get_view_x(camera)
    var cam_y = camera_get_view_y(camera)
    var cam_w = camera_get_view_width(camera)
    var cam_h = camera_get_view_height(camera)
    return point_in_rectangle(pos_x, pos_y, cam_x, cam_y, (cam_x + cam_w), (cam_y + cam_h));
}
function camera_shake(shake,shake_acc)
{
	/// @description Shakes the Camera
	/// @function camera_shake
	with (obj_camera)
	{
		shake_mag = shake
	    shake_mag_acc = (shake_acc / room_speed)
	}
}
/* To Do
function surface_set_shader(surface,shader_index,flag)
{
	/// @description Set Application Surface Shader
	/// @function surface_set_shader
	global.surfaceshader[surface] = {
		
	
	
	}
	
	
	
}