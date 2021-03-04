if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (global.panic == 1)
    {
        repeat (6)
        {
            with (instance_create((x + 32), (y + 32), obj_debris))
                sprite_index = spr_bigdebrisescape
        }
        with (instance_create((x + 32), (y + 32), obj_pizzaslice))
            hsp = 2
        with (instance_create((x + 32), (y + 32), obj_pizzaslice))
            hsp = -2
        if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
        {
            audio_stop_sound(sfx_breakblock1)
            audio_stop_sound(sfx_breakblock2)
        }
        scr_soundeffect(3, 4)
        ds_list_add(global.saveroom, id)
    }
}


