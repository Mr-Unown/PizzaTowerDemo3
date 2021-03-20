if global.geromefollowing = false && room = originalroom && global.geromeopen = false && global.panic = true
{
	//Follower DS_list
	ds_list_add(global.follower, id);
	global.geromefollowing = true
	alreadytouched = true;
}
