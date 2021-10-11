if (global.panic = true && panicmode = true) || panicmode = false
{
if ds_list_find_index(global.saveroom, id) == -1 && _message != noone && can_activate = true && activated = false
{
	with obj_tvtexttrigger
	{
		if trigger = other.trigger
			can_activate = true
	}
	activated = true	
	scr_queue_message(_message);
	ds_list_add(global.saveroom, id)
	instance_destroy()
}
if ds_list_find_index(global.saveroom, id) == -1 && _message_array[0] != noone && can_activate = true && activated = false
{
	with obj_tvtexttrigger
	{
		if trigger = other.trigger
			can_activate = true
	}
	activated = true
	for (var i = 0; i < array_length(_message_array); ++i) 
	{
	    scr_queue_message(_message_array[i]);
	}
	
	ds_list_add(global.saveroom, id)
	instance_destroy()
}


}