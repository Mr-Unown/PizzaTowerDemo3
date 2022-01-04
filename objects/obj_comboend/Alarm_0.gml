if player.collectscore != player.collectscore + player.storedscore && player.endcombo = true
{
	player.collectscore = player.collectscore + 5
	player.storedscore = player.storedscore - 5
}
alarm[0] = 2