fadealpha = 0
fadein = 0
gotonoplayer = 0
acttransition = 0
global.flushtextures = false
resetDoor = false
depth = -9995
if instance_exists(obj_pausefadeout)
    instance_destroy(obj_pausefadeout)
	
if live_enabled == 1
	room_set_live(obj_player1.targetRoom,true)

