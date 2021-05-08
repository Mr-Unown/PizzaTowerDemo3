event_inherited();
image_speed = 0.25
depth = 4
        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = spr_giantpizza
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = spr_giantpizzahalloween
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible3
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = spr_giantpizzacheese
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = spr_PZgiantpizza

