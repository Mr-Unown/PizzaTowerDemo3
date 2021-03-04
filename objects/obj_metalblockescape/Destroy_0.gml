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
        scr_soundeffect(59)
        ds_list_add(global.saveroom, id)
    }
}
depth = 1


