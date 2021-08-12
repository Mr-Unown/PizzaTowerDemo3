with (instance_create(x, y, obj_aftereffectimage))
{
    sprite_index = other.sprite_index
    image_xscale = other.image_xscale
	image_speed = 0
	image_index = other.image_index - 1
    other.afterid = id
	pizzaface = true
}
alarm[1] = 10


