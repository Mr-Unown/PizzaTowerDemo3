if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
    var lay_id = layer_get_id(tiles)
    var map_id = layer_tilemap_get_id(lay_id)
    var data = tilemap_get_at_pixel(map_id, x, y)
    data = tile_set_empty(data)
    tilemap_set_at_pixel(map_id, data, x, y)
    var pizzacoin = random_range(1, 100)
    if (pizzacoin >= 85)
    {
        with (instance_create(x, y, obj_pizzacoin))
		{
			_dir = choose(1,-1)
            hsp = 2
		}
    }
    repeat (8)
    {
        with (instance_create((x + 16), y + 16, obj_secretdebris))
        {
            sprite_index = spr_secretdebris
            tile_dataid = other.datas
            tile_dataset = other.set_ids
        }
    }
}


