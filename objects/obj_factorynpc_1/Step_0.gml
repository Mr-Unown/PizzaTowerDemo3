if global.npcs = false
instance_destroy()
if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if key_up2
		with obj_tv
		{
			{
			newtvsprite = spr_tv_factorynpc_1
			scr_queue_message("Find my brother");
			}
		}
	}
}
			