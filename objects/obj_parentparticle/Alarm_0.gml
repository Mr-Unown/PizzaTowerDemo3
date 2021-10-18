if (object_index == obj_baddie_dead)
{
	var a = random_range(-32, 32)
	instance_create((x + a), (y + a), obj_machalleffect)
	alarm[0] = 5
}
