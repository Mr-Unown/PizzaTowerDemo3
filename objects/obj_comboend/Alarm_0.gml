if activated = true && storedscore > 0
{
	var initialscore = storedscore;
	if storedscore <= scorespd
		storedscore = 0;
	else
		storedscore = (storedscore - scorespd);
	player.collectscore = player.collectscore + (initialscore - storedscore)
	instance_create(player.x - 16, player.y - 55, obj_collecteffect);	
	scale = min(scale + 0.025,1.05)
	
}
alarm[0] = 2;