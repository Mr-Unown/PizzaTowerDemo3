if do_once = false
{
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
		case "not in the game":
			sprite_index = choose(spr_not in the gametopping1, spr_not in the gametopping2, spr_not in the gametopping3, spr_not in the gametopping4, spr_not in the gametopping5,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
		break;
		default:	
			sprite_index = choose(spr_sausagecollect, spr_cheesetopping3, spr_halloweencollectibles1, spr_snickcollectible1, spr_not in the gametopping1,spr_bananacollect, spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_shrimpcollect)
		break;
	}	
	do_once = true;
}