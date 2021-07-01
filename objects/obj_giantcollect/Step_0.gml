if collectvanish = true && collectboxid.activated = true {
	x =	xstart
	y = ystart
       instance_create(x, y, obj_cloudeffect)
        repeat (5)
            instance_create((x + random_range(-15, 15)), (y + random_range(-15, 15)), obj_cloudeffect)
	collectvanish = false
	in_the_void = false;
}