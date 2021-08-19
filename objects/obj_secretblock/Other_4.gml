var lay_id = layer_get_id(tiles)
var map_id = layer_tilemap_get_id(lay_id)
var set_id = tilemap_get_tileset(map_id)
var data = tilemap_get_at_pixel(map_id, x, y)
datas = data
set_ids = set_id
if (ds_list_find_index(global.saveroom, id) != -1)
{
    data = tile_set_empty(data)
    tilemap_set_at_pixel(map_id, data, x, y)
    instance_destroy()
}


