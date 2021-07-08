if created = false
{
	with (instance_create(x, y, content))
	{
		image_xscale = other.image_xscale
		instance_create(x, y, obj_pizzaportalfade)
		creatorid = other.id
		created = true
	}
	if ds_list_find_index(global.saveroom, id) == -1
		ds_list_add(global.saveroom, id)
}


