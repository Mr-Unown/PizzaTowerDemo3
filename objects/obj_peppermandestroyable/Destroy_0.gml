instance_create((x + 16), y + 16, obj_debris)
instance_create((x + 16), y + 16, obj_debris)
instance_create((x + 16), y + 16, obj_debris)
instance_create((x + 16), y + 16, obj_debris)
if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
{
    audio_stop_sound(sfx_breakblock1)
    audio_stop_sound(sfx_breakblock2)
}
scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
var lay_id = layer_get_id(tiles)
var map_id = layer_tilemap_get_id(lay_id)
var data = tilemap_get_at_pixel(map_id, x, y)
data = tile_set_empty(data)
tilemap_set_at_pixel(map_id, data, x, y)


