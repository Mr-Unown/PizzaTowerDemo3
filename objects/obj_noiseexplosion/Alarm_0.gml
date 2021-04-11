var a = random_range(-100, 100)
alarm[0] = 5

if (image_index > 7)
	repeat(3)
		instance_create((x + a), (y + a), obj_machalleffect)

