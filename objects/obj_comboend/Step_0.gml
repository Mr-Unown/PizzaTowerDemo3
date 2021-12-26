if visible = 1
{
	if obj_player1.storedscore = 0
	{
		image_alpha -= .001
		if image_alpha <= 0
		{
			visible = 0
			obj_player1.endcombo = 0
		}
	}
	if alarm[0] <= 1 && obj_player1.storedscore != 0
		with instance_create((player.x), (player.y - 75), obj_collecteffect)
			obj_collecteffect.depth = 99999
}