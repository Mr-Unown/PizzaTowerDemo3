if (!instance_exists(ID))
    instance_destroy()
if instance_exists(ID)
{
    x = ID.x
    y = ID.y
    image_xscale = ID.image_xscale
    image_index = ID.image_index
	var player = obj_player1
	if global.coop = true
		player = instance_nearest(x,y,obj_player)
    with (ID)
    {
        if ((state != 96) || player.instakillmove = true || player.state == states.mach3 || player.state == states.frozen || player.state == states.handstandjump || player.state == states.kingknightroll)
        {
            hitboxcreate = 0
            instance_destroy(other.id)
        }
    }
}


