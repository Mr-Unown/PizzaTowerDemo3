flags.do_once = true;
flags.do_save = true;
flags.saveroom = global.saveroom;
condition = function() 
{
	return place_meeting(x, y, obj_player);
}

output = function() 
{
	scr_queue_message("HELLO! MOST OF THE LEVELS HERE W.I.P. SO BEWARE!",spr_tv_unown);
	with obj_tv 
	{
		_message = "BEWARE OF W.I.P. LEVELS"
		old_message = "BEWARE OF W.I.P. LEVELS"
		showtext = 1
		alarm[0] = 200
		tvsprite = spr_tvranks
		shownranks = 1
	}
}