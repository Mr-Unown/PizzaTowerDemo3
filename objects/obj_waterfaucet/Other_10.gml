if instance_exists(obj_water)
{
	with obj_water
	{
		targety = other.targety
	}
}
var _targety = targety
targety = targety2
targety2 = _targety
can_switch = true
alarm[0] = -1