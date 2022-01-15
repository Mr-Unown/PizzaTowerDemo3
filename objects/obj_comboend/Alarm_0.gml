if activated = true && storedscore > 0
{
	var initialscore = storedscore;
	if storedscore < scorespd
		storedscore = 0;
	else
		storedscore = (storedscore - scorespd);
	player.collectscore = player.collectscore + (initialscore - storedscore)
	instance_create(player.x , player.y - 60, obj_collecteffect);	
	scale = min(scale + 1,2.5)
	alarm[0] = 2;
}
