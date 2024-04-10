event_inherited();
image_speed = 0.35
depth = 4
if global.collectstyle = 0
{
        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1, spr_pizzacollect2, spr_pizzacollect3)
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1halloween, spr_pizzacollect2halloween, spr_pizzacollect3halloween)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible2
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1cheese, spr_pizzacollect2cheese, spr_pizzacollect3cheese)
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_not in the gamebigpizza1, spr_not in the gamebigpizza2, spr_not in the gamebigpizza3)
}
else if global.collectstyle = 1
{
	if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
		sprite_index = choose(spr_bigsausagecollect, spr_bigcheesecollect, spr_bigpineapplecollect, spr_bigtomatocollect, spr_bigshroomcollect)
	if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
		sprite_index = choose(spr_not in the gamebigcollect1, spr_not in the gamebigcollect2, spr_not in the gamebigcollect3, spr_not in the gamebigcollect4, spr_not in the gamebigcollect5, spr_not in the gamebigcollect6)
}


