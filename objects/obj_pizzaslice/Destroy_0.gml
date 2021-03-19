if (ds_list_find_index(global.saveroom, id) == -1)
	repeat 3
	instance_create(x + random_range(-3,3),y + random_range(-3,3), obj_collecteffect)