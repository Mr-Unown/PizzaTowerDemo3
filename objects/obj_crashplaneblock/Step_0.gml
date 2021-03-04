randomchance = random_range(0, 100)

if (place_meeting(x, (y + 1), obj_player) && (!instance_exists(obj_crashingplane)))
	if randomchance <= 25
	{
    instance_create(obj_player.x, obj_player.y, obj_crashingplane)
	}
