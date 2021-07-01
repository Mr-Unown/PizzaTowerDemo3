if collectvanish = true && collectboxid.activated = true {
	x =	xstart
	y = ystart
        instance_create(x, y, obj_cloudeffect)
        repeat (3)
            instance_create((x + random_range(-10, 10)), (y + random_range(-10, 10)), obj_cloudeffect)
	collectvanish = false
	in_the_void = false;
}