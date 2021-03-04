if (global.christmasend == 1)
{
    global.fakepeppino = 0
    scr_playerreset()
    obj_player.state = 8
    obj_player1.targetDoor = "A"
    obj_player2.targetDoor = "A"
    room = strongcold_endscreen
}
else
{
    global.fakepeppino = 0
    scr_playerreset()
    obj_player1.targetDoor = "start"
    obj_player2.targetDoor = "start"
    room = obj_player.backtohubroom
}


