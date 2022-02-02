event_inherited();
image_speed = 0.35
global.collectsound  = 0
depth = 4
       if global.collectstyle = 0
	   {
	   if obj_player1.character != "PZ"
            sprite_index = choose(spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_bananacollect, spr_shrimpcollect)
	   else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_PZescapetopping1, spr_PZescapetopping2, spr_PZescapetopping3, spr_PZescapetopping4, spr_PZescapetopping5)
	   }
	   else if global.collectstyle = 1
	        sprite_index = spr_escapecollectNEW








