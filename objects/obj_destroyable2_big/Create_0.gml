event_inherited();
hp = 2
depth = 1
        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = spr_bigbreakable
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = spr_halloweenbigblock
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickbigblock
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = spr_cheesebigblock
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = spr_not in the gamebigbreakable	


