if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (global.panic == 1)
    {
        repeat (4)
        {
            with (instance_create((x + 32), (y + 32), obj_metaldebris))
                sprite_index = spr_metalblockdebrisescape
        }
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = (40 / room_speed)
        }
	repeat (3)
	with (instance_create((x + 32 + random_range(-16, 16)), (y + 32 + random_range(-16, 16)), obj_balloonpop))
	{
		image_index = 0.35
		sprite_index = spr_destroyablepoof
	}				
        scr_soundeffect(sfx_breakmetal)
        ds_list_add(global.saveroom, id)
    }
}
depth = 1


