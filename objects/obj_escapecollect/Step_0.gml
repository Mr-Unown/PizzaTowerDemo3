if collectvanish = true && collectboxid.activated = true && global.panic = 1 {
	x =	xstart
	y = ystart
	instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
	repeat (3)
        instance_create(((x + (sprite_width / 2)) + random_range(-5, 5)), ((y + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)
	collectvanish = false
	in_the_void = false;
}



if (global.collectsound  < 10)
    global.collectsound  += 1
if global.panic == 1 && image_alpha != 1
image_alpha = 1


