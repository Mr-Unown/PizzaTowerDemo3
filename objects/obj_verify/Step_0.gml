if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)
{
	if obj_user.message = "TEST" && obj_pass.message = "BRAP" || obj_user.message = "SODASHIT" && obj_pass.message = "ITCHINGBALLS370"
	{
		with obj_player
		{
		targetDoor = "A"
		targetRoom = hub_public
		global.login = 1
		}
			if !instance_exists(obj_fadeout)
			{
				scr_sound(sound_youfuckindick)
				instance_create(x, y, obj_fadeout)
			}
	}
		else if obj_user.message = "LOYPOLL" && obj_pass.message = keyboard_string
		{
		with obj_player
		{
		targetDoor = "A"
		targetRoom = rm_youplayedyourself
		}
			if !instance_exists(obj_fadeout)
			{
				scr_sound(sound_youfuckindick)
				instance_create(x, y, obj_fadeout)
			}
		}
	else 
	{
	scr_sound(sound_losetransformation)	
					with obj_tv
					{
					message = "USER AND PASSWORD INCORRECT!"
					showtext = 1
					alarm[0] = 200
					}
	}
}