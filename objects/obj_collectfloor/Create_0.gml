image_xscale = choose(1,-1) ;
hsp = 0;
vsp = 0;
grounded = false
grav = 0.4;
roomid = room;
roomx = xstart;
roomy = ystart;
sprite = sprite_index;
image = image_index;
image_speed = 0.35;
frozen = false;
_direction = sign(hsp);
movespeed = abs(hsp);
maxspeed = 0;
stuck = false;
event_inherited();
image_speed = 0.35
global.collectsound  = 0
depth = 4
       if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
	   {
		   if global.collectstyle = 0
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
		   else if global.collectstyle = 1
		   sprite_index = choose(spr_shroomcollectNEW, spr_tomatocollectNEW, spr_cheesecollectNEW, spr_sausagecollectNEW, spr_pineapplecollectNEW)
	   }
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible1
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_not in the gametopping1, spr_not in the gametopping2, spr_not in the gametopping3, spr_not in the gametopping4, spr_not in the gametopping5)







