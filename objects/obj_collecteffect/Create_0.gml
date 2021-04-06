var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
depth = -10
image_speed = 0
image_index = 0
choosed = false;
drawx = xstart - _cam_x
drawy = ystart - _cam_y
if choosed = false
{
	if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
		sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
	if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
		sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
	if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
	    sprite_index = spr_snickcollectible1
	if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
	    sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
}



