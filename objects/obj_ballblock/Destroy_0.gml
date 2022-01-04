if (ds_list_find_index(global.saveroom, id) == -1) 
{
	if sprite_index = spr_rolldestroyable
	{
		repeat (4)
		{
			with (instance_create((x + 16), y + 16, obj_secretdebris))
			{
				sprite_index = spr_secretdebris
				mode = 2
				blendsprite = spr_rolldestroyable
			}
		}
		with (instance_create((x + 16 + random_range(-16, 16)), (y + 16 + random_range(-16, 16)), obj_balloonpop))
		{
			image_speed = 0.35
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
	}
	else if sprite_index = spr_stupidpinsmall
	{
		with (instance_create(x, y, obj_baddie_dead))
		{
			sprite_index = spr_stupidpinsmall_debris
			rotatedirection = choose(-1,0,1)
	        rotatevalue = irandom_range(-20,20)
		}
		if (audio_is_playing(sfx_killingblow) || audio_is_playing(sfx_killingblow))
		{
			audio_stop_sound(sfx_killingblow)
			audio_stop_sound(sfx_killingblow)
		}
	    scr_soundeffect(sfx_killingblow, sfx_killingblow)
		ds_list_add(global.saveroom, id)
	}
}
