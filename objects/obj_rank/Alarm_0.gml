/*if (global.christmasend == 1)
{
	global.levelname = "none"
    global.fakepeppino = 0
    scr_playerreset()
    obj_player.state = 8
    obj_player1.targetDoor = "A"
    obj_player2.targetDoor = "A"
    room = strongcold_endscreen
}
else
{*/
	while flushtextures = true
	{
		draw_texture_flush();
		flushtextures = false
	}
	global.levelname = "none"
    global.fakepeppino = 0
	script_execute(scr_playerreset);
	var _backtohubroom = hub_room1;
	with obj_player1
	{
		targetDoor = "start";
		_backtohubroom = backtohubroom;
	}
	with obj_player2
	{
		targetDoor = "start";
	}		
	room_goto(_backtohubroom); 
//}


