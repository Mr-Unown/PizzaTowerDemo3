if global.timeattack = true && !instance_exists(obj_gerome)
{
	if (global.panic == 0)
		image_alpha = 0.43
	else
		image_alpha = 1
}
else
	image_alpha = 0