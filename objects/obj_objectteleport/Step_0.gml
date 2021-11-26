//Find the Funny
with obj_objectteleport
{
	if other.unid = unid && is_exit_portal = true
		other.exit_id = id
}
//If touch
if (array_length(targets) - 1) > 0
{
	for (var i = 0; i < array_length(targets) - 1; ++i) 
	{
		with instance_place(x,y,targets[i]._object)
		{
			x = other.exit_id.x + other.targets[i]._xoffset
			y = other.exit_id.y + other.targets[i]._yoffset
		}
	}
}