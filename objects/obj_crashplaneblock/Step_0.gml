randomchance = random_range(0, 100)

if (place_meeting(x, (y + 1), obj_player) && (!instance_exists(obj_crashingplane)))
{
	var player = instance_place(x, y + 1, obj_player)
	if randomchance <= 25
	{
		instance_create(player.x, player.y, obj_crashingplane)
	}
}