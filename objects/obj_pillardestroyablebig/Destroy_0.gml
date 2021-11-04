if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat(6)
	{
		with(instance_create(x, y, obj_metaldebris))
			sprite_index = spr_pillardestroyable_debris
	}
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
}