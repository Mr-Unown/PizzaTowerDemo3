if (!grounded)
    image_speed = 0
else if (floor(image_index) != 8)
{
    image_speed = 0.35
	if shaken = false
	{
	with (obj_camera)
	{
		shake_mag = 10
	    shake_mag_acc = (30 / room_speed)
	}
	shaken = true
	}
}
else
    image_speed = 0
scr_collide()


