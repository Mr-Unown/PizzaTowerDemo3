//Find the Funny
with obj_objectteleport
{
	if other.unid = unid && is_exit_portal = true
		other.exit_id = id
}
//If touch
if targets[0] != noone && is_exit_portal != true
{
	for (var i = 0; i < array_length(targets); ++i) 
	{
		with instance_place(x,y,targets[i]._object)
		{
			x = other.exit_id.x + other.targets[i]._xoffset
			y = other.exit_id.y + other.targets[i]._yoffset
			if other.targets[i]._output_function != noone
			{
				var _function = other.targets[i]._output_function
				_function();
			}
		}
	}
}