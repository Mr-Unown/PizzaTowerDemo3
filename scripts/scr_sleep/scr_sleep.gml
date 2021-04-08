/// @description Freezes time for the given time. 
with obj_camera {
	event_user(0)
}
/*

if (t < 1) { 	
	global.freezeframe = false;
	return 0;
}

//Freezeframe
if (current_time < t) 
{
	global.freezeframe = true;
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
		angle = random_range((-maxangle), maxangle)
	}

#endregion 
}
else 
{
	global.freezeframe = false;
}

*/