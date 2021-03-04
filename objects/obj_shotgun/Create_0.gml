image_speed = 0.35
hsp = 0
vsp = 0
grav = 0.5
grounded = 0
image_alpha = 1
if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
    sprite_index = spr_shotgun
else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
    sprite_index = spr_minigun
else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
{
    sprite_index = choose(spr_shotgun, spr_minigun)
    alarm[0] = 20
}
else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
{
    sprite_index = choose(spr_shotgun, spr_minigun)
    alarm[0] = 20
}


