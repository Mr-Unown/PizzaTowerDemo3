if floor(image_index) == (image_number - 1)
{
obj_player.targetRoom = hub_public
obj_player.targetDoor = "A"
	if !instance_exists(obj_fadeout)
	{
		instance_create(x, y, obj_fadeout)
		obj_player.state = 0
	}
}