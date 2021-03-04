repeat(4)
instance_create((x + 16), (y + 50), obj_wooddebris)


    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(3, 4)



