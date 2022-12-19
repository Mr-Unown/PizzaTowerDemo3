if !ds_list_find_index(global.saveroom, id) 
{
    instance_create(x, y, obj_harrydead)
	ds_list_find_index(global.saveroom, id)
	global.panic = 1
}