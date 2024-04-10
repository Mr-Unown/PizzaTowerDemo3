var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
depth = -10
image_speed = 0
image_index = 0
choosed = false;
drawx = xstart - _cam_x
drawy = ystart - _cam_y

//Cooleffect
drawxscale = 1
drawyscale = 1
biggening = true;
//Ehy
if global.newhud = false
{
	targetx = 832;
	targety = 74;
}
else
{
	targetx = 150;
	targety = 100 + obj_camera.newhudyoffset;
}

if choosed = false
{
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
	case "not in the game":
		if global.collectstyle = 0
		sprite_index = choose(spr_not in the gametopping1, spr_not in the gametopping2, spr_not in the gametopping3, spr_not in the gametopping4, spr_not in the gametopping5)
		else if global.collectstyle = 1
		sprite_index = choose(spr_not in the gametopping2NEW, spr_not in the gametopping3NEW, spr_not in the gametopping4NEWG, spr_not in the gametopping6NEW , spr_not in the gametopping7NEW)
	break;
	default:
		sprite_index = choose(spr_sausagecollect, spr_cheesetopping3, spr_halloweencollectibles1, spr_snickcollectible1, spr_not in the gametopping1)
	break;
}
}



