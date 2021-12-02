fadealpha = 0
fadein = 0
gotonoplayer = 0
acttransition = 0
global.flushtextures = false
resetDoor = false
once = false;
depth = -9995
if instance_exists(obj_pausefadeout)
    instance_destroy(obj_pausefadeout)
	
if live_enabled == 1
{
	if obj_player1.targetRoom != global.roomstart[global.newtitlescreen]
		room_set_live(obj_player1.targetRoom,true)
}

