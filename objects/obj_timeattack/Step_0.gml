if global.timeattack = true
	global.timeattackpoints = global.taminutes + (global.taseconds/100);
else
	global.timeattackpoints = 0;
	
if frozen = true && global.freezeframe = false
{
	alarm[1] = frozenalarm;
	frozen = false;		
}