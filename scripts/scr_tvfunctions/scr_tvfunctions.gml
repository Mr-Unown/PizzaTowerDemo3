function scr_queue_message(argument0 = "",argument1 = noone) {
	///@param string
	///@param insert_sprite_here_to_activate_talkingsprs
	ds_queue_enqueue(global.newhudmessage,argument0);
	ds_queue_enqueue(global.newhudmessage,argument1);
}

function scr_queue_tvanim(argument0 = noone,argument1 = 150) 
{
	///@param sprite_index
	///@param anim_length
	ds_queue_enqueue(global.newhudtvanim,argument0);
	ds_queue_enqueue(global.newhudtvanim,argument1);
}
