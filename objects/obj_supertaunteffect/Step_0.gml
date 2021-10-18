if global.freezeframe = false
{
	image_speed = 0.5
	image_xscale = playerid.xscale
	x = playerid.x
	y = playerid.y
	visible = playerid.visible
	//Destroy
	if playerid.supertauntcharged = false || room = rank_room
	    instance_destroy()
}
else
	image_speed = 0
