with (obj_player)
{
	if (place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && state = states.barrelroll
	{
		instance_destroy(other.id)
	}
}