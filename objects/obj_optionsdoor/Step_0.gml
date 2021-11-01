var _player = (global.coop == true ? instance_nearest(x, y, obj_player) : obj_player1)
if (distance_to_object(_player) < 50)
{
	with obj_newmainmenuselect
	{
		_message = "OPTIONS"
		showtext = 1
		alarm[0] = 2
	}
}