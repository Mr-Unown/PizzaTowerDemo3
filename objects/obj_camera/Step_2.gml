if global.hitstunenabled >= 2
{
	if global.freezeframetimer < 185
		global.freezeframetimer += 0.25
	else
		global.freezeframetimer = 185
}
else
	global.freezeframetimer = global.defaulttime
	
if global.freezeframetimer >= 5
	global.can_freeze = true;
else 
	global.can_freeze = false;
	//global.freezeframe = false;	

