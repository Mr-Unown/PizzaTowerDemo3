var lay_id = layer_get_id(tiles)
var map_id = layer_tilemap_get_id_fixed(lay_id)
var set_id = tilemap_get_tileset(map_id)
var data = tilemap_get_at_pixel(map_id, x, y)
datas = data
set_ids = set_id
if (visible = true)
{
    x = xstart
    y = ystart
}
else
{
    x = -100
    y = -100
}

