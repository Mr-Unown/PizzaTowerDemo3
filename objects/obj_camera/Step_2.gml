if global.sleepAcc > 0
	global.sleepAcc -= 60;
else
	global.sleepAcc = 0
	
if global.freezeframetimer < 185
	global.freezeframetimer += 0.25
else
	global.freezeframetimer = 185
if global.freezeframetimer >= 5
	global.can_freeze = true;
else {
	global.can_freeze = false;
	global.freezeframe = false;	
}