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

	global.timeattack = 0;
	global.levelname = "none"
    global.fakepeppino = 0
	while global.flushtextures = true
	{
		draw_texture_flush();
		sprite_prefetch_multi(global.prefetcharray);
		global.flushtextures = false
		demo3_show_debug_message("Flushed Textures");
	}	
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


