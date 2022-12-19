direction = point_direction(x, y, obj_player.x, obj_player.y)
move_towards_point(obj_player.x, obj_player.y, coneballspeed)
coneballspeed += 0.01

	if place_meeting(x, y, obj_player)
	{
		with obj_player
		{
		targetDoor = "A"
		targetRoom = timesuproom
		}
			if !instance_exists(obj_fadeout)
			{
				scr_sound(sound_youfuckindick)
				instance_create(x, y, obj_fadeout)
			}
	}