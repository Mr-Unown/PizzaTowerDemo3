if global.geromefollowing = false && originalroom = room && global.geromeopen = false && global.panic = true
{
	//Follower DS_list
	ds_list_add(global.follower, id);
	global.geromefollowing = true
	sprite_index = spr_gerome_idle
	alreadytouched = true;
}
