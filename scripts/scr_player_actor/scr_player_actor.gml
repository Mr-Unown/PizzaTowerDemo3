function scr_player_actor()
{
	global.pausecombotime = true;
	obj_tv.alarm[1] = 75;
	cutscene = true;
	
	switch substate
	{
		case "secret_in":
		scale = approach(scale,0,0.025)
		image_index = image_index - image_speed;
		break;
		case "secret_out":
		scale = approach(scale,1,0.025)
		image_index = image_index - image_speed;
		if scale >= 1
		{
			scale = 1;
			actor = false;
		}
		break;		
		default:
		break;
	}
}