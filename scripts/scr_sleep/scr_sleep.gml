/// @description Freezes time for the given time.
var m = global.freezeframetimer;
var t = m * global.sleepScale * 50 / (50 + global.sleepAcc);
global.sleepAcc += m;
global.freezeframetimer = clamp(global.freezeframetimer - 50,0,185);
if (t < 1) return 0;
t += current_time;
#region Zoom in
with obj_camera {
	shake_mag = 2
    shake_mag_acc = (3 / room_speed)
	if targetzoom1 > 896
		targetzoom1 -= 32
	else
		targetzoom1 = 896
	if targetzoom2 > 504
		targetzoom2 -= 18
	else
		targetzoom2 = 504
    if (angle == 0)
        angle = random_range((-maxangle), maxangle)
    camera_set_view_angle(view_camera[0], angle)
	camera_set_view_size(view_camera[0],targetzoom1,targetzoom2)
	//Camera X
	camera_set_view_pos(view_camera[0],target_x - (targetzoom1 / 2) + (chargecamera + golfdistancex + p2pdistancex)  + floor(irandom_range(-shake_mag, shake_mag)/2), camera_get_view_y(view_camera[0]))			
	camera_set_view_pos(view_camera[0],clamp(camera_get_view_x(view_camera[0]), 0 + floor(irandom_range(-shake_mag, shake_mag)/2), (room_width - targetzoom1)+ floor(irandom_range(-shake_mag, shake_mag)/2)),camera_get_view_y(view_camera[0]))
	//Camera Y	
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), ((target_y - (targetzoom2 / 2)) + golfdistancey + p2pdistancey ) + irandom_range(-shake_mag, shake_mag))		
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),clamp(camera_get_view_y(view_camera[0]), 0 + irandom_range(-shake_mag, shake_mag), (room_height - targetzoom2) + irandom_range(-shake_mag, shake_mag)))
}

#endregion 
while (current_time < t) {

};

	