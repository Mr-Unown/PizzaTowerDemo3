if global.timeattack = true
{
	if (ds_list_find_index(global.saveroom, id) == -1) 
	{
		with (instance_create(x, y, obj_shake))
			sprite_index = spr_gerome_dead
		with obj_portalend
			activated = true
		ds_list_add(global.saveroom, id)
	}
}