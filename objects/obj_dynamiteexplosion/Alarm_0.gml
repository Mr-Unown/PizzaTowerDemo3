alarm[0] = 5

if (image_index > 7)
	repeat(3)
		instance_create((x + random_range(-100, 100)), (y + random_range(-100, 100)), obj_machalleffect)

