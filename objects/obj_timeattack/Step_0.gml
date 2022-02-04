if global.timeattack = true
{
	//Used for checking ranks
	global.timeattack_value = global.taminutes + (global.taseconds / 100);
	//Used for Meters and Stuff
	if global.freezeframe = false
		global.timeattack_points += (60 / room_speed);
}
else
{
	global.timeattack_value = 0;
	global.timeattack_points = 0;
}
	
if frozen = true && global.freezeframe = false
{
	alarm[1] = frozenalarm;
	frozen = false;		
}