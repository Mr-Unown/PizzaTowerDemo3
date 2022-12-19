if obj_player.state = 103
{
	obj_player.state = 0
	if !instance_exists(obj_tasershockwave)
	{
		instance_create(x, y, obj_tasershockwave)
	}
}

if obj_player.state = 104
{
		obj_player.state = 0
}