if isreturning = true
{
	with (instance_create((other.x + random_range(-16, 16)), (other.y + random_range(-16, 16)), obj_balloonpop))
			{
				image_speed = 0.35
				sprite_index = spr_bigpoofclouds
				image_angle = choose(0,90,180,270)
			}
	other.brick = 1
	instance_destroy()
}