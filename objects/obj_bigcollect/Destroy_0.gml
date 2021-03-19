
if (ds_list_find_index(global.saveroom, id) == -1) {
	repeat 5
	instance_create(x + random_range(-5,5),y + random_range(-5,5), obj_collecteffect)
	
	ds_list_add(global.saveroom, id)
}

