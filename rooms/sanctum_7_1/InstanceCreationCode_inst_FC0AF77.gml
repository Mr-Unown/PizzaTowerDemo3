condition = function()
{
	return default_condition() && ds_list_find_index(flags.saveroom, id) == -1
}
output = function()
{
	repeat (5)
	with instance_create(324, 274, obj_collectfloor)
	{
		vsp = random_range(-2,-8)
		hsp = choose(2,-2,4,-3,6,-4)
		_direction = sign(hsp);
		movespeed = abs(hsp);
	}	
}