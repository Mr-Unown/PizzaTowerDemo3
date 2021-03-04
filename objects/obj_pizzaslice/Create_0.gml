image_speed = 0.5
hsp = 0
vsp = random_range(-2, -4)
grav = 0.5
recreate = 0
maxspeed = 0
outside_room = 0
out_timer = 0
if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
    sprite_index = spr_pizzaslice
if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
    sprite_index = spr_halloweenspinningslice
if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
    sprite_index = spr_xmasspinningslice
if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
    sprite_index = spr_cheesespinningslice

