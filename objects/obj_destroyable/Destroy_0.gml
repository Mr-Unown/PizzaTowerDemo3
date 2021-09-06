if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat(4)
		instance_create((x + 16), y + 16, obj_debris)


    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
    var roomname = room_get_name(room)
    if (string_letters(roomname) != "PProom")
    {
        var pizzacoin = random_range(1, 100)
        if (pizzacoin >= 85)
        {
            with (instance_create(x, y, obj_pizzacoin))
                hsp = choose(-2, 2)
        }
    }
}

