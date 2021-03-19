var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var targetx = 832 + _cam_x
var targety = 74 + _cam_y
if point_in_circle(x,y,targetx,targety,32)  {
	with obj_tv {
		shake = true;
		alarm[2] = 10;
	}
	x = targetx
	y = targety
	instance_destroy()
}
speed = clamp(point_distance(x,y,targetx,targety) / 5,32,128)
direction = point_direction(x, y, targetx, targety);

