if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
	var player = obj_player1
	if global.coop = true
	player = instance_nearest(x,y,obj_player)
    repeat (6)
    {
        with (instance_create((x + 32), (y + 32), obj_debris))
        {
			initialhsp = player.hsp / 2
			initialvsp = clamp(player.vsp / 1.3,-12,random_range(0,-5))			
            if (other.sprite_index == spr_bigbreakable)
                sprite_index = spr_bigpizzadebris
            else if (other.sprite_index == spr_halloweenbigblock)
                sprite_index = spr_halloweenbigdebris
            else if (other.sprite_index == spr_xmasbigblock)
                sprite_index = spr_bigdebris
            else if (other.sprite_index == spr_cheesebigblock)
                sprite_index = spr_bigpizzadebris
			else if (other.sprite_index == spr_PZbigbreakable)
				sprite_index = spr_PZbigpizzadebris		
        }
    }
    with (instance_create((x + 32), (y + 32), obj_pizzaslice))
        hsp = 2
    with (instance_create((x + 32), (y + 32), obj_pizzaslice))
        hsp = -2
	with instance_create(x + 32, y + 16, obj_goop) {
		vsp = random_range(-2,-8)
		hsp = choose(2,-2)
		_direction = choose(1,-1)
	}	
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(3, 4)
    ds_list_add(global.saveroom, id)
}


