if (ds_list_find_index(global.saveroom, id) == -1)
{
	var player = obj_player1
	if global.coop = true
	player = instance_nearest(x,y,obj_player)
	if sprite_index = spr_bigblockOLD
	{
	repeat (3)
	with (instance_create((x + 32 + random_range(-32, 32)), (y + 32 + random_range(-32, 32)), obj_balloonpop))
	{
		image_speed = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}					
	
	
	alarm[0] = 5
	repeat(6)
    with (instance_create((x + 32), (y + 32), obj_debris))
	{
		initialhsp = player.hsp / 1.7
		initialvsp = clamp(player.vsp / 1.3,-12,random_range(0,-5))
        sprite_index = spr_bigdebris
	}
	}
	else
	repeat(6)
    with (instance_create((x + 32), (y + 32), obj_debris))
	{
		initialhsp = player.hsp / 1.7
		initialvsp = clamp(player.vsp / 1.3,-12,random_range(0,-5))
        sprite_index = spr_brickdebris
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


