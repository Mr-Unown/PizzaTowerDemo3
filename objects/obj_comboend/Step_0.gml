if visible = 1
{
	if player.storedscore = 0
	{
		image_alpha -= .001
		if image_alpha <= 0
		{
			visible = 0
			player.endcombo = false
		}
	}
	if alarm[0] <= 1 && player.storedscore != 0
		with instance_create((player.x), (player.y - 60), obj_collecteffect)
			obj_collecteffect.depth = 99999
}