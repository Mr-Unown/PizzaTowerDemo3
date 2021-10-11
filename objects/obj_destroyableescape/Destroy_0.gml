if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (global.panic == 1)
    {
        repeat (4)
        {
            with (instance_create((x + 16), y + 16, obj_debris))
                sprite_index = spr_debrisescape
        }
	with (instance_create((x + 16 + random_range(-16, 16)), (y + 16 + random_range(-16, 16)), obj_balloonpop))
	{
		image_index = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}		
        if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
        {
            audio_stop_sound(sfx_breakblock1)
            audio_stop_sound(sfx_breakblock2)
        }
        scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
        ds_list_add(global.saveroom, id)
        var pizzacoin = random_range(1, 100)
        if (pizzacoin >= 85)
        {
            with (instance_create(x, y, obj_pizzacoin))
			{
				_dir = choose(1,-1)
				hsp = 2
			}
        }
    }
}


