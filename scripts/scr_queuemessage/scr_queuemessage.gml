function scr_queue_message(argument0 = "") {
	///@param string
	ds_queue_enqueue(global.newhudmessage,argument0);
}
