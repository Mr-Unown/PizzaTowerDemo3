
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris_respawn
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris_respawn
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris_respawn
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris_respawn
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris_respawn
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris_respawn
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris_respawn
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(3, 4)


