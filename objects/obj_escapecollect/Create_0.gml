event_inherited();
image_speed = 0.35
global.collectsound  = 0
depth = 4
       if global.collectstyle = 0
	   {
	   if obj_player1.character != "not in the game"
            sprite_index = choose(spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_bananacollect, spr_shrimpcollect)
	   else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_not in the gameescapetopping1, spr_not in the gameescapetopping2, spr_not in the gameescapetopping3, spr_not in the gameescapetopping4, spr_not in the gameescapetopping5)
	   }
	   else if global.collectstyle = 1
	        sprite_index = spr_escapecollectNEW








