scr_collide()
var player = obj_player1
if (obj_player1.spotlight == 0)
    player = obj_player2
else
    player = obj_player1
if ((player.character == "V" || player.character == "D" || player.character == "PM" || player.character == "S") && (!alarm[0]))
    alarm[0] = 20
if (player.character == "V" || player.character == "D" || player.character == "PM" || player.character == "S")
    image_alpha = 0.65
else
    image_alpha = 1


