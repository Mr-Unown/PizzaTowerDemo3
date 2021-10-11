if (ds_list_find_index(global.saveroom, id) == -1)
{
    if (sprite_index == spr_bombblock)
    {
        with (instance_create((x + 32), (y + 32), obj_metaldebris))
            sprite_index = spr_bombdebris
        with (instance_create((x + 32), (y + 32), obj_metaldebris))
            sprite_index = spr_bombdebris
        with (instance_create((x + 32), (y + 32), obj_metaldebris))
            sprite_index = spr_bombdebris
        with (instance_create((x + 32), (y + 32), obj_metaldebris))
            sprite_index = spr_bombdebris
    }
	repeat (3)
	with (instance_create((x + 32 + random_range(-32, 32)), (y + 32 + random_range(-32, 32)), obj_balloonpop))
	{
		image_index = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}
    ds_list_add(global.saveroom, id)
}


