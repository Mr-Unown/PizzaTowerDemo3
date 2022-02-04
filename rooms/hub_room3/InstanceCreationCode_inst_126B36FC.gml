flags.do_once_per_save = true;
flags.do_save = true;
flags.saveroom = global.saveroom;
condition = function() 
{
	return place_meeting(x, y, obj_player);
}

output = function() 
{
	scr_queue_message("HELLO! MOST OF THE LEVELS HERE ARE W.I.P. SO BEWARE!");
	scr_queue_tvanim(spr_tv_unown,210);
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