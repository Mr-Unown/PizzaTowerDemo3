if can_switch = true
{
	global.switchblock = !global.switchblock

	with obj_onoffswitch
	{
	if global.switchblock == 0
	sprite_index = spr_onoffswitch_bluetored
	else
	sprite_index = spr_onoffswitch_redtoblue
	can_switch = false
	alarm[0] = 90
	}
}

