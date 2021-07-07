if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat(4)
    instance_create((x + 32), (y + 32), obj_metaldebris)
    with (obj_camera)
    {
        shake_mag = 20
        shake_mag_acc = (40 / room_speed)
    }
    scr_soundeffect(sfx_breakmetal)
    ds_list_add(global.saveroom, id)
}



