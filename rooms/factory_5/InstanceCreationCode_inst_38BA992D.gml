content = obj_factoryfollower
if place_meeting(x, y, obj_player)
{
		with obj_tv
		{
			{
			newtvsprite = spr_tv_factorynpc_1
			scr_queue_message("hello you found me i will now follow you lol");
			}
		}
}