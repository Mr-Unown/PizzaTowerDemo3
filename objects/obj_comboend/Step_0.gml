if player.endcombo = true
{
	if player.storedscore = 0
	{
		image_alpha -= .001
		if image_alpha <= 0
			player.endcombo = false
	}
	if alarm[0] <= 1 && player.storedscore > 0
	{
		instance_create(player.x,player.y - 60, obj_collecteffect)	
	}
}
//Visible
visible = player.endcombo
//Choose SPR
if visible = false && player.endcombo = false
{
	endspr = spr_combo_notbad;
}