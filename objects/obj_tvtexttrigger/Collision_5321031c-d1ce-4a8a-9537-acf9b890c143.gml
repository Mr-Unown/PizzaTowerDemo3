if (global.panic = true && panicmode = true) || panicmode = false
{
if ds_list_find_index(global.saveroom, id) == -1 && message != noone && can_activate = true && activated = false
{
	with obj_tvtexttrigger
	{
		if trigger = other.trigger
			can_activate = true
	}
	activated = true	
	scr_queuemessage(message);
	ds_list_add(global.saveroom, id)
	instance_destroy()
}
}