rotatedirection = choose(-1,0,1)
rotatevalue = random_range(-1,1)
grav = 0.5
hsp = random_range(-10, 10)
vsp = random_range(-5, 0)
playerid = obj_player1
switch playerid.character
{
	case "P":
		if global.collectstyle = 0
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
		  else if global.collectstyle = 1
		   sprite_index = choose(spr_shroomcollectNEW, spr_tomatocollectNEW, spr_cheesecollectNEW, spr_sausagecollectNEW, spr_pineapplecollectNEW)
	break;
	case "N":
		sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
	break;
	case "S":
		sprite_index = spr_snickcollectible1
	break;
	case "V":
		sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
	break;
	case "PZ":
		if global.collectstyle = 0
		sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5)
		else if global.collectstyle = 1
		sprite_index = choose(spr_PZtopping2NEW, spr_PZtopping3NEW, spr_PZtopping4NEWG, spr_PZtopping6NEW , spr_PZtopping7NEW)
	break;
	default:
		sprite_index = choose(spr_sausagecollect, spr_cheesetopping3, spr_halloweencollectibles1, spr_snickcollectible1, spr_PZtopping1)
	break;
}
