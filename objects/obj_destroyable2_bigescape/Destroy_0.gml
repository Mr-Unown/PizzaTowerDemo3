if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (global.panic == 1)
    {
		var player = obj_player1
		if global.coop = true
		player = instance_nearest(x,y,obj_player)	
	repeat (3)
	with (instance_create((x + 32 + random_range(-32, 32)), (y + 32 + random_range(-32, 32)), obj_balloonpop))
	{
		image_index = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}				
        repeat (6)
        {
            with (instance_create((x + 32), (y + 32), obj_debris))
			{
				initialhsp = player.hsp / 1.7
				initialvsp = clamp(player.vsp / 1.3,-12,random_range(0,-5))
                sprite_index = spr_bigdebrisescape
			}
        }
        with (instance_create((x + 32), (y + 32), obj_pizzaslice))
            hsp = 2
        with (instance_create((x + 32), (y + 32), obj_pizzaslice))
            hsp = -2
		with instance_create(x + 32, y + 16, obj_goop) {
			vsp = random_range(-2,-8)
			hsp = choose(2,-2)
			_direction = sign(hsp);
			movespeed = abs(hsp);
		}				
        if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
        {
            audio_stop_sound(sfx_breakblock1)
            audio_stop_sound(sfx_breakblock2)
        }
        scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
        ds_list_add(global.saveroom, id)
    }
}


