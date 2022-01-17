with (other.id)
{
	if (key_up && grounded && (!instance_exists(obj_option)) && (state == 0 || state == 68 || state == 69 || state == 89))
	{
	    instance_create(x, y, obj_option)
		obj_player.state = 7
	}
}