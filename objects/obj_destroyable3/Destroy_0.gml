if (ds_list_find_index(global.saveroom, id) == -1)
{
	var player = obj_player1
	if global.coop = true
	player = instance_nearest(x,y,obj_player)
	repeat(6)
    with (instance_create((x + 32), (y + 32), obj_debris))
	{
		initialhsp = player.hsp / 2
		initialvsp = clamp(player.vsp / 1.3,-12,random_range(0,-5))
        sprite_index = spr_bigdebris
	}
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(3, 4)
    ds_list_add(global.saveroom, id)
    var pizzacoin = random_range(1, 100)
    if (pizzacoin >= 85)
    {
        with (instance_create(x, y, obj_pizzacoin))
            hsp = choose(-2, 2)
    }
}


