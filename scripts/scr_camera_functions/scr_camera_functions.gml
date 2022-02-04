function camera_shake(shake,shake_acc)
{
	/// @description Shakes the Camera
	/// @function camera_shake
	with (obj_camera)
	{
		shake_mag = shake;
	    shake_mag_acc = (shake_acc / room_speed);
	}
}

function point_in_camera(_pos_x, _pos_y, _cam_id = view_camera[0])
{
	/// @description Returns True if point is in camera's bounds
	/// @function point_in_camera	
	/// @param x The x position that will be checked
	/// @param y The y position that will be checked
	/// @param camera The view camera
    var cam_x = camera_get_view_x(_cam_id);
    var cam_y = camera_get_view_y(_cam_id);
    var cam_w = camera_get_view_width(_cam_id);
    var cam_h = camera_get_view_height(_cam_id);
	var check = point_in_rectangle(_pos_x, _pos_y, cam_x, cam_y, (cam_x + cam_w), (cam_y + cam_h))
	if (check == true)
		return(true);
	else
		return(false);
}

function camera_get_position_struct(_cam_id = view_camera[0])
{
	/// @description Returns struct of Camera Positions
	/// @function camera_get_position_struct
	/// @param camera The view camera	
	var camera_pos = noone;
	camera_pos = {
		cam_x : camera_get_view_x(_cam_id),
		cam_y : camera_get_view_y(_cam_id),
		centeredcam_x : camera_get_view_x(_cam_id) + (camera_get_view_width(_cam_id) / 2),
		centeredcam_y : camera_get_view_y(_cam_id) + (camera_get_view_height(_cam_id) / 2)	
	};
	
	if is_struct(camera_pos)
		return(camera_pos);
	else
		return(undefined);
}
