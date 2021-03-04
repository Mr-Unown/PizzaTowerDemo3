if global.geromefollowing = false && global.panic = true
{
	global.followerarray[global.followerqueue] = object_index
	global.follower[object_index] = global.followerqueue
	global.followerqueue += 1
	global.geromefollowing = true
}