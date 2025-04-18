if (ds_list_find_index(global.saveroom, id) == -1)
{
	var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
	repeat(5)
	{
		with(instance_create(x + ((sprite_width/2) * sign(image_xscale)), y + (sprite_height/2), obj_debris))
		{
			initialhsp = player.hsp / 1.7
			initialvsp = clamp(player.vsp / 1.3,-12,random_range(0,-5))
			sprite_index = spr_pillardestroyable_debris
		}
	}
	repeat(3)
	with instance_create((x + ((sprite_width/2) * sign(image_xscale)) + random_range(-16, 16)), (y + ((sprite_height/2))) + random_range(-16, 16), obj_balloonpop)
	{
		image_speed = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}		
	with (instance_create(x + ((sprite_width/2) * sign(image_xscale)), (y + ((sprite_height/2))), obj_bumpeffect))
		sprite_index = spr_parryeffect		
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
        with (instance_create(x  + (sprite_width/2) * sign(image_xscale), y + (sprite_height/2), obj_pizzacoin))
		{
			_dir = choose(1,-1)
            hsp = 2
		}
    }
}