if (ds_list_find_index(global.saveroom, id) == -1) {
	with instance_create(x,y, obj_collecteffect)
	{
	sprite_index = other.sprite_index
	choosed = true;
	}
	ds_list_add(global.saveroom, id)
}
