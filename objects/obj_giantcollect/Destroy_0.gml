
if (ds_list_find_index(global.saveroom, id) == -1) {
	repeat 10
	instance_create(x + random_range(-10,10),y + random_range(-10,10), obj_collecteffect)
	ds_list_add(global.saveroom, id)
}
