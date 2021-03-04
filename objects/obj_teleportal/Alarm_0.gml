//Cheaty way to have the camera focus on the portal before the player arrives
with playerid
{
	x = other.targetx
	y = other.targety
global.pausecombotime = true
obj_tv.alarm[1] = 75		
}
alarm[2] = 10
