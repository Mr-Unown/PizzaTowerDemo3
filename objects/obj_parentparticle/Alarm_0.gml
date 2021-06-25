if sprite_width + sprite_width >= 60 * 2
{
	var a = random_range(-32, 32)
	instance_create((x + a), (y + a), obj_machalleffect)
}
alarm[0] = 5