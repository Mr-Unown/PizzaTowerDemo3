//When player touches the funny
if activated = true && sprite_index == spr_secreteye_idle && (ds_list_find_index(global.saveroom, id) == -1)
{
	sprite_index = spr_secreteye_teleport;
	image_index = 0;
	
	with other.id
	{
		other.player = id;
		obj_player.actor = true;
		obj_player.substate = "secret_in"
		obj_player.x = other.x;
		obj_player.y = other.y;
	}
	ds_list_add(global.saveroom, id)	
}


