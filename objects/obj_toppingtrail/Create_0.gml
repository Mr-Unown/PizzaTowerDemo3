
playerid = obj_player1
/*
       if (playerid.character == "P" && playerid.spotlight == 1)
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect, spr_pineapplecollect, spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
        else if ((playerid.character == "N" && playerid.spotlight == 1) || (playerid2.character == "N" && playerid.spotlight == 0))
            sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
        else if ((playerid.character == "S" && playerid.spotlight == 1) || (playerid2.character == "S" && playerid.spotlight == 0))
            sprite_index = spr_snickcollectible1
        else if ((playerid.character == "V" && playerid.spotlight == 1) || (playerid2.character == "V" && playerid.spotlight == 0))
            sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
		else if ((playerid.character == "PZ" && playerid.spotlight == 1) || (playerid2.character == "PZ" && playerid.spotlight == 0))
			sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5)
*/
switch playerid.character
{
	case "P":
		sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
	break;
	case "N":
		sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
	break;
	case "S":
		sprite_index = choose(spr_snickcollectible1,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
	break;
	case "V":
		sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
	break;
	case "PZ":
		sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
	break;
	default:
		sprite_index = choose(spr_sausagecollect, spr_cheesetopping3, spr_halloweencollectibles1, spr_snickcollectible1, spr_PZtopping1,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
	break;
	
}
depth = -19
image_index = random_range(0, image_number);
image_speed = 0
image_angle = irandom_range(0, 360)
hspeed = 0.4 * -playerid.xscale
toppingalpha = 1