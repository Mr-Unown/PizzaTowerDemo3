obj_player.state = 0
with (instance_create(x, y, obj_smallnumber))
    number = "1000"
if (player == 1)
    obj_player1.collectscore += 1000
else if (player == 2)
    obj_player2.collectscore += 1000
instance_destroy()


