if (ds_list_find_index(global.baddieroom, id) == -1)
{
	with obj_tv
	{
	sprite_index = spr_tv_static	
	newtvsprite = spr_tv_static
	alarm[0] = -1
	imageindexstore = 0
	bootingup = false
	idle = 0	
	}
    instance_create(x, y, obj_safeexplosion)
    global.miniboss = 0
    ds_list_add(global.baddieroom, id)
    instance_destroy(obj_baddiespawner)
    instance_destroy(obj_doorblocked)
    instance_destroy(obj_iceblockminiboss)
}


