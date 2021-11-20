image_speed = 0.35
createdpizza = 0
content = obj_bigcollect
depth = 1
var _depth = 310;
var roomname = room_get_name(room)
if layer_exists("Tiles_1")
{
	var lay_id = layer_get_id("Tiles_1")
	_depth = layer_get_depth(lay_id)
}
if (string_letters(roomname) == "chateau")
    depth = _depth + 10

