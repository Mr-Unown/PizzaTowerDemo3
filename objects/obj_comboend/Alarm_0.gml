if obj_player1.collectscore != obj_player1.collectscore + obj_player1.storedscore && visible = 1
{
obj_player1.collectscore = obj_player1.collectscore + 5
obj_player1.storedscore = obj_player1.storedscore - 5
}
alarm[0] = 2