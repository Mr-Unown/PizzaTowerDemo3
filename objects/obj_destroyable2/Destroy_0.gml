if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
    repeat (6)
    {
        with (instance_create((x + 16), y + 16, obj_pizzadebris))
        {
            if (other.sprite_index == spr_destroyablepep)
                sprite_index = spr_pizzadebris
            else if (other.sprite_index == spr_halloweensmallblock)
                sprite_index = spr_halloweendebris
            else if (other.sprite_index == spr_xmasblock)
                sprite_index = spr_debris
            else if (other.sprite_index == spr_cheesedestroyableblock)
                sprite_index = spr_pizzadebris
			else if (other.sprite_index == spr_PZdestroyablepep)
				sprite_index = spr_PZdebris
        }
    }
    instance_create(x, y, obj_collect)

    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(3, 4)
    ds_list_add(global.saveroom, id)
}


