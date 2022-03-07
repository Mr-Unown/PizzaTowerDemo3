if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create((x + 32), (y + 32), obj_metaldebris)
    instance_create((x + 32), (y + 32), obj_metaldebris)
    instance_create((x + 32), (y + 32), obj_metaldebris)
    instance_create((x + 32), (y + 32), obj_metaldebris)
    with (obj_camera)
    {
        shake_mag = 20
        shake_mag_acc = (40 / room_speed)
    }
	repeat (3)
	with (instance_create((x + 32 + random_range(-32, 32)), (y + 32 + random_range(-32, 32)), obj_balloonpop))
	{
		image_speed = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}				
	GamepadSetVibration(0, 1, 1, 0.8)
    scr_soundeffect(sfx_breakmetal)
    ds_list_add(global.saveroom, id)
}
depth = 1


