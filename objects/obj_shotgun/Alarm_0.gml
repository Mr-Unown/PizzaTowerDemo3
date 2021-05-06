var player = obj_player1
if (obj_player1.spotlight == 0)
    player = obj_player2
else
    player = obj_player1
if (player.character == "V" || player.character == "S")
{
    if (sprite_index == spr_shotgun)
        sprite_index = spr_minigun
    else if (sprite_index == spr_minigun)
        sprite_index = spr_shotgun
    alarm[0] = 20
}


