image_index = random_range(0, 2)
       if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect, spr_pineapplecollect, spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible1
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5)

image_speed = 0
image_angle = random_range(1, 140)
hspeed = 0.4 *- obj_player.xscale
toppingalpha = 1