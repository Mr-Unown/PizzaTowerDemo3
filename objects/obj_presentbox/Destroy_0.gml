if (ds_list_find_index(global.saveroom, id) == -1)
{
	with obj_tv
	{
		image_speed = 0.35
		sprite_index = spr_tv_static	
		tvsprite = spr_tvoff
		newtvsprite = spr_tv_static
		alarm[0] = -1
		imageindexstore = 0
		bootingup = false
		idle = 0	
	}
    instance_create(x, y, obj_safeexplosion)
    global.miniboss = 0
    ds_list_add(global.saveroom, id)
    instance_destroy(obj_baddiespawner)
    instance_destroy(obj_doorblocked)
    instance_destroy(obj_iceblockminiboss)
}
else
{
	var door = obj_doorblocked
	with door
	{
		instance_destroy(id,false);
	}
}

