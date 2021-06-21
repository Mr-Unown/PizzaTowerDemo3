//ds_list_add(global.gooproom,[id,room,x,y,sprite,image,palette])
for (var i = 0; i < ds_list_size(global.gooproom); i++) 
{
	var _list = ds_list_find_value(global.gooproom,i)
	var _id = _list[0]
	if (ds_list_find_index(global.saveroom, _id) == -1)
	{
		var _room = _list[1]
		if _room == room
		{
			var _x = _list[2]
			var _y = _list[3]
			var _sprite = _list[4]
			var _image = _list[5]
			var _palette = _list[6]
			with instance_create(_x,_y,obj_goop)
			{
				pooid = _id
				sprite_index = _sprite
				image_index = _image
				paletteselect = _palette
				hsp = 0
				vsp = 0 
			}
		}
	}
	else
	{
		ds_list_delete(global.gooproom,ds_list_find_index(global.gooproom,i))
	}
}
