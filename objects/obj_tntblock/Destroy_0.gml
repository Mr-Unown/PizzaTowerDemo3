if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create((x + 32), (y + 32), obj_safeexplosion)
    if place_meeting((x + 1), y, obj_rockblock)
    {
        with (instance_place((x + 1), y, obj_rockblock))
            alarm[1] = 8
    }
    if place_meeting((x - 1), y, obj_rockblock)
    {
        with (instance_place((x - 1), y, obj_rockblock))
            alarm[1] = 8
    }
    if place_meeting(x, (y + 1), obj_rockblock)
    {
        with (instance_place(x, (y + 1), obj_rockblock))
            alarm[1] = 8
    }
    if place_meeting(x, (y - 1), obj_rockblock)
    {
        with (instance_place(x, (y - 1), obj_rockblock))
            alarm[1] = 8
    }
	repeat (3)
	with (instance_create((x + 32 + random_range(-32, 32)), (y + 32 + random_range(-32, 32)), obj_balloonpop))
	{
		image_speed = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}	
    repeat (6)
        instance_create((x + 32), (y + 32), obj_tntblockdebris)
    ds_list_add(global.saveroom, id)
}


