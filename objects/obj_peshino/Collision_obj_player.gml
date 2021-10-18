if global.peshinofollowing = false && originalroom = room
{
	//Follower DS_list
	ds_list_add(global.follower, id);
	global.peshinofollowing = true
	alreadytouched = true;
}
