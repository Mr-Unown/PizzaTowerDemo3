if (global.panic = true && panicmode = true) || panicmode = false
{
if ds_list_find_index(global.saveroom, id) == -1 && can_activate = true && activated = false {
	with obj_collectablebox
	{
		if unid = other.unid 
			alarm[1] = 1
	}
	with obj_collectableboxtrigger
	{
		if trigger = other.trigger
			can_activate = true
	}
	activated = true
	ds_list_add(global.saveroom, id)
	instance_destroy()
}
}