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
            else if (other.sprite_index == spr_snickblock)
                sprite_index = spr_debris
            else if (other.sprite_index == spr_cheesedestroyableblock)
                sprite_index = spr_pizzadebris
			else if (other.sprite_index == spr_not in the gamedestroyablepep)
				sprite_index = spr_not in the gamedebris
        }
    }
	with (instance_create((x + 16 + random_range(-16, 16)), (y + 16 + random_range(-16, 16)), obj_balloonpop))
	{
		image_speed = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}		
    instance_create(x, y, obj_collect)

    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
}


